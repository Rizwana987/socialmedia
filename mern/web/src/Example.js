import React, { useState } from 'react';
import { MyContext } from './MyContext';
import MyComponent from './MyComponent';
import './index.css'

export default function Example() {
    const [text, setText] = useState("");

    return (
        <div>
            <MyContext.Provider value={{ text, setText }}>
                <MyComponent />
                {/* Additional components can be added here */}
            </MyContext.Provider>
            <h1 class="text-red-600" >helloooooooooooooooooo</h1>
        </div>
    );
}