import {SoundData} from './SoundData.tsx';
import React, {lazy, Suspense} from 'react';
import {ClapData} from '../lib/FirebaseFunctions.ts';
import SoundButton from './SoundButton.tsx';

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
