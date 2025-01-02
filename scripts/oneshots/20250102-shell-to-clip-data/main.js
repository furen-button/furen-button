/**
 * シェルファイルからクリップデータを取得する
 */



// Path: scripts/oneshots/20250102-shell-to-clip-data/main.sh
const fs = require('fs');
const path = require('path');

// 抽出したいディレクトリのパス
const targetDirectory = path.join(__dirname, '../../../dataset/sounds');

function extractShFiles(directoryPath) {
    const shFiles = [];

    fs.readdirSync(directoryPath).forEach(file => {
        const filePath = path.join(directoryPath, file);
        if (path.extname(filePath) === '.sh') {
            shFiles.push(filePath);
        }
    });

    return shFiles;
}

function extractFFmpegArgs(ffmpegCommand) {
    // 正規表現で-ssと-tの引数を抽出
    const ssMatch = ffmpegCommand.match(/-ss\s+(\S+)/);
    const tMatch = ffmpegCommand.match(/-t\s+(\S+)/);
    const nameMatch = ffmpegCommand.match(/\/([^\/]+\.mp4)?$/);

    // 抽出結果をオブジェクトに格納
    const args = {};
    if (ssMatch) {
        args.ss = ssMatch[1];
    }
    if (tMatch) {
        args.t = tMatch[1];
    }
    if (nameMatch) {
        args.name = nameMatch[1];
    }
    return args;
}

// URL から YouTube Video ID を取得
function extractYouTubeVideoId(url) {
    const urlObj = new URL(url);
    return urlObj.searchParams.get('v');
}


function main() {
// shファイルのリストを取得
    const foundShFiles = extractShFiles(targetDirectory);
    console.log(foundShFiles);

    // shファイルの中身を取得
    for (const filePath of foundShFiles) {
        console.log(filePath);
        const data = fs.readFileSync(filePath, 'utf8');

        const outputData = [];
        // data を改行で分割
        const lines = data.split('\n');
        for (let i = 0; i < lines.length; i++) {
            const line = lines[i];
            // ffmpegコマンドを抽出
            if (line.includes('ffmpeg') && line.includes('-ss') && line.includes('-t')) {
                // ffmpegコマンドを抽出
                const ffmpegCommand = line;
                console.log(ffmpegCommand);
                // ffmpegコマンドから-ssと-tの引数を抽出
                const args = extractFFmpegArgs(ffmpegCommand);
                console.log(args);

                // 以降の行からEOFまでのデータを抽出
                const clipData = [];
                let isClipData = false;
                for (let j = i + 1; j < lines.length; j++) {
                    const line = lines[j];
                    if (line === 'EOF') {
                        break;
                    }
                    if (line.includes('EOF')) {
                        isClipData = true;
                        continue;
                    }
                    if (isClipData) {
                        if (line.includes('fileName')) {
                            const replaced = line.replace('wav', 'mp3');
                            // const replaced = line;
                            clipData.push(replaced);
                        } else {
                            clipData.push(line);
                        }
                        if (line.includes('clipUrl')) {
                            const videoId = extractYouTubeVideoId(line);
                            if (videoId) {
                                clipData.push(`  videoId: "${videoId}"`);
                            }
                        }
                    }
                }
                clipData.push(`  startTime: "${args.ss}"`);
                clipData.push(`  durationTime: "${args.t}"`);
                console.log(clipData);
                outputData.push(clipData.join('\n'));
            }
        }
        fs.writeFileSync(filePath.replace('.sh', '.yml'), outputData.join('\n'));
    }
}

main();
