import { createContext } from 'react';
import { NullClapData, ClapData } from '../lib/FirebaseFunctions';

export const ClapContext = createContext<ClapData>(NullClapData);
