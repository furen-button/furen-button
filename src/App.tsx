import { useState } from 'react';
import { SoundDataJson, SoundData } from './components/SoundData.tsx';
import SoundList from './components/SoundList.tsx';
import CategoryCheckList from './components/CategoryCheckList.tsx';
import SoundContext from './components/SoundContext.tsx';
import { gsap } from 'gsap';
import { gtag } from 'ga-gtag';

const initialFilterCategories : string[] = ['tikutiku', 'sensitive', 'collab'];
const playingAudioList : HTMLAudioElement[] = [];

function soundClick(soundData: SoundData, volume: number) {
  try {
    const audio = new Audio(`${directory}/${soundData.fileName}`);
    playingAudioList.push(audio);
    audio.volume = volume;
    audio.play();
    audio.addEventListener('ended', () => {
      audio.remove();
      playingAudioList.splice(playingAudioList.indexOf(audio), 1);
    });
  } catch (e) {
    console.log(e);
  }
}

function getCategoryList(soundList: SoundData[]) {
  const allCategory: string[] = [];
  soundList.map((soundData) => soundData.category.split(','))
    .forEach((categories) => {
      categories.forEach((category) => {
        allCategory.push(category);
      });
    });

  const uniqueCategory = allCategory.filter((x, i, self) => self.indexOf(x) === i).filter((x) => x !== '');
  return uniqueCategory.sort();
}

function App() {
  const soundDataList = SoundDataJson as SoundData[];
  const categoryList = getCategoryList(soundDataList);
  const initialFilteredCategoryList = categoryList.filter((category) => !initialFilterCategories.includes(category));
  const [selectedCategory, setSelectedCategory] = useState<string[]>(initialFilteredCategoryList);
  const [viewSoundContext, setViewSoundContext] = useState<SoundData | null>(null);
  const [volume, setVolume] = useState<number>(loadVolume());
  const [isCreateImage, setIsCreateImage] = useState<boolean>(loadIsCreateImage());
  const [isCreateComment, setIsCreateComment] = useState<boolean>(loadIsCreateComment());

  return (
    <>
      <button
        className="config-button"
        onClick={() => {
          return;
        }}>
        わいわいガヤガヤ（たくさんランダム連続再生）
      </button>
      <br/>
      <button
        className="config-button"
        onClick={() => {
          return;
        }}>
        連続再生
      </button>
      <button className="config-button">ランダム連続再生</button>
      <button
        id="all-stop"
        className="config-button"
        onClick={allStop}>
        停止
      </button>
      <button
        id="fixed-all-stop"
        className="config-button"
        onClick={allStop}>
        停止
      </button>
      <CategoryCheckList
        categoryList={categoryList}
        selectedCategory={selectedCategory}
        setSelectedCategory={setSelectedCategory}
      />
      <div>
        <label htmlFor="volume">音量（一部端末では無効）</label>
        <input
          type="range"
          min="0"
          max="1"
          value={volume}
          step="0.01"
          id="volume"
          onChange={(event) => {
            setVolume(Number(event.target.value));
            localStorage.setItem('volume', event.target.value);
          }}/>
        <br/>
        <label htmlFor="create-image">画像</label>
        <input
          type="checkbox"
          id="create-image"
          checked={isCreateImage}
          onChange={() => {
            setIsCreateImage(!isCreateImage);
            localStorage.setItem('createImage', (!isCreateImage).toString());
          }}/>
        <br/>
        <label htmlFor="create-comment">コメント</label>
        <input
          type="checkbox"
          id="create-comment"
          checked={isCreateComment}
          onChange={() => {
            setIsCreateComment(!isCreateComment);
            localStorage.setItem('createComment', (!isCreateComment).toString());
          }}/>
      </div>
      <div>
        <SoundList
          onClick={(_event, soundData) => {
            soundClick(soundData, volume);
            if (isCreateImage) {
              const img = createCategoryImage(soundData.category);
              document.body.appendChild(img);
              setTimeout(() => {
                img.remove();
              }, 5000);
            }
            if (isCreateComment) {
              createText(soundData.name);
            }
            sendGtagContent('sound_click', soundData.name);
          }}
          onContextMenu={(event, soundData) => {
            event.preventDefault();
            setViewSoundContext(soundData);
          }}
          selectedCategory={selectedCategory}
        />
      </div>
      <SoundContext
        soundData={viewSoundContext}/>
    </>
  );
}

export default App;

let count = 0;

async function createText(text: string) {
  const divElement = document.createElement('div');
  divElement.id = `text${count}`; // アニメーション処理で対象の指定に必要なidを設定
  count += 1;
  divElement.classList.add('comment-text');
  divElement.style.position = 'fixed'; // テキストのは位置を絶対位置にするための設定
  divElement.style.whiteSpace = 'nowrap'; // 画面右端での折り返しがなく、画面外へはみ出すようにする
  divElement.style.left = `${document.documentElement.clientWidth}px`; // 初期状態の横方向の位置は画面の右端に設定
  const random = Math.round(Math.random() * document.documentElement.clientHeight);
  divElement.style.top = `${random}px`; // 初期状態の縦方向の位置は画面の上端から下端の間に設定（ランダムな配置に）
  divElement.style.zIndex = '1000'; // 画面上の最前面に表示するための設定
  divElement.appendChild(document.createTextNode(text)); // 画面上に表示されるテキストを設定
  document.body.appendChild(divElement); // body直下へ挿入

  // ライブラリを用いたテキスト移動のアニメーション： durationはアニメーションの時間、
  // 横方向の移動距離は「画面の横幅＋画面を流れるテキストの要素の横幅」、移動中に次の削除処理がされないようawait

  await gsap.to(`#${divElement.id}`, { duration: 5, x: -1 * (document.documentElement.clientWidth + divElement.clientWidth) });
  divElement.remove(); // アニメーション終了後に要素を削除
}

const directory = 'sounds';
const clipImageFileNames = [
  'img/clip/binta-furikaeri.png',
  'img/clip/binta-odoroki.png',
  'img/clip/binta-ushiro.png',
  'img/clip/kabotya-egao.png',
  'img/clip/mama-game-egao.png',
  'img/clip/monhan-odoroki.png',
];
const outaClipImageFileNames = [
  'img/clip/outa-egao.png',
];


function loadVolume() {
  const volume = localStorage.getItem('volume');
  if (volume) {
    return Number(volume);
  }
  return 1;
}

function loadIsCreateImage() {
  const createImage = localStorage.getItem('createImage');
  if (createImage) {
    return createImage === 'true';
  }
  return true;
}

function loadIsCreateComment() {
  const createComment = localStorage.getItem('createComment');
  if (createComment) {
    return createComment === 'true';
  }
  return true;
}

function getRandomFileName(fileNames : string[]) {
  const index = Math.floor(Math.random() * fileNames.length);
  return fileNames[index];
}

function getRandomInt(min : number, max : number) {
  const minInt = Math.ceil(min);
  const maxInt = Math.floor(max);
  return Math.floor(Math.random() * (maxInt - minInt) + minInt);
}

function createCategoryImage(category : string) {
  let filename = getRandomFileName(clipImageFileNames);
  if (category.includes('outa')) {
    filename = getRandomFileName(outaClipImageFileNames);
  }

  const windowHeight = window.innerHeight;
  const windowWidth = window.innerWidth;
  const scroll = document.documentElement.scrollTop || document.body.scrollTop || 0;
  const img = document.createElement('img');
  img.src = filename;
  img.style.position = 'absolute';
  img.height = 200;
  img.width = 200;
  const top = (scroll / windowHeight) * 100 + (getRandomInt(0, windowHeight - img.height) / windowHeight) * 100;
  img.style.top = `${top}%`;
  const left = (getRandomInt(0, windowWidth - img.width) / windowWidth) * 100;
  img.style.left = `${left}%`;
  img.style.pointerEvents = 'none';
  img.classList.add('anime-clip');
  const zIndex = Math.floor(top);
  img.style.zIndex = `${zIndex}`;
  return img;
}

function sendGtagContent(contentType : string, contentId : string) {
  gtag('event', 'select_content', {
    content_type: contentType,
    content_id: contentId,
  });
}

function allStop() {
  playingAudioList.forEach((audio) => {
    audio.pause();
    audio.remove();
  });
  playingAudioList.splice(0, playingAudioList.length);
}
