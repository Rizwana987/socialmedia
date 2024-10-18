// src/App.js
import React, { useState } from 'react';
import FeedbackForm from './FeedbackForm';
import './App.css';

const App = () => {
  const [feedbackList, setFeedbackList] = useState([]);
  const [submitted, setSubmitted] = useState(false);

  const addFeedback = (feedback) => {
    setFeedbackList([...feedbackList, feedback]);
    setSubmitted(true);
    setTimeout(() => setSubmitted(false), 3000); // Hide submission message after 3 seconds
  };

  return (
    <div className="App">
      <h1>Feedback Form</h1>
      <FeedbackForm addFeedback={addFeedback} />
      {submitted && <p>Feedback Submitted!</p>}
      <h2>Feedback List</h2>
      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Roll No</th>
            <th>Class</th>
            <th>Feedback</th>
          </tr>
        </thead>
        <tbody>
          {feedbackList.map((feedback, index) => (
            <tr key={index}>
              <td>{feedback.name}</td>
              <td>{feedback.age}</td>
              <td>{feedback.rollNo}</td>
              <td>{feedback.className}</td>
              <td>{feedback.feedback}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default App;
