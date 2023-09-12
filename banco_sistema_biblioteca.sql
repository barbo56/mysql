-- Criando o banco de dados
CREATE DATABASE Sistema_Biblioteca;

-- Entrando no banco de dados
USE Sistema_Biblioteca;

-- Criando tabelas para as entidades
CREATE TABLE Biblioteca (
	cnpj CHAR(14) PRIMARY KEY,
);

CREATE TABLE Periodico (
	titulo CHAR(50),
	autor CHAR(50),
	ano_publicacao CHAR(10),
	numero_registro INT PRIMARY KEY,
);

CREATE TABLE Livro (
	titulo CHAR(50),
	autor CHAR(60),
	ano_publicacao CHAR(10),
	numero_registro INT PRIMARY KEY,
);

CREATE TABLE Funcionario (
	matricula INT,
	nome VARCHAR(50),
);

CREATE TABLE Evento (
	data VARCHAR(30),
	custo DECIMAL(6,2),
	tipo CHAR(30),
	id_evento INT PRIMARY KEY,
);

CREATE TABLE Usuario (
	nome CHAR(60),
	celular CHAR(20),
	cpf CHAR(11) PRIMARY KEY,
);

CREATE TABLE Material_Especial (
	ano_publicacao CHAR(10),
	estilo CHAR(40),
	autor CHAR(60),
	numero_registro INT PRIMARY KEY,
	matricula_funcionario INT,
	FOREIGN KEY (matricula_funcionario) REFERENCES Funcionario(matricula),
);

CREATE TABLE Usuario_Endereco (
	bairro CHAR(20),
	rua CHAR(40),
	numero INT,
	cpf_usuario CHAR(11),
	FOREIGN KEY (cpf_usuario) REFERENCES Usuario(cpf),
);

	-- PERIODICO ESPECIALIZAÇÕES
CREATE TABLE Periodico_Ciencia (
	numero_registro_periodico INT,
	FOREIGN KEY (numero_registro_periodico) REFERENCES Periodico(numero_registro),
);

CREATE TABLE Periodico_Sociologia (
	numero_registro_periodico INT,
	FOREIGN KEY (numero_registro_periodico) REFERENCES Periodico(numero_registro),
);

CREATE TABLE Periodico_Quimica (
	numero_registro_periodico INT,
	FOREIGN KEY (numero_registro_periodico) REFERENCES Periodico(numero_registro),
);

CREATE TABLE Periodico_Tecnologia (
	numero_registro_periodico INT,
	FOREIGN KEY (numero_registro_periodico) REFERENCES Periodico(numero_registro),
);

CREATE TABLE Periodico_Fisica (
	numero_registro_periodico INT,
	FOREIGN KEY (numero_registro_periodico) REFERENCES Periodico(numero_registro),
);

CREATE TABLE Periodico_Geografia (
	numero_registro_periodico INT,
	FOREIGN KEY (numero_registro_periodico) REFERENCES Periodico(numero_registro),
);
	-- FIM PERIODICO ESPECIALIZAÇÕES

	-- USUÁRIO ESPECIALIZAÇÕES
CREATE TABLE Usuario_Professor (
	instituicao CHAR(100),
	cpf_usuario CHAR(11),
	FOREIGN KEY (cpf_usuario) REFERENCES Usuario(cpf),
);

CREATE TABLE Usuario_Pesquisador (
	instituicao CHAR(100),
	cpf_usuario CHAR(11),
	FOREIGN KEY (cpf_usuario) REFERENCES Usuario(cpf),
);

CREATE TABLE Usuario_Estudante (
	cpf_usuario CHAR(11),
	instituicao CHAR(100),
	FOREIGN KEY (cpf_usuario) REFERENCES Usuario(cpf),
);

CREATE TABLE Usuario_Comum (
	cpf_usuario CHAR(11),
	FOREIGN KEY (cpf_usuario) REFERENCES Usuario(cpf),
);
	-- FIM USUÁRIO ESPECIALIZAÇÕES

	-- ENTIDADES ASSOCIATIVAS
CREATE TABLE Emprestimo (
	data_retirada DATE,
	data_devolucao DATE,
	numero_registro_livro INT,
	cpf_usuario CHAR(11),
	FOREIGN KEY (numero_registro_livro) REFERENCES Livro(numero_registro),
	FOREIGN KEY (cpf_usuario) REFERENCES Usuario(cpf),
);

CREATE TABLE Contrato (
	cnpj_biblioteca CHAR(14),
	matricula_funcionario INT,
	FOREIGN KEY (cnpj_biblioteca) REFERENCES Biblioteca(cnpj),
	FOREIGN KEY (matricula_funcionario) REFERENCES Funcionario(matricula),
);

CREATE TABLE Periodico_Biblioteca (
	cnpj_biblioteca CHAR(14),
	numero_registro_periodico INT,
	FOREIGN KEY (cnpj_biblioteca) REFERENCES Biblioteca(cnpj),
	FOREIGN KEY (numero_registro_periodico) REFERENCES Periodico(numero_registro),
);

CREATE TABLE Mat_Esp_Biblioteca (
	cnpj_biblioteca CHAR(14),
	numero_registro_material_esp INT,
	FOREIGN KEY (cnpj_biblioteca) REFERENCES Biblioteca(cnpj),
	FOREIGN KEY (numero_registro_material_esp) REFERENCES Material_Especial(numero_registro),
);

CREATE TABLE Livro_Biblioteca (
	cnpj_biblioteca CHAR(14),
	numero_registro_livro INT,
	FOREIGN KEY (cnpj_biblioteca) REFERENCES Biblioteca(cnpj),
	FOREIGN KEY (numero_registro_livro) REFERENCES Livro(numero_registro),
);

CREATE TABLE Mat_Esp_Restaurador (
	matricula_funcionario INT,
	numero_registro_material_esp INT,
	FOREIGN KEY (matricula_funcionario) REFERENCES Funcionario(matricula),
	FOREIGN KEY (numero_registro_material_esp) REFERENCES Material_Especial(numero_registro),
);
	-- FIM ENTIDADES ASSOCIATIVAS

CREATE TABLE Palestra (
	id_evento_palestra INT,
	FOREIGN KEY (id_evento_palestra) REFERENCES Evento(id_evento),
);

CREATE TABLE Workshop (
	id_evento_workshop INT,
	FOREIGN KEY (id_evento_workshop) REFERENCES Evento(id_evento),
);

CREATE TABLE Educador (
	nome CHAR(60),
	matricula INT,
	FOREIGN KEY (matricula) REFERENCES Funcionario(matricula),
);

CREATE TABLE Restaurador (
	nome CHAR(60),
	matricula INT,
	FOREIGN KEY (matricula) REFERENCES Funcionario(matricula),
);

	-- MATERIAL ESPECIAL ESPECIALIZAÇÕES
CREATE TABLE Material_Esp_PPDEJA (
	numero_registro_material_esp INT,
	FOREIGN KEY (numero_registro_material_esp) REFERENCES Material_Especial(numero_registro),
);

CREATE TABLE Material_Esp_APXXI (
	numero_registro_material_esp INT,
	FOREIGN KEY (numero_registro_material_esp) REFERENCES Material_Especial(numero_registro),
);

CREATE TABLE Material_Esp_AQPMD (
	numero_registro_material_esp INT,
	FOREIGN KEY (numero_registro_material_esp) REFERENCES Material_Especial(numero_registro),
);

CREATE TABLE Material_Esp_NDEEM (
	numero_registro_material_esp INT,
	FOREIGN KEY (numero_registro_material_esp) REFERENCES Material_Especial(numero_registro),
);
	-- FIM MATERIAL ESPECIAL ESPECIALIZAÇÕES

	-- FUNCIONÁRIO ESPECIALIZAÇÕES
CREATE TABLE Funcionario_Assistente (
	matricula_funcionario INT,
	FOREIGN KEY (matricula_funcionario) REFERENCES Funcionario(matricula),
);

CREATE TABLE Funcionario_Estagiario (
	matricula_funcionario INT,
	FOREIGN KEY (matricula_funcionario) REFERENCES Funcionario(matricula),
);

CREATE TABLE Funcionario_Atendente (
	matricula_funcionario INT,
	FOREIGN KEY (matricula_funcionario) REFERENCES Funcionario(matricula),
);

CREATE TABLE Funcionario_Tecnico (
	matricula_funcionario INT,
	FOREIGN KEY (matricula_funcionario) REFERENCES Funcionario(matricula),
);

CREATE TABLE Funcionario_Gerente (
	matricula_funcionario INT,
	FOREIGN KEY (matricula_funcionario) REFERENCES Funcionario(matricula),
);

CREATE TABLE Funcionario_Tecnico_TI (
	matricula_funcionario INT,
	FOREIGN KEY (matricula_funcionario) REFERENCES Funcionario(matricula),
);

CREATE TABLE Funcionario_Bibliotecario (
	matricula_funcionario INT,
	FOREIGN KEY (matricula_funcionario) REFERENCES Funcionario(matricula),
);
	-- FIM FUNCIONÁRIO ESPECIALIZAÇÕES