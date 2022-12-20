/* BONUS CUSTOMER PHONES: */
CREATE TYPE type_p as ENUM('landiline', 'mobile');

DROP TABLE IF EXISTS "customerPhones";

CREATE TABLE "customerPhones"(
    id SERIAL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
    number TEXT NOT NULL,
    type type_p
);

/* BONUS TRANSACTIONS: */
CREATE TYPE type_t as ENUM('deposit', 'withdraw');

DROP TABLE IF EXISTS transactions;

CREATE TABLE transactions(
    id SERIAL PRIMARY KEY,
    "bankAccountId" INTEGER NOT NULL REFERENCES "bankAccount"("id"),
    amount INTEGER NOT NULL,
    type type_t,
    time TIMESTAMP NOT NULL DEFAULT NOW(),
    description TEXT NOT NULL,
    cancelled BOOLEAN NOT NULL DEFAULT FALSE
);
