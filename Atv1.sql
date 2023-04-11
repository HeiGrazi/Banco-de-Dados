-- Criando um novo banco de dados (create database NOME_DO_BANCO)
CREATE DATABASE sistema_rh;

-- Selecionando o banco de dados para funcionamento
USE sistema_rh;

-- Criando a tabela com ATRIBUTOS
CREATE TABLE tabela_colaboradores(
	-- AUTO_INCREMENT: cria uma sequência de numeros automática, NUMERO++
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(10),
    salario FLOAT,
    cargo VARCHAR(20),
    data_nascimento DATE,
    
    -- Define ID como chave primária(não permite valores duplicado)
    PRIMARY KEY(id)
);

INSERT INTO tabela_colaboradores (nome, salario, cargo, data_nascimento)
-- Sempre colocar aspas ' ou " em valores atribuidos em VARCHAR
VALUES ("Patricia",1200.00,"Analista de Rh","1968-06-05");

INSERT INTO tabela_colaboradores (nome, salario, cargo, data_nascimento) 
VALUES ('Daiane', 2500, 'Assistente ', '1990-05-15');

INSERT INTO tabela_colaboradores (nome, salario, cargo, data_nascimento) 
VALUES ('Bruno', 2500, 'Assistente', '1995-12-14');

INSERT INTO tabela_colaboradores (nome, salario, cargo, data_nascimento) 
VALUES ('Gabriel', 4000, 'Gerente', '1988-09-12');

INSERT INTO tabela_colaboradores (nome, salario, cargo, data_nascimento) 
VALUES ('Bruna', 3000, 'Supervisora', '1975-03-06');

select * from tabela_colaboradores where salario > 2000;

select * from tabela_colaboradores where salario < 2000;

update tabela_colaboradores set salario = 5000 where id=3;