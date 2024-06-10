
CREATE TABLE CLIENTE (
    codcliente NUMBER PRIMARY KEY,
    nome VARCHAR2(100),
    datanascimento DATE,
    cpf VARCHAR2(11)
);

CREATE TABLE PRODUTO (
    codproduto NUMBER PRIMARY KEY,
    descricao VARCHAR2(255),
    valorunitario NUMBER
);

CREATE TABLE PEDIDO (
    codpedido NUMBER PRIMARY KEY,
    codproduto NUMBER,
    quantidade NUMBER,
    codcliente NUMBER,
    datapedido DATE,
    FOREIGN KEY (codproduto) REFERENCES PRODUTO(codproduto),
    FOREIGN KEY (codcliente) REFERENCES CLIENTE(codcliente)
);


INSERT INTO CLIENTE (codcliente, nome, datanascimento, cpf) VALUES (1, 'João Silva', TO_DATE('1990-01-15', 'YYYY-MM-DD'), '12345678901');
INSERT INTO CLIENTE (codcliente, nome, datanascimento, cpf) VALUES (2, 'Maria Souza', TO_DATE('1995-06-22', 'YYYY-MM-DD'), '23456789012');
INSERT INTO CLIENTE (codcliente, nome, datanascimento, cpf) VALUES (3, 'Ana Pereira', TO_DATE('2009-12-24', 'YYYY-MM-DD'), '34567890123'); -- 17 anos
INSERT INTO CLIENTE (codcliente, nome, datanascimento, cpf) VALUES (4, 'Pedro Costa', TO_DATE('2008-12-24', 'YYYY-MM-DD'), '45678901234'); -- 16 anos
INSERT INTO CLIENTE (codcliente, nome, datanascimento, cpf) VALUES (5, 'Lucas Almeida', TO_DATE('1974-06-13', 'YYYY-MM-DD'), '56789012345');
INSERT INTO CLIENTE (codcliente, nome, datanascimento, cpf) VALUES (6, 'Fernanda Costa', TO_DATE('1980-07-11', 'YYYY-MM-DD'), '67890123456');
INSERT INTO CLIENTE (codcliente, nome, datanascimento, cpf) VALUES (7, 'Rafael Sousa', TO_DATE('1980-09-21', 'YYYY-MM-DD'), '78901234567');
INSERT INTO CLIENTE (codcliente, nome, datanascimento, cpf) VALUES (8, 'Patrícia Lima', TO_DATE('1974-11-14', 'YYYY-MM-DD'), '89012345678');
INSERT INTO CLIENTE (codcliente, nome, datanascimento, cpf) VALUES (9, 'Bruno Oliveira', TO_DATE('1989-08-20', 'YYYY-MM-DD'), '90123456789');
INSERT INTO CLIENTE (codcliente, nome, datanascimento, cpf) VALUES (10, 'Juliana Martins', TO_DATE('1972-08-03', 'YYYY-MM-DD'), '01234567890');
INSERT INTO CLIENTE (codcliente, nome, datanascimento, cpf) VALUES (11, 'Eduardo Rocha', TO_DATE('2004-01-10', 'YYYY-MM-DD'), '12345678901');
INSERT INTO CLIENTE (codcliente, nome, datanascimento, cpf) VALUES (12, 'Carla Silva', TO_DATE('1995-05-06', 'YYYY-MM-DD'), '23456789012');
INSERT INTO CLIENTE (codcliente, nome, datanascimento, cpf) VALUES (13, 'Marcos Ribeiro', TO_DATE('1994-10-22', 'YYYY-MM-DD'), '34567890123');
INSERT INTO CLIENTE (codcliente, nome, datanascimento, cpf) VALUES (14, 'Aline Ferreira', TO_DATE('2005-03-05', 'YYYY-MM-DD'), '45678901234');

INSERT INTO PRODUTO (codproduto, descricao, valorunitario) VALUES (1, 'Aurora Gadget', 175.27);
INSERT INTO PRODUTO (codproduto, descricao, valorunitario) VALUES (2, 'Crystal Widget', 288.03);
INSERT INTO PRODUTO (codproduto, descricao, valorunitario) VALUES (3, 'Orbit Gear', 393.89);
INSERT INTO PRODUTO (codproduto, descricao, valorunitario) VALUES (4, 'Nebula Device', 366.16);
INSERT INTO PRODUTO (codproduto, descricao, valorunitario) VALUES (5, 'Quantum Accessory', 662.22);
INSERT INTO PRODUTO (codproduto, descricao, valorunitario) VALUES (6, 'Galaxy Tool', 437.5);
INSERT INTO PRODUTO (codproduto, descricao, valorunitario) VALUES (7, 'Zephyr Instrument', 322.03);
INSERT INTO PRODUTO (codproduto, descricao, valorunitario) VALUES (8, 'Echo Mechanism', 446.17);
INSERT INTO PRODUTO (codproduto, descricao, valorunitario) VALUES (9, 'Terra Equipment', 146.11);
INSERT INTO PRODUTO (codproduto, descricao, valorunitario) VALUES (10, 'Solar Apparatus', 358.65);
INSERT INTO PRODUTO (codproduto, descricao, valorunitario) VALUES (11, 'Nova Implement', 657.09);
INSERT INTO PRODUTO (codproduto, descricao, valorunitario) VALUES (12, 'Cosmo Utensil', 335.31);
INSERT INTO PRODUTO (codproduto, descricao, valorunitario) VALUES (13, 'Vortex Component', 970.95);
INSERT INTO PRODUTO (codproduto, descricao, valorunitario) VALUES (14, 'Meteor Machine', 532.42);
INSERT INTO PRODUTO (codproduto, descricao, valorunitario) VALUES (15, 'Aether Contraption', 23.19);

INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (1, 15, 2, 14, TO_DATE('2023-09-20','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (2, 6, 2, 3, TO_DATE('2023-04-08','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (3, 5, 2, 5, TO_DATE('2023-04-06','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (4, 7, 1, 14, TO_DATE('2023-07-19','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (5, 7, 1, 11, TO_DATE('2023-03-19','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (6, 1, 2, 13, TO_DATE('2023-08-10','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (7, 7, 1, 5, TO_DATE('2023-11-04','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (8, 9, 3, 3, TO_DATE('2023-08-24','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (9, 4, 1, 2, TO_DATE('2023-05-15','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (10, 6, 2, 2, TO_DATE('2023-01-10','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (11, 8, 3, 13, TO_DATE('2023-02-15','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (12, 2, 3, 13, TO_DATE('2023-04-29','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (13, 6, 3, 14, TO_DATE('2023-07-06','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (14, 2, 3, 13, TO_DATE('2023-10-16','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (15, 11, 3, 6, TO_DATE('2023-06-24','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (16, 3, 3, 11, TO_DATE('2023-03-25','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (17, 8, 2, 13, TO_DATE('2023-10-16','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (18, 6, 1, 7, TO_DATE('2023-06-05','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (19, 10, 1, 13, TO_DATE('2023-05-03','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (20, 11, 2, 1, TO_DATE('2023-10-21','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (21, 3, 3, 8, TO_DATE('2023-04-25','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (22, 12, 1, 10, TO_DATE('2023-09-14','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (23, 14, 1, 13, TO_DATE('2023-06-22','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (24, 7, 2, 13, TO_DATE('2023-12-22','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (25, 4, 2, 7, TO_DATE('2023-02-22','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (26, 5, 1, 3, TO_DATE('2023-07-07','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (27, 7, 1, 3, TO_DATE('2023-06-05','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (28, 4, 3, 8, TO_DATE('2023-01-27','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (29, 4, 1, 3, TO_DATE('2023-11-09','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (30, 3, 3, 12, TO_DATE('2023-09-01','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (31, 11, 2, 6, TO_DATE('2023-03-11','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (32, 9, 3, 12, TO_DATE('2023-08-16','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (33, 2, 3, 1, TO_DATE('2023-11-24','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (34, 9, 3, 1, TO_DATE('2023-08-03','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (35, 7, 2, 1, TO_DATE('2023-02-25','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (36, 14, 1, 5, TO_DATE('2023-10-10','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (37, 8, 3, 4, TO_DATE('2023-12-14','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (38, 15, 2, 6, TO_DATE('2023-04-03','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (39, 2, 2, 7, TO_DATE('2023-12-20','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (40, 8, 2, 14, TO_DATE('2023-09-20','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (41, 3, 1, 5, TO_DATE('2023-09-24','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (42, 1, 1, 12, TO_DATE('2023-08-03','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (43, 7, 2, 8, TO_DATE('2023-02-24','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (44, 5, 2, 14, TO_DATE('2023-07-09','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (45, 14, 1, 6, TO_DATE('2023-10-13','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (46, 10, 2, 2, TO_DATE('2023-01-26','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (47, 9, 3, 7, TO_DATE('2023-05-23','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (48, 10, 1, 2, TO_DATE('2023-11-08','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (49, 8, 2, 13, TO_DATE('2023-05-29','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (50, 15, 3, 2, TO_DATE('2023-06-12','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (51, 12, 1, 5, TO_DATE('2023-06-07','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (52, 3, 1, 4, TO_DATE('2023-07-03','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (53, 1, 3, 14, TO_DATE('2023-01-02','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (54, 2, 1, 2, TO_DATE('2023-07-16','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (55, 5, 3, 1, TO_DATE('2023-05-29','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (56, 1, 2, 14, TO_DATE('2023-02-13','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (57, 6, 2, 2, TO_DATE('2023-07-07','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (58, 8, 2, 6, TO_DATE('2023-02-18','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (59, 13, 2, 11, TO_DATE('2023-11-02','YYYY-MM-DD'));
INSERT INTO PEDIDO (codpedido, codproduto, quantidade, codcliente, datapedido) VALUES (60, 10, 3, 8, TO_DATE('2023-10-20','YYYY-MM-DD'));

commit;



-- Resposta 1: Crie uma view que traga nome e idade dos clientes maiores de 18 anos;
create view maiores_de_idade as
select 
    nome,
    trunc(months_between(sysdate, datanascimento) / 12) as idade
from 
    cliente
where 
    trunc(months_between(sysdate, datanascimento) / 12) > 18;

-- Resposta 2: Crie uma view que traga clientes que não compram há mais de um mês;
create view sem_compra as
select 
    c.codcliente,
    c.nome
from 
    cliente c
left join 
    pedido p 
on 
    c.codcliente = p.codcliente
group by 
    c.codcliente, 
    c.nome
having 
    max(p.datapedido) < add_months(sysdate, -1) or 
    max(p.datapedido) is null;

-- Resposta 3: Crie uma view que traga os 5 clientes que trouxeram mais faturamento;
create view clientes_trouxeram_faturamento as
select 
    c.codcliente,
    c.nome,
    nvl(sum(p.quantidade * pr.valorunitario), 0) as "Faturamento Total"
from 
    cliente c
left join 
    pedido p 
on 
    c.codcliente = p.codcliente
left join 
    produto pr 
on 
    p.codproduto = pr.codproduto
group by 
    c.codcliente, c.nome
order by 
    3 desc
fetch first 5 rows only;

-- Resposta 4: Crie uma sequência SEQ_01 que inicie em 100 e incremente de 2 em 2 números, sem valor
-- máximo e sem cache;
create sequence seq_01
start with 100
increment by 2
nomaxvalue
nocache;

-- Resposta 5: Crie uma tabela chamada Estoque, que contenha as colunas ID (chave primária), descrição e
-- quantidade. Atribua o próximo valor da sequência SEQ_01 como valor padrão para a coluna ID;
create table estoque (
    idestoque number,
    descricao varchar2(50),
    quantidade number,
    constraint pk_idestoque primary key(idestoque)
);

-- Com um usuário que não seja o SYS
create trigger trigger_estoqueid
before insert on estoque
for each row
begin
     select seq_01.nextval into :new.idestoque from dual;
end;

-- Resposta 6: Crie um sinônimo público "pubest" para a tabela Estoque;
create public synonym pubest for estoque;