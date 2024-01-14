import React from 'react';
import { SoundData} from './SoundData.tsx';

export interface ContextProps {
  soundData: SoundData | null;
  onCloseClick: () => void;
}

function SoundContext(props: ContextProps) {
  if (props.soundData == null)
  {
    return (<div></div>);
  }
  return (
    <div
      style={style.container}>
      <ul className="context-list">
        <li>
          <div className="context-title">ファイル:</div>
          <span>{props.soundData.name}</span>
        </li>
        <li>
          <div className="context-title">ルビ:</div>
          <span>{props.soundData.ruby}</span>
        </li>
        <li>
          <div className="context-title">カテゴリ:</div>
          <span>{props.soundData.category}</span>
        </li>
        <li>
          <div className="context-title">元動画:</div>
          <a
            target="_blank"
            href={props.soundData.sourceUrl}>
            {props.soundData.sourceName}
          </a>
        </li>
        <li hidden={props.soundData.clipUrl !== ''}>
          <div className="context-title">クリップ:</div>
          <a
            target="_blank"
            href={props.soundData.clipUrl}>
            クリップリンク
          </a>
        </li>
      </ul>
      <button onClick={props.onCloseClick}>閉じる</button>
    </div>
  );
}

const style : {[key: string]: React.CSSProperties} = {
  container: {
    position: 'fixed',
    top: '0',
    left: '0',
    backgroundColor: '#fff',
    border: 'solid 1px #000',
    borderRadius: '5px',
  }
};

export default SoundContext;
