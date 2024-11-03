import {SoundData} from './SoundData.tsx';
import React, {useContext} from 'react';
import SoundButton from './SoundButton.tsx';
import VideoSourceLabel, {getVideoDate} from './VideoSourceLabel.tsx';
import {ClapContext} from './ClapContext.tsx';
import {soundFileNameToTargetId} from '../lib/FirebaseFunctions.ts';

const sectionIndexList = ['0,A', 'あ', 'か', 'さ', 'た', 'な', 'は', 'ま', 'や', 'ら', 'わ', '他'];

export type SectionPattern = 'ruby' | 'source' | 'count';

function SoundList(props: {
    filteredSoundDataList: SoundData[];
    onClick: (event: React.MouseEvent<HTMLElement>, soundData: SoundData) => void;
    selectedCategory: string[];
    playingSoundDataList: SoundData[];
    sectionPattern: SectionPattern;
}) {
  const clapData = useContext(ClapContext);
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
  let sectionKeys : string[] = [];

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
    sectionKeys = Object.keys(sectionList);
  } else if (props.sectionPattern === 'source') {
    for (const soundData of props.filteredSoundDataList) {
      const section = soundData.sourceName;
      if (sectionList[section] === undefined) {
        sectionList[section] = [];
      }
      sectionList[section].push(soundData);
    }
    sectionKeys = Object.keys(sectionList).sort((a, b) => {
      const aDateNumber = getVideoDate(a);
      const bDateNumber = getVideoDate(b);
      return bDateNumber - aDateNumber;
    });
  } else if (props.sectionPattern === 'count') {
    const soundDataList = props.filteredSoundDataList.slice();
    soundDataList.sort((a, b) => {
      const aTargetId = soundFileNameToTargetId(a.fileName);
      const bTargetId = soundFileNameToTargetId(b.fileName);
      const aLikeCount = clapData.allClaps[aTargetId] ?? 0;
      const bLikeCount = clapData.allClaps[bTargetId] ?? 0;
      return bLikeCount - aLikeCount;
    });
    for (const soundData of soundDataList) {
      const section = '再生数';
      if (sectionList[section] === undefined) {
        sectionList[section] = [];
      }
      sectionList[section].push(soundData);
    }
    sectionKeys = Object.keys(sectionList);
  }

  const soundElements = sectionKeys.map((key) => {
    let label = <>{key}</>;
    if (props.sectionPattern === 'source') {
      label = <VideoSourceLabel videoTitle={key}></VideoSourceLabel>;
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

const style: { [key: string]: React.CSSProperties } = {
  container: {
    maxWidth: 'calc(100% - 200px)',
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
