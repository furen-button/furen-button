import sys
from yt_dlp import YoutubeDL
import pytchat

#動画のダウンロード
def youtube_dl(urls):
    ydl_video_opts = {
        'outtmpl': '%(id)s' + '.mp4',
        'format': 'best'
    }
    with YoutubeDL(ydl_video_opts) as ydl:
        ydl.download([urls])

output_dir = 'outputs/'

# チャットデータの取得
def chat_get(youtube_url):
        video_id = extract_video_id(youtube_url)
        livechat = pytchat.create(video_id=video_id)
        while livechat.is_alive():
            chatdata = livechat.get()
            if(len(chatdata.items) > 0):
                for c in chatdata.items:
                    # print(f"{c.datetime} {c.elapsedTime} {c.author.name} {c.message} {c.amountString}")
                    txt_in.append(f"{c.elapsedTime}\t{c.type}\t{c.author.name}\t{c.message}\t{c.amountString}\t{c.currency}\t{c.amountValue}\t{c.bgColor}" + '\n')
                # .txtで保存
                with open(output_dir + video_id + '_chatdata.txt', 'w', encoding='utf-8', newline='\n') as f:
                    f.writelines(txt_in)
            else:
                break

# URLからvideo_id抜き出し
def extract_video_id(url):
    with YoutubeDL() as ydl:
        info_dict = ydl.extract_info(url, download=False)
        return info_dict.get("id", None)

#コマンドから引数取得
if len(sys.argv) != 2:
    print("Usage: python script.py <youtube_url>")
    sys.exit(1)

#実行
txt_in = []
youtube_url = sys.argv[1]
# youtube_dl(youtube_url)
chat_get(youtube_url)
