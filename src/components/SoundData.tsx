// SoundDataJson は SoundData の配列
import SoundDataJson from '../dataset/sounds.json';

export interface SoundData {
  name: string;
  ruby: string;
  fileName: string;
  sourceName: string;
  sourceUrl: string;
  category: string;
  clipUrl: string;
}

export {SoundDataJson};
