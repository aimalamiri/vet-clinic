/* Database schema to keep the structure of entire database. */
CREATE TABLE animals (
    id INT NOT NULL,
    name VARCHAR(53) NOT NULL,
    date_of_birth date NOT NULL,
    escape_attempts INT,
    neutered BOOLEAN NOT NULL,
    weight_kg NUMERIC(4, 2) NOT NULL,
    PRIMARY KEY(id)
);
ALTER TABLE animals
ADD species VARCHAR(100);
CREATE TABLE owners (
    id INT GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(100) NOT NULL,
    age INT,
    PRIMARY KEY(id)
);
CREATE TABLE species(
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

ALTER TABLE animals DROP COLUMN id;
ALTER TABLE animals ADD COLUMN id INT GENERATED ALWAYS AS IDENTITY;
ALTER TABLE animals ADD PRIMARY KEY(id);
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id INT;
ALTER TABLE animals ADD CONSTRAINT species_fk FOREIGN KEY(species_id) REFERENCES species(id);
ALTER TABLE animals ADD COLUMN owner_id INT;
ALTER TABLE animals ADD CONSTRAINT owners_fk FOREIGN KEY(owner_id) REFERENCES owners(id);
