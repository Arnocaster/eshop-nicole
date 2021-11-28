const express = require('express');

const app = express();
const PORT = 3000;

app.set('view engine', 'ejs');
app.set('views', './views');
app.use(express.static('./public'));

const router = require('./app/router');

app.use(router);

app.listen(PORT, () => {
	console.log(`Server listen on ${PORT}`);
});
