/* Populate database with sample data. */
INSERT INTO animals(
    id,
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attempts
  )
VALUES(1, 'Agumon', '2020-02-03', 10.23, TRUE, 0);

INSERT INTO animals(
    id,
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attempts
  )
VALUES(2, 'Gabumon', '2018-11-15', 8, TRUE, 2);

INSERT INTO animals(
    id,
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attempts
  )
VALUES(3, 'Pikachu', '2021-01-07', 15.04, FALSE, 1);

INSERT INTO animals(
    id,
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attempts
  )
VALUES(4, 'Devimon', '2017-05-12', 11, TRUE, 5);

INSERT INTO animals (
    id,
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg,
    species
  )
VALUES(
    5,
    'Charmander',
    '2020-02-08',
    0,
    FALSE,
    -11,
    null
  );

INSERT INTO animals (
    id,
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg,
    species
  )
VALUES(6, 'Plantmon', '2021-11-15', 2, TRUE, -5.7, null);

INSERT INTO animals (
    id,
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg,
    species
  )
VALUES(
    7,
    'Squirtle',
    '1993-04-02',
    3,
    FALSE,
    -12.13,
    null
  );

INSERT INTO animals (
    id,
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg,
    species
  )
VALUES(8, 'Angemon', '2005-06-12', 1, TRUE, -45, null);

INSERT INTO animals (
    id,
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg,
    species
  )
VALUES(9, 'Boarmon', '2005-06-07', 7, TRUE, 20.4, null);

INSERT INTO animals (
    id,
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg,
    species
  )
VALUES(10, 'Blossom', '1998-10-13', 3, TRUE, 17, null);

INSERT INTO animals (
    id,
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg,
    species
  )
VALUES(11, 'Ditto', '2022-05-14', 4, TRUE, 22, null);

INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34),
  ('Jennifer Orwell', 19),
  ('Bob', 45),
  ('Melod
y Pond', 77),
  ('Dean Winchester', 14),
  ('Jodie Whittaker', 38);
INSERT INTO species (name)
VALUES ('Pokemon'),
  ('Digimon');

UPDATE animals
SET species_id = 2
WHERE name LIKE '%mon';

UPDATE animals
SET species_id = 1
WHERE name NOT LIKE '%mon';

UPDATE animals
SET owner_id = 1
WHERE name = 'Agumon';

UPDATE animals
SET owner_id = 2
WHERE name = 'Gabumon'
  OR name = 'Pikachu';

UPDATE animals
SET owner_id = 3
WHERE name = 'Devimon'
  OR name = 'Plantmon';

UPDATE animals
SET owner_id = 4
WHERE name = 'Charmander'
  OR name = 'Squirtle'
  OR name = 'Blossom';

UPDATE animals
SET owner_id = 5
WHERE name = 'Angemon'
  OR name = 'Boarmon';

INSERT INTO visits (animal_id, vet_id, date_of_visit)
VALUES (1, 1, '2020-05-24'),
  (3, 1, '2020-07-22'),
  (2, 4, '2021-02-02'),
  (6, 2, '2020-01-05'),
  (6, 2, '2020-03-08'),
  (6, 2, '2020-05-14'),
  (3, 3, '2021-05-04'),
  (7, 4, '2021-02-24'),
  (4, 2, '2019-12-21'),
  (4, 1, '2020-08-10'),
  (4, 2, '2021-04-07'),
  (8, 3, '2019-09-29'),
  (10, 4, '2020-10-03'),
  (10, 4, '2020-11-04'),
  (5, 2, '2019-01-24'),
  (5, 2, '2019-05-15'),
  (5, 2, '2020-02-27'),
  (5, 2, '2020-08-03'),
  (9, 3, '2020-05-11'),
  (9, 1, '2021-01-11');