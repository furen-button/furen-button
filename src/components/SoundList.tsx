import {SoundData} from './SoundData.tsx';
import React from 'react';

export interface SoundListProps {
  filteredSoundDataList: SoundData[];
  onClick: (event: React.MouseEvent<HTMLDivElement>, soundData: SoundData) => void;
  onContextMenu: (event: React.MouseEvent<HTMLDivElement>, soundData: SoundData) => void;
  selectedCategory: string[];
  playingSoundDataList: SoundData[];
}

const sectionIndexList = ['0', 'あ', 'か', 'さ', 'た', 'な', 'は', 'ま', 'や', 'ら', 'わ'];

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

  for (const soundData of props.filteredSoundDataList) {
    const sectionIndex = sectionIndexList.findIndex((value) => {
      return value > soundData.ruby.charAt(0);
    });
    const section = sectionIndexList[sectionIndex];
    if (sectionList[section] === undefined) {
      sectionList[section] = [];
    }
    sectionList[section].push(soundData);
  }

  const soundElements = Object.keys(sectionList).map((key) => {
    return (
      <div style={style.container}>
        {
          sectionList[key].map((soundData) => {
            return (
              <SoundButton
                soundData={soundData}
                onClick={props.onClick}
                onContextMenu={props.onContextMenu}
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
  onContextMenu: (event: React.MouseEvent<HTMLDivElement>, soundData: SoundData) => void;
  selectedCategory: string[];
  playingSoundDataList: SoundData[];
}) {
  const soundData = props.soundData;
  const found = props.playingSoundDataList.find((soundData) => {
    return soundData.fileName === props.soundData.fileName;
  });
  const isPlaying = found !== undefined;
  const className = isPlaying ? 'sounds anime-button' : 'sounds';
  return (
    <div
      className={className}
      data-name={soundData.name}
      data-ruby={soundData.ruby}
      data-file={soundData.fileName}
      data-source={soundData.sourceName}
      data-source-url={soundData.sourceUrl}
      data-category={soundData.category}
      data-clip-url={soundData.clipUrl}
      onClick={(event) => props.onClick(event, soundData)}
      onContextMenu={(event) => props.onContextMenu(event, soundData)}
    >
      {soundData.name}
    </div>
  );
}

const style : {[key: string]: React.CSSProperties} = {
  container: {
    maxWidth: 'calc(100% - 500px)',
    minWidth: 'min(400px, 100%)',
    display: 'flex',
    flexDirection: 'row',
    flexWrap: 'wrap',
    border: 'solid 10px rgba(0, 0, 0, 0)',
  },
  noData:{
    width: '100%',
    textAlign: 'center',
    fontSize: '30px',
    fontWeight: 'bold',
  }
};

export default SoundList;
