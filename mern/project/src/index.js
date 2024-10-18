import React, {useEffect,useReducer,useState } from 'react';
import ReactDOM from 'react-dom/client';
import Header from './components/Header';
import Login from './components/Login';
import Register from './components/Register';
import {BrowserRouter as Router,Routes,Link,Route} from 'react-router-dom'
const root = document.getElementById('root');
const VirtualRoot = ReactDOM.createRoot(root);
//virtual Root(V Dom)
VirtualRoot.render(
  <Router>
  <div>
    <Header/>
    <Routes>
      <Route path="/login" element={<Login/>} />
      <Route path="/register" element={<Register/>} />
  </Routes>
    <h4>Home Page</h4>
  </div>
  </Router>
)