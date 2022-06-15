const { Client } = require("pg");
require("dotenv").config();

const client = new Client();
(async () => {
  await client.connect();

  await client.query(`
  ALTER TABLE users
  ADD COLUMT tall numeric(3,2)
  NOT NULL CHECK (tall BETWEEN 0.2 AND 3.00) DEFAULT 0.3`);

  const userValues = [];
  const res = await client.query(
    `INSERT INTO users (firstname,lastname,ismale,birthdate)
    VALUES${userValues};`
  );

  await client.end();
  process.exit();
})();
