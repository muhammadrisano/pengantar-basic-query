CREATE TABLE categories (
    id INT GENERATED ALWAYS AS IDENTITY,
    nama_category VARCHAR(64) NOT NULL,
    description_category TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE products (
    id INT GENERATED ALWAYS AS IDENTITY,
    nama VARCHAR(64) NOT NULL,
    description TEXT NULL,
    harga INT DEFAULT 0,
    stock INT DEFAULT 0,
    categories_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (categories_id) REFERENCES categories(id)
);

INSERT INTO categories (nama_category, description_category)VALUES('eletronik', 'eletronik bla bla');
INSERT INTO categories (nama_category, description_category)VALUES('asesories', 'asesories bla bla');
INSERT INTO categories (nama_category, description_category)VALUES('rumah tangga', 'rumah tangga  bla bla');


-- products

INSERT INTO products (nama, description, harga, stock, categories_id) 
VALUES ('HP Samsung A3', 'samsung bla lba', 3000000, 5, 1); 

INSERT INTO products (nama, description, harga, stock, categories_id) 
VALUES ('TV LG 123XV', 'lg bla lba', 5000000, 10, 1);

INSERT INTO products (nama, description, harga, stock, categories_id) 
VALUES ('Gelang mas 24 ', 'gelang bla lba', 50000, 100, 2);

INSERT INTO products (nama, description, harga, stock, categories_id) 
VALUES ('Gelas Kaca 4 pcs', 'gelas kaca bla lba', 100000, 80, 3);


INSERT INTO products (nama, description, harga, stock, categories_id) 
VALUES ('Laptop HP MD 123', 'HP lalptop bla lba', 7000000, 18, 1),('HP VIVO KOD 123', 'HP VIVO bla lba', 2000000, 18, 1);


INSERT INTO products (nama, description, harga, stock, categories_id) 
VALUES ('Ikat Rambut merah', 'ikat rambut  bla lba', 15000, 200, 2);


 SELECT nama AS nama_barang, harga from products;


-- relasi

SELECT products.*, categories.nama_category AS kategori, categories.description_category FROM products join categories ON products.categories_id = categories.id;  