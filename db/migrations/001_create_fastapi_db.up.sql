DROP TABLE IF EXISTS fastapi.products;
CREATE TABLE products (
  name TEXT NOT NULL,
  price INT NOT NULL,
  id SERIAL,
  PRIMARY KEY (id) 
);
