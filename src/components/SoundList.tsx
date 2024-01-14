import {SoundDataJson, SoundData} from './SoundData.tsx';
import React from 'react';

export interface SoundListProps {
  onClick: (event: React.MouseEvent<HTMLDivElement>, soundData: SoundData) => void;
  onContextMenu: (event: React.MouseEvent<HTMLDivElement>, soundData: SoundData) => void;
  selectedCategory: string[];
}

function SoundList(props: SoundListProps) {
  return SoundDataJson.map((soundData) => (
    createSoundButton(soundData, props)
  ));
}

function createSoundButton(soundData: SoundData, props: SoundListProps) {
  const categories = soundData.category.split(',');
  let hidden = true;
  props.selectedCategory.forEach((targetCategory) => {
    categories.forEach((category) => {
      if (targetCategory === category) {
        hidden = false;
      }
    });
  });
  return (
    <div
      className="sounds"
      data-name={soundData.name}
      data-ruby={soundData.ruby}
      data-file={soundData.fileName}
      data-source={soundData.sourceName}
      data-source-url={soundData.sourceUrl}
      data-category={soundData.category}
      data-clip-url={soundData.clipUrl}
      onClick={(event) => props.onClick(event, soundData)}
      onContextMenu={(event) => props.onContextMenu(event, soundData)}
      hidden={hidden}
    >
      {soundData.name}
    </div>
  );
}

export default SoundList;
