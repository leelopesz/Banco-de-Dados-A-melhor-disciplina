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

-- Exercício 07
select curso, count(distinct aluno_id) as numero_de_alunos from matriculas
group by matriculas.curso
order by numero_de_alunos desc;

-- Exercício 08
select produto, avg(receita) as media_de_receita from vendas
group by produto;

-- Exercício 09
select produto, sum(receita) as receita_total from vendas
group by produto
having sum(receita) > 10000.00;

-- Exercício 10
select nome as autor, count(livros.id) as numero_de_livros from autores
left join livros on autores.id = livros.autor_id
group by nome
having count(livros.id) >= 2;

-- Exercício 11
select livros.titulo as livro, autores.nome as autor from livros
inner join autores on livros.autor_id = autores.id
order by autor;

-- Exercício 12
select distinct nome as aluno, matriculas.curso from alunos
left join matriculas on alunos.id = matriculas.aluno_id
order by aluno;

-- Exercício 13
select nome as autor, livros.titulo as livro from autores
left join livros on autores.id = livros.autor_id
order by nome;

-- Exercício 14
select distinct curso, alunos.nome as aluno from matriculas
right join alunos on matriculas.aluno_id = alunos.id
where curso is not null
order by curso;

-- Exercício 15

-- Exercício 16

-- Exercício 17

-- Exercício 19

-- Exercício 20



