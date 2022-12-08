SELECT * FROM clientes; /*Para ver o id do cliente*/
SELECT * FROM produtos; /*Para ver o id do produto*/
SELECT * FROM compras; /*Para ver o id da compra com base nos ids anteriores*/

DELETE FROM compras WHERE id=6;

SELECT * FROM compras; /*Para conferir se deu certo*/