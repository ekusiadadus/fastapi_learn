DROP TABLE IF EXISTS fastapi.users;
CREATE TABLE users (
  id serial NOT NULL,
  email character varying NOT NULL UNIQUE,
  password character varying Not Null,
  created_at timestamp with time zone NOT NULL DEFAULT NOW(),
  PRIMARY KEY (id)
);
