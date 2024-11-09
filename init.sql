-- Création de la table Colis
CREATE TABLE Colis (
  id SERIAL PRIMARY KEY,
  poids DOUBLE PRECISION,
  valeur INT,
  origine VARCHAR(100),
  destination VARCHAR(100),
  latitude DOUBLE PRECISION,
  longitude DOUBLE PRECISION,
  emplacement VARCHAR(100),
  etat VARCHAR(50),
  version INT DEFAULT 0
);
