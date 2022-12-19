CREATE TABLE addresses(
    id SERIAL PRIMARY KEY,
    address TEXT NOT NULL
);

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    "idAddress" INTEGER NOT NULL REFERENCES "addresses"("id"),
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE purchaseStatus(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE purchaseDate(
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    "idPurchaseStatus" INTEGER NOT NULL REFERENCES "purchaseStatus"("id"),
    "idUser" INTEGER NOT NULL REFERENCES "users"("id"),
    "idAddress" INTEGER NOT NULL REFERENCES "addresses"("id")
);

CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE sizes(
    id SERIAL PRIMARY KEY,
    name VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE photos(
    id SERIAL PRIMARY KEY,
    url TEXT NOT NULL UNIQUE
);

CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    price INTEGER NOT NULL,
    "idCategory" INTEGER NOT NULL REFERENCES "categories"("id"),
    "idSize" INTEGER NOT NULL REFERENCES "sizes"("id"),
    "idPhoto" INTEGER NOT NULL REFERENCES "photos"("id")
);

CREATE TABLE salesReport(
    id SERIAL PRIMARY KEY,
    amount INTEGER NOT NULL,
    "idProduct" INTEGER NOT NULL REFERENCES "products"("id"),
    "idPurchaseDate" INTEGER NOT NULL REFERENCES "purchaseDate"("id")
);