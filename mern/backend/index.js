const express=require('express')
const mongoose = require('mongoose')
const AuthorAPi = require('./routes/authors')
const BookApi = require('./routes/books')
const port = 3001
const app = express()
app.use(express.json())
const url ='mongodb+srv://rrizwanashaik987:5z5faNNRoCoqR9qw@cluster0.pcfi3gs.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0'
mongoose.connect(url).then(()=>{console.log('MongoDB connected')})
.catch((err)=>{console.log(err)})
//router API's
app.use('/authors',AuthorAPi);
app.use('/books',BookApi);
app.listen(port,()=>{console.log(`Server live at ${port}`)})
