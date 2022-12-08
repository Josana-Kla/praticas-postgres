SELECT * FROM compras;  /*Só para ver como a tabela estava*/

SELECT * FROM clientes; /*Para ver o id do cliente*/
SELECT * FROM produtos; /*Para ver o id do produto*/

INSERT INTO compras(id_cliente, id_produto) VALUES(8, 10);

SELECT * FROM compras; /*Para conferir se deu certo*/