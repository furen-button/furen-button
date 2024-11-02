import {SoundData} from './SoundData';
import Grid from '@mui/material/Grid2';
import {useEffect, useReducer} from 'react';
import {Button, MenuItem, Select} from '@mui/material';

interface PonSetting {
    key: string;
    soundDataFileName: string;
}

function ponSettingsReducer(state: PonSetting[], action: {key: string, soundDataFileName: string}) {
  const nextState = state.map((ponSetting) => {
    if (ponSetting.key === action.key) {
      return {
        key: action.key,
        soundDataFileName: action.soundDataFileName,
      };
    }
    return ponSetting;
  });
  savePonSettings(nextState);
  return nextState;
}

function PonButton(props: {
    soundDataList: SoundData[],
    onClick: (soundData: SoundData) => void
})
{
  const [ponSettings, updatePonSettings] = useReducer(ponSettingsReducer, loadPonSettings());
  const soundDataList = props.soundDataList;

  const grid = <Grid container spacing={2}>
    {ponSettings.map((ponSetting) => {
      const soundData = soundDataList.find((soundData) => soundData.fileName === ponSetting.soundDataFileName);
      return <Grid size={4}>
        <Button
          fullWidth={true}
          variant={'contained'}
          onClick={() => {
            if (soundData) {
              props.onClick(soundData);
            }
          }}>
          {ponSetting.key} : {soundData?.name}
        </Button>
        <Select variant={'outlined'} value={ponSetting.soundDataFileName} onChange={(e) => {
          updatePonSettings({key: ponSetting.key, soundDataFileName: e.target.value as string});
        }}>
          {soundDataList.map((soundData) => {
            return <MenuItem value={soundData.fileName}>{soundData.name}</MenuItem>;
          })}
        </Select>
      </Grid>;
    })}
  </Grid>;


  useEffect(() => {
    const onKeyDownEvent = (e: KeyboardEvent) => {
      const ponSetting = ponSettings.find((ponSetting) => ponSetting.key === e.key);
      const soundData = soundDataList.find((soundData) => soundData.fileName === ponSetting?.soundDataFileName);
      if (soundData) {
        props.onClick(soundData);
      }
    };
    // keypress をリセットする
    document.addEventListener('keydown', onKeyDownEvent);
    return () => {
      document.removeEventListener('keydown', onKeyDownEvent);
    };
  }, [ponSettings]);

  return <div
    style={{
      border: '1px solid black',
    }}>
    <h2>ポン出しボタンコーナー</h2>
    {grid}
  </div>;
}



function loadPonSettings() {
  const rawPonSetting = localStorage.getItem('pon-setting');
  if (rawPonSetting) {
    return JSON.parse(rawPonSetting) as PonSetting[];
  }
  return [
    {key: '1', soundDataFileName: 'crazy-pizza/waraigoe-3241.mp3'},
    {key: '2', soundDataFileName: 'crazy-pizza/waraigoe-4.mp3'},
    {key: '3', soundDataFileName: 'crazy-pizza/waraigoe.mp3'},
    {key: 'q', soundDataFileName: '4shunen/luckey.mp3'},
    {key: 'w', soundDataFileName: 'pokemon-sword/pokemon1-luckey5.mp3'},
    {key: 'e', soundDataFileName: 'pokemon-sword/pokemon1-luckey6.mp3'},
    {key: 'a', soundDataFileName: 'fren-pokemon-20231228/kawaii-ha-saikyo-dakarana.mp3'},
    {key: 's', soundDataFileName: '4shunen/kawaii-desyo.mp3'},
    {key: 'd', soundDataFileName: 'yuukai-jiken/kawaiine.mp3'},
    {key: 'z', soundDataFileName: 'furen-first/furen.mp3'},
    {key: 'x', soundDataFileName: 'furen-first/e.mp3'},
    {key: 'c', soundDataFileName: 'furen-first/rusutario.mp3'},
  ];
}

function savePonSettings(ponSettings: PonSetting[]) {
  localStorage.setItem('pon-setting', JSON.stringify(ponSettings));
}

export default PonButton;
