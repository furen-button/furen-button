import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App.tsx';
import LatestFeeds from './components/LatestFeeds.tsx';
import { install } from 'ga-gtag';

ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <LatestFeeds />
    <App />
  </React.StrictMode>,
);

install('G-JRK3SXPLHB');
