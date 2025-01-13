import { TwitterApi, TwitterApiTokens, SendTweetV2Params, TweetV2PostTweetResult } from 'twitter-api-v2';
import { promisify } from 'node:util';
import { exec } from 'node:child_process';
import * as fs from 'node:fs';
import {Metadata} from "sharp";
const sharp = require('sharp');

declare const process : {
    env: {
        TWITTER_API_KEY: string,
        TWITTER_API_SECRET: string,
        TWITTER_ACCESS_TOKEN: string,
        TWITTER_ACCESS_SECRET: string
    }
}

const tokens : TwitterApiTokens = {
    appKey: process.env.TWITTER_API_KEY,
    appSecret: process.env.TWITTER_API_SECRET,
    accessToken: process.env.TWITTER_ACCESS_TOKEN,
    accessSecret: process.env.TWITTER_ACCESS_SECRET
};

const client = new TwitterApi(tokens);

const relativeFilePath = '../../public/sounds/';
const outputDirectoryPath = './outputs';
const WaitTime = 3000;
const MergeNum = 9;

interface SoundData {
    name: string;
    movieFileName: string;
    sourceDate: string;
    sourceName: string;
    sourceUrl: string;
    clipUrl: string;
}

const soundDataList : SoundData[] = JSON.parse(fs.readFileSync('../../public/dataset/sounds.json', 'utf-8'));

/**
 * ランダムでサウンドデータを取得する
 */
function getSoundData() {
    const filteredData = soundDataList.filter((soundData) => {
        const hasMovie = soundData.movieFileName !== '';
        const hasSource = soundData.sourceDate !== '';
        return hasMovie && hasSource;
    });
    const randomIndex = Math.floor(Math.random() * filteredData.length);
    return filteredData[randomIndex];
}

/**
 * 動画付きツイートを投稿する
 * @param soundData サウンドデータ
 */
async function postTweet(soundData: SoundData) {
    console.log(soundData);
    const mediaFilePath = `${relativeFilePath}${soundData.movieFileName}`;
    if (!fs.existsSync(mediaFilePath)) {
        return;
    }

    const sourceUrl = soundData.clipUrl !== '' ? soundData.clipUrl : soundData.sourceUrl;
    const text = `${soundData.name}\n#フレンボタン\n${soundData.sourceDate}「${soundData.sourceName}」 より ${sourceUrl}`;
    console.log(text);
    const mediaId = await client.v1.uploadMedia(mediaFilePath);
    const postParams : SendTweetV2Params = {
        text: text,
        media: {
            media_ids: [mediaId]
        }
    };
    await client.v2.tweet(postParams);
}

/**
 * 動画付きツイートを投稿する
 * @param soundDataList サウンドデータ
 */
async function postTweetThread(soundDataList: SoundData[]) {
    console.log(soundDataList);
    const execAwait = promisify(exec);
    const inputFileList = soundDataList.map((soundData) => {
        return `file '${relativeFilePath}${soundData.movieFileName}'`;
    }).join('\n');
    const inputFilePath = `input_list.txt`;
    fs.writeFileSync(inputFilePath, inputFileList);
    const outputMovieFilePath = `${outputDirectoryPath}/output.mp4`;
    await execAwait(`ffmpeg -y -f concat -safe 0 -i ${inputFilePath} -c copy ${outputMovieFilePath}`);
    const soundNames = soundDataList.map((soundData) => {
        return `「${soundData.name}」`;
    }).join('');
    const text = `${soundNames}\n#フレンボタン\n出典はサイトにて`;
    const mediaId = await client.v1.uploadMedia(outputMovieFilePath);
    const outputImageFilePath = `${outputDirectoryPath}/output.jpg`;
    const imageMediaId = await client.v1.uploadMedia(outputImageFilePath);
    const postParams : SendTweetV2Params = {
        text: text,
        media: {
            media_ids: [mediaId, imageMediaId]
        }
    };
    const treePostParams : SendTweetV2Params[] = soundDataList.map((soundData) => {
        const sourceUrl = soundData.clipUrl !== '' ? soundData.clipUrl : soundData.sourceUrl;
        const text = `${soundData.name}\n${soundData.sourceDate}「${soundData.sourceName}」 より ${sourceUrl}`;
        return {
            text: text,
        }
    });
    const params = [postParams, ...treePostParams];
    const postedTweets : TweetV2PostTweetResult[] = [];
    for (let i = 0; i < params.length; i++) {
        const param = params[i];
        const lastTweet = postedTweets.length ? postedTweets[postedTweets.length - 1] : null;
        if (lastTweet) {
            param.reply = {
                in_reply_to_tweet_id: lastTweet.data?.id
            };
        }
        const tweet = await client.v2.tweet(param);
        postedTweets.push(tweet);
        await new Promise((resolve) => setTimeout(resolve, WaitTime));
    }
}

function unique<T>(array: T[]) {
    return Array.from(new Set(array));
}

/**
 * YouTubeのURLから動画IDを取得する
 * @param url
 */
function getYoutubeId(url: string) {
    const match = url.match(/v=([^&]+)/);
    return match ? match[1] : null;
}

/**
 * YouTubeのサムネイルをダウンロードする
 * @param videoId
 */
async function downloadYoutubeThumbnail(videoId: string) {
    const thumbnailUrl = `https://img.youtube.com/vi/${videoId}/maxresdefault.jpg`;
    const response = await fetch(thumbnailUrl);
    const buffer = await response.arrayBuffer();
    const array = new Uint8Array(buffer);
    const filePath = `${outputDirectoryPath}/${videoId}.jpg`
    fs.writeFileSync(filePath, array);
    console.log(`Downloaded: ${filePath}`);
    await new Promise((resolve) => setTimeout(resolve, WaitTime));
}

/**
 * 画像を指定サイズにリサイズして合成する
 * @param imagePaths 画像のパス
 * @param outputPath 出力先のパス
 */
async function mergeImagesToSquare(imagePaths : string[], outputPath: string) {
    const targetWidth = 640;
    const targetHeight = 360;
    const backgroundColor = '#ffffff'; // 背景色

    // 画像を読み込み、リサイズする
    const resizedImages = await Promise.all(imagePaths.map(async (path) => {
        // Resizing images: https://sharp.pixelplumbing.com/api-resize
        return sharp(path).resize({
            width: targetWidth,
            height: targetHeight,
            fit: "contain",
            background: backgroundColor
        }).toBuffer();
    }));

    // 画像の配置を計算する
    const rowLength = Math.ceil(Math.sqrt(resizedImages.length));
    const rows = [];
    for (let i = 0; i < resizedImages.length; i += rowLength) {
        rows.push(resizedImages.slice(i, i + rowLength));
    }

    // 新しい画像を作成し、画像を合成する
    const totalWidth = rowLength * targetWidth;
    const totalHeight = Math.ceil(resizedImages.length / rowLength) * targetHeight;
    await sharp({
        create: {
            width: totalWidth,
            height: totalHeight,
            channels: 3,
            background: backgroundColor
        }
    })
        .flatten()
        .composite(rows.flatMap((row, rowIndex) => row.map((image, colIndex) => ({
            input: image,
            left: colIndex * targetWidth,
            top: rowIndex * targetHeight,
        }))))
        .toFile(outputPath);
}

async function mergeImages(videoIds: string[]) {
    console.log(videoIds);
    const inputFilePaths = videoIds.map((videoId) => {
        return `${outputDirectoryPath}/${videoId}.jpg`;
    });
    const outputFilePath = `${outputDirectoryPath}/output.jpg`;
    await mergeImagesToSquare(inputFilePaths, outputFilePath);
}

async function main() {
    fs.rmSync(outputDirectoryPath, { recursive: true, force: true });
    fs.mkdirSync(outputDirectoryPath, { recursive: true });
    const selectedSoundDataList = Array.from(Array(MergeNum)).map(() => {
        return getSoundData();
    });

    const videoIds = selectedSoundDataList.map((soundData) => {
        return getYoutubeId(soundData.sourceUrl);
    }).filter((videoId) => { return videoId !== null; }) as string[];
    for (const videoId of unique(videoIds)) {
        if (videoId) {
            await downloadYoutubeThumbnail(videoId);
        }
    }
    await new Promise((resolve) => setTimeout(resolve, WaitTime));
    await mergeImages(videoIds);
    await postTweetThread(selectedSoundDataList);
}

main();
