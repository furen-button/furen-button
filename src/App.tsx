import React, {useEffect, useReducer, useState, useContext} from 'react';
import {BrowserRouter, Link, Route, Routes} from 'react-router-dom';
import { SoundDataJson, SoundData } from './components/SoundData.tsx';
import { isCategoryMatched } from './components/SoundDataFunctions.tsx';
import SoundList, {SectionPattern} from './components/SoundList.tsx';
import CategoryCheckList from './components/CategoryCheckList.tsx';
import { gsap } from 'gsap';
import { gtag } from 'ga-gtag';
import { FaCirclePlay, FaAngleUp, FaShuffle, FaCircleStop, FaChildReaching } from 'react-icons/fa6';
import ToggleButton from '@mui/material/ToggleButton';
import ToggleButtonGroup from '@mui/material/ToggleButtonGroup';
import { getCategoryCountList, getCategoryList } from './lib/CategoryFunctions.tsx';
import { updateClap, soundFileNameToTargetId } from './lib/FirebaseFunctions.ts';
import { ClapContext } from './components/ClapContext.tsx';
import PonButton from './components/PonButton.tsx';
import {Button} from '@mui/material';

const initialFilterCategories : string[] = ['collab', 'episode', 'sensitive', 'tikutiku'];
const RouterBaseName = import.meta.env.VITE_ROUTER_BASE_NAME || '';

function soundPlay(soundData: SoundData, volume: number, endCallback: () => void) {
  try {
    const audioFileName = (soundData.normalizedFileName === '') ? soundData.fileName : soundData.normalizedFileName;
    const audio = new Audio(`${directory}/${audioFileName}`);
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
  const categoryCountList = getCategoryCountList(soundDataList);
  const categoryList = getCategoryList(categoryCountList);
  const initialFilteredCategoryList = categoryList.filter((category) => !initialFilterCategories.includes(category));
  const [selectedCategory, setSelectedCategory] = useState<string[]>(initialFilteredCategoryList);
  const [volume, setVolume] = useState<number>(loadVolume());
  const [isCreateImage, setIsCreateImage] = useState<boolean>(loadIsCreateImage());
  const [isCreateComment, setIsCreateComment] = useState<boolean>(loadIsCreateComment());
  const [playingSoundDataList, updatePlayingSoundDataList] = useReducer(playingSoundListReducer, []);
  const [sectionPattern, setSectionPattern] = useState<SectionPattern>('ruby');
  const clapData = useContext(ClapContext);

  const soundClick = (soundData: SoundData, soundEndCallback: (soundData : SoundData) => void) => {
    updatePlayingSoundDataList({type: 'push', soundData: soundData});
    const targetId = soundFileNameToTargetId(soundData.fileName);
    const nowClap = clapData.userClaps[targetId] ?? 0;
    updateClap(targetId, nowClap + 1);

    let imageEndCallback = () => {};
    if (isCreateImage) {
      if (soundData.movieFileName !== '') {
        const movie = createVideo(`${directory}/${soundData.movieFileName}`);
        document.body.appendChild(movie);
        imageEndCallback = () => {
          movie.remove();
        };
      } else {
        const img = createCategoryImage(soundData.category);
        document.body.appendChild(img);
        imageEndCallback = () => {
          img.remove();
        };
      }
    }
    if (isCreateComment) {
      createText(soundData.name);
    }
    soundPlay(soundData, volume, () => {
      imageEndCallback();
      soundEndCallback(soundData);
    });
  };

  const soundEndCallback = (nowSoundData : SoundData) => {
    updatePlayingSoundDataList({type: 'pop', soundData: nowSoundData});
  };
  const randomSoundCallback = (nowSoundData : SoundData) => {
    updatePlayingSoundDataList({type: 'pop', soundData: nowSoundData});
    const nextSoundData = getRandomSoundData(soundDataList, selectedCategory);
    if (nextSoundData) {
      soundClick(nextSoundData, randomSoundCallback);
    }
  };
  const nextSoundCallback = (nowSoundData : SoundData) => {
    updatePlayingSoundDataList({type: 'pop', soundData: nowSoundData});
    const nextSoundData = getNextSoundData(soundDataList, selectedCategory, nowSoundData);
    if (nextSoundData) {
      soundClick(nextSoundData, nextSoundCallback);
    }
  };

  const onAllPlayClick = () => {
    const filteredSoundDataList = getFilteredSoundDataList(soundDataList, selectedCategory);
    if (0 < filteredSoundDataList.length) {
      const nextSoundData = filteredSoundDataList[0];
      soundClick(nextSoundData, nextSoundCallback);
    }
  };

  const onRandomPlayClick = () => {
    const nextSoundData = getRandomSoundData(soundDataList, selectedCategory);
    if (nextSoundData) {
      soundClick(nextSoundData, randomSoundCallback);
    }
  };

  const onAllStopClick = () => {
    const audioElements = [
      ...document.getElementsByTagName('audio'),
      ...document.getElementsByTagName('video')];
    for (let i = 0; i < audioElements.length; i += 1) {
      const audioElement = audioElements[i];
      audioElement.pause();
      audioElement.remove();
    }
    const clipElements = [
      ...document.getElementsByClassName('anime-clip'),
      ...document.getElementsByClassName('comment-text')];
    for (let i = 0; i < clipElements.length; i += 1) {
      const clipElement = clipElements[i];
      clipElement.remove();
    }
    updatePlayingSoundDataList({type: 'clear', soundData: null});
  };

  // NOTE: 連続再生が追従できないのでカテゴリー変更時に停止する
  useEffect(() => {
    onAllStopClick();
  }, [selectedCategory]);

  return (
    <BrowserRouter basename={RouterBaseName}>
      <Link to="/./"><Button variant={'outlined'} style={{margin: '5px'}}>全ボタン</Button></Link>
      <Link to="/pon"><Button variant={'outlined'} style={{margin: '5px'}}>ポン出しボタン</Button></Link>
      <Routes>
        <Route
          path={'/'}
          element={<div>
            <Button
              variant={'contained'}
              onClick={() => {
                for (let i = 0; i < 5; i += 1) {
                  onRandomPlayClick();
                }
              }}
              style={style.configButton}>
              <FaShuffle/><FaChildReaching/> わいわいガヤガヤ（たくさんランダム連続再生）
            </Button>
            <br/>
            <Button
              variant={'contained'}
              onClick={onAllPlayClick}
              style={style.configButton}>
              <FaCirclePlay/> 連続再生
            </Button>
            <Button
              variant={'contained'}
              onClick={() => {
                onRandomPlayClick();
              }}
              style={style.configButton}>
              <FaShuffle/> ランダム連続再生
            </Button>
            <Button
              variant={'contained'}
              id="all-stop"
              className="config-button"
              onClick={onAllStopClick}
              style={style.configButton}>
              <FaCircleStop/> 停止
            </Button>
            <div
              className='fixed-button'
              style={{
                right: '240px',
              }}
              onClick={() => {
                onRandomPlayClick();
              }}>
              <FaShuffle style={style.fixedButtonInnerIcon}/>
            </div>
            <div
              className='fixed-button'
              style={
                playingSoundDataList.length === 0 ? {
                  right: '120px',
                } : {
                  right: '120px',
                  backgroundColor: '#ec1d2f',
                }
              }
              onClick={onAllStopClick}>
              <FaCircleStop style={style.fixedButtonInnerIcon}/>
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
              <FaAngleUp style={style.fixedButtonInnerIcon}/>
            </a>
            <CategoryCheckList
              categoryCountList={categoryCountList}
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
              <br/>
              <label style={style.optionsLabel}>並び</label>
              <ToggleButtonGroup
                value={sectionPattern}
                exclusive
                onChange={(_event, newSectionPattern : SectionPattern) => {
                  setSectionPattern(newSectionPattern);
                }}>
                <ToggleButton value="ruby">読み順</ToggleButton>
                <ToggleButton value="source">配信別</ToggleButton>
                <ToggleButton value="count">再生数順</ToggleButton>
              </ToggleButtonGroup>
            </div>
            <SoundList
              onClick={(_event, soundData) => {
                soundClick(soundData, soundEndCallback);
                sendGtagContent('sound_click', soundData.name);
              }}
              selectedCategory={selectedCategory}
              filteredSoundDataList={getFilteredSoundDataList(soundDataList, selectedCategory)}
              playingSoundDataList={playingSoundDataList}
              sectionPattern={sectionPattern}
            />
            <PonButton
              soundDataList={soundDataList}
              onClick={(soundData) => {
                soundClick(soundData, soundEndCallback);
              }}
            />
          </div>}/>
        <Route
          path={'/pon'}
          element={
            <PonButton
              soundDataList={soundDataList}
              onClick={(soundData) => {
                soundClick(soundData, soundEndCallback);
              }}
            />}
        />
      </Routes>
    </BrowserRouter>
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

function createVideo(movieFilePath : string) {
  const windowHeight = window.innerHeight;
  const windowWidth = window.innerWidth;
  const scroll = document.documentElement.scrollTop || document.body.scrollTop || 0;
  const movie = document.createElement('video');
  movie.src = movieFilePath;
  movie.style.position = 'absolute';
  const height = 200;
  movie.height = height;
  movie.width = height * 16 / 9;
  const top = (scroll / windowHeight) * 100 + (getRandomInt(0, windowHeight - height) / windowHeight) * 100;
  movie.style.top = `${top}%`;
  const left = (getRandomInt(0, windowWidth - movie.width - 20) / windowWidth) * 100;
  movie.style.left = `${left}%`;
  movie.style.pointerEvents = 'none';
  const zIndex = Math.floor(top);
  movie.style.zIndex = `${zIndex}`;
  movie.muted = true;
  movie.autoplay = true;
  return movie;
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
  fixedButtonInnerIcon: {
    // NOTE: inner 要素の上下左右中央揃え
    // https://www.granfairs.com/blog/staff/centering-by-css
    // https://hyper-text.org/archives/2014/08/position_absolute_center_layout/
    position: 'absolute',
    top: '0',
    left: '0',
    right: '0',
    bottom: '0',
    margin: 'auto',
  },
  configButton: {
    margin: '8px',
    fontFamily: ['Notosans JP', 'sans-serif'].join(','),
    fontSize: '20px',
  }
};
