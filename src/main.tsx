import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App.tsx';
import LatestFeeds from './components/LatestFeeds.tsx';
import { install } from 'ga-gtag';
import { Login } from './Login.tsx';
import { AllPlayCount } from './components/AllPlayCount.tsx';

ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <LatestFeeds />
    <Login>
      <AllPlayCount />
      <App />
    </Login>
  </React.StrictMode>,
);

install('G-JRK3SXPLHB');
