import {getCategoryList} from '../lib/CategoryFunctions.tsx';
import {Button, Checkbox, FormControlLabel} from '@mui/material';
import React from 'react';

export interface CategoryCheckListProps {
  categoryCountList: {[key: string]: number};
  selectedCategory: string[];
  setSelectedCategory: (categories: string[]) => void;
}

function CategoryCheckList(props : CategoryCheckListProps) {
  const {categoryCountList, selectedCategory, setSelectedCategory} = props;

  const liElements = getCategoryList(categoryCountList).map((category) => {
    const id = `category-${category}`;
    const label = `${category} (${categoryCountList[category]})`;
    return (
      <li key={id}>
        <FormControlLabel
          id={id}
          control={
            <Checkbox
              checked={selectedCategory.includes(category)}
              onChange={() => {
                if (selectedCategory.includes(category)) {
                  setSelectedCategory(selectedCategory.filter((c) => c !== category));
                } else {
                  setSelectedCategory([...selectedCategory, category]);
                }
              }}
            />
          }
          label={label}
        />
      </li>
    );
  });

  return (
    <>
      <ul id='category-buttons'>
        {liElements}
      </ul>
      <Button
        variant={'contained'}
        onClick={() => {
          setSelectedCategory(getCategoryList(categoryCountList));
        }}
        style={style.configButton}>
        カテゴリー全チェック
      </Button>
      <Button
        variant={'contained'}
        onClick={() => {
          setSelectedCategory([]);
        }}
        style={style.configButton}>
        カテゴリー全解除
      </Button>
      <a href="./categories.html">カテゴリ説明</a>
    </>
  );
}

const style : {[key: string]: React.CSSProperties} = {
  configButton: {
    margin: '8px',
    fontFamily: ['Notosans JP', 'sans-serif'].join(','),
    fontSize: '20px',
  }
};

export default CategoryCheckList;
