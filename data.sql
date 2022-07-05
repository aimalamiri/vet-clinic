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
    11,
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
VALUES(6, 'Plantmon', '2021-11-15', 2, TRUE, 5.7, null);
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
    12.13,
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