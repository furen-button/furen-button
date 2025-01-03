
# create-clip-movie-by-data

クリップデータに基づいて動画を生成するスクリプト

## Getting Started

```bash
npm install
node main.js
```

結果は `outputs` ディレクトリに出力されます。

初回実行時は `outputs` ディレクトリにできるだけ高画質の元動画がダウンロードされます。時間がかかるので注意してください。

```
Usage: node main.js [options]
Options:
    --help, -Print this help message
    --force, -Overwrite existing files
    --targetSource, -Target source name
    --includeCategories, -Include categories
    --excludeCategories, -Exclude categories (includeCategories より優先されます)
```
