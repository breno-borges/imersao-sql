-- Tabela de Livros
CREATE TABLE Livros (
    LivroID NUMBER,
    Titulo VARCHAR2(50),
    Autor VARCHAR2(50),
    Genero VARCHAR2(50),
    DataPublicacao DATE
);


INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (1, 'Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Fantasia', TO_DATE('1997-06-26', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (2, '1984', 'George Orwell', 'Distopia', TO_DATE('1949-06-08', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (3, 'O Hobbit', 'J.R.R. Tolkien', 'Fantasia', TO_DATE('1937-09-21', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (4, 'Assassinato no Expresso do Oriente', 'Agatha Christie', 'Misterio', TO_DATE('1934-01-01', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (5, 'As Aventuras de Tom Sawyer', 'Mark Twain', 'Aventura', TO_DATE('1876-06-16', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (6, 'Orgulho e Preconceito', 'Jane Austen', 'Romance', TO_DATE('1813-01-28', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (7, 'O Grande Gatsby', 'F. Scott Fitzgerald', 'Romance', TO_DATE('1925-04-10', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (8, 'O Velho e o Mar', 'Ernest Hemingway', 'Ficcao', TO_DATE('1952-09-01', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (9, 'O Iluminado', 'Stephen King', 'Terror', TO_DATE('1977-01-28', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (10, 'Frankenstein', 'Mary Shelley', 'Gotico', TO_DATE('1818-01-01', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (11, 'A Dança da Morte', 'Stephen King', 'Pos-Apocaliptico', TO_DATE('1978-10-03', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (12, 'Um Conto de Duas Cidades', 'Mark Twain', 'Historico', TO_DATE('1859-04-30', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (13, 'Emma', 'Jane Austen', 'Romance', TO_DATE('1815-12-23', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (14, 'O Sol Tambem Se Levanta', 'Ernest Hemingway', 'Romance', TO_DATE('1926-10-22', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (15, 'Harry Potter e a Câmara Secreta', 'J.K. Rowling', 'Fantasia', TO_DATE('1998-07-02', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (16, 'A Coisa', 'Stephen King', 'Terror', TO_DATE('1986-09-15', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (17, 'A Revolução dos Bichos', 'George Orwell', 'Politico', TO_DATE('1945-08-17', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (18, 'O Apanhador no Campo de Centeio', 'F. Scott Fitzgerald', 'Romance', TO_DATE('1951-07-16', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (19, 'Moby Dick', 'Mark Twain', 'Aventura', TO_DATE('1851-10-18', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (20, 'O Silmarillion', 'J.R.R. Tolkien', 'Fantasia', TO_DATE('1977-09-15', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (21, 'Harry Potter e o Prisioneiro de Azkaban', NULL, 'Fantasia', TO_DATE('1999-07-08', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (22, 'O Senhor dos Aneis: A Sociedade do Anel', NULL, 'Fantasia', TO_DATE('1954-07-29', 'YYYY-MM-DD'));
INSERT INTO Livros (LivroID, Titulo, Autor, Genero, DataPublicacao) VALUES (23, 'Desespero', NULL, 'Terror', TO_DATE('1996-09-01', 'YYYY-MM-DD'));
COMMIT;


-- Resposta 1: A biblioteca quer descobrir os gêneros mais populares para promover os livros corretos. Liste os
-- gêneros e a quantidade contida em cada gênero, limitando a pesquisa aos cinco gêneros com
-- mais livros na biblioteca. A coluna que contém a número de livros no gênero deve ser mostrada
-- como "Quantidade ";
select 
    l.genero, 
    count(*) as "Quantidade"
from
    livros l
group by
    l.genero
order by 2 desc
fetch first 5 rows only;

-- Resposta 2: Acontecerá na cidade um evento temático para as décadas de 70, 80 e 90. A biblioteca irá
-- participar levando exemplares do seu acervo que foram publicados nestas décadas. Liste o título,
-- o autor e a data de publicação de todos os livros publicados entre as décadas de 1970 e 1990,
-- ordenando do mais antigo para o mais novo. Traga a coluna do nome do livro como "Nome do
-- Livro" e a coluna de data de publicação como "Data de Publicacao". Ignore os livros onde o Autor
-- é nulo;
select
    l.titulo as "Nome do Livro",
    l.datapublicacao as "Data de Publicacao"
from
    livros l
where
    l.autor is not null and
    l.datapublicacao between TO_DATE('1971-01-01', 'YYYY-MM-DD') and TO_DATE('2000-12-31', 'YYYY-MM-DD')
order by
    l.datapublicacao asc;

-- Resposta 3: Houve uma determinação do Governo do Estado que todos os livros publicados antes de 1900
-- devem ser enviados para a capital, onde farão parte de um acervo histórico. A biblioteca enviou
-- os livros, e os mesmos devem ser removidos do acervo da biblioteca;
select 
    l.* 
from livros l
where l.datapublicacao < TO_DATE('1900-01-01', 'YYYY-MM-DD');

delete  
from 
    livros 
where
    datapublicacao < TO_DATE('1900-01-01', 'YYYY-MM-DD');
    
commit;

-- Resposta 4: A biblioteca deseja saber a quantidade de livros por gênero, bem como o livro mais antigo e mais
-- novo de cada um deles. Os dados devem ser retornados em uma única consulta. Retorne a coluna
-- de quantidade como "Quantidade", mais antigo como "Mais Antigo" e mais novo como "Mais
-- Novo";
select
    l.genero,
    count(*) as "Quantidade",
    (select titulo 
     from livros 
     where genero = l.genero and datapublicacao = (
         select min(datapublicacao) 
         from livros 
         where genero = l.genero
     ) and rownum = 1) as "Titulo Mais Antigo",
    (select titulo 
     from livros 
     where genero = l.genero and datapublicacao = (
         select max(datapublicacao) 
         from livros 
         where genero = l.genero
     ) and rownum = 1) as "Titulo Mais Novo"
from
    livros l
group by
    l.genero
order by
    "Quantidade" desc;

-- Correção da 4
select
    l.genero,
    count(*) as "Quantidade",
    min(l.datapublicacao) as "Mais Antigo",
    max(datapublicacao) as "Mais Novo"
from
    livros l
group by
    l.genero
order by 1;

-- Resposta 5: A biblioteca recebeu uma nova coleção de livros: Faça a inserção dos registros, usando os IDs 24, 25, 26 e 27 respectivamente. Atente para o fato de que os livros devem ser
inseridos em categorias já existentes;
insert into livros (livroID, titulo, autor, genero, datapublicacao)
values (24, 'Os Olhos do Dragão', 'Stephen King', 'Fantasia', TO_DATE('1984-01-01', 'YYYY-MM-DD'));

insert into livros (livroID, titulo, autor, genero, datapublicacao)
values (25, 'A História Sem Fim', 'Michael Ende', 'Fantasia', TO_DATE('1979-09-01', 'YYYY-MM-DD'));

insert into livros (livroID, titulo, autor, genero, datapublicacao)
values (26, 'O Nome do Vento', 'Patrick Rothfuss', 'Fantasia', TO_DATE('2007-03-27', 'YYYY-MM-DD'));

insert into livros (livroID, titulo, autor, genero, datapublicacao)
values (27, 'O Guia do Mochileiro das Galáxias', 'Douglas Adams', 'Ficcao', TO_DATE('1979-10-12', 'YYYY-MM-DD'));
commit;