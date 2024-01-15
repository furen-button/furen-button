
export interface CategoryCheckListProps {
  categoryList: string[];
  selectedCategory: string[];
  setSelectedCategory: (categories: string[]) => void;
}

function CategoryCheckList(props : CategoryCheckListProps) {
  return (
    <>
      <ul
        id='category-buttons'>
        {
          props.categoryList.map((category) => {
            const id = `category-${category}`;
            return (
              <li key={id}>
                <input
                  id={id}
                  className='category-checkbox'
                  type="checkbox"
                  checked={props.selectedCategory.includes(category)}
                  onChange={() => {
                    if (props.selectedCategory.includes(category)) {
                      props.setSelectedCategory(props.selectedCategory.filter((c) => c !== category));
                    } else {
                      props.setSelectedCategory([...props.selectedCategory, category]);
                    }
                  }}
                />
                <label htmlFor={id}>{category}</label>
              </li>
            );
          })
        }
      </ul>
      <button
        id="all-category-check"
        className="config-button"
        onClick={() => {
          props.setSelectedCategory(props.categoryList);
        }}>
        カテゴリー全チェック
      </button>
      <button
        id="all-category-uncheck"
        className="config-button"
        onClick={() => {
          props.setSelectedCategory([]);
        }}>
        カテゴリー全解除
      </button>
      <a href="./categories.html">カテゴリ説明</a>
    </>
  );
}

export default CategoryCheckList;
