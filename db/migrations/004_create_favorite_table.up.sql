DROP TABLE IF EXISTS fastapi.votes;
CREATE TABLE fastapi.votes (
  post_id INT NOT NULL,
  user_id INT NOT NULL,
  PRIMARY KEY (post_id, user_id),
  FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
DROP TABLE IF EXISTS fastapi_test.votes;
CREATE TABLE fastapi_test.votes (
  post_id INT NOT NULL,
  user_id INT NOT NULL,
  PRIMARY KEY (post_id, user_id),
  FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
