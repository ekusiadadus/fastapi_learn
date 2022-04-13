DROP TABLE IF EXISTS fastapi.users;
CREATE TABLE users (
  id INT NOT NULL UNIQUE AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  created_at timestamp NOT NULL DEFAULT NOW(),
  PRIMARY KEY (id)
);
DROP TABLE IF EXISTS fastapi_test.users;
CREATE TABLE fastapi_test.users (
  id INT NOT NULL UNIQUE AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  created_at timestamp NOT NULL DEFAULT NOW(),
  PRIMARY KEY (id)
);
