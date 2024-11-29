import { TwitterApi, TwitterApiTokens, SendTweetV2Params, TweetV2PostTweetResult } from 'twitter-api-v2';
import { promisify } from 'node:util';
import { exec } from 'node:child_process';
import * as fs from 'node:fs';

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

interface SoundData {
    name: string;
    movieFileName: string;
    sourceDate: string;
    sourceName: string;
    sourceUrl: string;
    clipUrl: string;
}

const soundDataList : SoundData[] = JSON.parse(fs.readFileSync('../../public/dataset/sounds.json', 'utf-8'));
const WAIT_TIME = 20000;

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
    // 結合
    const concatFilePath = `concat.mp4`;
    await execAwait(`ffmpeg -f concat -safe 0 -i ${inputFilePath} -c copy -y ${concatFilePath}`);
    // アップコンバート
    const outputFilePath = `output.mp4`;
    await execAwait(`ffmpeg -i ${concatFilePath} -vf xbr=n=2 -pix_fmt yuv420p -y ${outputFilePath}`);
    const soundNames = soundDataList.map((soundData) => {
        return `「${soundData.name}」`;
    }).join('');
    const text = `${soundNames}\n#フレンボタン\n出典はツリーにて`;
    const mediaId = await client.v1.uploadMedia(outputFilePath);
    const postParams : SendTweetV2Params = {
        text: text,
        media: {
            media_ids: [mediaId]
        }
    };
    const treePostParams : SendTweetV2Params[] = soundDataList.map((soundData) => {
        const sourceUrl = soundData.clipUrl !== '' ? soundData.clipUrl : soundData.sourceUrl;
        const text = `${soundData.name}\n#フレンボタン\n${soundData.sourceDate}「${soundData.sourceName}」 より ${sourceUrl}`;
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
        await new Promise((resolve) => setTimeout(resolve, WAIT_TIME));
        const tweet = await client.v2.tweet(param);
        postedTweets.push(tweet);
    }
}

async function main() {
    // const soundData = getSoundData();
    // await postTweet(soundData);
    const soundDataList = Array.from(Array(7)).map(() => {
        return getSoundData();
    });
    await postTweetThread(soundDataList);
}

main();
