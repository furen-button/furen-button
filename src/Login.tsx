import React, {useEffect, useState, useContext} from 'react';
import {getClapData, login} from './lib/FirebaseFunctions.ts';
import {ClapContext} from './components/ClapContext.tsx';

export function Login({children}: {children: React.ReactNode}) {
  const clapDataFromContext = useContext(ClapContext);
  const [clapData, setClapData] = useState(clapDataFromContext);
  useEffect(() => {
    let ignore = false;
    (async () => {
      if (ignore) {
        return;
      }
      await login();
      await getClapData(
        (targetId, count) => {
          const userClaps = clapData.userClaps;
          userClaps[targetId] = count;
          setClapData((prevClapData) => {
            return {
              ...prevClapData,
              userClaps: userClaps,
            };
          });
        }, (targetId, count) => {
          const allClaps = clapData.allClaps;
          allClaps[targetId] = count;
          setClapData((prevClapData) => {
            return {
              ...prevClapData,
              allClaps: allClaps,
            };
          });
        });
    })();
    return () => {
      ignore = true;
    };
  }, []);

  return <ClapContext.Provider value={clapData}>
    {children}
  </ClapContext.Provider>;
}
