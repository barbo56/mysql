Comandos SQL Server

1. Introdução

    SQL (Structured Query Language) é uma linguagem padrão para armazenar, manipular e recuperar dados em bancos de dados. SQL Server da Microsoft é um sistema de gerenciamento de banco de dados relacional (RDBMS) que usa SQL. Aqui estão alguns dos comandos básicos usados no SQL Server.

2. Comandos DDL (Data Definition Language)

    CREATE
    • Usado para criar objetos. Exemplo: CREATE TABLE nome_tabela (coluna1 tipo_dados, coluna2 tipo_dados, ...);

    ALTER
    • Usado para modificar objetos. Exemplo: ALTER TABLE nome_tabela ADD coluna3 tipo_dados;

    DROP
    • Usado para excluir objetos. Exemplo: DROP TABLE nome_tabela;

3. Comandos DML (Data Manipulation Language)

    SELECT
    • Usado para selecionar registros de uma tabela. Exemplo: SELECT coluna1, coluna2 FROM nome_tabela WHERE condição;

    INSERT
    • Usado para inserir registros em uma tabela. Exemplo: INSERT INTO nome_tabela (coluna1, coluna2) VALUES (valor1, valor2);

    UPDATE
    • Usado para atualizar registros em uma tabela. Exemplo: UPDATE nome_tabela SET coluna1 = valor1, coluna2 = valor2 WHERE condição;

    DELETE
    • Usado para excluir registros de uma tabela. Exemplo: DELETE FROM nome_tabela WHERE condição;