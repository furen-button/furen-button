import { writeFile } from 'node:fs/promises'

const YOUTUBE_API_BASE = 'https://www.googleapis.com/youtube/v3'
const OUTPUT_FILE = 'result.json'

const REQUEST_INTERVAL_MS = 1000 // API リクエスト間の待機時間
const PLAYLIST_MAX_RESULTS = 50 // playlistItems.list の1リクエストあたり取得件数
const VIDEO_BATCH_SIZE = 50 // videos.list は id を最大50件まで指定可

const MAX_RETRIES = 3 // 429 / 5xx に対するリトライ回数
const RETRY_BASE_DELAY_MS = 1000 // 指数バックオフの基準待機時間

interface UploadsPlaylistResponse {
  items: Array<{
    contentDetails: {
      relatedPlaylists: {
        uploads: string
      }
    }
  }>
}

interface PlaylistItemsResponse {
  nextPageToken?: string
  pageInfo: {
    totalResults: number
  }
  items: Array<{
    snippet: {
      resourceId: {
        videoId: string
      }
    }
    status: {
      privacyStatus: string
    }
  }>
}

// videos.list の結果はそのまま出力にパススルーするため詳細な型は持たない
interface VideosResponse {
  items: Array<Record<string, unknown>>
}

const sleep = (ms: number): Promise<void> => new Promise((resolve) => setTimeout(resolve, ms))

function requireEnv(name: string): string {
  const value = process.env[name]
  if (value === undefined || value === '') {
    throw new Error(`${name} is not defined`)
  }
  return value
}

const API_KEY = requireEnv('YOUTUBE_API_KEY')

function buildUrl(resource: string, params: Record<string, string>): string {
  const url = new URL(`${YOUTUBE_API_BASE}/${resource}`)
  url.search = new URLSearchParams({ ...params, key: API_KEY }).toString()
  return url.toString()
}

async function fetchJson<T>(url: string): Promise<T> {
  for (let attempt = 0; ; attempt++) {
    const response = await fetch(url)
    if (response.ok) {
      return (await response.json()) as T
    }

    const retriable = response.status === 429 || response.status >= 500
    if (!retriable || attempt >= MAX_RETRIES) {
      throw new Error(`HTTP error! Status: ${response.status}`)
    }

    const delay = RETRY_BASE_DELAY_MS * 2 ** attempt
    console.warn(`Status ${response.status}, retrying in ${delay}ms (attempt ${attempt + 1}/${MAX_RETRIES})`)
    await sleep(delay)
  }
}

// channels.list でチャンネルのアップロード動画プレイリスト ID を取得する。
async function fetchUploadsPlaylistId(channelId: string): Promise<string> {
  const response = await fetchJson<UploadsPlaylistResponse>(
    buildUrl('channels', { part: 'contentDetails', id: channelId }),
  )
  const channel = response.items[0]
  if (channel === undefined) {
    throw new Error(`Channel not found: ${channelId}`)
  }
  return channel.contentDetails.relatedPlaylists.uploads
}

// playlistItems.list（1ユニット/回・件数無制限）でアップロードプレイリストの全動画 ID を取得する。
async function fetchVideoIds(uploadsPlaylistId: string): Promise<string[]> {
  const videoIds: string[] = []
  let pageToken: string | undefined

  do {
    const response = await fetchJson<PlaylistItemsResponse>(
      buildUrl('playlistItems', {
        part: 'snippet,status',
        maxResults: String(PLAYLIST_MAX_RESULTS),
        playlistId: uploadsPlaylistId,
        ...(pageToken !== undefined ? { pageToken } : {}),
      }),
    )

    for (const item of response.items) {
      // 非公開・削除済み動画を除外
      const privacy = item.status?.privacyStatus
      if (privacy === 'private' || privacy === 'privacyStatusUnspecified') {
        continue
      }
      videoIds.push(item.snippet.resourceId.videoId)
    }

    console.log(`${videoIds.length} / ${response.pageInfo.totalResults}`)
    pageToken = response.nextPageToken
    if (pageToken !== undefined) {
      await sleep(REQUEST_INTERVAL_MS)
    }
  } while (pageToken !== undefined)

  return videoIds
}

// videos.list で動画の詳細メタデータを 50 件ずつ取得する。
async function fetchVideoItems(videoIds: string[]): Promise<Array<Record<string, unknown>>> {
  const videoItems: Array<Record<string, unknown>> = []

  for (let i = 0; i < videoIds.length; i += VIDEO_BATCH_SIZE) {
    const batch = videoIds.slice(i, i + VIDEO_BATCH_SIZE)
    const response = await fetchJson<VideosResponse>(
      buildUrl('videos', {
        part: 'contentDetails,snippet,statistics,player',
        id: batch.join(','),
      }),
    )
    videoItems.push(...response.items)

    const fetched = Math.min(i + VIDEO_BATCH_SIZE, videoIds.length)
    console.log(`${fetched} / ${videoIds.length}`)
    if (fetched < videoIds.length) {
      await sleep(REQUEST_INTERVAL_MS)
    }
  }

  return videoItems
}

async function main(channelId: string): Promise<void> {
  const uploadsPlaylistId = await fetchUploadsPlaylistId(channelId)
  console.log(`uploads playlist: ${uploadsPlaylistId}`)

  const videoIds = await fetchVideoIds(uploadsPlaylistId)
  const videoItems = await fetchVideoItems(videoIds)

  await writeFile(OUTPUT_FILE, JSON.stringify(videoItems, null, 2))
  console.log(`Wrote ${videoItems.length} videos to ${OUTPUT_FILE}`)
}

const channelId = process.argv[2]
if (channelId === undefined) {
  throw new Error('Please specify a channel ID. e.g. npm start UCuep1JCrMvSxOGgGhBfJuYw')
}

await main(channelId)
