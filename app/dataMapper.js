const client = require('./database.js');

const dataMapper = {
  getAllProducts: (callback) => {
    const query_SQL = 'SELECT * FROM product_list';
    client.query(query_SQL, callback);
  },
};

module.exports = dataMapper