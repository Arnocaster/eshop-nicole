const dotenv = require('dotenv');
dotenv.config();

const express = require('express');

const app = express();

app.set('view engine', 'ejs');
app.set('views', './views');
app.use(express.static('./public'));

const router = require('./app/router');

app.use(router);

app.listen(process.env.PORT, () => {
  console.log(`Server listen on ${process.env.PORT}`);
});
