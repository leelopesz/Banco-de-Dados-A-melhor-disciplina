-- Exercício 01
select titulo from livros;

-- Exercício 02
select nome, nascimento from autores
where nascimento < '1900-01-01';

-- Exercício 03
select * from livros 
where autor_id = 1;

-- Exercício 04
select distinct nome from alunos
inner join matriculas on alunos.id = matriculas.aluno_id
where matriculas.curso = 'Engenharia de Software'; 
