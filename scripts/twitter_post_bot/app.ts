import { TwitterApi, SendTweetV2Params } from 'twitter-api-v2';
import * as fs from 'node:fs';

const client = new TwitterApi({
    appKey: process.env.TWITTER_API_KEY,
    appSecret: process.env.TWITTER_API_SECRET,
    accessToken: process.env.TWITTER_ACCESS_TOKEN,
    accessSecret: process.env.TWITTER_ACCESS_SECRET
});

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

async function main() {
    const soundData = getSoundData();
    await postTweet(soundData);
}

main();
