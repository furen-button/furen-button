import {getCategoryList} from '../lib/CategoryFunctions.tsx';
import {Checkbox, FormControlLabel} from '@mui/material';

export interface CategoryCheckListProps {
  categoryCountList: {[key: string]: number};
  selectedCategory: string[];
  setSelectedCategory: (categories: string[]) => void;
}

function CategoryCheckList(props : CategoryCheckListProps) {
  const {categoryCountList, selectedCategory, setSelectedCategory} = props;
  return (
    <>
      <ul
        id='category-buttons'>
        {
          getCategoryList(categoryCountList).map((category) => {
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
          })
        }
      </ul>
      <button
        id="all-category-check"
        className="config-button"
        onClick={() => {
          setSelectedCategory(getCategoryList(categoryCountList));
        }}>
        カテゴリー全チェック
      </button>
      <button
        id="all-category-uncheck"
        className="config-button"
        onClick={() => {
          setSelectedCategory([]);
        }}>
        カテゴリー全解除
      </button>
      <a href="./categories.html">カテゴリ説明</a>
    </>
  );
}

export default CategoryCheckList;
