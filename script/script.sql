CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE editora (
ideditora INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
PRIMARY KEY (ideditora)
);

CREATE TABLE formato (
idformato INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(45) NOT NULL,
PRIMARY KEY (idformato)
);

CREATE TABLE colecao (
idcolecao INT NOT NULL AUTO_INCREMENT ,
nome VARCHAR(100) NOT NULL,
possui INT NOT NULL,
total_colecao INT NOT NULL,
PRIMARY KEY (idcolecao)
);

CREATE TABLE genero (
idgenero INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(45) NOT NULL,
PRIMARY KEY (idgenero)
);

CREATE TABLE classificacao (
idclassificacao INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(45) NOT NULL,
PRIMARY KEY (idclassificacao)
);

CREATE TABLE pais_origem (
idpais_origem INT NOT NULL AUTO_INCREMENT,
pais VARCHAR(30) NOT NULL, 
PRIMARY KEY (idpais_origem)
);

CREATE TABLE genero_autor (
idgenero_autor INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(45) NOT NULL,
PRIMARY KEY (idgenero_autor)
);

CREATE TABLE autor (
idautor INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL, 
genero INT NOT NULL,
PRIMARY KEY (idautor),
FOREIGN KEY (genero) REFERENCES genero_autor(idgenero_autor)
);

CREATE TABLE livro (
idlivro INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
autor INT NOT NULL,
editora INT NOT NULL,
paginas INT NOT NULL,
ano_publicado YEAR NOT NULL,
formato INT NOT NULL,
genero INT NOT NULL,
pais_origem INT NOT NULL,
classificacao INT NOT NULL,
colecao INT NOT NULL,
preco DECIMAL(5,2) NOT NULL,
lido VARCHAR(3) NOT NULL,
PRIMARY KEY(idlivro),
FOREIGN KEY(autor) REFERENCES autor(idautor),
FOREIGN KEY(editora) REFERENCES editora(ideditora),
FOREIGN KEY(formato) REFERENCES formato(idformato),
FOREIGN KEY(genero) REFERENCES genero(idgenero),
FOREIGN KEY(pais_origem) REFERENCES pais_origem(idpais_origem),
FOREIGN KEY(classificacao) REFERENCES classificacao(idclassificacao),
FOREIGN KEY(colecao) REFERENCES colecao(idcolecao)
);

CREATE TABLE nota (
idnota INT NOT NULL AUTO_INCREMENT,
idlivro INT NOT NULL, 
nota DECIMAL(2,1) NOT NULL,
PRIMARY KEY(idnota),
FOREIGN KEY(idlivro) REFERENCES livro(idlivro)
);

-- POVOANDO TABELAS 

INSERT INTO formato(descricao) VALUES ('Físico');
INSERT INTO formato(descricao) VALUES ('Kindle');


INSERT INTO genero_autor(descricao) VALUES ('Masculino');
INSERT INTO genero_autor(descricao) VALUES ('Feminino');
INSERT INTO genero_autor(descricao) VALUES ('Desconhecido');

