
--@block
CREATE TABLE IF NOT EXISTS "manufacturers"(
  id serial PRIMARY KEY,
  brand VARCHAR(20) NOT NULL CHECK(char_length(brand)>=3),
  adress VARCHAR NOT NULL CHECK(char_length(adress)>=3)
);

--@block
CREATE TABLE IF NOT EXISTS "new_products"(
  id serial PRIMARY KEY,
  model VARCHAR(50) NOT NULL CHECK(char_length(model)>=2),
  price DECIMAL NOT NULL CHECK (price BETWEEN 100 and 100000),
  amount DECIMAL (5,0) NOT NULL DEFAULT 0,
  manufacturer_id serial FOREIGN KEY (manufacturer_id) REFERENCES (manufacturer_id)
);

