> # Estrutura do banco

<details>

O banco possui as seguintes tabelas e elas se relacionam dessa forma:

![db-join.png](./assets/db-join.png)

**Explicando cada tabela:**

- Tabela central:
    - `users`: armazena os usuários da plataforma
- Depoimentos:
    - `testimonials`: armazena os depoimentos deixados de um usuário para outro. `writerId` é o id do usuário que escreveu o depoimento, enquanto `recipientId` é o id do usuário que recebeu o depoimento
- Educação:
    - `educations`: armazena todas as experiências de educação que os usuários tiveram. Pra isso, ela se relaciona com outras duas tabelas: `schools` e `courses`
    - `schools`: são as escolas onde o usuário pode ter estudado (ex: Driven, Unicamp, etc)
    - `courses`: são os cursos que os usuários podem ter feito (ex: Software Engineering, Computer Science, etc)
- Experiências de Trabalho:
    - `experiences`: armazena as experiências de trabalho que os usuários tiveram. Pra isso ela se relaciona com outras duas tabelas: `companies` e `roles`
    - `companies`: são as empresas onde o usuário pode ter trabalhado (ex: OLX, IBM)
    - `roles`: são os cargos que os usuários podem ter atuado (ex: Software Engineer, Consultant, etc)
- Vagas de emprego:
    - `jobs`: são todas as vagas de emprego cadastradas na plataforma. Cada vaga está associada a uma empresa e a um cargo, e por isso essa tabela se relaciona também com `companies` e `roles`
    - `applicants`: é uma tabela meio que indica que usuários se inscreveram pra quais vagas

</details>
<br/>

> # Exercícios

Com um terminal aberto conectado ao banco (com o comando `bash connect-database`), execute as seguintes consultas:

### Questão 1:

Utilizando 1 query, obtenha a quantidade de experiencias (`experiences`) atuais, ou seja, com `“endDate”` diferente de `NULL`.

A resposta deve vir no formato:

```
|---currentExperiences---|
					80
			   ....      
```

**Dica**: Você só precisa usar uma função agregadora, sem `WHERE`

### Questão 2:

Utilizando 1 query, obtenha a quantidade de graduações (`educations`) por usuário, incluindo o seu id.

A resposta deve vir no formato:

```
|---id---|---educations---|
   110	         2
	 178	         1
   62	           1
   128	         1
   ...          ...          
```

**OBS:** a coluna `id` se refere ao id do usuário

---

### Questão 3:

Utilizando 1 query, obtenha a quantidade de **depoimentos** (`testimonials`) que o usuário com id **435** efetuou, incluindo o seu nome. 

A resposta deve vir no formato:

```
|---writer---|---testimonialCount---|
    Jesus               3
     ...               ...    
```

**OBS:** a coluna `id` se refere ao id do usuário

---

### Questão 4:

Utilizando 1 query, obtenha o maior salário das vagas (`jobs`) ativas (**active** sendo true) e o nome das posições (`roles`) dessas vagas ordenadas de forma ascendente

A resposta deve vir no formato:

```
|---maximumSalary---|-------------role--------------|
				107981	          Junior Software Engineer
				153208	          Front-end developer
				165869	          Senior Software Engineer
				183405	          Software Engineer
				201025	          Data Analyst
				215640	          QA Analyst
				230539	          Back-end developer
				246764	          Scrum Master
         ...                     ...
```

**Dica:** Podemos ordernar uma busca pelo valor de uma função agregadora usando o alias que demos a ela

> # Desafio

### Desafio Bônus

Utilizando 1 query, obtenha os **3** cursos (`courses`) e escolas (`schools`) com a **maior** quantidade de alunos (`educations`) que estão cursando (status **ongoing)** ou finalizaram (status **finished**) 

A resposta deve vir no formato:

```
|-----------------school-----------------|-----course------|----studentsCount----|-----status------|
         Universidad de Los Andes	           Linguistics	           7	               ongoing
    Universitas Slamet Riyadi Surakarta  	   Psychology     	       6	               finished
       American International College	       Philosophy	             4	               ongoing
```

**Dica**: A ordem dos comandos é `SELECT` → `FROM` → `JOIN` → `WHERE` → `GROUP BY` → `ORDER BY` → `LIMIT`

**Dica:** Podemos dar group by em mais de uma coluna por vez, basta separá-las por virgula