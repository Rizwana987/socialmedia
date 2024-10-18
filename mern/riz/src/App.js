import React from 'react';
import { UserProvider } from './UserContext';
import Register from './Register';
import Login from './Login';

const App = () => {
  return (
    <UserProvider>
      <div>
        <h1>User Registration and Login</h1>
        <Register />
        <Login />
      </div>
    </UserProvider>
  );
};

export default App;