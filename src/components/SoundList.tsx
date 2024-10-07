import {SoundData} from './SoundData.tsx';
import React, {lazy, Suspense} from 'react';
import { FaPaperclip, FaVideo } from 'react-icons/fa6';
const VideoSourceLabel = lazy(() => import('./VideoSourceLabel.tsx'));

export interface SoundListProps {
  filteredSoundDataList: SoundData[];
  onClick: (event: React.MouseEvent<HTMLDivElement>, soundData: SoundData) => void;
  selectedCategory: string[];
  playingSoundDataList: SoundData[];
  sectionPattern: 'ruby' | 'source';
}

const sectionIndexList = ['0,A', 'あ', 'か', 'さ', 'た', 'な', 'は', 'ま', 'や', 'ら', 'わ', '他'];

function SoundList(props: SoundListProps) {
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
  onClick: (event: React.MouseEvent<HTMLDivElement>, soundData: SoundData) => void;
  selectedCategory: string[];
  playingSoundDataList: SoundData[];
}) {
  const soundData = props.soundData;
  const found = props.playingSoundDataList.find((soundData) => {
    return soundData.fileName === props.soundData.fileName;
  });
  const isPlaying = found !== undefined;
  const className = isPlaying ? 'sounds anime-button' : 'sounds';

  const directory = 'sounds';

  const details = <details>
    <summary>詳細</summary>
    <div style={style.detail}>
      <ul className="context-list">
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
    </div>
  </details>;

  return (
    <>
      <div
        className={className}
        data-name={soundData.name}
        data-ruby={soundData.ruby}
        data-file={soundData.fileName}
        data-movie-file={soundData.movieFileName}
        data-source={soundData.sourceName}
        data-source-url={soundData.sourceUrl}
        data-category={soundData.category}
        data-clip-url={soundData.clipUrl}
        onClick={(event) => props.onClick(event, soundData)}
      >
        {soundData.movieFileName !== '' && <FaVideo style={{fontSize: '20px'}}/>}
        {soundData.clipUrl !== '' && <FaPaperclip style={{fontSize: '20px'}}/>}
        {soundData.name}
      </div>
      {details}
    </>
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
  detail: {
    border: 'solid 1px #aaa',
    borderRadius: '4px',
  },
};

export default SoundList;
