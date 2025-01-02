const fs = require('fs');
const path = require('path');
const jsYaml = require('js-yaml');
const childProcess = require('node:child_process');

// 抽出したいディレクトリのパス
const targetDirectory = path.join(__dirname, '../../dataset/sounds');
// 出力するディレクトリのパス
const publicDirectory = path.join(__dirname, '../../public/sounds');

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

function executeConvert(data) {
    const {
        source,
        fileName,
        videoId,
        startTime,
        durationTime,
    } = data;

    if (!videoId || !startTime || !durationTime) {
        return;
    }

    const outputDirectory = path.join(publicDirectory, source);
    const movieFilePath = path.join(publicDirectory, `${source}.mp4`);
    const outputMp4FilePath = path.join(publicDirectory, fileName.replace('.mp3', '.mp4'));
    const outputWavFilePath = path.join(publicDirectory, fileName.replace('.mp3', '.wav'));
    // ディレクトリがなければ作成
    fs.mkdirSync(outputDirectory, { recursive: true });

    if (fs.existsSync(outputWavFilePath)) {
        return;
    }
    // 元動画を一定解像度でダウンロードする
    if (!fs.existsSync(movieFilePath)) {
        const downloadCommand = `yt-dlp -S "res:480" -f mp4 -o ${movieFilePath} -- ${videoId}`;
        console.log(downloadCommand);
        childProcess.execSync(downloadCommand, { stdio: 'inherit' });
    }
    // 動画の切り出しをする
    if (!fs.existsSync(outputMp4FilePath)) {
        const ffmpegCommand = `ffmpeg -y -ss ${startTime} -i ${movieFilePath} -t ${durationTime} ${outputMp4FilePath}`;
        console.log(ffmpegCommand);
        childProcess.execSync(ffmpegCommand);
    }
    // mp4をwavに変換する
    if (!fs.existsSync(outputWavFilePath)) {
        const ffmpegCommand = `ffmpeg -y -i ${outputMp4FilePath} -vn ${outputWavFilePath}`;
        console.log(ffmpegCommand);
        childProcess.execSync(ffmpegCommand);
    }
}

function main() {
    // yamlファイルのリストを取得
    const foundYamlFiles = extractYamlFiles(targetDirectory);
    console.log(foundYamlFiles);

    // yamlファイルの中身を取得
    for (const filePath of foundYamlFiles) {
        const data = fs.readFileSync(filePath, 'utf-8');
        const yamlData = jsYaml.load(data);
        for (const clipData of yamlData) {
            executeConvert(clipData);
        }
    }
}

main();
