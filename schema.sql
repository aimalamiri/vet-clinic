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

ALTER TABLE animals ADD species VARCHAR(100);
