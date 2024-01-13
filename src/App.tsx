import React, { useState } from 'react';
import { SoundDataJson, SoundData } from './components/SoundData.tsx';
import SoundList from './components/SoundList.tsx';
import CategoryCheckList from './components/CategoryCheckList.tsx';
import { gsap } from 'gsap';

const initialIgnoreCategories = ['tikutiku', 'sensitive', 'collab'];

function soundClick(event: React.MouseEvent<HTMLDivElement>, soundData: SoundData) {
  try {
    const image = createCategoryImage(soundData.category);
    if (image) {
      document.body.appendChild(image);
    }
    const audio = new Audio(`${directory}/${soundData.fileName}`);
    playingAudioList.push(audio);
    audio.volume = getVolume();
    audio.play();
    if (isCreateComment()) {
      createText(soundData.name);
    }
    const target = event.target as HTMLDivElement;
    target?.classList.add('anime-button');
    audio.addEventListener('ended', () => {
      target?.classList.remove('anime-button');
      if (image) {
        document.body.removeChild(image);
      }
      audio.remove();
      playingAudioList.splice(playingAudioList.indexOf(audio), 1);
    });
  } catch (e) {
    console.log(e);
  }
}

function getCategoryList(soundList : SoundData[]) {
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
  const [selectedCategory, setSelectedCategory] = useState<string[]>(categoryList);

  return (
    <>
      <CategoryCheckList
        categoryList={categoryList}
        selectedCategory={selectedCategory}
        setSelectedCategory={setSelectedCategory}
      />
      <div>
        <SoundList
          onClick={(event, soundData) => {
            soundClick(event, soundData);
          }}
          selectedCategory={selectedCategory}
        />
      </div>
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

const keyboardKeys = ['1', '2', '3', 'q', 'w', 'e', 'a', 's', 'd', 'z', 'x', 'c'];
const setClass = 'sounds';
const directory = 'sounds';
const checkBoxClass = 'category-checkbox';
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

function getFilteredSounds() {
  return Array.from(document.getElementsByClassName(setClass)).filter((element) => !element.hidden);
}
let sounds = getFilteredSounds();
const playingAudioList = [];

function getVolume() {
  return document.getElementById('volume').value;
}

function initializeVolume() {
  const volume = localStorage.getItem('volume');
  if (volume) {
    document.getElementById('volume').value = volume;
  }
}

function initializeCreateImage() {
  const createImage = localStorage.getItem('createImage');
  if (createImage) {
    document.getElementById('create-image').checked = createImage === 'true';
  }
}

function initializeCreateComment() {
  const createComment = localStorage.getItem('createComment');
  if (createComment) {
    document.getElementById('create-comment').checked = createComment === 'true';
  }
}

function isCreateImage() {
  return document.getElementById('create-image').checked;
}

function isCreateComment() {
  return document.getElementById('create-comment').checked;
}

function getCheckedCategory() {
  const checkedCategory = [];
  Array.from(document.getElementsByClassName(checkBoxClass)).forEach((element) => {
    if (element.checked) {
      const { category } = element.dataset;
      checkedCategory.push(category);
    }
  });
  return checkedCategory;
}

function filterCategory() {
  const checkedCategory = getCheckedCategory();

  Array.from(document.getElementsByClassName(setClass)).forEach((element) => {
    element.hidden = true;
    const { category } = element.dataset;
    const categories = category.split(',');
    checkedCategory.forEach((targetCategory) => {
      categories.forEach((c) => {
        if (c === targetCategory) {
          element.hidden = false;
        }
      });
    });
  });
  sounds = getFilteredSounds();
}

function getRandomFileName(fileNames) {
  const index = Math.floor(Math.random() * fileNames.length);
  return fileNames[index];
}

function getRandomInt(min, max) {
  const minInt = Math.ceil(min);
  const maxInt = Math.floor(max);
  return Math.floor(Math.random() * (maxInt - minInt) + minInt);
}

function createCategoryImage(category) {
  if (!isCreateImage()) {
    return null;
  }
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

function sendGtagContent(contentType, contentId) {

  gtag('event', 'select_content', {
    content_type: contentType,
    content_id: contentId,
  });
}


function closeContext() {
  document.getElementById('context').hidden = true;
}

function viewContext(event, dataset) {
  const contextElement = document.getElementById('context');
  contextElement.hidden = false;
  contextElement.style.top = `${event.clientY + 20}px`;
  if (window.innerWidth - event.clientX < 300) {
    contextElement.style.left = `${event.clientX - 300}px`;
  } else {
    contextElement.style.left = `${event.clientX}px`;
  }
  document.getElementById('context-file').innerText = dataset.file;
  document.getElementById('context-ruby').innerText = dataset.ruby;
  document.getElementById('context-category').innerText = dataset.category;
  document.getElementById('context-source').innerText = dataset.title;
  document.getElementById('context-source').href = dataset.url;
  if (dataset.clip === '') {
    document.getElementById('context-clip').parentNode.hidden = true;
    document.getElementById('context-clip').innerText = '';
    document.getElementById('context-clip').href = '';
  } else {
    document.getElementById('context-clip').parentNode.hidden = false;
    document.getElementById('context-clip').innerText = 'リンク';
    document.getElementById('context-clip').href = dataset.clip;
  }
}

function allPlay() {
  const callback = function (element) {
    const no = sounds.indexOf(element);
    if (no >= 0 && no + 1 < sounds.length) {
      play(sounds[no + 1], callback);
    }
  };
  play(sounds[0], callback);
}

function randomPlay() {
  const callback = function () {
    const no = getRandomInt(0, sounds.length);
    if (no >= 0 && no < sounds.length) {
      play(sounds[no], callback);
    }
  };
  callback();
}

function allStop() {
  playingAudioList.forEach((audio) => {
    audio.pause();
    audio.remove();
  });
  for (let i = 0; i < sounds.length; i += 1) {
    sounds[i].classList.remove('anime-button');
  }
  playingAudioList.splice(0, playingAudioList.length);
  Array.from(document.getElementsByClassName('anime-clip')).forEach((element) => {
    document.body.removeChild(element);
  });
}



document.getElementById('close-context').addEventListener('click', () => {
  closeContext();
});

document.addEventListener('keydown', (event) => {
  const { key } = event;
  if (keyboardKeys.includes(key)) {
    const index = keyboardKeys.indexOf(key);
    play(sounds[index]);
  }
  if (key === ' ') {
    randomPlay();
  }
});

document.getElementById('all-play').addEventListener('click', () => {
  allPlay();
  sendGtagContent('all_play', 'all_play');
});

document.getElementById('random-play').addEventListener('click', () => {
  randomPlay();
  sendGtagContent('random_play', 'random_play');
});

document.getElementById('random-play-waiwai').addEventListener('click', () => {
  for (let i = 0; i < 5; i += 1) {
    randomPlay();
  }
  sendGtagContent('random_play_waiwai', 'random_play_waiwai');
});

document.getElementById('all-stop').addEventListener('click', () => {
  allStop();
});

document.getElementById('fixed-all-stop').addEventListener('click', () => {
  allStop();
});

document.getElementById('volume').addEventListener('input', () => {
  const volume = document.getElementById('volume').value;
  localStorage.setItem('volume', volume);
});

document.getElementById('create-image').addEventListener('change', () => {
  const createImage = document.getElementById('create-image').checked;
  localStorage.setItem('createImage', createImage);
});

document.getElementById('create-comment').addEventListener('change', () => {
  const createComment = document.getElementById('create-comment').checked;
  localStorage.setItem('createComment', createComment);
});

filterCategory();
initializeVolume();
initializeCreateImage();
initializeCreateComment();
