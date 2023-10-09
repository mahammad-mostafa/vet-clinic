SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-1-1' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = 'TRUE' AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = 'TRUE';
SELECT * FROM animals WHERE name <> 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;
BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;
BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
SELECT * FROM animals;
COMMIT;
SELECT * FROM animals;
BEGIN;
DELETE FROM animals;
ROLLBACK;
SELECT * FROM animals;
BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-1-1';
SAVEPOINT deletions;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO deletions;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;
SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, SUM(escape_attempts) FROM animals GROUP BY neutered;
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-1-1' AND '2000-12-31' GROUP BY species;
SELECT name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE full_name = 'Melody Pond';
SELECT animals.name FROM animals JOIN species ON animals.species_id = species.id WHERE species.name = 'Pokemon';
SELECT full_name, name FROM owners LEFT JOIN animals ON owners.id = animals.owner_id;
SELECT species.name, COUNT(species_id) FROM species JOIN animals ON species.id = animals.species_id GROUP BY species.name;
SELECT animals.name FROM animals JOIN owners ON animals.owner_id = owners.id JOIN species ON animals.species_id = species.id WHERE full_name = 'Jennifer Orwell' AND species.name = 'Digimon';
SELECT name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE full_name = 'Dean Winchester' AND escape_attempts = 0;
SELECT full_name, COUNT(owner_id) AS count FROM owners JOIN animals ON owners.id = animals.owner_id GROUP BY full_name ORDER BY count DESC;
SELECT animals.name FROM visits JOIN animals ON animal_id = animals.id JOIN vets ON vet_id = vets.id WHERE vets.name = 'William Tatcher' ORDER BY date_of_visit DESC LIMIT 1;
SELECT COUNT(DISTINCT animal_id) FROM visits JOIN vets ON vet_id = vets.id WHERE vets.name = 'Stephanie Mendez';
SELECT vets.name, species.name FROM specializations FULL JOIN vets ON vet_id = vets.id FULL JOIN species ON species_id = species.id;
SELECT animals.name FROM visits JOIN animals ON animal_id = animals.id JOIN vets ON vet_id = vets.id WHERE vets.name = 'Stephanie Mendez' AND date_of_visit BETWEEN '2020-4-1' AND '2020-8-30';
SELECT animals.name FROM visits JOIN animals ON animal_id = animals.id GROUP BY animals.name ORDER BY COUNT(animals.name) DESC LIMIT 1;
SELECT animals.name FROM visits JOIN animals ON animal_id = animals.id JOIN vets ON vet_id = vets.id WHERE vets.name = 'Maisy Smith' ORDER BY date_of_visit ASC LIMIT 1;
SELECT animals.*, vets.*, date_of_visit FROM visits JOIN animals ON animal_id = animals.id JOIN vets ON vet_id = vets.id ORDER BY date_of_visit DESC LIMIT 1;
SELECT COUNT(*) FROM visits v JOIN animals a ON animal_id = a.id WHERE (SELECT species_id FROM specializations s WHERE s.species_id = a.species_id AND s.vet_id = v.vet_id) IS NULL;
SELECT s.name FROM visits JOIN animals a ON animal_id = a.id JOIN species s ON a.species_id = s.id JOIN vets v ON vet_id = v.id WHERE v.name = 'Maisy Smith' GROUP BY s.name ORDER BY COUNT(*) DESC LIMIT 1;
EXPLAIN ANALYZE SELECT COUNT(*) FROM visits WHERE animal_id = 4;
EXPLAIN ANALYZE SELECT * FROM visits WHERE vet_id = 2;
EXPLAIN ANALYZE SELECT * FROM owners WHERE email = 'owner_18327@mail.com';