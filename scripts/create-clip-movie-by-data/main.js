const fs = require('fs');
const path = require('path');
const jsYaml = require('js-yaml');
const childProcess = require('node:child_process');
const { parseArgs } = require("node:util");

// 抽出したいディレクトリのパス
const targetDirectory = path.join(__dirname, '../../dataset/sounds');
// 出力するディレクトリのパス
const outputDirectory = path.join(__dirname, './outputs');
// フォントのパス
const fontPath = path.join(__dirname, './keifont.ttf');

const options = {
    help: {
        type: 'boolean',
        short: 'h',
        default: false,
        description: 'Print this help message',
    },
    force: {
        type: 'boolean',
        short: 'f',
        default: false,
        description: 'Overwrite existing files',
    },
    targetSource: {
        type: 'string',
        default: '',
        description: 'Target source name',
    },
    includeCategories: {
        type: 'string',
        default: '',
        description: 'Include categories',
    },
    excludeCategories: {
        type: 'string',
        default: '',
        description: 'Exclude categories (includeCategories より優先されます)',
    },
}

const args = process.argv.slice(2);
const parsedOptions = parseArgs({options, args});
const {
    help,
    force,
    targetSource,
    includeCategories,
    excludeCategories,
} = parsedOptions.values;

if (help) {
    console.log('Usage: node main.js [options]');
    console.log('Options:');
    for (const [option, {description}] of Object.entries(options)) {
        console.log(`  --${option}, -${description}`);
    }
    process.exit(0);
}

function extractYamlFiles(directoryPath) {
    const yamlFiles = [];

    fs.readdirSync(directoryPath).forEach(file => {
        const filePath = path.join(directoryPath, file);
        if (path.extname(filePath) === '.yml') {
            yamlFiles.push(filePath);
        }
    });

    return yamlFiles;
}

function createBlankMovieFile() {
    // ディレクトリがなければ作成
    fs.mkdirSync(outputDirectory, { recursive: true });
    const blankMovieFilePath = path.join(outputDirectory, 'blank.mp4');
    // 0.1秒のブランク動画を作成
    const ffmpegCommand = `ffmpeg -y -f lavfi -i color=c=black:s=1920x1080:r=30 -t 0.01 ${blankMovieFilePath}`;
    console.log(ffmpegCommand);
    childProcess.execSync(ffmpegCommand);
    return blankMovieFilePath;
}

function executeConvert(data, force) {
    const {
        name,
        source,
        fileName,
        videoId,
        startTime,
        durationTime,
    } = data;

    if (!videoId || !startTime || !durationTime) {
        return;
    }

    const originalMovieFilePath = path.join(outputDirectory, `${source}.mp4`);
    const outputMp4FilePath = path.join(outputDirectory, fileName.replace('.mp3', '.mp4'));
    // ディレクトリがなければ作成
    fs.mkdirSync(path.join(outputDirectory, source), { recursive: true });

    if (!fs.existsSync(originalMovieFilePath)) {
        // 元動画を元解像度でダウンロードする
        if (!fs.existsSync(originalMovieFilePath)) {
            const downloadCommand = `yt-dlp --recode-video mp4 -o ${originalMovieFilePath} -- ${videoId}`;
            console.log(downloadCommand);
            childProcess.execSync(downloadCommand);
        }
    }
    // 動画の切り出しをする
    if (!fs.existsSync(outputMp4FilePath) || force) {
        const scaleFilter = 'scale=1980:1080';
        // drawtext のオプション
        // text は表示する文字列
        // box は文字背景
        // boxcolor は文字背景の色 @ 以降は透過度
        // boxborderw は文字の周りの余白(縦横)
        // fontcolor は文字色
        // fontfile はフォントファイルのパス
        // fontsize は文字サイズ
        // x は文字のx座標
        // y は文字のy座標
        const text = name.replaceAll(' ', '\n');
        const drawTextOption = `text='${text}':box=1:boxcolor=white@0.7:boxborderw=10|20:fontcolor=red:fontfile=${fontPath}:fontsize=80:x=(w-text_w)/2:y=(h-120-text_h)`;
        const videoOption = `[0:v]${scaleFilter}[v0];[v0]drawtext=${drawTextOption}[v];`;
        // サンプリングレートを 44100Hz に変換
        const audioOption = `[0:a]aformat=sample_rates=44100[a];`;
        const complexFilter = [
            videoOption,
            audioOption,
        ].join('');
        const filter = [
            // ビットレートを128kbps に変換
            '-b:a 128k',
            `-filter_complex "${complexFilter}"`,
            '-map "[v]"',
            '-map "[a]"',
            '-c:v libx264',
        ].join(' ');
        const ffmpegCommand = `ffmpeg -y -ss ${startTime} -i ${originalMovieFilePath} -t ${durationTime} ${filter} ${outputMp4FilePath}`;
        console.log(ffmpegCommand);
        childProcess.execSync(ffmpegCommand);
    }
}

function createConcatCommand(originalVideoData, addVideoData, outputFilePath) {
    const video1Name = originalVideoData.name;
    const video2Name = addVideoData.name;
    const video1Path = originalVideoData.fileName;
    const video2Path = addVideoData.fileName;

    const scaleFilter = 'scale=1980:1080';
    const drawTextOption = `box=1:boxcolor=white@0.7:fontcolor=red:fontfile=${fontPath}:fontsize=60:x=(w-text_w)/2:y=(100)`;
    const video1Option = `[0:v]${scaleFilter}[v0];[v0]drawtext=text='${video1Name}':${drawTextOption}[v1];`;
    const video2Option = `[1:v]${scaleFilter}[v2];[v2]drawtext=text='${video2Name}':${drawTextOption}[v3];`;
    const videoConcat = `[v1][0:a][v3][1:a]concat=n=2:v=1:a=1[v][a];`;
    // const audioConcat = `[0:a]acopy[a0];[1:a]acopy[a1];[a0][a1]concat=v=0:a=1[a];`;

    const filterComplexArg = [
        video1Option,
        video2Option,
        videoConcat,
        // audioConcat,
    ].join('');

    return `ffmpeg -y -i ${video1Path} -i ${video2Path} -filter_complex "${filterComplexArg}" -map "[v]" -map "[a]" -c:v libx264 ${outputFilePath}`;
}

/**
 * 'H:MM:SS.SSS' 形式の文字列をミリ秒に変換する,
 * @param timeStr 'H:MM:SS.SSS' 形式の文字列
 */
function calcTime(timeStr) {
    const [hour, minute, second] = timeStr.split(':').map(Number);
    return ((hour * 60 + minute) * 60 + second) * 1000;
}

function compareClipDataTime(a, b) {
    if (!a.startTime || !b.startTime) {
        return 0;
    }
    const aStartTime = calcTime(a.startTime);
    const bStartTime = calcTime(b.startTime);
    if (aStartTime < bStartTime) {
        return -1;
    }
    if (aStartTime > bStartTime) {
        return 1;
    }
    return 0;
}

function isTargetClipData(clipData, targetSource, includeCategories, excludeCategories) {
    if (targetSource !== '' && clipData.source !== targetSource) {
        return false;
    }
    if (includeCategories !== '') {
        const includeCategoryList = includeCategories.split(',');
        if (!includeCategoryList.includes(clipData.category)) {
            return false;
        }
    }
    if (excludeCategories !== '') {
        const excludeCategoryList = excludeCategories.split(',');
        if (excludeCategoryList.includes(clipData.category)) {
            return false;
        }
    }
    return true;
}

function main(force, targetSource, includeCategories, excludeCategories) {
    // yamlファイルのリストを取得
    const foundYamlFiles = extractYamlFiles(targetDirectory);
    console.log(foundYamlFiles);
    // yamlファイルの中身を取得
    const allClipData = [];
    for (const filePath of foundYamlFiles) {
        const data = fs.readFileSync(filePath, 'utf-8');
        const yamlData = jsYaml.load(data);
        yamlData.sort(compareClipDataTime);
        for (const clipData of yamlData) {
            if (!isTargetClipData(clipData, targetSource, includeCategories, excludeCategories)) {
                continue;
            }
            executeConvert(clipData, force);
            allClipData.push(clipData);
        }
    }
    const concatList = [];
    for (const clipData of allClipData) {
        const {
            fileName,
        } = clipData;
        const outputMp4FilePath = path.join(outputDirectory, fileName.replace('.mp3', '.mp4'));
        if (!fs.existsSync(outputMp4FilePath)) {
            continue;
        }
        concatList.push(outputMp4FilePath);
    }
    const concatTxtFilePath = path.join(outputDirectory, 'concat.txt');
    const concatTxt = concatList.map((filePath) => `file '${filePath}'`).join('\n');
    const concatMovieFilePath = path.join(outputDirectory, 'concat.mp4');
    fs.writeFileSync(concatTxtFilePath, concatTxt);
    const concatCommand = `ffmpeg -y -f concat -safe 0 -i ${concatTxtFilePath} -c:v libx264 -c:a aac -map 0:v -map 0:a ${concatMovieFilePath}`;
    console.log(concatCommand);
    childProcess.execSync(concatCommand);
}

main(force, targetSource, includeCategories, excludeCategories);
