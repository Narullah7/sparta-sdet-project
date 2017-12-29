DROP TABLE IF EXISTS planet;

CREATE TABLE planet (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT,
  image TEXT

);

insert into planet (title, body, image) values ('This is the first tile','This is the first body','This is the first image');
