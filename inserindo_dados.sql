-- PARA INSERIR DADOS EM UM BANCO UTILIZAMOS ESSES DOIS COMANDOS  

-- INSERT INTO livro(numero_registro, titulo, ano_publicacao, autor) - REGISTRO 

-- VALUES(1, 'titulo1', '2023', 'autor1') 

-- CONTEXTO DA ATIVIDADE -- FAZER PELO MENOS DOIS REGISTROS EM CADA TABELA 

-- SELECT * FROM biblioteca WHERE cnpj = '10101010101010';  COMANDO PARA VER OS DADOS CADASTRADOS CHAMANDO PELA PK 

-- INSERINDO DADOS NA BIBLIOTECA 


	-- Entrando no banco de dados
USE Sistema_Biblioteca;

	-- DADOS PERIÓDICOS
INSERT INTO Biblioteca (cnpj)
VALUES ('01234567891012');
	
	-- DADOS PERIÓDICOS
INSERT INTO Periodico (titulo, autor, ano_publicacao, numero_registro)
VALUES ('A desigualdade social e a indústria moderna', 'Socio Magazine', '2019', 1),
	('IA e sua ascenção no século XXI', 'Tecno Mist', '2021', 2),
	('Descobertas paleotonlógicas de época', 'Ciência todo dia', '2020', 3),
	('Química das partículas', 'ReaçõesQ', '2019', 4),
	('A movimentação de placas tectônicas', 'GeoLab', '2022', 5),
	('Fusão nuclear e seus benefícios para a sociedade', 'Fisi Fisica', '2017', 6),
	('A ascenção das máquinas', 'Mist Tecno', '2022', 7),
	('Os dinossauros e suas feições', 'Ciência quase todo dia', '2021', 8),
	('Como criar uma bomba caseira', 'ReaçõesE', '2020', 9),
	('O pantanal e suas nuances', 'GeoPlan', '2023', 10),
	('Crie um moinho de vento com sucata', 'Fisica divertida', '2018', 11),
	('A fome no mundo', 'Socio World', '2018', 12);

SELECT * FROM Periodico;

	-- DADOS LIVROS
INSERT INTO Livro (titulo, autor, ano_publicacao, numero_registro)
VALUES ('Ready Player One', 'Ernest Cline', '16/08/2011', 101),
	('Guia definitivo do mochileiro das galáxias', 'Douglas Addams', '16/10/2011', 102);

SELECT * FROM Livro;

	-- DADOS FUNCIONÁRIOS
INSERT INTO Funcionario (matricula, nome)
VALUES (1001, 'Silvan Filho'),
	(1002, 'Joel'),
	(1003, 'Francisco Junior'),
	(1004, 'Fabia Camile'),
	(1005, 'João das Neves'),
	(1006, 'Felipe Riuko'),
	(1007, 'Klinger Oficial'),
	(1008, 'Jonathan'),
	(1009, 'Jaqueline'),
	(1010, 'David'),
	(1011, 'Valtemir Procopio'),
	(1012, 'Kovutz'),
	(1013, 'Kellany'),
	(1014, 'Jorge Grisalho');

SELECT * FROM Funcionario;

	-- DADOS EVENTOS
INSERT INTO Evento (data, custo, tipo, id_evento)
VALUES ('19/11/2023', 596.90, 'Infantil', 20231),
	('01/10/2023', 230.90, 'Palestra', 20232),
	('03/07/2023', 620.50, 'Stand Up', 20233),
	('22/04/2023', 150.00, 'CineTeca', 20234);

		-- ALTERANDO DADOS NA TABELA EVENTOS
	UPDATE Evento 
	SET id_evento = 20234 
	WHERE id_evento = 20204;

SELECT * FROM Evento;

	-- DADOS USUÁRIOS
INSERT INTO Usuario (nome, celular, cpf)
VALUES ('Silvan Filho', '84 99199-1551', '00154896701'),
	('Joricleide Furda', '85 98851-1661', '00154896702'),
	('Zenielson Pai', '11 98899-1351', '00154896703'),
	('Karolainy Pereira', '21 99754-1221', '00154896704'),
	('Jorge Aragão', '14 99199-1551', '00154896705'),
	('Maricleide Laura', '96 98952-7761', '00154896706'),
	('Otovaldo Mironga', '13 98884-9521', '00154896707'),
	('Marigoise Valdete', '11 98452-7221', '00154896708');

SELECT * FROM Usuario;

	-- MATERIAL ESPECIAL
INSERT INTO Material_Especial (titulo, autor, ano_publicacao, numero_registro, matricula_funcionario)
VALUES ('As aventuras da ciência tecnológica', 'Sara Castelo', '21/05/1991', 501, 1001),
	('Comendo com gorilas', 'Lindsei Lohan', '14/06/1965', 502, 1002),
	('Comendo formigas na selva amazônica', 'Cabrau Silva', '17/08/1983', 503, 1003),
	('Estudo aprofundados das constelações', 'Beringler Cosme', '29/05/1971', 504, 1004),
	('Óleo vegetal extraído de sementes', 'Tomaz Lonete', '12/11/1995', 505, 1005),
	('Tiques das grandes mentes da antiguidade', 'Gilene Barin', '03/04/1988', 506, 1006),
	('Soldando em grandes alturas', 'Marinete Gomes', '20/09/1977', 507, 1007),
	('A America latina  e sua biodiversidade', 'Otino Buzeno', '08/12/1990', 508, 1008);

		-- ALTERANDO DADOS NA TABELA MATERIAL ESPECIAL
	UPDATE Material_Especial 
	SET titulo = 'Comendo com gorilas'
	WHERE numero_registro = 502;
		
		-- RETORNANDO OS MATERIAIS ESPECIAIS ASSOCIADOS A MATRICULA DE UM FUNCIONÁRIO
	SELECT ME.titulo, ME.ano_publicacao
	FROM Material_Especial ME 
	JOIN Funcionario F ON ME.matricula_funcionario = F.matricula
	WHERE F.matricula = 1001;

SELECT * FROM Material_Especial;

	-- USUÁRIO ENDEREÇO
INSERT INTO Usuario_Endereco (bairro, rua, numero, cpf_usuario)
VALUES ('Cabrobró', 'Rua das almas', 34, '00154896701'),
	('Cidadela', 'Avenida das Flores', 12, '00154896702'),
	('Monte Verde', 'Rua das Colinas', 45, '00154896703'),
	('Lagoa Azul', 'Travessa das Águas', 78, '00154896704'),
	('Sol Nascente', 'Avenida do Sol', 56, '00154896705'),
	('Vale do Silêncio', 'Rua da Paz', 23, '00154896706'),
	('Praia Dourada', 'Avenida da Areia', 67, '00154896707'),
	('Serra Alta', 'Travessa das Montanhas', 89, '00154896708');

SELECT * FROM Usuario_Endereco;

	-- PERIÓDICOS ESPECIALIZAÇÕES
INSERT INTO Periodico_Ciencia(numero_registro_periodico)
VALUES (3),
	(8);

INSERT INTO Periodico_Sociologia(numero_registro_periodico)
VALUES (1),
	(12);

INSERT INTO Periodico_Quimica(numero_registro_periodico)
VALUES (4),
	(9);

INSERT INTO Periodico_Fisica(numero_registro_periodico)
VALUES (6),
	(11);

INSERT INTO Periodico_Tecnologia(numero_registro_periodico)
VALUES (2),
	(7);

INSERT INTO Periodico_Geografia(numero_registro_periodico)
VALUES (5),
	(10);

SELECT * FROM Periodico_Ciencia;

	-- USUÁRIOS ESPECIALIZAÇÕES
INSERT INTO Usuario_Comum(cpf_usuario)
VALUES ('00154896701'),
	('00154896708');

INSERT INTO Usuario_Estudante(cpf_usuario, instituicao)
VALUES ('00154896702', 'Escola Primavera'),
	('00154896703', 'Colégio Estrela Dourada');

INSERT INTO Usuario_Professor(cpf_usuario, instituicao)
VALUES ('00154896704', 'Instituto Céu Azul'),
	('00154896705', 'Escola Montanha Verde');

INSERT INTO Usuario_Pesquisador(cpf_usuario, instituicao)
VALUES ('00154896706', 'Colégio Sol Nascente'),
	('00154896707', 'Escola Harmonia das Letras');

	-- ENTIDADES ASSOCIATIVAS
INSERT INTO Emprestimo(data_retirada, data_devolucao, numero_registro_livro, cpf_usuario)
VALUES ('22/04/2023', '01/05/2023', 101, '00154896704'),
	('21/04/2023', '01/05/2023', 102, '00154896704');
			
			---- PAREI AQUI
INSERT INTO Usuario_Estudante(cpf_usuario, instituicao)
VALUES ('00154896702', 'Escola Primavera'),
	('00154896703', 'Colégio Estrela Dourada');

INSERT INTO Usuario_Professor(cpf_usuario, instituicao)
VALUES ('00154896704', 'Instituto Céu Azul'),
	('00154896705', 'Escola Montanha Verde');

INSERT INTO Usuario_Pesquisador(cpf_usuario, instituicao)
VALUES ('00154896706', 'Colégio Sol Nascente'),
	('00154896707', 'Escola Harmonia das Letras');