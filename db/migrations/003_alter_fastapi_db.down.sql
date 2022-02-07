ALTER TABLE posts
    DROP user id INT NOT NULL;
    DROP FOREIGN KEY posts_users_fkey;