import React, { useContext } from 'react';
import { MyContext } from './MyContext';

export default function MyComponent() {
    const { text, setText } = useContext(MyContext);

    return (
        <div>
            <h1>{text}</h1>
            <button onClick={() => setText("Hello World")}>Click</button>
        </div>
    );
}