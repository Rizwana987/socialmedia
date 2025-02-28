// src/FeedbackForm.js
import React, { useState } from 'react';

const FeedbackForm = ({ addFeedback }) => {
  const [formData, setFormData] = useState({
    name: '',
    age: '',
    rollNo: '',
    className: '',
    feedback: ''
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({
      ...formData,
      [name]: value
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    addFeedback(formData);
    setFormData({
      name: '',
      age: '',
      rollNo: '',
      className: '',
      feedback: ''
    });
  };

  return (
    <form onSubmit={handleSubmit}>
      <div>
        <label>Name:</label>
        <input type="text" name="name" value={formData.name} onChange={handleChange} required />
      </div>
      <div>
        <label>Age:</label>
        <input type="number" name="age" value={formData.age} onChange={handleChange} required />
      </div>
      <div>
        <label>Roll No:</label>
        <input type="text" name="rollNo" value={formData.rollNo} onChange={handleChange} required />
      </div>
      <div>
        <label>Class:</label>
        <input type="text" name="className" value={formData.className} onChange={handleChange} required />
      </div>
      <div>
        <label>Feedback:</label>
        <textarea name="feedback" value={formData.feedback} onChange={handleChange} required />
      </div>
      <button type="submit">Submit</button>
    </form>
  );
};

export default FeedbackForm;
