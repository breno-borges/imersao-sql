CREATE TABLE filiais (
  filial_id      NUMBER PRIMARY KEY,
  nome           VARCHAR2(50),
  endereco       VARCHAR2(100),
  data_inspecao  DATE,
  telefone       VARCHAR2(15)
);

CREATE TABLE cardapio (
  prato_id     NUMBER PRIMARY KEY,
  filial_id    NUMBER,
  nome_prato   VARCHAR2(50),
  descricao    VARCHAR2(255),
  preco        NUMBER(7, 2),
  FOREIGN KEY (filial_id) REFERENCES filiais(filial_id)
);

CREATE TABLE chefs (
  chef_id        NUMBER PRIMARY KEY,
  filial_id      NUMBER,
  nome           VARCHAR2(50),
  especialidade  VARCHAR2(50),
  FOREIGN KEY (filial_id) REFERENCES filiais(filial_id)
);

CREATE TABLE reservas (
  reserva_id      NUMBER PRIMARY KEY,
  filial_id       NUMBER,
  nome_cliente    VARCHAR2(50),
  data_reserva    DATE,
  numero_pessoas  NUMBER,
  FOREIGN KEY (filial_id) REFERENCES filiais(filial_id)
);

CREATE TABLE feedback (
  feedback_id  NUMBER PRIMARY KEY,
  filial_id    NUMBER,
  nome_cliente VARCHAR2(50),
  classificacao NUMBER(3, 1),
  comentario    VARCHAR2(255),
  data_feedback DATE,
  FOREIGN KEY (filial_id) REFERENCES filiais(filial_id)
);


INSERT INTO filiais (filial_id, nome, endereco, data_inspecao, telefone) VALUES (1, 'Sabor Rio', 'Rua das Flores, 123, Rio de Janeiro', TO_DATE('2022-05-10', 'YYYY-MM-DD'), '(21) 1234-5678');
INSERT INTO filiais (filial_id, nome, endereco, data_inspecao, telefone) VALUES (2, 'Sabor Sao Paulo', 'Avenida Paulista, 456, Sao Paulo', TO_DATE('2022-03-15', 'YYYY-MM-DD'), '(11) 9876-5432');
INSERT INTO filiais (filial_id, nome, endereco, data_inspecao, telefone) VALUES (3, 'Sabor Recife', 'Praca da Liberdade, 789, Recife', TO_DATE('2021-12-20', 'YYYY-MM-DD'), '(81) 2345-6789');
INSERT INTO filiais (filial_id, nome, endereco, data_inspecao, telefone) VALUES (4, 'Sabor Porto Alegre', 'Rua da Praia, 321, Porto Alegre', TO_DATE('2022-01-30', 'YYYY-MM-DD'), '(51) 8765-4321');
INSERT INTO filiais (filial_id, nome, endereco, data_inspecao, telefone) VALUES (5, 'Sabor Salvador', 'Avenida Bahia, 654, Salvador', TO_DATE('2022-02-25', 'YYYY-MM-DD'), '(71) 3456-7890');

INSERT INTO cardapio (prato_id, filial_id, nome_prato, descricao, preco) VALUES (1, 1, 'Feijoada Carioca', 'Feijoada completa com acompanhamentos', 35.90);
INSERT INTO cardapio (prato_id, filial_id, nome_prato, descricao, preco) VALUES (2, 2, 'Virado a Paulista', 'Virado a base de feijao, arroz e carne seca', 28.50);
INSERT INTO cardapio (prato_id, filial_id, nome_prato, descricao, preco) VALUES (3, 3, 'Moqueca de Peixe', 'Moqueca tradicional com peixe fresco', 42.00);
INSERT INTO cardapio (prato_id, filial_id, nome_prato, descricao, preco) VALUES (4, 4, 'Churrasco Gaucho', 'Churrasco com cortes selecionados', 48.75);
INSERT INTO cardapio (prato_id, filial_id, nome_prato, descricao, preco) VALUES (5, 5, 'Acaraje Baiano', 'Acaraje tradicional com vatapa e camarao', 18.30);
INSERT INTO cardapio (prato_id, filial_id, nome_prato, descricao, preco) VALUES (6, 1, 'Caipirinha', 'Bebida tradicional brasileira', 10.00);
INSERT INTO cardapio (prato_id, filial_id, nome_prato, descricao, preco) VALUES (7, 2, 'Coxinha de Frango', 'Salgado de frango e massa crocante', 4.50);
INSERT INTO cardapio (prato_id, filial_id, nome_prato, descricao, preco) VALUES (8, 3, 'Bolo de Rolo', 'Bolo de rolo com goiabada', 12.00);
INSERT INTO cardapio (prato_id, filial_id, nome_prato, descricao, preco) VALUES (9, 4, 'Chimarrao', 'Bebida tradicional do Rio Grande do Sul', 6.00);
INSERT INTO cardapio (prato_id, filial_id, nome_prato, descricao, preco) VALUES (10, 5, 'Bobo de Camarao', 'Bobo de camarao cremoso e saboroso', 33.00);

INSERT INTO chefs (chef_id, nome, filial_id, especialidade) VALUES (1, 'Joao Silva', 1, 'Brasileira');
INSERT INTO chefs (chef_id, nome, filial_id, especialidade) VALUES (2, 'Maria Oliveira', 2, 'Italiana');
INSERT INTO chefs (chef_id, nome, filial_id, especialidade) VALUES (3, 'Roberto Santos', 3, 'Francesa');
INSERT INTO chefs (chef_id, nome, filial_id, especialidade) VALUES (4, 'Lucia Costa', 4, NULL);
INSERT INTO chefs (chef_id, nome, filial_id, especialidade) VALUES (5, 'Carlos Pereira', 5, 'Japonesa');
INSERT INTO chefs (chef_id, nome, filial_id, especialidade) VALUES (6, 'Juliana Moraes', 1, NULL);
INSERT INTO chefs (chef_id, nome, filial_id, especialidade) VALUES (7, 'Pedro Alves', 2, 'Mexicana');

INSERT INTO reservas (reserva_id, filial_id, nome_cliente, data_reserva, numero_pessoas) VALUES (1, 1, 'Fernanda Lima', TO_DATE('2024-02-20', 'YYYY-MM-DD'), 4);
INSERT INTO reservas (reserva_id, filial_id, nome_cliente, data_reserva, numero_pessoas) VALUES (2, 2, 'Ricardo Soares', TO_DATE('2024-03-10', 'YYYY-MM-DD'), 2);
INSERT INTO reservas (reserva_id, filial_id, nome_cliente, data_reserva, numero_pessoas) VALUES (3, 3, 'Juliana Almeida', TO_DATE('2024-02-15', 'YYYY-MM-DD'), 5);
INSERT INTO reservas (reserva_id, filial_id, nome_cliente, data_reserva, numero_pessoas) VALUES (4, 4, 'Bruno Castro', TO_DATE('2024-02-18', 'YYYY-MM-DD'), 3);
INSERT INTO reservas (reserva_id, filial_id, nome_cliente, data_reserva, numero_pessoas) VALUES (5, 5, 'Luisa Pereira', TO_DATE('2024-02-25', 'YYYY-MM-DD'), 6);
INSERT INTO reservas (reserva_id, filial_id, nome_cliente, data_reserva, numero_pessoas) VALUES (6, 1, 'Gabriel Silva', TO_DATE('2024-03-05', 'YYYY-MM-DD'), 2);
INSERT INTO reservas (reserva_id, filial_id, nome_cliente, data_reserva, numero_pessoas) VALUES (7, 3, 'Marcela Costa', TO_DATE('2024-02-29', 'YYYY-MM-DD'), 4);
INSERT INTO reservas (reserva_id, filial_id, nome_cliente, data_reserva, numero_pessoas) VALUES (8, 2, 'Rodrigo Oliveira', TO_DATE('2024-03-12', 'YYYY-MM-DD'), 3);
INSERT INTO reservas (reserva_id, filial_id, nome_cliente, data_reserva, numero_pessoas) VALUES (9, 4, 'Camila Santos', TO_DATE('2024-03-01', 'YYYY-MM-DD'), 1);
INSERT INTO reservas (reserva_id, filial_id, nome_cliente, data_reserva, numero_pessoas) VALUES (10, 5, 'Thiago Ribeiro', TO_DATE('2024-02-22', 'YYYY-MM-DD'), 2);

BEGIN
  FOR i IN 1..5 LOOP
    FOR j IN 1..10 LOOP
      INSERT INTO feedback (feedback_id, filial_id, nome_cliente, comentario, classificacao)
      VALUES (10 * (i - 1) + j, i, 'Cliente ' || (10 * (i - 1) + j), 'Comentario ' || (10 * (i - 1) + j), TRUNC(DBMS_RANDOM.VALUE(1, 6)));
    END LOOP;
  END LOOP;
END;
/

COMMIT;

-- Resposta 1: Devido a um erro do sistema, uma reserva não pode ser cadastrada no sistema, e você deve fazer
-- a entrada manualmente. Os dados da reserva são:
-- Filial: Sabor São Paulo
-- Cliente: Jose das Dores
-- Data da reserva: a próxima sexta feira após o dia 12/02/24
-- Número de pessoas: 2
insert into reservas (reserva_id, filial_id, nome_cliente, data_reserva, numero_pessoas) 
values (11, 2, 'Jose das Dores', (select next_day(to_date('2024-02-12', 'YYYY-MM-DD'), 'SEXTA') from dual), 2);
commit;

-- Resposta 2: Devido a outro erro do sistema, parece que alguns chefs foram cadastrados com valores nulos no
-- campo de especialidade. Faça um query que realize a contagem de quantos valores nulos existem
-- na coluna especialidade da tabela chefs. Depois atualize esses registros para 'Brasileira';
select 
    count(*) as "Quantidade de chefes sem especialidade" 
from 
    chefs c
where
    c.especialidade is null;

update
    chefs c
set
    c.especialidade = 'Brasileira'
where
    c.especialidade is null;
    
commit;

-- Resposta 3: A gerência pediu um relatório de quantas reservas existem por mês no banco. Gere a consulta
-- que traz os dados pedidos;
select 
    extract(month from r.data_reserva) as "Mes",
    extract(year from r.data_reserva) as "Ano",
    count(*) as "Total de Reservas"
from 
    reservas r
group by 
    extract(month from r.data_reserva),
    extract(year from r.data_reserva)  
order by
    1 asc,
    2 asc;


-- Resposta 4: Devido a um problema no encanamento na filial Sabor Recife, todas as reservas para o mês de
-- fevereiro foram passadas para o mês seguinte. Atualize o banco de dados para que as datas das
-- reservas sejam atualizadas em um mês;
update
    reservas r
set
    r.data_reserva = add_months(r.data_reserva, 1)
where
    r.filial_id = 3;

commit;

-- Resposta 5: Todas as filiais do restaurante estão abrindo uma nova frente de vendas via aplicativo. Para o
-- cadastro do prato, entretanto, o tamanho máximo do texto para a miniatura deve ser de 25
-- caracteres. Faça uma consulta SQL que retorne o nome do prato e a descrição, limitando a 25 o
-- tamanho do texto, e que os últimos três caracteres sejam substituídos por "...". Exemplo: "NOME
-- DO PRATO: Esta é ...";
select 
    'O nome do prato é: ' || 
    c.nome_prato as "Nome do Prato",
    substr(c.descricao, 1, 25) as "Descricao"
from 
    cardapio c

