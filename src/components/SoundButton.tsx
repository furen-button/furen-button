import {SoundData} from './SoundData.tsx';
import React from 'react';
import {ClapData, soundFileNameToTargetId} from '../lib/FirebaseFunctions.ts';
import {Button, ButtonGroup, Popover} from '@mui/material';
import {FaInfo, FaPlay, FaThumbsUp, FaVideo} from 'react-icons/fa6';
import {updateClap} from '../lib/FirebaseFunctions.ts';

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
      <Button
        variant={'contained'}
        onClick={(event) => props.onClick(event, soundData)}>
        {soundData.movieFileName !== '' ? <FaVideo style={style.iconInButton}/> : <FaPlay style={style.iconInButton}/>}
        <span style={{
          marginLeft: '5px',
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
        color={'info'}
        onClick={handleClick}><FaInfo/></Button>
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
        <ul style={{
          backgroundColor: '#eeeeee',
        }}>
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
        return state;
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
  const color = localLikeCount === 0 ? '#ffffff' :
    localLikeCount >= MAX_LIKE_COUNT ? '#ffaaaa' : '#ffcccc';
  if (!localLikeState.updated && localLikeCount !== props.localLikeCount) {
    updateLike('update');
  }
  return (
    <Button
      variant={'contained'}
      onClick={() => {
        updateLike('clap');
      }}
    >
      <FaThumbsUp style={{
        color: color,
        ...style.iconInButton
      }}/>
      <div style={{
        marginLeft: '5px',
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
  iconInButton: {
    fontSize: '24px',
  }
};

export default SoundButton;
