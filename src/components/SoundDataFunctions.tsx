import {SoundData} from './SoundData.tsx';

function isCategoryMatched(soundData: SoundData, selectedCategory: string[]) {
  const categories = soundData.category.split(',');
  let matched = false;
  selectedCategory.forEach((targetCategory) => {
    categories.forEach((category) => {
      if (targetCategory === category) {
        matched = true;
      }
    });
  });
  return matched;
}

export {isCategoryMatched};
