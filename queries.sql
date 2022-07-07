/*Queries that provide answers to the questions from all projects.*/
SELECT * FROM animals WHERE name LIKE '%mon';

SELECT name FROM animals WHERE date_of_birth >= '2016-01-01' AND date_of_birth <= '2019-01-01';

SELECT name FROM animals WHERE neutered = TRUE AND escape_attempts < 3;

SELECT date_of_birth FROM animals WHERE name = 'Aguman' OR name = 'Pikachu';

SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

SELECT * FROM animals WHERE neutered=TRUE;

SELECT * FROM animals WHERE name NOT IN ('Gabumon');

SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals;
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT DELETE_AFTER_JAN_22;
UPDATE animals SET weight_kg = (weight_kg * -1);
ROLLBACK TO DELETE_AFTER_JAN_22;
UPDATE animals SET weight_kg = (weight_kg * -1) WHERE weight_kg < 0;
COMMIT;
SELECT * FROM animals;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT MAX(escape_attempts) FROM animals;
SELECT name, MAX(escape_attempts) FROM animals GROUP BY name ORDER BY max DESC;
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'GROUP BY species;

SELECT * FROM animals a JOIN owners o ON a.owner_id = o.id WHERE o.full_name='Melody Pond';
SELECT * FROM animals a JOIN species s ON a.species_id=s.id WHERE s.name='Pokemon';
SELECT * FROM animals a FULL OUTER JOIN owners o ON o.id=a.owner_id;
SELECT s.name, COUNT(a.name) FROM animals a JOIN species s ON a.species_id=s.id GROUP BY s.name;
SELECT * FROM animals a JOIN owners o ON a.owner_id=o.id JOIN species s ON a.species_id=a.id WHERE o.full_name='Jennifer Orwell';
SELECT * FROM animals a JOIN owners o ON o.id=a.owner_id WHERE a.escape_attempts=0;
SELECT o.full_name, COUNT(a.id) FROM owners o LEFT OUTER JOIN animals a ON o.id=a.owner_id GROUP BY o.full_name ORDER BY count DESC LIMIT 1;

SELECT a.name, v.date_of_visit from animals a JOIN visits v ON a.id=v.animal_id JOIN vets ve ON ve.id=v.vet_id WHERE ve.name='William Tatcher' ORDER BY v.date_of_visit DESC LIMIT 1;
SELECT COUNT(a.name) FROM animals a JOIN visits v ON a.id=v.animal_id JOIN vets ve ON ve.id=v.vet_id WHEREve.name='Stephanie Mendez';
SELECT v.name, v.age, v.date_of_graduation, sp.name FROM vets v LEFT JOIN specializations s ON v.id=s.vet_id LEFT JOIN species sp ON sp.id=s.specie_id;
SELECT a.* FROM animals a JOIN visits v ON a.id=v.animal_id JOIN vets ve ON ve.id=v.vet_id WHERE date_of_visit <= '2020-08-30' AND date_of_visit >= '2020-04-01';
SELECT a.name, COUNT(v.animal_id) FROM animals a JOIN visits v ON a.id=v.animal_id GROUP BY a.name ORDER BY count DESC LIMIT 1;
SELECT a.name, MIN(v.date_of_visit) FROM animals a JOIN visits v ON v.animal_id=a.id JOIN vets ve ON v.vet_id=ve.id WHERE ve.name='Maisy Smith' GROUP BY a.name ORDER BY min LIMIT 1;
SELECT a.*, ve.*, v.date_of_visit FROM animals a JOIN visits v ON v.animal_id=a.id JOIN vets ve ON ve.id=v.vet_id ORDER BY date_of_visit LIMIT 1;
SELECT COUNT(*) FROM vets v LEFT JOIN specializations s ON s.vet_id=v.id JOIN visits vi ON vi.vet_id=v.id WHERE s.vet_id IS null;
SELECT s.name FROM species s JOIN (SELECT COUNT(a), a.species_id FROM vets v JOIN visits vi ON vi.vet_id=v.id JOIN animals a ON a.id=vi.animal_id WHERE v.name='Maisy Smith' GROUP BY a.species_id ORDER BY count DESC LIMIT 1) ms ON s.id=ms.species_id;

