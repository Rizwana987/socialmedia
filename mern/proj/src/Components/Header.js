import React from 'react';
import { Link } from 'react-router-dom';

export default function Header() {
    return (
        <div className="header">
            <h3>Personal Task Manager</h3>
            <ul>
                <li><Link to="/">Home</Link></li>
                <li><Link to="/login">Login</Link></li>
                <li><Link to="/register">Register</Link></li>
                <li><Link to="/profile">Profile</Link></li>
                <li><Link to="/tasks">Tasks</Link></li>
            </ul>
        </div>
    );
}