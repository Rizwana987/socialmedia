import React, { createContext, useState } from 'react';

export const UserContext = createContext();

export const UserProvider = ({ children }) => {
  const [user, setUser] = useState(null);

  const registerUser = (userData) => {
    setUser(userData);
  };

  const loginUser = (username, password) => {
    return user && user.username === username && user.password === password;
  };

  return (
    <UserContext.Provider value={{ user, registerUser, loginUser }}>
      {children}
    </UserContext.Provider>
  );
};
