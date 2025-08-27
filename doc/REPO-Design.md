# フレンボタン - リポジトリ設計ドキュメント

## 概要

**フレンボタン**は、コーヴァス帝国から来た女騎士フレン・E・ルスタリオさんのボイス切り抜きをまとめたWebアプリケーションです。ユーザーはカテゴリ別にフィルタリングしたり、ランダム再生機能を使ってボイスを楽しむことができます。

## アーキテクチャ

### 技術スタック

#### フロントエンド
- **React 18**: メインのUIフレームワーク
- **TypeScript**: 型安全性の確保
- **Vite**: 高速なビルドツール
- **Material-UI (MUI)**: UIコンポーネントライブラリ
- **GSAP**: アニメーションライブラリ
- **React Router**: ルーティング管理

#### バックエンド・インフラ
- **Firebase Hosting**: 静的サイトホスティング
- **Firebase Realtime Database**: リアルタイムデータベース
- **Firebase Functions**: サーバーサイド処理

#### データ管理
- **YAML**: 音声データの管理形式
- **JSON**: フロントエンド用のデータ形式

## ディレクトリ構造

```
furen-button/
├── src/                          # メインアプリケーション
│   ├── components/               # Reactコンポーネント
│   ├── lib/                      # ユーティリティ関数
│   ├── types/                    # TypeScript型定義
│   └── dataset/                  # クライアント用データ
├── dataset/                      # 元データ（YAML形式）
│   ├── sounds/                   # 音声データ定義
│   ├── videolists/               # 動画リストデータ
│   ├── sources.yml               # 動画ソース情報
│   └── rss.yml                   # RSS配信データ
├── public/                       # 静的ファイル
│   ├── sounds/                   # 音声ファイル（MP3/WAV）
│   ├── img/                      # 画像ファイル
│   └── dataset/                  # 変換済みJSONデータ
├── scripts/                      # データ処理スクリプト
├── functions/                    # Firebase Functions
└── doc/                         # ドキュメント
```

## データフロー

### 1. データ作成フロー

```
1. 動画からボイス切り抜き作成
   ↓
2. public/sounds/ に音声ファイル配置
   ↓
3. dataset/sounds/*.yml に音声データ定義追加
   ↓
4. scripts/create_button_element/ でJSONに変換
   ↓
5. public/dataset/*.json として出力
   ↓
6. フロントエンドで読み込み
```

### 2. ユーザーインタラクション

```
ユーザー操作（ボタンクリック等）
   ↓
Firebase Realtime Database に記録
   ↓
Firebase Functions でカウント集計
   ↓
リアルタイムでUI更新
```

## 主要コンポーネント

### フロントエンド

#### Core Components
- `App.tsx`: メインアプリケーション
- `SoundButton.tsx`: 音声再生ボタン
- `SoundList.tsx`: 音声リスト表示
- `CategoryCheckList.tsx`: カテゴリフィルター

#### Data Management
- `SoundData.tsx`: 音声データ型定義
- `SoundDataFunctions.tsx`: データ操作関数
- `FirebaseFunctions.ts`: Firebase連携
- `CategoryFunctions.tsx`: カテゴリ関連処理

### バックエンド

#### Firebase Functions
- `updateCount`: 再生回数カウント更新処理

### データ変換スクリプト

#### Ruby Scripts
- `dataset_to_buttons.rb`: YAML → JSON変換（音声データ）
- `dataset_to_categories.rb`: カテゴリデータ生成
- `update_sources_yaml.rb`: 動画ソース情報更新
- `main.rb`: RSS配信データ生成

## データ構造

### 音声データ（YAML）

```yaml
- name: "音声名"
  ruby: "よみがな"
  source: "ソース識別子"
  fileName: "ファイルパス"
  category: ["カテゴリ1", "カテゴリ2"]
  clipUrl: "YouTube URL"
  videoId: "YouTube動画ID"
  startTime: "開始時間"
  durationTime: "再生時間"
```

### カテゴリ構造

音声は以下のカテゴリで分類されます：
- `emotions`: 感情表現
- `game`: ゲーム関連
- `damage`: ダメージボイス
- `sensitive`: センシティブな内容
- `collab`: コラボ配信
- `episode`: エピソード関連

## ビルド・デプロイフロー

### 開発環境

```bash
npm run dev          # 開発サーバー起動
npm run build        # 本番ビルド
npm run lint         # コードチェック
npm run fixlint      # 自動修正
```

### データ更新フロー

```bash
make all             # 全データ変換処理実行
```

このコマンドで以下が順次実行されます：
1. 動画ソース情報更新
2. 動画リスト生成
3. 音声データJSON変換
4. カテゴリデータ生成
5. RSS配信データ作成
6. コード整形

### Firebase デプロイ

```bash
firebase deploy      # Functions + Hosting デプロイ
```

## セキュリティ・パフォーマンス考慮

### セキュリティ
- Firebase Security Rules による適切なアクセス制御
- 環境変数による設定値管理
- CORS設定による適切なオリジン制限

### パフォーマンス
- Viteによる高速バンドル
- 音声ファイルの遅延読み込み
- Firebase Realtime Database でのリアルタイム更新
- 静的ホスティングによる高速配信

## ライセンス

- ソースコード: MIT License
- 音声・画像コンテンツ: 各権利者に帰属

## 開発ワークフロー

1. **音声追加**: `public/sounds/` に音声ファイル配置
2. **データ定義**: `dataset/sounds/*.yml` でメタデータ定義
3. **変換実行**: `make all` でJSON変換
4. **動作確認**: `npm run dev` でローカル確認
5. **デプロイ**: `npm run build && firebase deploy`

このアーキテクチャにより、効率的な音声コンテンツ管理と快適なユーザー体験を実現しています。
