import React, {useContext} from 'react';
import {ClapContext} from './ClapContext.tsx';

export function AllPlayCount() {
  const clapData = useContext(ClapContext);
  const allClaps = clapData.allClaps;
  const userClaps = clapData.userClaps;
  const clapCount = Object.values(allClaps).reduce((acc, value) => {
    return acc + value;
  }, 0);
  const userClapCount = Object.values(userClaps).reduce((acc, value) => {
    return acc + value;
  }, 0);

  return (
    <div style={style.container}>
      <div style={style.clapCount}>
        <div style={style.clapCountLabel}>総再生回数</div>
        <div style={style.clapCountValue}>{clapCount}</div>
      </div>
      <div style={style.clapCount}>
        <div style={style.clapCountLabel}>あなたの再生回数</div>
        <div style={style.clapCountValue}>{userClapCount}</div>
      </div>
    </div>
  );
}

const style: {[key: string]: React.CSSProperties} = {
  container: {
    display: 'flex',
    flexDirection: 'column',
    alignItems: 'center',
  },
  clapCount: {
    display: 'flex',
    flexDirection: 'column',
    alignItems: 'center',
    margin: '10px',
  },
  clapCountLabel: {
    fontSize: '1em',
  },
  clapCountValue: {
    fontSize: '3em',
    fontFamily: ['Mochiy Pop One', 'Noto Sans JP', 'sans-serif'].join(','),
  },
};
