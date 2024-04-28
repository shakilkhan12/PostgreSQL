1- \? (The list of all commonds)
2- \l (The list of databases)
3- \q (quite)
#### Create database ####
create database test;
#### Connect to a database ####
1- psql -h localhost -p 5432 -U postgres test
2- \c databasename
#### drop/delete database ####
drop database test;
#### create tables ####
create table person(id INT, first_name VARCHAR(50), last_name VARCHAR(50), gender VARCHAR(7), date_of_birth DATE);
#### show tables ####
\d
\d tablename
#### drop table ####
drop table person;
#### create table with constraints ####
create table person(id BIGSERIAL NOT NULL PRIMARY KEY, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL, gender VARCHAR(7) NOT NULL, email VARCHAR(100));
#### INSERT INTO Table ####
INSERT INTO person(first_name, last_name, gender, date_of_birth) VALUES ('shakil', 'khan', 'male', '1992-01-09');
#### INSERT bulk data ####
\i sql file path

#### Select from Table ####
SELECT * FROM person ORDER BY country_of_birth
SELECT DISTINCT country_of_birth FROM person ORDER BY country_of_birth; -> Remove duplicate columns
SELECT * FROM person WHERE gender='Female';
SELECT * FROM person WHERE gender='Female' AND country_of_birth='Pakistan';
SELECT * FROM person WHERE gender='Female' AND (country_of_birth='Pakistan' OR country_of_birth='China');
SELECT * FROM person LIMIT 20;
SELECT * FROM person OFFSET 5 LIMIT 20;
SELECT * FROM person OFFSET 5 FETCH FIRST 10 ROW ONLY;
SELECT * FROM person WHERE country_of_birth in ('Pakistan', 'India', 'Afghanistan');
SELECT * FROM person WHERE date_of_birth BETWEEN '2000-01-01' AND '2024-01-01';
SELECT * FROM person WHERE email LIKE '%vimeo.com';
SELECT * FROM person WHERE email LIKE '%google.%';
SELECT * FROM person WHERE country_of_birth LIKE 'P%';
SELECT * FROM person WHERE country_of_birth ILIKE 'p%'; -> ILIKE means uppercase and lowercase
SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth; -> Count persons from each country
SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth ORDER BY country_of_birth;
SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth HAVING COUNT(*) > 5 ORDER BY country_of_birth;
SELECT MAX(price) FROM car;
SELECT MIN(price) FROM car;
SELECT AVG(price) FROM car;
SELECT ROUND(AVG(price)) FROM car;
SELECT make model, MIN(price) FROM car GROUP BY make, model;

#### Comparision operator ####


