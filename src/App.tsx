import React, {useEffect, useReducer, useState} from 'react';
import { SoundDataJson, SoundData } from './components/SoundData.tsx';
import { isCategoryMatched } from './components/SoundDataFunctions.tsx';
import SoundList from './components/SoundList.tsx';
import CategoryCheckList from './components/CategoryCheckList.tsx';
import SoundContext from './components/SoundContext.tsx';
import { gsap } from 'gsap';
import { gtag } from 'ga-gtag';
import { FaCirclePlay, FaAngleUp, FaShuffle, FaCircleStop, FaChildReaching } from 'react-icons/fa6';

const initialFilterCategories : string[] = ['tikutiku', 'sensitive', 'collab'];

function soundPlay(soundData: SoundData, volume: number, endCallback: () => void) {
  try {
    const audio = new Audio(`${directory}/${soundData.fileName}`);
    audio.volume = volume;
    audio.play();
    audio.addEventListener('ended', () => {
      audio.remove();
      endCallback();
    });
    document.body.appendChild(audio);
  } catch (e) {
    console.log(e);
  }
}

function soundClick(soundData: SoundData, volume: number, isCreateImage: boolean, isCreateComment : boolean, soundEndCallback: (soundData : SoundData) => void) {
  let imageEndCallback = () => {};
  if (isCreateImage) {
    const img = createCategoryImage(soundData.category);
    document.body.appendChild(img);
    imageEndCallback = () => {
      img.remove();
    };
  }
  if (isCreateComment) {
    createText(soundData.name);
  }
  soundPlay(soundData, volume, () => {
    imageEndCallback();
    soundEndCallback(soundData);
  });
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

function getRandomSoundData(soundDataList : SoundData[], selectedCategory : string[]) {
  const filteredSoundDataList = getFilteredSoundDataList(soundDataList, selectedCategory);
  if (filteredSoundDataList.length === 0) {
    return null;
  }
  const index = Math.floor(Math.random() * filteredSoundDataList.length);
  return filteredSoundDataList[index];
}

function getNextSoundData(soundDataList : SoundData[], selectedCategory : string[], nowSoundData : SoundData) {
  const filteredSoundDataList = getFilteredSoundDataList(soundDataList, selectedCategory);
  const index = filteredSoundDataList.findIndex((soundData) => {
    return soundData === nowSoundData;
  });
  if (index === -1) {
    return null;
  }
  if (index === filteredSoundDataList.length - 1) {
    return null;
  }
  return filteredSoundDataList[index + 1];
}

function getFilteredSoundDataList(soundDataList : SoundData[], selectedCategory : string[]) {
  return soundDataList.filter((soundData) => {
    return isCategoryMatched(soundData, selectedCategory);
  }).sort((a, b) => {
    if (a.ruby === b.ruby) {
      return a.fileName.localeCompare(b.fileName);
    }
    return a.ruby.localeCompare(b.ruby);
  });
}

type ReducerAction = {
  type : 'push' | 'pop' | 'clear';
  soundData : SoundData | null;
};

function playingSoundListReducer(state : SoundData[], action : ReducerAction) : SoundData[] {
  switch (action.type) {
  case 'push':
  {
    if (action.soundData === null) {
      return state;
    }
    return [...state, action.soundData];
  }
  case 'pop':
  {
    if (action.soundData === null) {
      return state;
    }
    const findIndex = state.findIndex((soundData) => {
      return soundData === action.soundData;
    });
    if (findIndex === -1) {
      return state;
    }
    return state.filter((_, index) => index !== findIndex);
  }
  case 'clear':
  {
    return [];
  }
  default:
    throw new Error();
  }
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
  const [playingSoundDataList, updatePlayingSoundDataList] = useReducer(playingSoundListReducer, []);

  const soundEndCallback = (nowSoundData : SoundData) => {
    updatePlayingSoundDataList({type: 'pop', soundData: nowSoundData});
  };
  const randomSoundCallback = (nowSoundData : SoundData) => {
    updatePlayingSoundDataList({type: 'pop', soundData: nowSoundData});
    const nextSoundData = getRandomSoundData(soundDataList, selectedCategory);
    if (nextSoundData === null) {
      return;
    }
    updatePlayingSoundDataList({type: 'push', soundData: nextSoundData});
    soundClick(nextSoundData, volume, isCreateImage, isCreateComment, randomSoundCallback);
  };

  const onAllPlayClick = () => {
    const nextSoundCallback = (nowSoundData : SoundData) => {
      updatePlayingSoundDataList({type: 'pop', soundData: nowSoundData});
      const nextSoundData = getNextSoundData(soundDataList, selectedCategory, nowSoundData);
      if (nextSoundData) {
        updatePlayingSoundDataList({type: 'push', soundData: nextSoundData});
        soundClick(nextSoundData, volume, isCreateImage, isCreateComment, nextSoundCallback);
      }
    };
    const filteredSoundDataList = getFilteredSoundDataList(soundDataList, selectedCategory);
    if (0 < filteredSoundDataList.length) {
      const nextSoundData = filteredSoundDataList[0];
      updatePlayingSoundDataList({type: 'push', soundData: nextSoundData});
      soundClick(nextSoundData, volume, isCreateImage, isCreateComment, nextSoundCallback);
    }
  };

  const onAllStopClick = () => {
    const audioElements = Array.from(document.getElementsByTagName('audio'));
    for (let i = 0; i < audioElements.length; i += 1) {
      const audioElement = audioElements[i];
      audioElement.pause();
      audioElement.remove();
    }
    const clipElements = Array.from(document.getElementsByClassName('anime-clip'));
    for (let i = 0; i < clipElements.length; i += 1) {
      const clipElement = clipElements[i];
      clipElement.remove();
    }
    const textElements = Array.from(document.getElementsByClassName('comment-text'));
    for (let i = 0; i < textElements.length; i += 1) {
      const textElement = textElements[i];
      textElement.remove();
    }
    updatePlayingSoundDataList({type: 'clear', soundData: null});
  };

  // NOTE: 連続再生が追従できないのでカテゴリー変更時に停止する
  useEffect(() => {
    onAllStopClick();
  }, [selectedCategory]);

  return (
    <>
      <button
        className="config-button"
        onClick={() => {
          for (let i = 0; i < 5; i += 1) {
            const nextSoundData = getRandomSoundData(soundDataList, selectedCategory);
            if (nextSoundData === null) {
              break;
            }
            updatePlayingSoundDataList({type: 'push', soundData: nextSoundData});
            soundClick(nextSoundData, volume, isCreateImage, isCreateComment, randomSoundCallback);
          }
        }}>
        <FaShuffle/><FaChildReaching/> わいわいガヤガヤ（たくさんランダム連続再生）
      </button>
      <br/>
      <button
        className="config-button"
        onClick={onAllPlayClick}>
        <FaCirclePlay/> 連続再生
      </button>
      <button
        className="config-button"
        onClick={() => {
          const nextSoundData = getRandomSoundData(soundDataList, selectedCategory);
          if (nextSoundData === null) {
            return;
          }
          updatePlayingSoundDataList({type: 'push', soundData: nextSoundData});
          soundClick(nextSoundData, volume, isCreateImage, isCreateComment, randomSoundCallback);
        }}>
        <FaShuffle/> ランダム連続再生
      </button>
      <button
        id="all-stop"
        className="config-button"
        onClick={onAllStopClick}>
        <FaCircleStop/> 停止
      </button>
      <div
        className='fixed-button'
        style={{
          right: '240px',
        }}
        onClick={() => {
          const nextSoundData = getRandomSoundData(soundDataList, selectedCategory);
          if (nextSoundData === null) {
            return;
          }
          updatePlayingSoundDataList({type: 'push', soundData: nextSoundData});
          soundClick(nextSoundData, volume, isCreateImage, isCreateComment, randomSoundCallback);
        }}>
        <FaShuffle/>
      </div>
      <div
        className='fixed-button'
        style={
          playingSoundDataList.length === 0 ?{
            right: '120px',
          } : {
            right: '120px',
            backgroundColor: '#ec1d2f',
          }
        }
        onClick={onAllStopClick}>
        <FaCircleStop/>
      </div>
      <a
        className='fixed-button'
        style={{
          right: '0px',
        }}
        onClick={() => {
          window.scrollTo({
            top: 0,
            behavior: 'smooth',
          });
        }}>
        <FaAngleUp/>
      </a>
      <CategoryCheckList
        categoryList={categoryList}
        selectedCategory={selectedCategory}
        setSelectedCategory={setSelectedCategory}
      />
      <div>
        <label htmlFor="volume" style={style.optionsLabel}>音量（一部端末では無効）</label>
        <input
          id="volume"
          type="range"
          min="0"
          max="1"
          value={volume}
          step="0.01"
          onChange={(event) => {
            setVolume(Number(event.target.value));
            localStorage.setItem('volume', event.target.value);
          }}/>
        <br/>
        <label htmlFor="create-image" style={style.optionsLabel}>画像</label>
        <input
          id="create-image"
          type="checkbox"
          checked={isCreateImage}
          onChange={() => {
            setIsCreateImage(!isCreateImage);
            localStorage.setItem('createImage', (!isCreateImage).toString());
          }}/>
        <br/>
        <label htmlFor="create-comment" style={style.optionsLabel}>コメント</label>
        <input
          id="create-comment"
          type="checkbox"
          checked={isCreateComment}
          onChange={() => {
            setIsCreateComment(!isCreateComment);
            localStorage.setItem('createComment', (!isCreateComment).toString());
          }}/>
      </div>
      <SoundList
        onClick={(_event, soundData) => {
          updatePlayingSoundDataList({type: 'push', soundData: soundData});
          soundClick(soundData, volume, isCreateImage, isCreateComment, soundEndCallback);
          sendGtagContent('sound_click', soundData.name);
          setViewSoundContext(null);
        }}
        onContextMenu={(event, soundData) => {
          event.preventDefault();
          sendGtagContent('sound_context_click', soundData.name);
          setViewSoundContext(soundData);
        }}
        selectedCategory={selectedCategory}
        filteredSoundDataList={getFilteredSoundDataList(soundDataList, selectedCategory)}
        playingSoundDataList={playingSoundDataList}
      />
      <SoundContext
        soundData={viewSoundContext}
        onCloseClick={() => {
          setViewSoundContext(null);
        }}/>
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
  const left = (getRandomInt(0, windowWidth - img.width - 20) / windowWidth) * 100;
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

const style : {[key: string]: React.CSSProperties} = {
  optionsLabel: {
    width: '200px',
    display: 'inline-block',
  },
};
