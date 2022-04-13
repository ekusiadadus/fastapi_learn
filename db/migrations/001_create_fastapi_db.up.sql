DROP TABLE IF EXISTS fastapi.posts;
CREATE TABLE posts (
  id INT NOT NULL AUTO_INCREMENT,
  title TEXT NOT NULL,
  content TEXT NOT NULL,
  published BOOlEAN NOT NULL,
  created_at timestamp NOT NULL DEFAULT NOW(),
  PRIMARY KEY (id)
);
DROP TABLE IF EXISTS fastapi_test.posts;
CREATE TABLE fastapi_test.posts (
  id INT NOT NULL AUTO_INCREMENT,
  title TEXT NOT NULL,
  content TEXT NOT NULL,
  published BOOlEAN NOT NULL,
  created_at timestamp NOT NULL DEFAULT NOW(),
  PRIMARY KEY (id)
);
