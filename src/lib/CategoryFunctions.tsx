import {SoundData} from '../components/SoundData.tsx';

type CategoryCountList = {[key: string]: number};
function getCategoryCountList(soundList: SoundData[]) {
  const categoryCountList : CategoryCountList = {};
  soundList.map((soundData) => soundData.category.split(','))
    .forEach((categories) => {
      categories.forEach((category) => {
        categoryCountList[category] = (categoryCountList[category] || 0) + 1;
      });
    });
  return categoryCountList;
}

function getCategoryList(categoryCountList: CategoryCountList) {
  return Object.keys(categoryCountList).sort();
}

export {getCategoryCountList, getCategoryList};
