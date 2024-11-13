import { TwitterApi, SendTweetV2Params } from 'twitter-api-v2';
import * as fs from 'node:fs';

const client = new TwitterApi({
    appKey: process.env.TWITTER_API_KEY,
    appSecret: process.env.TWITTER_API_SECRET,
    accessToken: process.env.TWITTER_ACCESS_TOKEN,
    accessSecret: process.env.TWITTER_ACCESS_SECRET
});

const dataFile = '../../public/dataset/sounds.json';
const relativeFilePath = '../../public/sounds/';

interface SoundData {
    name: string;
    movieFileName: string;
    sourceName: string;
    sourceUrl: string;
    clipUrl: string;
}

/**
 * ランダムでサウンドデータを取得する
 */
function getSoundData() {
    const rawData = fs.readFileSync(dataFile, 'utf-8');
    const data : SoundData[] = JSON.parse(rawData);
    const filteredData = data.filter((soundData) => {
        return soundData.movieFileName !== '';
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
    const text = `${soundData.name}\n#フレンボタン\n「${soundData.sourceName}」 より ${sourceUrl}`;
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

async function main() {
    const soundData = getSoundData();
    await postTweet(soundData);
}

main();
