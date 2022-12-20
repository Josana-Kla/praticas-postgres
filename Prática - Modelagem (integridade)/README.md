> # Descrição

Nesta prática vocês receberão uma estrutura de banco de dados e deverão criá-lo junto de suas tabelas com os tipos de dados e constraints corretas.

Ou seja, você terá que decidir qual o melhor **tipo** de cada coluna e quando usar restrições do tipo `NULL`, `NOT NULL`, `DEFAULT`, `UNIQUE`, `PRIMARY KEY` ou `FOREIGN KEY`.

Você deverá entregar um arquivo de texto (extensão .sql) com as queries finais que você fez para criar o banco completo.

> # Estrutura do banco

O banco possui as seguintes tabelas e elas se relacionam dessa forma:

![db-model.png](./assets/db-model.png)

**Obs:**

- Usuários só podem possuir um endereço

### **Bônus**

- O campo `type` de `customerPhones` só pode ter valor “landline” ou “mobile”
- O campo `type` de `transactions` só pode ter “deposit” ou “withdraw”

**Dica:**

Pesquise por **ENUM Types** para criar restrições de valores