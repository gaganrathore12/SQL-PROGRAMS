create database library;
use library;
create table books(
id int primary key 
auto_increment,
title varchar(255),
author varchar(100),
year YEAR,
genre varchar(100));

select * from books

insert into books(title,author,year,genre)
values("The Great Gatsby",".Scott Fitzgerald",1925,"Fiction"),
("Pride and Prejudice","Jane Austin",1913,"Romance"),
("To Kill a Mockingbird","Harper lee",1960,"Fiction"),
("1984","George Orwell",1949,"Dystopian"),
("Moby Dick","Herman Melville",1951,"Adventure");

SELECT * FROM books WHERE title LIKE 'T%';
SELECT * FROM books WHERE author LIKE '%son';
SELECT * FROM books WHERE title LIKE '%and%';
SELECT * FROM books WHERE title LIKE '%bird';
SELECT * FROM books WHERE title REGEXP '^.{3}$';
SELECT * FROM books WHERE title REGEXP '[0-9]';
SELECT * FROM books WHERE author REGEXP '^[A-J]';
SELECT * FROM books WHERE genre REGEXP '^(Fiction|Adventure)$';
SELECT * FROM books WHERE title REGEXP '[A-Z]';
SELECT * FROM books WHERE year BETWEEN 1800 AND 1950;
SELECT * FROM books WHERE author REGEXP '^[A-Za-z]+ [A-Za-z]+$';
SELECT * FROM books WHERE title REGEXP '^P [A-Za-z]+$';
SELECT * FROM books WHERE title REGEXP '[^A-Za-z0-9 ]';

