import {getCategoryList} from '../lib/CategoryFunctions.tsx';
import {Button, Checkbox, FormControlLabel, Popover} from '@mui/material';
import React from 'react';
import CategoriesDataJson from '../../public/dataset/categories.json';

interface CategoriesData {
    [key: string]: {
        description: string;
    }
}

export interface CategoryCheckListProps {
  categoryCountList: {[key: string]: number};
  selectedCategory: string[];
  setSelectedCategory: (categories: string[]) => void;
}

function CategoryCheckList(props : CategoryCheckListProps) {
  const {categoryCountList, selectedCategory, setSelectedCategory} = props;

  const liElements = getCategoryList(categoryCountList).map((category) => {
    const categoryCount = categoryCountList[category];
    return <CheckBoxElement
      key={category}
      category={category}
      categoryCount={categoryCount}
      selectedCategory={selectedCategory}
      setSelectedCategory={setSelectedCategory}/>;
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

function CheckBoxElement(props: {
    category: string,
    categoryCount: number,
    selectedCategory: string[],
    setSelectedCategory: (categories: string[]) => void})
{
  const {category, categoryCount, selectedCategory, setSelectedCategory} = props;
  const id = `category-${category}`;
  const label = `${category} (${categoryCount})`;
  const selected = selectedCategory.includes(category);
  const categoryList = CategoriesDataJson as CategoriesData;
  const categoryData = categoryList[category] ?? {description: ''};
  const [anchorEl, setAnchorEl] = React.useState<HTMLElement | null>(null);
  const handlePopoverOpen = (event: React.MouseEvent<HTMLElement>) => {
    setAnchorEl(event.currentTarget);
  };
  const handlePopoverClose = () => {
    setAnchorEl(null);
  };
  const open = Boolean(anchorEl) && categoryData.description !== '';
  return <li key={id}>
    <div
      onMouseEnter={handlePopoverOpen}
      onMouseLeave={handlePopoverClose}
    >
      <FormControlLabel
        id={id}
        control={
          <Checkbox
            checked={selected}
            onChange={() => {
              if (selected) {
                setSelectedCategory(selectedCategory.filter((c) => c !== category));
              } else {
                setSelectedCategory([...selectedCategory, category]);
              }
            }}
          />
        }
        label={label}
      />
    </div>
    <Popover open={open} anchorEl={anchorEl} onClose={handlePopoverClose}
      sx={{pointerEvents: 'none'}}
      anchorOrigin={{
        vertical: 'bottom',
        horizontal: 'center',
      }}>
      <div dangerouslySetInnerHTML={{__html: categoryData.description}}/>
    </Popover>
  </li>;
}

const style : {[key: string]: React.CSSProperties} = {
  configButton: {
    margin: '8px',
    fontFamily: ['Notosans JP', 'sans-serif'].join(','),
    fontSize: '20px',
  }
};

export default CategoryCheckList;
