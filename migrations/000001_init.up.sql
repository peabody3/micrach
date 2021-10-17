-- UP
-- Posts
CREATE TABLE posts
(
  id SERIAL NOT NULL,

  is_parent BOOLEAN NOT NULL,
  parent_id INT REFERENCES posts (id) NULL,

  is_deleted BOOLEAN DEFAULT false NOT NULL,

  title VARCHAR NOT NULL,
  text TEXT NOT NULL,
  is_sage BOOLEAN NOT NULL,

	created_at TIMESTAMP DEFAULT NOW() NOT NULL,
	updated_at TIMESTAMP DEFAULT NOW() NOT NULL,

  PRIMARY KEY (id)
);


-- Files
CREATE TABLE files
(
  id SERIAL PRIMARY KEY,
  post_id INTEGER NOT NULL,
  name VARCHAR NOT NULL,
  ext VARCHAR NOT NULL,
  size INTEGER NOT NULL,
  created_at TIMESTAMP DEFAULT NOW() NOT NULL,
  FOREIGN KEY (post_id) REFERENCES posts (id)
);