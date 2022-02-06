DROP TABLE IF EXISTS fastapi.posts;
CREATE TABLE posts (
  id serial NOT NULL,
  title TEXT NOT NULL,
  content TEXT NOT NULL,
  published BOOlEAN NOT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT NOW(),
  PRIMARY KEY (id)
);
