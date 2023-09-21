USE sistema_biblioteca;


-- QUESTÃO 1: Quais são os títulos dos livros escritos por "Nilo Ney Coutinho Menezes"? --

SELECT titulo
FROM livro
WHERE autor = 'Nilo Ney Coutinho Menezes';


-- QUESTÃO 2: Quais são os autores dos livros que foram publicados em 2020? --

SELECT autor
FROM livro
WHERE ano_publicacao = '2020';


-- QUESTÃO 3: Quais são os nomes dos bibliotecários?

SELECT nome
FROM BIBLIOTECARIO;


-- QUESTÃO 4: Qual é o custo médio dos eventos do tipo "Palestra"? --

SELECT AVG(custo) AS CustoMedio
FROM EVENTO
WHERE tipo = 'Palestra';

-- QUESTÃO 5: Quantos funcionarios são educadores? --

SELECT COUNT(matricula) AS Educadores
FROM EDUCADOR;


-- QUESTÃO 6: Quais funcionaios são gerentes? --

SELECT nome
FROM GERENTE;


-- QUESTÃO 7: Qual é o nome do bibliotecário com a matrícula "B0003"? --

SELECT nome
FROM BIBLIOTECARIO
WHERE BIBLIOTECARIO.matricula = 'B0003';


-- QUESTÃO 8: Liste todos os funcionarios que são estagiarios. --

SELECT nome
FROM ESTAGIARIO;


-- QUESTÃO 9: Agrupe os livros por ano. Qual ano tem o maior quantidade de livros? --

SELECT ano_publicacao, COUNT(LIVRO.numero_registro) AS NumeroLivros
FROM LIVRO
GROUP BY LIVRO.ano_publicacao;


-- QUESTÃO 10: Quais livros existe acima de 2019?

SELECT titulo
FROM LIVRO
WHERE ano_publicacao > 2019;