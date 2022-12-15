# Exercícios

Com um terminal aberto conectado ao banco (com o comando `bash connect-database`), execute as seguintes consultas:

### Questão 1:

Utilizando uma query, obtenha todos os usuários (`users`) que vivem na cidade (`cities`) cujo nome seja “**Rio de Janeiro**”.

A resposta deve vir no formato:

```
|---id---|---name---|-------city-------|
    1        João      Rio de Janeiro
    2        Maria     Rio de Janeiro
   ...        ...            ...
```

**OBS:** a coluna `id` se refere ao id do usuário

**Dica:** utilize apelidos para os nomes de colunas ficarem como você deseja (ex: `SELECT cities.name AS city`)

**Dica:** na query, todo nome de coluna que tenha letras maiúsculas precisa estar entre aspas duplas (ex: `ON users."cityId" = ...`). Repare que somente o nome da coluna fica entre aspas duplas.

---

### Questão 2:

Utilizando uma query, obtenha todos os depoimentos (`testimonials`) cadastrados, incluindo o nome do remetente e do destinatário.

A resposta deve vir no formato:

```
|---id---|---writer---|---recipient---|--------------message------------------|
    1        João           Maria         Foi ótimo trabalhar com a Maria...
    2        Maria          João           Adorei trabalhar com o João...
   ...        ...            ...                     ...
```

**OBS:** a coluna `id` se refere ao id do depoimento

**Dica:** para fazer múltiplos joins com uma mesma tabela, use apelidos para cada join (ex: `JOIN tabela t1`)

---

### Questão 3:

Utilizando uma query, obtenha todos os cursos (`courses`) que o usuário com id **30** já finalizou, incluindo o nome da escola. O que indica que um usuário terminou um curso é o campo `status` da tabela `educations`, que deve estar como "**finished**".

A resposta deve vir no formato:

```
|---id---|---name---|---course---|----school----|---endDate---|
    1        João      HTML/CSS       Driven       2021-12-01
    2        João      JavaScript     Driven       2022-01-20
   ...        ...         ...           ...          ...
```

**OBS:** a coluna `id` se refere ao id do usuário

---

### Questão 4:

Utilizando uma query, obtenha as empresas (`companies`) para as quais o usuário com id **50** trabalha atualmente. Para filtrar quem trabalha atualmente, utilize o campo `endDate` da tabela `experiences`. Se ele estiver null (`IS NULL`), significa que a pessoa ainda não encerrou a experiência dela na empresa, ou seja, está trabalhando lá.

A resposta deve vir no formato:

```
|---id---|---name---|--------role--------|----company----|---startDate---|
    1        João      Software Engineer        OLX          2020-06-01
    2        João         Consultant            IBM          2022-02-01
   ...        ...            ...                ...              ...
```

**OBS:** a coluna `id` se refere ao id do usuário

---

# Bônus

### Desafio Bônus

Utilizando uma query, obtenha a lista das diferentes escolas (`schools`) e cursos (`courses`) onde estudaram as pessoas que estão aplicando pra posição de **“Software Engineer”** na empresa com id **10**. Só devem ser consideradas as vagas que estiverem ativas, ou seja, quando o campo `active` da tabela `jobs` estiver **true**.

A resposta deve vir no formato:

```
|---id---|---school---|--------course--------|----company----|--------role-------|
    1        Driven       Software Engineer        OLX         Software Engineer
    2        Unicamp      Computer Science         OLX         Software Engineer
   ...        ...               ...                 ...              ...
```

**OBS:** a coluna `id` se refere ao id da escola