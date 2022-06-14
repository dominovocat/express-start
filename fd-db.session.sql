DROP TABLE users;
--@block
CREATE TABLE IF NOT EXISTS "users" (
  id serial UNIQUE NOT NULL ,
  firstName varchar(32) NOT NULL CHECK(length (firstName)>=2),
  lastName varchar(64) NOT NULL CHECK(length(lastName)>=2),
  email varchar (32) NOT NULL UNIQUE CHECK(length(email)>=6),
  isMale BOOLEAN NOT NULL,
  birthdate date NOT NULL CHECK (birthdate BETWEEN '1990-01-01' AND  CURRENT_DATE), 
  balance DECIMAL(4, 2) NOT NULL 
  DEFAULT 0.00 
  CONSTRAINT "positive_balance" CHECK(balance >= 0.00)
);
--@block
INSERT INTO "users"
VALUES (200, 'tets', 'test2', true);
--@block
INSERT INTO "users" (firstName, lastName, isMale,email,birthdate)
VALUES ('burdo', 'erundo', true,'email@gmaik','1990-02-03');


SELECT email as "E-mail"
FROM users
WHERE birthdate = '1990-02-02'
;

SELECT email as "E-mail"
FROM
users
WHERE --FILTER
--extract(year from age(birthdate))>=25
date_part('year',age("birthdate"))>=25;


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

--@block
CREATE TABLE IF NOT EXISTS "my_products"(
  id serial UNIQUE NOT NULL,
  name varchar(15) NOT NULL CHECK(char_length(name)>=3),
  quantity NOT NULL CHECK(quantity >=0) DEFAULT 0,
  price DECIMAL NOT NULL CHECK (price BETWEEN 100 AND 5000),
  sold_date date NOT NULL CHECK (sold_date BETWEEN '2000-01-01' AND  CURRENT_DATE)
);

--@block
INSERT INTO "my_products"(name,quantity,price,sold_date) VALUES(
  'ba',
  10,
  101,
  '2001-01-01'
);

--@block
ALTER TABLE "my_products"
DROP CONSTRAINT "my_products_pkey";

ALTER TABLE "my_products"
ADD  PRIMARY KEY (id);



