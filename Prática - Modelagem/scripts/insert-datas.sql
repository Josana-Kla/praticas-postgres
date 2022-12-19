INSERT INTO categories(name) VALUES('shirt');
INSERT INTO categories(name) VALUES('pants');
INSERT INTO categories(name) VALUES('dress');

INSERT INTO sizes(name) VALUES('p');
INSERT INTO sizes(name) VALUES('m');
INSERT INTO sizes(name) VALUES('g');

INSERT INTO photos(url) VALUES('https://ltwebstatic.com/she_dist/images/bg-grey-ba9651234565e9b.png');
INSERT INTO photos(url) VALUES('https://ltwebstatic.com/she_dist/images/bg-grey-ba965123455e9b.png');
INSERT INTO photos(url) VALUES('https://ltwebstatic.com/she_dist/images/bg-grey-ba9651564e9b.png');

INSERT INTO purchaseStatus(name) VALUES('created');
INSERT INTO purchaseStatus(name) VALUES('paid');
INSERT INTO purchaseStatus(name) VALUES('delivered');
INSERT INTO purchaseStatus(name) VALUES('canceled');

INSERT INTO addresses(address) VALUES('Rua do monte, n 40 - Av. amarela, Minas Gerais - BR');
INSERT INTO addresses(address) VALUES('Rua do miniatura, n 23 - Av. azul, São Paulo - BR');

INSERT INTO products(name, price, "idCategory", "idSize", "idPhoto") VALUES('Pokemon', 2300, 1, 2, 1);

INSERT INTO users(name, email, password, "idAddress") VALUES('Ana', 'aninha@gmail.com', '13454566642', 1);

INSERT INTO purchaseDate("idPurchaseStatus", "idUser", "idAddress") VALUES(4, 1, 1);

INSERT INTO salesReport(amount, "idProduct", "idPurchaseDate") VALUES(5, 1, 1);
