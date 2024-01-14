import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App.tsx';
import { install } from 'ga-gtag';

ReactDOM.createRoot(document.getElementById('sounds-list')!).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
);

install('G-JRK3SXPLHB');
