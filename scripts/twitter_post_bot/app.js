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
var __spreadArray = (this && this.__spreadArray) || function (to, from, pack) {
    if (pack || arguments.length === 2) for (var i = 0, l = from.length, ar; i < l; i++) {
        if (ar || !(i in from)) {
            if (!ar) ar = Array.prototype.slice.call(from, 0, i);
            ar[i] = from[i];
        }
    }
    return to.concat(ar || Array.prototype.slice.call(from));
};
Object.defineProperty(exports, "__esModule", { value: true });
var twitter_api_v2_1 = require("twitter-api-v2");
var node_util_1 = require("node:util");
var node_child_process_1 = require("node:child_process");
var fs = require("node:fs");
var tokens = {
    appKey: process.env.TWITTER_API_KEY,
    appSecret: process.env.TWITTER_API_SECRET,
    accessToken: process.env.TWITTER_ACCESS_TOKEN,
    accessSecret: process.env.TWITTER_ACCESS_SECRET
};
var client = new twitter_api_v2_1.TwitterApi(tokens);
var relativeFilePath = '../../public/sounds/';
var soundDataList = JSON.parse(fs.readFileSync('../../public/dataset/sounds.json', 'utf-8'));
/**
 * ランダムでサウンドデータを取得する
 */
function getSoundData() {
    var filteredData = soundDataList.filter(function (soundData) {
        var hasMovie = soundData.movieFileName !== '';
        var hasSource = soundData.sourceDate !== '';
        return hasMovie && hasSource;
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
                    text = "".concat(soundData.name, "\n#\u30D5\u30EC\u30F3\u30DC\u30BF\u30F3\n").concat(soundData.sourceDate, "\u300C").concat(soundData.sourceName, "\u300D \u3088\u308A ").concat(sourceUrl);
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
/**
 * 動画付きツイートを投稿する
 * @param soundDataList サウンドデータ
 */
function postTweetThread(soundDataList) {
    return __awaiter(this, void 0, void 0, function () {
        var execAwait, inputFileList, inputFilePath, outputFilePath, soundNames, text, mediaId, postParams, treePostParams, params, postedTweets, i, param, lastTweet, tweet;
        var _a;
        return __generator(this, function (_b) {
            switch (_b.label) {
                case 0:
                    console.log(soundDataList);
                    execAwait = (0, node_util_1.promisify)(node_child_process_1.exec);
                    inputFileList = soundDataList.map(function (soundData) {
                        return "file '".concat(relativeFilePath).concat(soundData.movieFileName, "'");
                    }).join('\n');
                    inputFilePath = "input_list.txt";
                    fs.writeFileSync(inputFilePath, inputFileList);
                    outputFilePath = "output.mp4";
                    return [4 /*yield*/, execAwait("ffmpeg -f concat -safe 0 -i ".concat(inputFilePath, " -c copy -y ").concat(outputFilePath))];
                case 1:
                    _b.sent();
                    soundNames = soundDataList.map(function (soundData) {
                        return "\u300C".concat(soundData.name, "\u300D");
                    }).join('');
                    text = "".concat(soundNames, "\n#\u30D5\u30EC\u30F3\u30DC\u30BF\u30F3\n\u51FA\u5178\u306F\u30C4\u30EA\u30FC\u306B\u3066");
                    return [4 /*yield*/, client.v1.uploadMedia(outputFilePath)];
                case 2:
                    mediaId = _b.sent();
                    postParams = {
                        text: text,
                        media: {
                            media_ids: [mediaId]
                        }
                    };
                    treePostParams = soundDataList.map(function (soundData) {
                        var sourceUrl = soundData.clipUrl !== '' ? soundData.clipUrl : soundData.sourceUrl;
                        var text = "".concat(soundData.name, "\n#\u30D5\u30EC\u30F3\u30DC\u30BF\u30F3\n").concat(soundData.sourceDate, "\u300C").concat(soundData.sourceName, "\u300D \u3088\u308A ").concat(sourceUrl);
                        return {
                            text: text,
                        };
                    });
                    params = __spreadArray([postParams], treePostParams, true);
                    postedTweets = [];
                    i = 0;
                    _b.label = 3;
                case 3:
                    if (!(i < params.length)) return [3 /*break*/, 7];
                    param = params[i];
                    lastTweet = postedTweets.length ? postedTweets[postedTweets.length - 1] : null;
                    if (lastTweet) {
                        param.reply = {
                            in_reply_to_tweet_id: (_a = lastTweet.data) === null || _a === void 0 ? void 0 : _a.id
                        };
                    }
                    return [4 /*yield*/, client.v2.tweet(param)];
                case 4:
                    tweet = _b.sent();
                    postedTweets.push(tweet);
                    return [4 /*yield*/, new Promise(function (resolve) { return setTimeout(resolve, 5000); })];
                case 5:
                    _b.sent();
                    _b.label = 6;
                case 6:
                    i++;
                    return [3 /*break*/, 3];
                case 7: return [2 /*return*/];
            }
        });
    });
}
function main() {
    return __awaiter(this, void 0, void 0, function () {
        var soundDataList;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    soundDataList = Array.from(Array(7)).map(function () {
                        return getSoundData();
                    });
                    return [4 /*yield*/, postTweetThread(soundDataList)];
                case 1:
                    _a.sent();
                    return [2 /*return*/];
            }
        });
    });
}
// main();
