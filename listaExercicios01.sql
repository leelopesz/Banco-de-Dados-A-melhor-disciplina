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

-- Exercício 05
select produto, sum(receita) as receita_total from vendas
group by produto;

-- Exercício 06
select nome as autor, count(livros.id) as numero_de_livros from autores
left join livros on autores.id = livros.autor_id
group by nome;

