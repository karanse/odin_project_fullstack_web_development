import React from 'react';
import ReactDOM from 'react-dom/client';
// import App from './App.jsx';
import Greeting from './components/Greeting.jsx';
import Goodbye from './components/Goodbye.jsx';
import Division from './components/Division.jsx';
import Avatar from './components/Avatar.jsx';
import TodoList from './components/TodoList.jsx';
import './index.css';

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <>
    <Greeting/>
    <Goodbye />
    <Division />
    <Avatar />
    <TodoList />
    </>

  </React.StrictMode>,
);
