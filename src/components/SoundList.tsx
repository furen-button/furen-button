import {SoundData} from './SoundData.tsx';
import React from 'react';

export interface SoundListProps {
  filteredSoundDataList: SoundData[];
  onClick: (event: React.MouseEvent<HTMLDivElement>, soundData: SoundData) => void;
  onContextMenu: (event: React.MouseEvent<HTMLDivElement>, soundData: SoundData) => void;
  selectedCategory: string[];
  playingSoundDataList: SoundData[];
}

function SoundList(props: SoundListProps) {
  const soundButtons = props.filteredSoundDataList.map((soundData) => (
    <SoundButton
      soundData={soundData}
      onClick={props.onClick}
      onContextMenu={props.onContextMenu}
      selectedCategory={props.selectedCategory}
      playingSoundDataList={props.playingSoundDataList}
      key={soundData.fileName}/>
  ));
  return (
    <>
      {soundButtons}
    </>
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

export default SoundList;
