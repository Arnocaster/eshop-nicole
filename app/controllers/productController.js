const dataMapper = require('../dataMapper');

const productController = {
  listAllProducts: (request, response) => {
    dataMapper.getAllProducts((error, data) => {
      if (error) {
        console.log("SQL ERROR :", error);
      } else {
        response.render('index',{products : data.rows});
      }
    });
  },

};

module.exports = productController;
