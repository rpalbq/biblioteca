-- CONSULTAS PARA A CRIAÇÃO DOS GRÁFICOS

-- QUANTIDADE DE AUTORES DO GÊNERO MASCULINO, FEMININO E DESCONHECIDO

SELECT * FROM autor WHERE genero = 1;
SELECT * FROM autor WHERE genero = 2;
SELECT * FROM autor WHERE genero = 3


-- OS LIVROS MAIS CAROS DA COLEÇÃO ACIMA DE 45 REAIS

SELECT idlivro,nome, preco FROM livro  WHERE preco > 45 GROUP BY idlivro;



-- O VALOR DE LIVRO MAIS CARO E O MAIS BARATO DA COLEÇÃO

SELECT max(preco) from livro;
SELECT min(preco) from livro;



-- MOSTRAR QUANTOS LIVROS DE UMA MESMA EDITORA FORAM CATALOGADOS

SELECT editora, COUNT(*) AS qntrepeticoes FROM livro
GROUP BY editora
HAVING Count(*) > 1
ORDER BY qntrepeticoes desc;


-- MOSTRAR QUANTIDADE DE LIVROS CATALOGADOS DE UM MESMO GÊNERO

SELECT genero, Count(*) as QtdRepeticoes FROM livro
GROUP BY genero
HAVING Count(*) > 1
ORDER BY QtdRepeticoes DESC;


-- VALOR GASTO EM LIVROS DIVIDO POR GENERO E TOTA

SELECT sum(preco) FROM livro WHERE genero = 1;
SELECT sum(preco) FROM livro WHERE genero = 2;
SELECT sum(preco) FROM livro WHERE genero = 3;
SELECT sum(preco) FROM livro WHERE genero = 4;
SELECT sum(preco) FROM livro WHERE genero = 5;
SELECT sum(preco) FROM livro WHERE genero = 6;
SELECT sum(preco) FROM livro WHERE genero = 7;
SELECT sum(preco) FROM livro WHERE genero = 8;
SELECT sum(preco) FROM livro WHERE genero = 9;
SELECT sum(preco) FROM livro WHERE genero = 10;
SELECT sum(preco) FROM livro WHERE genero = 11;
SELECT sum(preco) FROM livro WHERE genero = 12;
SELECT sum(preco) FROM livro WHERE genero = 13;
SELECT sum(preco) FROM livro WHERE genero = 14;
SELECT sum(preco) FROM livro WHERE genero = 15;
SELECT sum(preco) FROM livro WHERE genero = 16;
SELECT sum(preco) FROM livro WHERE genero = 17;
SELECT sum(preco) FROM livro WHERE genero = 18;
SELECT sum(preco) FROM livro WHERE genero = 19;
SELECT sum(preco) FROM livro WHERE genero = 20;
SELECT sum(preco) FROM livro WHERE genero = 21;
SELECT sum(preco) FROM livro WHERE genero = 22;
SELECT sum(preco) FROM livro WHERE genero = 23;
SELECT sum(preco) FROM livro WHERE genero = 24;

SELECT sum(preco) FROM livro;



-- MÉDIA ARITMÉTRICA DOS PREÇOS DOS LIVROS

SELECT avg(preco) FROM livro;

