initdb -D "C:\Users\2001h\Desktop\colis-Tp\data" -U postgres -E UTF8 -A scram-sha-256 --pwfile "password.txt"
pg_ctl register -N "PostgreSQL" -D "C:\Users\2001h\Desktop\colis-Tp\data"
pg_ctl start -D .\data\
psql -U postgres
CREATE USER tp_colis WITH PASSWORD 'colis';
CREATE DATABASE colisdb WITH OWNER tp_colis;
psql -U tp_colis -d colisdb
\l 
\dt 
\d "nom de la table"


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

