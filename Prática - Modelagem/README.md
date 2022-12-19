# **Prática de modelagem do banco de dados de um ecommerce de roupas: clothex**

## **Descrição**

Um e-commerce de roupas precisa modelar seu banco de dados. Como todo e-commerce, o site tem usuários, que possuem um nome, email e senha. Além disso, o site possui diversos produtos cadastrados, cada um contendo um nome, preço e suas fotos (sendo uma delas a principal). Roupas pertencem sempre a alguma categoria (ex: Camisa, Calça, Vestido). Como são roupas, também devem ter um tamanho (ex: P, M, G). Ao fazer uma compra, o usuário pode comprar vários produtos com diferentes quantidades e esses dados devem ser armazenados para futuramente permitir a emissão de relatórios de vendas. É importante armazenar o estado atual de uma compra (que pode ser criada, paga, entregue ou cancelada). Além dos produtos, é importante guardar a data da compra e o endereço de entrega, que futuramente pode ser re-utilizado em uma nova compra daquele usuário.

