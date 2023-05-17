-- CRIANDO UM BANCO DE DADOS 
CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

-- SELECIONANDO O BANCO DE DADOS 
USE cadastro;

-- CRIATDO UMA TABELA
CREATE TABLE pessoas(
id INT NOT NULL AUTO_INCREMENT,
`nome` VARCHAR(30) NOT NULL,
nascimento DATE,
sexo ENUM('M' , 'F'),
peso DECIMAL(5,2),
altura DECIMAL(3,2),
`nacionalidade` VARCHAR(20) DEFAULT "Brasil",
PRIMARY KEY (id)
)DEFAULT CHARSET = utf8;

-- ADICIONANDO DADOS 
INSERT INTO pessoas(nome , nascimento, sexo, peso, altura, nacionalidade) VALUES ('Claudio','2009-02-09', 'M','65.2','1.74', 'Brasil');
INSERT INTO pessoas(id ,nome , nascimento, sexo, peso, altura, nacionalidade) VALUES(DEFAULT ,'José','1982-01-23', 'M','83.7','1.89', DEFAULT);
INSERT INTO pessoas VALUES (DEFAULT ,'Maria','1999-08-16', 'F','60.4','1.65', DEFAULT);

-- ATUALIZANDO DADOS
UPDATE pessoas SET nome='Andrey' WHERE codigo = 1;

-- DELETANDO DADOS
DELETE FROM pessoas WHERE id = 1;

-- ALTERANDO A ESTRUTURA DA TABELA
ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(10);
ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(10) AFTER nome;
ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(10) FIRST;
ALTER TABLE pessoas DROP COLUMN profissao;
ALTER TABLE pessoas MODIFY COLUMN profissao VARCHAR(20) NOT NULL DEFAULT '';
ALTER TABLE pessoas CHANGE COLUMN profissao prof VARCHAR(20);
ALTER TABLE pessoas RENAME TO usuarios;


SELECT * FROM pessoas;

DESCRIBE pessoas;



