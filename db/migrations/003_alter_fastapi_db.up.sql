ALTER TABLE posts
    ADD user_id serial NOT NULL,
    ADD FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;