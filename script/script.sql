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


 INSERT INTO genero(descricao) VALUES ('Ação'),
 ('Ficção Científica'),
 ('Drama'),
 ('Comédia'),
 ('Romance'),
 ('Aventura'),
 ('Mistério'),
 ('Suspense'),
 ('Fantasia'),
 ('Terror'),
 ('Ficção'),
 ('Poesia'),
 ('Distopia'),
 ('Conto'),
 ('Acadêmico'),
 ('Religioso'),
 ('Biografia'),
 ('Desenvolvimento Pessoal'), 
 ('Lgbt'),
 ('Literatura Infantil'),
 ('Crônica');
 
 
 INSERT INTO classificacao(descricao) VALUES ('Livro'),
('HQ'),
('Mangá'),
('Light Novel'),
('Manhwa');


INSERT INTO pais_origem(pais) VALUES ('Brasil'),
('França'),
('Estados Unidos'),
('Japão'),
('Irlanda'),
('Reino Unido'),
('Itália'),
('República Tcheca'),
('Portugal'),
('Coreia do Sul');


INSERT INTO editora(nome) VALUES ('New Pop'),
('JBC'),
('Panini'),
('Devir'),
('Intrínseca'),
('Suma'),
('Darkside'),
('Pandorga'),
('Excelsior'),
('Arqueiro'),
('Rocco'),
('Rádio Londres'),
('Companhia das Letras'),
('Biblioteca Azul'),
('BestBolso'),
('NovaTec'),
('Verus'),
('Casa dos Mundos'),
('Universo dos Livros'),
('Alt'),
('Globo Livros'),
('Bertrand Brasil'),
('Thomas Nelson Brasil'),
('Vestígio'),
('Seguinte'),
('Galera'),
('Principis'),
('Sextante'),
('Camelot'),
('Leya'),
('Record'),
('Novo Século'),
('Gutenberg'),
('Lua de Papel'),
('Nova Era'),
('Nova Fronteira'),
('Ática'),
('Salamandra'),
('Ciranda Cultural'),
('Saraiva'),
('Via Leitura'),
('L&PM'),
('Astral Cultural'),
('HarperCollins'),
('José Olympio'),
('WMF Martins Fontes');


INSERT INTO autor (nome,genero) VALUES ('Go Nagai', 1),
('Unita Yumi', 2),
('Kakifly' , 1),
('Hiro Kiyohara', 1),
('Yukito Kishiro', 1),
('Io Sakisaka', 2),
('Fujita', 2),
('Tatsuya Endou', 1),
('Riyoko Ikeda', 2),
('Kirihito Ayamura', 3), 
('Yun Kouga', 2),
('Clamp', 2),
('Makoto Shinkai', 1),
('Shuzo Oshimi', 1),
('Gerard Way', 1),
('Jeff Lemire', 1),
('Stephen King', 1),
('Helene Wecker', 2),
('Mary Pearson', 2),
('Bram Stoker', 1),
('C. J. Tudor', 2),
('Mackenzie Lee', 2),
('Dan Brown', 1),
('Clarice Lispector', 2),
('Genevieve Valentine', 2),
('Neil Gaiman', 1),
('John Williams', 1),
('Hilda Hilst', 2),
('Aldous Leonard Huxley', 1),
('Tsugumi Ohba', 1),
('Alyson Noël', 2),
('Marian Keyes', 2),
('Thomas Nield', 1),
('Aditya Y. Bhargava', 1),
('Eduardo Spohr', 1),
('Ransom Riggs', 1),
('Serena Valentino', 2), 
('Kendare Blake', 2),
('Kai-Fu Lee', 1),
('Agatha Christie', 2),
('Niccolo Ammaniti', 1),
('C.S. Lewis', 1),
('Carina Rissi', 2),
('George R.R. Martin', 1),
('Stephanie Perkins', 2),
('Rick Riordan', 1),
('Joseph Joffo', 1),
('Victoria Schwab', 2),
('Alwyn Hamilton', 2),
('Matthew Quick', 1),
('Nicola Yoon', 2),
('Jojo Moyes', 2),
('Sarah J. Maas', 2),
('Jennifer E. Smith', 2),
('John Green', 1),
('Ray Bradbury', 1),
('William Shakespeare', 1),
('Franz Kafka', 1),
('Ichiro Kishimi', 1),
('Holly Black', 2),
('Sabaa Tahir', 2),
('Edgar Allan Poe', 1),
('Leandro Karnal', 1),
('Rachel Wilkerson Miller', 2),
('Graeme Simsion', 1),
('Colleen Hoover', 2),
('Susan Cooper', 2),
('Bruna Vieira', 2),
('Toni de La Torre', 1),
('Nei Naiff', 1),
('Paula Pimenta', 2),
('Amanda Lovelace', 2),
('Josh Malerman', 1),
('Meg Cabot', 2),
('Gil Vicente', 1),
('Kathryn Littlewood', 2),
('Hiroyuki Takei', 1),
('Lucy Maud Montgomery', 2),
('Nate Diana Stevenson', 1),
('Gayle Forman', 2),
('Alan Oliveira', 1),
('Machado de Assis', 1),
('Aluísio Azevedo', 1),
('Inio Asano', 1),
('Gengoroh Tagame', 1),
('Rumiko Takahashi', 2),
('Youko Fujitani', 2),
('Etsuko', 2),
('Naoko Takeuchi', 2),
('Keika Hanada', 1),
('Antoine de Saint-Exupéry', 1),
('Morgan Rhodes', 2),
('Sang-Sun Park', 2),
('John August', 1),
('Jane Austen', 2),
('Maurice Druon', 1),
('Carroll Lewis', 1),
('José de Alencar', 1),
('Maya Angelou', 2),
('Roald Dahl', 1);

