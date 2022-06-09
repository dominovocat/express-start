DROP TABLE users;
--@block
CREATE TABLE IF NOT EXISTS "users" (
  id serial UNIQUE NOT NULL ,
  firstName varchar(32) NOT NULL CHECK(char_length (firstName)>=2),
  lastName varchar(64) NOT NULL CHECK(length(lastName)>=2),
  email varchar (32) NOT NULL UNIQUE CHECK(email>=6),
  isMale BOOLEAN NOT NULL,
  balance DECIMAL(4, 2) NOT NULL 
  DEFAULT 0.00 
  CONSTRAINT "positive_balance" CHECK(balance >= 0.00)
);
--@block
INSERT INTO "users"
VALUES (200, 'tets', 'test2', true);
--@block
INSERT INTO "users" (firstName, lastName, isMale)
VALUES ('test', 'test2', true);


--@block
CREATE TABLE IF NOT EXISTS "products"(
  id serial UNIQUE NOT NULL,
  name varchar(15) NOT NULL CHECK(char_length (name)>=3),
  price DECIMAL(7,2) NOT NULL 
  DEFAULT 0.00 CONSTRAINT "positive_price" CHECK(price >= 0.00),
  quantity DECIMAL (5,0) NOT NULL DEFAULT 0 
);

--@block
INSERT INTO "products" (name,price) VALUES (
  'banana',
  19.50
);