const express = require('express');
const mongoose = require('mongoose');
// const bodyPaser = require('body-paser');

const routes = require('./routes');

const app = express();

mongoose.set('useCreateIndex', true);
mongoose.connect('mongodb://localhost:27017/chamados', { 
  useNewUrlParser: true, 
  useUnifiedTopology: true 
});

// app.use(bodyPaser.urlencoded({ extended:true }))
// app.use(bodyPaser.json());

app.use(express.json());
app.use(routes);

module.exports = app;