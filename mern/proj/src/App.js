import React, { useState } from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';

import Login from './Components/Login';
import Register from './Components/Register';
import Profile from './Components/Profile';
import TaskManager from './Components/TaskManager';
import { FormContext } from './Components/FormContext';
import './index.css';
import Header from './Components/Header';
export default function App() {
    const [users, setUsers] = useState([]);
    const [currentUser, setCurrentUser] = useState(null);

    return (
        <FormContext.Provider value={{ users, setUsers, currentUser, setCurrentUser }}>
            <Router>
            <Header />
                <Routes>
                    <Route path="/login" element={<Login />} />
                    <Route path="/register" element={<Register />} />
                    <Route path="/profile" element={<Profile />} />
                    <Route path="/tasks" element={<TaskManager />} />
                </Routes>
            </Router>
        </FormContext.Provider>
    );
}
