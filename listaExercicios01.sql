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
select distinct curso, nome as aluno from matriculas
right join alunos on matriculas.aluno_id = alunos.id
where curso is not null
order by curso;

-- Exercício 15
select distinct nome as aluno, matriculas.curso from matriculas
inner join alunos on matriculas.aluno_id = alunos.id
order by curso;

-- Exercício 16
select nome as autor, count(livros.id) as numero_de_livros from autores
left join livros on autores.id = livros.autor_id
group by nome
order by numero_de_livros desc;

-- Exercício 17
select produto, receita from vendas
where receita = (select min(receita) from vendas);

--Exercício 18 (cancelado)

-- Exercício 19
SELECT nome, 
       (SELECT COUNT(DISTINCT curso) 
        FROM matriculas 
        WHERE matriculas.aluno_id = alunos.id) AS qntd_cursos
FROM alunos
order by qntd_cursos, nome;

-- Exercício 20
select produto, count(*) as qntd_transacoes
from vendas
group by produto
order by qntd_transacoes desc;

--Fim da Lista!!!!



