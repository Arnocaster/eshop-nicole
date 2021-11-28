const express = require('express');

const productController = require('./controllers/productController');

const router = express.Router();

router.get('/', productController.listAllProducts);

router.use((request, response) => {
  response.status(404).render('page404');
});

module.exports = router;
