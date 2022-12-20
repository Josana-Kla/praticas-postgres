CREATE DATABASE banker;

CREATE TABLE customers(
    id SERIAL PRIMARY KEY,
    "fullName" TEXT NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE "customerPhones"(
    id SERIAL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
    number TEXT NOT NULL,
    type TEXT NOT NULL
);

CREATE TABLE states(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE cities(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    "stateId" INTEGER NOT NULL REFERENCES "states"("id")
);

CREATE TABLE "customerAddresses"(
    id SERIAL PRIMARY KEY,
    "customerId" INTEGER NOT NULL UNIQUE REFERENCES "customers"("id"),
    street TEXT NOT NULL,
    number TEXT NOT NULL,
    complement TEXT NOT NULL,
    "postalCode" TEXT NOT NULL,
    "cityId" INTEGER NOT NULL REFERENCES "cities"("id")
);

CREATE TABLE "bankAccount"(
    id SERIAL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
    "accountNumber" TEXT NOT NULL UNIQUE,
    agency TEXT NOT NULL,
    "openDate" DATE NOT NULL DEFAULT NOW(),
    "closeDate" DATE
);

CREATE TABLE transactions(
    id SERIAL PRIMARY KEY,
    "bankAccountId" INTEGER NOT NULL REFERENCES "bankAccount"("id"),
    amount INTEGER NOT NULL,
    type TEXT NOT NULL,
    time TIMESTAMP NOT NULL WITHOUT TIME ZONE DEFAULT NOW(),
    description TEXT NOT NULL,
    cancelled BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE "creditCards"(
    id SERIAL PRIMARY KEY,
    "bankAccountId" INTEGER NOT NULL REFERENCES "bankAccount"("id"),
    name TEXT NOT NULL,
    number TEXT NOT NULL UNIQUE,
    "securityCode" TEXT NOT NULL,
    "expirationMonth" INTEGER NOT NULL,
    "expirationYear" INTEGER NOT NULL,
    password TEXT NOT NULL,
    limit INTEGER
);
