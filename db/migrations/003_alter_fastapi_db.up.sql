ALTER TABLE fastapi.posts
    ADD user_id INT NOT NULL,
    ADD CONSTRAINT posts_users_fkey FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;

ALTER TABLE fastapi_test.posts
    ADD user_id INT NOT NULL,
    ADD CONSTRAINT posts_users_fkey FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;