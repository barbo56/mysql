USE sistema_biblioteca;


-- QUEST�O 1: Quais s�o os t�tulos dos livros escritos por "Nilo Ney Coutinho Menezes"? --

SELECT titulo
FROM livro
WHERE autor = 'Nilo Ney Coutinho Menezes';


-- QUEST�O 2: Quais s�o os autores dos livros que foram publicados em 2020? --

SELECT autor
FROM livro
WHERE ano_publicacao = '2020';


-- QUEST�O 3: Quais s�o os nomes dos bibliotec�rios?

SELECT nome
FROM BIBLIOTECARIO;


-- QUEST�O 4: Qual � o custo m�dio dos eventos do tipo "Palestra"? --

SELECT AVG(custo) AS CustoMedio
FROM EVENTO
WHERE tipo = 'Palestra';

-- QUEST�O 5: Quantos funcionarios s�o educadores? --

SELECT COUNT(matricula) AS Educadores
FROM EDUCADOR;


-- QUEST�O 6: Quais funcionaios s�o gerentes? --

SELECT nome
FROM GERENTE;


-- QUEST�O 7: Qual � o nome do bibliotec�rio com a matr�cula "B0003"? --

SELECT nome
FROM BIBLIOTECARIO
WHERE BIBLIOTECARIO.matricula = 'B0003';


-- QUEST�O 8: Liste todos os funcionarios que s�o estagiarios. --

SELECT nome
FROM ESTAGIARIO;


-- QUEST�O 9: Agrupe os livros por ano. Qual ano tem o maior quantidade de livros? --

SELECT ano_publicacao, COUNT(LIVRO.numero_registro) AS NumeroLivros
FROM LIVRO
GROUP BY LIVRO.ano_publicacao;


-- QUEST�O 10: Quais livros existe acima de 2019?

SELECT titulo
FROM LIVRO
WHERE ano_publicacao > 2019;