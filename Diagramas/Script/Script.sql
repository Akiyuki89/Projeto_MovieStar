CREATE database MovieStar;

use MovieStar;

CREATE table users(
	id int unsigned auto_increment primary key,
	name varchar(100) not null,
	lastname varchar(100) not null,
	email varchar(200) not null,
	password varchar(200) not null,
	image varchar(200) not null,
	token varchar(200) not null,
	bio text
);

select * from users;

CREATE TABLE movies (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  description TEXT NOT NULL,
  image VARCHAR(200),
  trailer VARCHAR(200),
  category VARCHAR(45),
  length VARCHAR(50),
  users_id INT UNSIGNED,
  FOREIGN KEY (users_id) REFERENCES users(id)
);


select * from movies;


CREATE table reviews(
	id int unsigned auto_increment primary key,
	ratting int not null,
	review text,
	users_id int unsigned,
	movies_id int unsigned,
    FOREIGN KEY (users_id) REFERENCES users(id),
	FOREIGN KEY (movies_id) REFERENCES movies(id)
);


select * from reviews;



