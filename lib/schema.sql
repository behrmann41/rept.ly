DROP TABLE IF EXISTS shelters;
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS locations;
-- DROP TABLE IF EXISTS users;

CREATE TABLE locations (
  id serial primary key,
  city varchar(80),
  state varchar(30),
  zip numeric
);

CREATE TABLE shelters (
  id serial primary key,
  name varchar(80),
  location_id int references locations(id) on delete cascade
);

CREATE TABLE animals (
  id serial primary key,
  name varchar(80),
  age numeric,
  type varchar(80),
  shelter_id int references shelters(id) on delete cascade
);


-- CREATE TABLE users (
--   id serial primary key,
--   email text,
--   pw text,
--   username text
-- );
