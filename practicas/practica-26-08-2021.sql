CREATE DATABASE star_wars;

USE star_wars;

CREATE TABLE people
(
	id INT AUTO_INCREMENT
	name VARCHAR(50),
	mass INT,
	hair_color VARCHAR(20),
	eye_color VARCHAR(20),
	gender ENUM("female","male","other")
	
)

SELECT * FROM people;
SELECT id, NAME FROM people;
SHOW CREATE TABLE people;
DESCRIBE people;

CREATE TABLE if NOT EXISTS planet 
(
id INT primary KEY AUTO_INCREMENT,
name VARCHAR(50),
orbital_period INT,
rotation_period INT,
diameter INT,
climate VARCHAR(20),
gravity VARCHAR(20),
terrain VARCHAR(20),
surface_water INT,
population long
)

DROP TABLE people;

create table people (
    id int auto_increment,
    name varchar(50),
    mass int,
    hair_color varchar(20),
    eye_color varchar(20),
    gender varchar(20),
    planet_id int, -- <--------------
    primary key(id),
    constraint planet_fk foreign key (planet_id) references planet(id)
);

insert into people(id, name, mass, hair_color, eye_color, gender, planet_id) VALUES (1, 'Luke Skywalker', 77, 'blond', 'blue', 'male',1);
insert into people(id, name, mass, hair_color, eye_color, gender, planet_id) values (2, 'Leia Skywalker', 70, 'brown', 'brown', 'female',1);
insert into people(name, mass, hair_color, eye_color, gender, planet_id) values ('Han Solo', 80, 'brown', 'brown', 'male',2);

insert into planet (id, name, orbital_period, rotation_period, diameter, climate, gravity, terrain, surface_water,  population) 
values (1, 'Tatooine', 304, 23, 10465, 'arid', '1 standard', 'desert', 1, 200000);

insert into planet (id, name, orbital_period, rotation_period, diameter, climate, gravity, terrain, surface_water,  population) 
VALUES (2, 'Cartellis', 304, 23, 10465, 'arid', '1 standard', 'desert', 1, 200000);