import express from "express";
import bodyParser from "body-parser";
import cors from "cors";
import dotenv from "dotenv";
import mongoose from "mongoose";

// routes
import AuthRoute from './routes/AuthRoute.js';
import UserRoute from './routes/UserRoute.js';
import PostRoute from './routes/PostRoute.js';
import UploadRoute from './routes/UploadRoute.js';
import ChatRoute from './routes/ChatRoute.js';
import MessageRoute from './routes/MessageRoute.js';

const app = express();

// middleware
app.use(bodyParser.json({ limit: "30mb", extended: true }));
app.use(bodyParser.urlencoded({ limit: "30mb", extended: true }));
app.use(cors());
app.use(express.static('public')); 
app.use('/images', express.static('images'));

// Load environment variables
dotenv.config();
const PORT = process.env.PORT || 5000; // Default to 5000 if PORT not defined

// MongoDB connection
const CONNECTION = process.env.MONGODB_CONNECTION;
mongoose.set('strictQuery', false); // Prepare for future Mongoose updates
mongoose
  .connect(CONNECTION, { useNewUrlParser: true, useUnifiedTopology: true })
  .then(() => app.listen(PORT, () => console.log(`Listening at Port ${PORT}`)))
  .catch((error) => console.log(`MongoDB connection error: ${error.message}`));

// API routes
app.use('/auth', AuthRoute);
app.use('/user', UserRoute);
app.use('/posts', PostRoute);
app.use('/upload', UploadRoute);
app.use('/chat', ChatRoute);
app.use('/message', MessageRoute);
