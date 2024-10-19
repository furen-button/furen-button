import {SoundData} from './SoundData.tsx';
import React, { useContext } from 'react';
import {soundFileNameToTargetId} from '../lib/FirebaseFunctions.ts';
import {Button, ButtonGroup, Popover} from '@mui/material';
import {FaInfo, FaPlay, FaThumbsUp, FaVideo} from 'react-icons/fa6';
import {ClapContext} from './ClapContext.tsx';

function SoundButton(props: {
    soundData: SoundData;
    onClick: (event: React.MouseEvent<HTMLElement>, soundData: SoundData) => void;
    selectedCategory: string[];
    playingSoundDataList: SoundData[];
}) {
  const soundData = props.soundData;
  const found = props.playingSoundDataList.find((soundData) => {
    return soundData.fileName === props.soundData.fileName;
  });
  const isPlaying = found !== undefined;
  const className = isPlaying ? 'anime-button' : '';
  const targetId = soundFileNameToTargetId(soundData.fileName);

  return (
    <ButtonGroup className={className}
      style={style.button}>
      <Button
        variant={'contained'}
        onClick={(event) => props.onClick(event, soundData)}>
        {soundData.movieFileName !== '' ? <FaVideo style={style.iconInButton}/> : <FaPlay style={style.iconInButton}/>}
        <span style={
          style.buttonText
        }>
          {soundData.name}
        </span>
        <PlayCount
          targetId={targetId} />
      </Button>
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
        onClick={handleClick}>
        <FaInfo style={style.iconInButton}/>
      </Button>
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
 * 再生回数を表示するコンポーネント
 *
 * @param props
 * @param {string} props.targetId ターゲットのID
 * @constructor
 */
function PlayCount(props: { targetId: string }) {
  const targetId = props.targetId;
  const clapData = useContext(ClapContext);
  const likeCount = clapData.allClaps[targetId] ?? 0;
  return (
    <>
      <div style={{
        marginLeft: '30px',
        lineHeight: '1',
      }}>
        <FaThumbsUp style={{
          ...style.iconInButton
        }}/>
        <br/>
        <span>{likeCount}</span>
      </div>
    </>
  );
}

const style: {[key: string]: React.CSSProperties} = {
  button: {
    margin: '5px',
  },
  buttonText: {
    textTransform: 'none',
    marginLeft: '5px',
    fontSize: '20px',
    fontFamily: 'Noto Sans JP',
    fontWeight: 'bold',
  },
  iconInButton: {
    fontSize: '24px',
  }
};

export default SoundButton;
