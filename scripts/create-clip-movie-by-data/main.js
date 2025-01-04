const fs = require('fs');
const path = require('path');
const jsYaml = require('js-yaml');
const childProcess = require('node:child_process');
const { parseArgs } = require("node:util");

// 抽出したいディレクトリのパス
const targetDirectory = path.join(__dirname, '../../dataset/sounds');
// ソースデータのパス
const sourceDataFilePath = path.join(__dirname, '../../dataset/sources.yml');
// 出力するディレクトリのパス
const outputDirectory = path.join(__dirname, './outputs');
// フォントのパス
const fontPath = path.join(__dirname, './keifont.ttf');

// drawtext のオプション
// text は表示する文字列
// box は文字背景
// boxcolor は文字背景の色 @ 以降は透過度
// boxborderw は文字の周りの余白(縦|横)
// fontcolor は文字色
// fontfile はフォントファイルのパス
// fontsize は文字サイズ
// x は文字のx座標
// y は文字のy座標
// bordercolor は文字アウトラインの色
// borderw は文字アウトラインの太さ
// text_align は文字の配置
const textParameter = {
    box: 1,
    boxColor: 'white@0.8',
    boxBorderW: '20|30',
    fontColor: 'red',
    fontFile: fontPath,
    fontSize: 80,
    x: '(w-text_w)/2',
    y: '(h-120-text_h)',
    borderColor: 'black',
    borderW: 3,
    textAlign: 'L+M',
}

const titleTextParameter = {
    box: 1,
    boxColor: 'black@0.7',
    boxBorderW: '10|10',
    fontColor: 'red',
    fontFile: fontPath,
    fontSize: 30,
    x: 10,
    y: '15',
    borderColor: 'white',
    borderW: 2,
    textAlign: 'L+M',
}

const dateTextParameter = {
    box: 1,
    boxColor: 'black@0.7',
    boxBorderW: '12|20',
    fontColor: 'red',
    fontFile: fontPath,
    fontSize: 50,
    x: 10,
    y: '70',
    borderColor: 'white',
    borderW: 2,
    textAlign: 'L+M',
};

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
    outputFileName: {
        type: 'string',
        short: 'o',
        default: '',
        description: 'Output file name',
    }
}

const args = process.argv.slice(2);
const parsedOptions = parseArgs({options, args});
const {
    help,
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

function createDrawTextOption(text, parameter) {
    return `drawtext=text='${text}':box=${parameter.box}:boxcolor=${parameter.boxColor}:boxborderw=${parameter.boxBorderW}:fontcolor=${parameter.fontColor}:fontfile=${parameter.fontFile}:fontsize=${parameter.fontSize}:x=${parameter.x}:y=${parameter.y}:bordercolor=${parameter.borderColor}:borderw=${parameter.borderW}:text_align=${parameter.textAlign}`;
}

function executeConvert(data, force) {
    const {
        name,
        source,
        fileName,
        videoId,
        startTime,
        durationTime,
        title,
        publishedAt,
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
        // NOTE: 半角スペースを改行に変換
        const text = name.replaceAll(' ', '\n');
        const drawTextOption = createDrawTextOption(text, textParameter);
        const dateText = publishedAt.split('T')[0];
        const drawDateOption = createDrawTextOption(dateText, dateTextParameter);
        const drawTitleOption = createDrawTextOption(title, titleTextParameter);
        const videoOption = `[0:v]${scaleFilter}[v0];[v0]${drawTextOption}[v1];[v1]${drawDateOption}[v2];[v2]${drawTitleOption}[video_out];`;
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
            '-map "[video_out]"',
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
function parseTimeStr(timeStr) {
    const [hour, minute, second] = timeStr.split(':').map(Number);
    return ((hour * 60 + minute) * 60 + second) * 1000;
}

/**
 * YYYY-MM-DDTHH:MM:SS.SSSZ 形式の文字列を Date オブジェクトに変換する
 * @param timeStr 'YYYY-MM-DDTHH:MM:SS.SSSZ' 形式の文字列
 */
function parsePublishedAt(timeStr) {
    return new Date(timeStr);
}

/**
 * ClipData の startTime で比較する
 * @param a
 * @param b
 * @returns {number}
 */
function compareClipDataTime(a, b) {
    if (!a.startTime || !b.startTime) {
        return 0;
    }
    const aStartTime = parseTimeStr(a.startTime);
    const bStartTime = parseTimeStr(b.startTime);
    if (aStartTime < bStartTime) {
        return -1;
    }
    if (aStartTime > bStartTime) {
        return 1;
    }
    return 0;
}

/**
 * ClipData の publishedAt で比較する
 * @param a
 * @param b
 * @returns {number}
 */
function compareClipDataPublishedAt(a, b) {
    if (!a.publishedAt || !b.publishedAt) {
        return 0;
    }
    const aPublishedAt = parsePublishedAt(a.publishedAt);
    const bPublishedAt = parsePublishedAt(b.publishedAt);
    if (aPublishedAt < bPublishedAt) {
        return -1;
    }
    if (aPublishedAt > bPublishedAt) {
        return 1;
    }
    return compareClipDataTime(a, b);
}

function isTargetClipData(clipData, targetSource, includeCategories, excludeCategories) {
    if (targetSource !== '' && clipData.source !== targetSource) {
        return false;
    }
    const categoryList = clipData.category;
    if (excludeCategories !== '') {
        const excludeCategoryList = excludeCategories.split(',');
        for (const category of categoryList) {
            if (excludeCategoryList.includes(category)) {
                return false;
            }
        }
    }
    if (includeCategories !== '') {
        const includeCategoryList = includeCategories.split(',');
        for (const category of categoryList) {
            if (includeCategoryList.includes(category)) {
                return true;
            }
        }
        return false;
    }
    return true;
}

function updateClipDataBySourceDataList(clipData, sourceDataList) {
    const sourceData = sourceDataList.find((data) => data.tag === clipData.source);
    if (!sourceData) {
        return clipData;
    }
    clipData.title = sourceData.title;
    clipData.publishedAt = sourceData.publishedAt;
    return clipData;
}

function main(parsedArgs) {
    const {
        force,
        targetSource,
        includeCategories,
        excludeCategories,
        outputFileName,
    } = parsedArgs;
    // yamlファイルのリストを取得
    const foundYamlFiles = extractYamlFiles(targetDirectory);
    const sourceDataList = jsYaml.load(fs.readFileSync(sourceDataFilePath, 'utf-8')).sources;
    console.log(sourceDataList);
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
            const updatedClipData = updateClipDataBySourceDataList(clipData, sourceDataList);
            executeConvert(updatedClipData, force);
            allClipData.push(updatedClipData);
        }
    }
    allClipData.sort(compareClipDataPublishedAt);
    console.log(allClipData);
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

    const resultMovieFilePath = outputFileName === '' ?
        path.join(outputDirectory, 'result.mp4') :
        outputFileName;
    fs.writeFileSync(concatTxtFilePath, concatTxt);
    const concatCommand = `ffmpeg -y -f concat -safe 0 -i ${concatTxtFilePath} -c:v libx264 -c:a aac -map 0:v -map 0:a ${resultMovieFilePath}`;
    console.log(concatCommand);
    childProcess.execSync(concatCommand);
}

main(parsedOptions.values);
