CREATE TABLE escolas (
  escola_id NUMBER PRIMARY KEY,
  nome VARCHAR2(100),
  localizacao VARCHAR2(50),
  num_professores NUMBER
);

CREATE TABLE alunos (
  aluno_id NUMBER PRIMARY KEY,
  nome VARCHAR2(100),
  escola_id NUMBER,
  serie VARCHAR2(10),
  desempenho NUMBER,
  FOREIGN KEY (escola_id) REFERENCES escolas(escola_id)
);

CREATE TABLE disciplinas (
  disciplina_id NUMBER PRIMARY KEY,
  nome_disciplina VARCHAR2(50),
  escola_id NUMBER,
  FOREIGN KEY (escola_id) REFERENCES escolas(escola_id)
);

INSERT INTO escolas (escola_id, nome, localizacao, num_professores) VALUES (1, 'Escola Primavera', 'Urbana', 30);
INSERT INTO escolas (escola_id, nome, localizacao, num_professores) VALUES (2, 'Escola do Vale', 'Rural', 20);
INSERT INTO escolas (escola_id, nome, localizacao, num_professores) VALUES (3, 'Escola Horizon', 'Urbana', 40);
INSERT INTO escolas (escola_id, nome, localizacao, num_professores) VALUES (4, 'Escola Rio Brilhante', 'Rural', 18);
INSERT INTO escolas (escola_id, nome, localizacao, num_professores) VALUES (5, 'Escola Montanha', 'Urbana', 35);
INSERT INTO escolas (escola_id, nome, localizacao, num_professores) VALUES (6, 'Escola Campo Verde', 'Rural', 25);
INSERT INTO escolas (escola_id, nome, localizacao, num_professores) VALUES (7, 'Escola Estrela do Norte', 'Urbana', 30);

INSERT INTO alunos (aluno_id, nome, escola_id, serie, desempenho) VALUES (1, 'Alice', 1, '5', 85);
INSERT INTO alunos (aluno_id, nome, escola_id, serie, desempenho) VALUES (2, 'Bruno', 2, '6', 75);
INSERT INTO alunos (aluno_id, nome, escola_id, serie, desempenho) VALUES (3, 'Carla', 3, '5', 92);
INSERT INTO alunos (aluno_id, nome, escola_id, serie, desempenho) VALUES (4, 'Diego', 4, '6', 70);
INSERT INTO alunos (aluno_id, nome, escola_id, serie, desempenho) VALUES (5, 'Eva', 5, '5', 88);
INSERT INTO alunos (aluno_id, nome, escola_id, serie, desempenho) VALUES (6, 'Felipe', 6, '6', 82);
INSERT INTO alunos (aluno_id, nome, escola_id, serie, desempenho) VALUES (7, 'Giovana', 7, '5', 95);
INSERT INTO alunos (aluno_id, nome, escola_id, serie, desempenho) VALUES (8, 'Henrique', 1, '6', 78);
INSERT INTO alunos (aluno_id, nome, escola_id, serie, desempenho) VALUES (9, 'Iris', 2, '5', 80);
INSERT INTO alunos (aluno_id, nome, escola_id, serie, desempenho) VALUES (10, 'Joao', 3, '6', 76);
INSERT INTO alunos (aluno_id, nome, escola_id, serie, desempenho) VALUES (11, 'Katia', 4, '5', 83);
INSERT INTO alunos (aluno_id, nome, escola_id, serie, desempenho) VALUES (12, 'Lucas', 5, '6', 79);
INSERT INTO alunos (aluno_id, nome, escola_id, serie, desempenho) VALUES (13, 'Maria', 6, '5', 91);
INSERT INTO alunos (aluno_id, nome, escola_id, serie, desempenho) VALUES (14, 'Nelson', 7, '6', 74);
INSERT INTO alunos (aluno_id, nome, escola_id, serie, desempenho) VALUES (15, 'Olivia', 1, '5', 89);

INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (1, 'Matematica', 1);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (2, 'Portugues', 1);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (3, 'Ciencias', 2);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (4, 'Historia', 2);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (5, 'Geografia', 3);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (6, 'Ingles', 3);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (7, 'Artes', 4);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (8, 'Educaçao Física', 4);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (9, 'Musica', 5);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (10, 'Tecnologia', 5);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (11, 'Matematica', 6);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (12, 'Portugues', 6);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (13, 'Ciencias', 7);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (14, 'Historia', 7);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (15, 'Geografia', 7);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (16, 'Filosofia', 2);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (17, 'Sociologia', 2);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (18, 'Quimica', 2);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (19, 'Biologia', 5);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (20, 'Ciencias', 5);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (21, 'Portugues', 3);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (22, 'Biologia', 3);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (23, 'Ciencias', 3);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (24, 'Biologia', 6);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (25, 'Ingles', 6);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (26, 'Literatura', 6);
INSERT INTO disciplinas (disciplina_id, nome_disciplina, escola_id) VALUES (27, 'Historia', 5);

COMMIT;


-- Resposta 1: 1. Encontrar a escola com o maior número de alunos e exibir informações sobre essa escola;
with contagem_de_alunos as ( 
    select 
        a.escola_id, 
        count(*) as qtd_alunos 
    from 
        alunos a
    group by
        a.escola_id 
),
maior_qtd_alunos as (
    select 
        escola_id 
    from 
        contagem_de_alunos 
    where qtd_alunos = (select max(qtd_alunos) from contagem_de_alunos) 
)
select
    e.nome,
    e.localizacao,
    e.num_professores as "Numero de Professores"
from
    escolas e
join
    maior_qtd_alunos
on
    e.escola_id = maior_qtd_alunos.escola_id;


-- Resposta 2: Listar todos os alunos que tem nota acima da média de sua série;
with media_serie as (
    select
        serie,
        avg(desempenho) as media_turma
    from
        alunos
    group by
        serie
)
select
    a.nome,
    a.serie,
    a.desempenho
from
    alunos a
join
    media_serie
on
    a.serie = media_serie.serie
where
    a.desempenho > media_serie.media_turma


-- Resposta 3: Combinar as listas de disciplinas ensinadas nas escolas da área urbana e rural, sem duplicatas;
-- Fiz essa com o UNION para praticar mas conseguiria fazer usando inner join e distinct
select
    d.nome_disciplina
from
    disciplinas d
inner join
    escolas e
on
    e.escola_id = d.escola_id
where
    e.localizacao = 'Urbana'
union
select
    d.nome_disciplina
from
    disciplinas d
inner join
    escolas e
on
    e.escola_id = d.escola_id
where
    e.localizacao = 'Rural'

-- Resposta 4: Combinar as listas de disciplinas ensinadas nas escolas da área urbana e rural, mantendo todas as
-- ocorrências;
-- Fiz essa com o UNION ALL para praticar mas conseguiria fazer usando inner join
select
    d.nome_disciplina
from
    disciplinas d
inner join
    escolas e
on
    e.escola_id = d.escola_id
where
    e.localizacao = 'Urbana'
union all
select
    d.nome_disciplina
from
    disciplinas d
inner join
    escolas e
on
    e.escola_id = d.escola_id
where
    e.localizacao = 'Rural'

-- Resposta 5: Identificar as disciplinas comuns ensinadas na Escola do Vale e Escola Montanha;
select
    d.nome_disciplina
from
    disciplinas d
inner join
    escolas e
on
    e.escola_id = d.escola_id
where
    e.nome = 'Escola do Vale'
intersect
select
    d.nome_disciplina
from
    disciplinas d
inner join
    escolas e
on
    e.escola_id = d.escola_id
where
    e.nome = 'Escola Montanha';

-- Resposta 6: Determinar as disciplinas ensinadas na Escola Campo Verde, mas não na Escola Horizon;
select
    d.nome_disciplina
from
    disciplinas d
inner join
    escolas e
on
    e.escola_id = d.escola_id
where
    e.nome = 'Escola Campo Verde'
minus
select
    d.nome_disciplina
from
    disciplinas d
inner join
    escolas e
on
    e.escola_id = d.escola_id
where
    e.nome = 'Escola Horizon';