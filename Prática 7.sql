

CREATE TABLE escolas (
    escola_id NUMBER PRIMARY KEY,
    nome_escola VARCHAR2(100),
    numero_alunos NUMBER
);

CREATE TABLE rotas_urbanas (
    id NUMBER PRIMARY KEY,
    rota VARCHAR2(255)
);

CREATE TABLE rotas_rurais (
    id NUMBER PRIMARY KEY,
    rota VARCHAR2(255)
);

CREATE TABLE rotas_intermunicipais (
    id NUMBER PRIMARY KEY,
    rota VARCHAR2(255)
);

CREATE TABLE novas_rotas (
    id NUMBER PRIMARY KEY,
    rota VARCHAR2(255),
    tipo VARCHAR2(50) CHECK (tipo IN ('Urbana', 'Rural', 'Intermunicipal'))
);

CREATE TABLE parques (
  parque_id NUMBER PRIMARY KEY,
  nome_parque VARCHAR2(100),
  localizacao VARCHAR2(150),
  status_manutencao VARCHAR2(50) DEFAULT 'Bom',
  data_renovacao DATE,
  orcamento_renovacao NUMBER(10, 2)
);

CREATE TABLE renovacoes (
  parque_id NUMBER PRIMARY KEY,
  nome_parque VARCHAR2(100),
  localizacao VARCHAR2(150),
  data_renovacao DATE,
  orcamento NUMBER(10, 2)
);

INSERT INTO escolas (escola_id, nome_escola, numero_alunos) VALUES (1, 'Escola Techville Primaria', 90);
INSERT INTO escolas (escola_id, nome_escola, numero_alunos) VALUES (2, 'Instituto de Ensino Medio Central', 200);
INSERT INTO escolas (escola_id, nome_escola, numero_alunos) VALUES (3, 'Escola de Educacao Infantil Feliz', 30);
INSERT INTO escolas (escola_id, nome_escola, numero_alunos) VALUES (4, 'Academia de Ensino Superior Techville', 600);
INSERT INTO escolas (escola_id, nome_escola, numero_alunos) VALUES (5, 'Escola de Ciencias e Matematica', 550);
INSERT INTO escolas (escola_id, nome_escola, numero_alunos) VALUES (6, 'Colegio de Artes e Humanidades', 120);
INSERT INTO escolas (escola_id, nome_escola, numero_alunos) VALUES (7, 'Escola de Negocios e Comercio', 400);

INSERT INTO novas_rotas (id, rota, tipo) VALUES (1, 'Rota Urbana A', 'Urbana');
INSERT INTO novas_rotas (id, rota, tipo) VALUES (2, 'Rota Urbana B', 'Urbana');
INSERT INTO novas_rotas (id, rota, tipo) VALUES (3, 'Rota Rural C', 'Rural');
INSERT INTO novas_rotas (id, rota, tipo) VALUES (4, 'Rota Intermunicipal D', 'Intermunicipal');
INSERT INTO novas_rotas (id, rota, tipo) VALUES (5, 'Rota Urbana E', 'Urbana');
INSERT INTO novas_rotas (id, rota, tipo) VALUES (6, 'Rota Rural F', 'Rural');
INSERT INTO novas_rotas (id, rota, tipo) VALUES (7, 'Rota Urbana G', 'Urbana');
INSERT INTO novas_rotas (id, rota, tipo) VALUES (8, 'Rota Rural H', 'Rural');
INSERT INTO novas_rotas (id, rota, tipo) VALUES (9, 'Rota Intermunicipal I', 'Intermunicipal');
INSERT INTO novas_rotas (id, rota, tipo) VALUES (10, 'Rota Urbana J', 'Urbana');
INSERT INTO novas_rotas (id, rota, tipo) VALUES (11, 'Rota Rural K', 'Rural');
INSERT INTO novas_rotas (id, rota, tipo) VALUES (12, 'Rota Intermunicipal L', 'Intermunicipal');
INSERT INTO novas_rotas (id, rota, tipo) VALUES (13, 'Rota Urbana M', 'Urbana');
INSERT INTO novas_rotas (id, rota, tipo) VALUES (14, 'Rota Rural N', 'Rural');
INSERT INTO novas_rotas (id, rota, tipo) VALUES (15, 'Rota Intermunicipal O', 'Intermunicipal');

INSERT INTO parques (parque_id, nome_parque, localizacao, status_manutencao) VALUES (1, 'Parque Central', 'Centro', 'Bom');
INSERT INTO parques (parque_id, nome_parque, localizacao, status_manutencao) VALUES (2, 'Parque Rio Verde', 'Norte', 'Necessita Renovacao');
INSERT INTO parques (parque_id, nome_parque, localizacao, status_manutencao) VALUES (3, 'Parque das Flores', 'Sul', 'Excelente');
INSERT INTO parques (parque_id, nome_parque, localizacao, status_manutencao) VALUES (4, 'Parque da Colina', 'Oeste', 'Necessita Renovacao');
INSERT INTO parques (parque_id, nome_parque, localizacao, status_manutencao) VALUES (5, 'Parque da Lagoa', 'Leste', 'Bom');
INSERT INTO parques (parque_id, nome_parque, localizacao, status_manutencao) VALUES (6, 'Parque dos Sonhos', 'Norte', 'Excelente');
INSERT INTO parques (parque_id, nome_parque, localizacao, status_manutencao) VALUES (7, 'Parque do Sol', 'Sul', 'Bom');

INSERT INTO renovacoes (parque_id, nome_parque, localizacao, data_renovacao, orcamento) VALUES (2, 'Parque Rio Verde', 'Norte', TO_DATE('01-12-2023', 'DD-MM-YYYY'), 15000.00);
INSERT INTO renovacoes (parque_id, nome_parque, localizacao, data_renovacao, orcamento) VALUES (4, 'Parque da Colina', 'Oeste', TO_DATE('15-11-2023', 'DD-MM-YYYY'), 20000.00);
INSERT INTO renovacoes (parque_id, nome_parque, localizacao, data_renovacao, orcamento) VALUES (8, 'Parque das Estrelas', 'Leste', TO_DATE('05-01-2024', 'DD-MM-YYYY'), 30000.00);

COMMIT;

-- Resposta 1: A secretaria de Educação precisa distribuir recursos para as escolas com base no número de
-- alunos. Você deve classificar as escolas em categorias como 'Pequena' (menos de 100 alunos),
-- 'Media' (até 500 alunos) e 'Grande' (acima de 500 alunos), e então trazer uma coluna de alocação
-- de recursos de acordo com estas categorias, sendo que escolas pequenas receberão R$ 10000,
-- médias receberão R$ 30000 e grandes receberão 50000;
select 
    nome_escola,
    numero_alunos,
    case 
        when numero_alunos < 100 then 'Pequena'
        when numero_alunos <= 500 then 'Média'
        else 'Grande'
    end as "Categoria",
    case 
        when numero_alunos < 100 then 10000
        when numero_alunos <= 500 then 30000
        else 50000
    end as "Recursos alocados"
from 
    escolas;

-- Resposta 2: A secretaria de Transporte inseriu novas rotas de ônibus no banco de dados, na tabela
-- novas_rotas. As rotas devem ser inseridas em diferentes tabelas (rotas_urbanas, rotas_rurais e
-- rotas_intermunicipais), dependendo do tipo de rota (Urbana, Rural, Intermunicipal), para atender
-- a requisitos da legislação vigente para o transporte coletivo;
insert into rotas_urbanas (id, rota)
select id, rota
from novas_rotas
where tipo = 'Urbana';

insert into rotas_rurais (id, rota)
select id, rota
from novas_rotas
where tipo = 'Rural';

insert into rotas_intermunicipais (id, rota)
select id, rota
from novas_rotas
where tipo = 'Intermunicipal';

-- Resposta 3: A cidade de Techville está trabalhando para melhorar seus parques públicos. Alguns parques
-- estão em excelentes condições e são frequentados regularmente, enquanto outros precisam de
-- melhorias ou renovações.
-- Você deve:
-- Atualizar o status de manutenção dos parques na tabela parques para o valor 'Em renovacao' se
-- houver uma correspondência na tabela renovacoes.
-- Se houver uma renovação para um parque que não está na tabela parques, você deve inserir um
-- registro para esse parque, incluindo os detalhes da renovação.
update parques p
set status_manutencao = 'Em Renovacao'
where exists (
    select 
        1
    from 
        renovacoes r
    where 
        p.parque_id = r.parque_id
);

