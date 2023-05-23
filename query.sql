-- untuk login
psql -U username -h 127.0.0.1 -p 5432 --password

-- untuk lihat DATABASE
\l

-- untuk masuk /Connect/ pilih database 
\c namaDATABASE

-- cara membuat databsae
CREATE DATABASE nama_database;

-- cara membuat TABLE

CREATE TABLE users(
    id VARCHAR(64),
    email VARCHAR(64),
    fullname VARCHAR(64),
    password VARCHAR(64),
    telephone VARCHAR(15)
);

-- untuk melihat table
\d 
-- untuk melihat detail TABLE
\d nama_table