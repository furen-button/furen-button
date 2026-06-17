import { writeFileSync } from 'fs'
const YOUTUBE_CHANNELS_URL = 'https://www.googleapis.com/youtube/v3/channels'
const YOUTUBE_PLAYLIST_ITEMS_URL = 'https://www.googleapis.com/youtube/v3/playlistItems'
const YOUTUBE_VIDEO_URL = 'https://www.googleapis.com/youtube/v3/videos'
const FILE_NAME = 'result.json'
const WAIT_TIME = 1000
const PLAYLIST_MAX_RESULTS = 50 // playlistItems.list の1リクエストあたり取得件数
const VIDEO_BATCH_SIZE = 50 // videos.list は id を最大50件まで指定可
console.debug = function () { }

if (process.env.YOUTUBE_API_KEY === undefined) {
  throw new Error('YOUTUBE_API_KEY is not defined')
}
const API_KEY: string = process.env.YOUTUBE_API_KEY

if (process.argv[2] === undefined) {
  throw new Error('Please specify a channel ID. e.g. npm start UCuep1JCrMvSxOGgGhBfJuYw')
}
const CHANNEL_ID: string = process.argv[2]

interface FetchRequest {
  url: string
  options: object
}

interface YouTubeChannelsResponse {
  kind: string
  etag: string
  items: Array<{
    id: string
    contentDetails: {
      relatedPlaylists: {
        uploads: string
      }
    }
  }>
}

interface YouTubePlaylistItemsResponseItem {
  snippet: {
    resourceId: {
      kind: string
      videoId: string
    }
  }
  status: {
    privacyStatus: string
  }
}

interface YouTubePlaylistItemsResponse {
  kind: string
  etag: string
  nextPageToken: string | undefined
  pageInfo: {
    totalResults: number
    resultsPerPage: number
  }
  items: YouTubePlaylistItemsResponseItem[]
}

interface YouTubeVideoResponse {
  kind: string
  etag: string
  items: object[]
}

const sleep = async (msec: number): Promise<void> => { await new Promise(resolve => setTimeout(resolve, msec)) }

async function fetchAsync(request: FetchRequest): Promise<string> {
  return await fetch(request.url, request.options)
    .then(async (response) => {
      if (!response.ok) {
        throw new Error(`HTTP error! Status: ${response.status}`)
      }

      return await response.blob()
    })
    .then(async (response) => {
      return await response.text()
    })
}

function createRequestURL(baseUrl: string, requestParam: string): string {
  return baseUrl + '?' + requestParam + '&key=' + API_KEY
}

// channels.list でチャンネルのアップロード動画プレイリスト ID を取得する。
async function fetchUploadsPlaylistId(channelId: string): Promise<string> {
  const result = await fetchAsync({
    url: createRequestURL(YOUTUBE_CHANNELS_URL, 'part=contentDetails&id=' + channelId),
    options: {}
  })
  console.debug(result)
  const response: YouTubeChannelsResponse = JSON.parse(result)
  if (response.items.length === 0) {
    throw new Error(`Channel not found: ${channelId}`)
  }
  return response.items[0].contentDetails.relatedPlaylists.uploads
}

// playlistItems.list（1ユニット/回・件数無制限）でアップロードプレイリストの全動画 ID を取得する。
async function fetchVideoIds(uploadsPlaylistId: string): Promise<string[]> {
  const videoIds: string[] = []
  let nextRequestParam: string = 'part=snippet,status&maxResults=' + PLAYLIST_MAX_RESULTS + '&playlistId=' + uploadsPlaylistId

  while (true) {
    const result = await fetchAsync({
      url: createRequestURL(YOUTUBE_PLAYLIST_ITEMS_URL, nextRequestParam),
      options: {}
    })
    console.debug(result)
    const response: YouTubePlaylistItemsResponse = JSON.parse(result)
    for (const item of response.items) {
      // 非公開・削除済み動画を除外
      const privacy = item.status?.privacyStatus
      if (privacy === 'private' || privacy === 'privacyStatusUnspecified') {
        continue
      }
      videoIds.push(item.snippet.resourceId.videoId)
    }
    console.log(`${videoIds.length} / ${response.pageInfo.totalResults}`)
    if (response.nextPageToken === undefined) {
      break
    }
    nextRequestParam = 'part=snippet,status&maxResults=' + PLAYLIST_MAX_RESULTS + '&playlistId=' + uploadsPlaylistId + '&pageToken=' + response.nextPageToken
    await sleep(WAIT_TIME)
  }

  return videoIds
}

async function main(channelId: string): Promise<void> {
  const uploadsPlaylistId = await fetchUploadsPlaylistId(channelId)
  console.log(`uploads playlist: ${uploadsPlaylistId}`)

  const videoIds = await fetchVideoIds(uploadsPlaylistId)

  const videoItems: object[] = []
  for (let i = 0; i < videoIds.length; i += VIDEO_BATCH_SIZE) {
    const batch = videoIds.slice(i, i + VIDEO_BATCH_SIZE)
    const result = await fetchAsync({
      url: createRequestURL(YOUTUBE_VIDEO_URL, 'part=contentDetails,snippet,statistics,player&id=' + batch.join(',')),
      options: {}
    })
    console.debug(result)
    console.log(`${Math.min(i + VIDEO_BATCH_SIZE, videoIds.length)} / ${videoIds.length}`)
    const youTubeVideoResponse: YouTubeVideoResponse = JSON.parse(result)
    for (const item of youTubeVideoResponse.items) {
      videoItems.push(item)
    }
    if (i + VIDEO_BATCH_SIZE < videoIds.length) {
      await sleep(WAIT_TIME)
    }
  }

  writeFileSync(FILE_NAME, JSON.stringify(videoItems, null, 2))
}

main(CHANNEL_ID).catch((error) => {
  console.error(error)
})
