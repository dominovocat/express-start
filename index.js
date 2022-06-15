// const express = require('express');
// const path = require('path');
// const {
//   clientErrorsHandler,
//   serverErrorHandler,
// } = require('./src/middlewares/error.handler.js');
// const router = require('./src/routes/index.js');
// const dotenv = require('dotenv');
// dotenv.config(path.resolve(__dirname, '../', '.env'));

// const app = express();

// app.use(express.json());

// app.use('/files', express.static(
//   path.resolve(__dirname, '../', 'public')
// )); // public/avatars -> /static/avatars

// // cors

// app.use(function (req, res, next) {
//   console.log(new Date().toLocaleString(), req.method, req.path, req.body);
//   next();
// });

// app.use('/', router);

// app.use(clientErrorsHandler);
// app.use(serverErrorHandler);

// const port = process.env.PORT || 5000;
// // http://localhost:5000
// app.listen(port, () => {
//   console.log('Server started on port', port);
// });


const { Client } = require('pg');

const client = new Client();
(async()=>{
  await client.connect()

  await client.query(`
  ALTER TABLE users
  ADD COLUMT tall numeric(3,2)
  NOT NULL CHECK (tall BETWEEN 0.2 AND 3.00)`)
  await client.end();

  // const res = await client.query('INSERT INTO users');

})();
