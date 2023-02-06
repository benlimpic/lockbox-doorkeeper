import React from 'react';
import ReactDom from 'react-dom/client';
import './index.css';
import App from './App';
import { store } from './app/store';
import Form from 'react-bootstrap/Form'
import Container from 'react-bootstrap/Container'
import Button from 'react-bootstrap/Button'

import * as serviceWorker from './serviceWorker';
import { Provider } from 'react-redux';

const rootElement = document.getElementById('root');
const root = ReactDom.createRoot(rootElement as HTMLElement);

root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>,
);

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
