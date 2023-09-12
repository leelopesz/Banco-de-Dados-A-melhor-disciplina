-- Exercício 01
select titulo from livros;

-- Exercício 02
select nome, nascimento from autores
where nascimento < '1900-01-01';

-- Exercício 03
select * from livros 
where autor_id = 1;
