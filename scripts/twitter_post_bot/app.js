"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g = Object.create((typeof Iterator === "function" ? Iterator : Object).prototype);
    return g.next = verb(0), g["throw"] = verb(1), g["return"] = verb(2), typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (g && (g = 0, op[0] && (_ = 0)), _) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
Object.defineProperty(exports, "__esModule", { value: true });
var twitter_api_v2_1 = require("twitter-api-v2");
var fs = require("node:fs");
var client = new twitter_api_v2_1.TwitterApi({
    appKey: process.env.TWITTER_API_KEY,
    appSecret: process.env.TWITTER_API_SECRET,
    accessToken: process.env.TWITTER_ACCESS_TOKEN,
    accessSecret: process.env.TWITTER_ACCESS_SECRET
});
var dataFile = '../../public/dataset/sounds.json';
var relativeFilePath = '../../public/sounds/';
/**
 * ランダムでサウンドデータを取得する
 */
function getSoundData() {
    var rawData = fs.readFileSync(dataFile, 'utf-8');
    var data = JSON.parse(rawData);
    var filteredData = data.filter(function (soundData) {
        return soundData.movieFileName !== '';
    });
    var randomIndex = Math.floor(Math.random() * filteredData.length);
    return filteredData[randomIndex];
}
/**
 * 動画付きツイートを投稿する
 * @param soundData サウンドデータ
 */
function postTweet(soundData) {
    return __awaiter(this, void 0, void 0, function () {
        var mediaFilePath, sourceUrl, text, mediaId, postParams;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    console.log(soundData);
                    mediaFilePath = "".concat(relativeFilePath).concat(soundData.movieFileName);
                    if (!fs.existsSync(mediaFilePath)) {
                        return [2 /*return*/];
                    }
                    sourceUrl = soundData.clipUrl !== '' ? soundData.clipUrl : soundData.sourceUrl;
                    text = "".concat(soundData.name, "\n#\u30D5\u30EC\u30F3\u30DC\u30BF\u30F3\n\u300C").concat(soundData.sourceName, "\u300D \u3088\u308A ").concat(sourceUrl);
                    console.log(text);
                    return [4 /*yield*/, client.v1.uploadMedia(mediaFilePath)];
                case 1:
                    mediaId = _a.sent();
                    postParams = {
                        text: text,
                        media: {
                            media_ids: [mediaId]
                        }
                    };
                    return [4 /*yield*/, client.v2.tweet(postParams)];
                case 2:
                    _a.sent();
                    return [2 /*return*/];
            }
        });
    });
}
function main() {
    return __awaiter(this, void 0, void 0, function () {
        var soundData;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    soundData = getSoundData();
                    return [4 /*yield*/, postTweet(soundData)];
                case 1:
                    _a.sent();
                    return [2 /*return*/];
            }
        });
    });
}
main();
