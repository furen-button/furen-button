import {SoundData} from './SoundData.tsx';
import React, {lazy, Suspense} from 'react';
import { FaVideo, FaPlay, FaThumbsUp } from 'react-icons/fa6';
import {Button, ButtonGroup, IconButton, Popover} from '@mui/material';
import {ClapData, soundFileNameToTargetId, updateClap} from '../lib/FirebaseFunctions.ts';
const VideoSourceLabel = lazy(() => import('./VideoSourceLabel.tsx'));

const sectionIndexList = ['0,A', 'あ', 'か', 'さ', 'た', 'な', 'は', 'ま', 'や', 'ら', 'わ', '他'];

function SoundList(props: {
    filteredSoundDataList: SoundData[];
    onClick: (event: React.MouseEvent<HTMLElement>, soundData: SoundData) => void;
    selectedCategory: string[];
    playingSoundDataList: SoundData[];
    sectionPattern: 'ruby' | 'source';
    clapData: ClapData;
}) {
  if (props.filteredSoundDataList.length === 0) {
    return (
      <div style={style.container}>
        <div style={style.noData}>
          カテゴリを選択してください。
        </div>
      </div>
    );
  }

  const sectionList : {[key: string]: SoundData[]} = {};

  if (props.sectionPattern === 'ruby') {
    for (const soundData of props.filteredSoundDataList) {
      const sectionIndex = sectionIndexList.findIndex((value) => {
        return value > soundData.ruby.charAt(0);
      });
      const section = sectionIndexList[sectionIndex - 1];
      if (sectionList[section] === undefined) {
        sectionList[section] = [];
      }
      sectionList[section].push(soundData);
    }
  } else {
    for (const soundData of props.filteredSoundDataList) {
      const section = soundData.sourceName;
      if (sectionList[section] === undefined) {
        sectionList[section] = [];
      }
      sectionList[section].push(soundData);
    }
  }


  const soundElements = Object.keys(sectionList).map((key) => {
    let label = <>{key}</>;
    if (props.sectionPattern === 'source') {
      label = <Suspense fallback="loading">
        <VideoSourceLabel videoTitle={key}></VideoSourceLabel>
      </Suspense>;
    }

    return (
      <div
        key={key}
        style={style.container}>
        <div style={style.sectionLabel}>
          {label}
        </div>
        {
          sectionList[key].map((soundData) => {
            return (
              <SoundButton
                key={soundData.fileName}
                soundData={soundData}
                onClick={props.onClick}
                selectedCategory={props.selectedCategory}
                playingSoundDataList={props.playingSoundDataList}
                clapData={props.clapData}
              />
            );
          })
        }
      </div>
    );
  });

  return (
    <div>
      {soundElements}
    </div>
  );
}

function SoundButton(props: {
  soundData: SoundData;
  onClick: (event: React.MouseEvent<HTMLElement>, soundData: SoundData) => void;
  selectedCategory: string[];
  playingSoundDataList: SoundData[];
  clapData: ClapData;
}) {
  const soundData = props.soundData;
  const found = props.playingSoundDataList.find((soundData) => {
    return soundData.fileName === props.soundData.fileName;
  });
  const isPlaying = found !== undefined;
  const className = isPlaying ? 'sounds anime-button' : 'sounds';
  const targetId = soundFileNameToTargetId(soundData.fileName);
  const likeCount = props.clapData.allClaps[targetId] ?? 0;
  const localLikeCount = props.clapData.userClaps[targetId] ?? 0;

  return (
    <ButtonGroup className={className}>
      <Button onClick={(event) => props.onClick(event, soundData)}>
        <IconButton style={{color: '#1976d2'}}>
          {soundData.movieFileName !== '' ? <FaVideo/> : <FaPlay/>}
        </IconButton>
        <span style={{
          fontSize: '20px',
          fontWeight: 'bold',
        }}>
          {soundData.name}
        </span>
      </Button>
      <LikeButton
        targetId={targetId}
        likeCount={likeCount}
        localLikeCount={localLikeCount} />
      <DetailPopupButton soundData={soundData}/>
    </ButtonGroup>
  );
}

function DetailPopupButton(props: { soundData: SoundData }) {
  const [anchorEl, setAnchorEl] = React.useState<HTMLButtonElement | null>(null);
  const soundData = props.soundData;
  const directory = 'sounds';

  const handleClick = (event: React.MouseEvent<HTMLButtonElement>) => {
    setAnchorEl(event.currentTarget);
  };
  const handleClose = () => {
    setAnchorEl(null);
  };
  const open = Boolean(anchorEl);
  return (
    <>
      <Button
        onClick={handleClick}>詳細</Button>
      <Popover
        id={soundData.fileName}
        open={open}
        anchorEl={anchorEl}
        onClose={handleClose}
        anchorOrigin={{
          vertical: 'bottom',
          horizontal: 'right',
        }}
      >
        <ul>
          <li>
            <div className="context-title">名前:</div>
            <span>{soundData.name}</span>
          </li>
          <li>
            <div className="context-title">ルビ:</div>
            <span>{soundData.ruby}</span>
          </li>
          <li>
            <div className="context-title">ファイル:</div>
            <span><a href={`${directory}/${soundData.fileName}`}>{soundData.fileName}</a></span>
          </li>
          <li hidden={soundData.movieFileName === ''}>
            <div className="context-title">動画ファイル:</div>
            <span><a href={`${directory}/${soundData.movieFileName}`}>{soundData.movieFileName}</a></span>
          </li>
          <li>
            <div className="context-title">カテゴリ:</div>
            <span>{soundData.category}</span>
          </li>
          <li>
            <div className="context-title">元動画:</div>
            <a
              target="_blank"
              href={soundData.sourceUrl}>
              {soundData.sourceName}
            </a>
          </li>
          <li hidden={soundData.clipUrl === ''}>
            <div className="context-title">クリップ:</div>
            <a
              target="_blank"
              href={soundData.clipUrl}>
                  クリップリンク
            </a>
          </li>
        </ul>
      </Popover>
    </>);
}

/**
 * いいねボタン
 *
 * @param props
 * @param {string} props.targetId ターゲットのID
 * @param {number} props.likeCount 累計いいねの数
 * @param {number} props.localLikeCount 自分のいいねの数
 * @constructor
 */
function LikeButton(props: { targetId: string, likeCount: number, localLikeCount: number }) {
  const MAX_LIKE_COUNT = 3;
  const likeCountReducer = (state: {count: number, updated: boolean}, action: 'clap' | 'update') => {
    switch (action) {
    case 'clap': {
      if (state.count >= MAX_LIKE_COUNT) {
        return {count: state.count, updated: false};
      }
      const newCount = state.count + 1;
      updateClap(props.targetId, newCount);
      return {count: newCount, updated: true};
    }
    case 'update': {
      if (state.updated) {
        return state;
      }
      return {count: props.localLikeCount, updated: true};
    }
    }
  };
  const [localLikeState, updateLike] = React.useReducer(likeCountReducer, {count: props.localLikeCount, updated: false});
  const localLikeCount = localLikeState.count;
  const color = localLikeCount === 0 ? '#1976d2' :
    localLikeCount >= MAX_LIKE_COUNT ? 'red' : 'crimson';
  if (!localLikeState.updated && localLikeCount !== props.localLikeCount) {
    updateLike('update');
  }
  return (
    <Button
      onClick={() => {
        updateLike('clap');
      }}
    >
      <IconButton
        style={{color: color}}
      >
        <FaThumbsUp/>
      </IconButton>
      <div style={{
        lineHeight: '1',
        color: color,
      }}>
        <span>{localLikeCount}/{MAX_LIKE_COUNT}</span>
        <br/>
        <span>({props.likeCount + localLikeCount})</span>
      </div>
    </Button>
  );
}


const style: { [key: string]: React.CSSProperties } = {
  container: {
    maxWidth: 'calc(100% - 500px)',
    minWidth: 'min(400px, 100%)',
    display: 'flex',
    flexDirection: 'row',
    flexWrap: 'wrap',
    border: 'solid 10px rgba(0, 0, 0, 0)',
  },
  noData: {
    width: '100%',
    textAlign: 'center',
    fontSize: '30px',
    fontWeight: 'bold',
  },
  sectionLabel: {
    width: '100%',
    textAlign: 'center',
    fontSize: '30px',
    fontWeight: 'bold',
  },
};

export default SoundList;
