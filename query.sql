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

-- insert Data ke DATABASE

INSERT INTO users (id, email, fullname, password, telephone)VALUES(1, 'budi@gmail.com', 'budi akbar', '123password', '0812312323');

-- mengambil / melihat data di TABLE

SELECT id, email, fullname, password, telephone FROM users;
-- untuk semua field di table
SELECT * FROM users;

-- query update data
UPDATE users SET fullname = 'm risano akbar' WHERE id = 1;

-- untuk sort ketika di get/select menggunakan order by asc / desc
SELECT * FROM users order by id desc;

-- untuk limit ketika di get / select menggunakn limit 2
SELECT * FROM users order  by id asc limit 2


-- buat 1 rancangan database selain ecommerce
-- mininam table 3 dan isi datanya
