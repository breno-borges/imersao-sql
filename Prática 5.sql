DROP TABLE Categorias CASCADE CONSTRAINTS;
DROP TABLE Produtos CASCADE CONSTRAINTS;
DROP TABLE Clientes CASCADE CONSTRAINTS;
DROP TABLE Vendedores CASCADE CONSTRAINTS;
DROP TABLE Vendas CASCADE CONSTRAINTS;
DROP TABLE FaixasDePreco CASCADE CONSTRAINTS;

CREATE TABLE Categorias (
    CategoriaID NUMBER PRIMARY KEY,
    Nome VARCHAR2(100) NOT NULL,
    Descricao VARCHAR2(255)
);

CREATE TABLE Produtos (
    ProdutoID NUMBER PRIMARY KEY,
    Nome VARCHAR2(100) NOT NULL,
    Preco NUMBER(10, 2) NOT NULL,
    CategoriaID NUMBER,
    CONSTRAINT fk_produtos_categorias FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);

CREATE TABLE Clientes (
    ClienteID NUMBER PRIMARY KEY,
    Nome VARCHAR2(100) NOT NULL,
    Email VARCHAR2(100)
);

CREATE TABLE Vendedores (
    VendedoresID NUMBER PRIMARY KEY,
    Nome VARCHAR2(100) NOT NULL,
    Salario NUMBER(10, 2)
);

CREATE TABLE Vendas (
    VendaID NUMBER PRIMARY KEY,
    ProdutoID NUMBER NOT NULL,
    ClienteID NUMBER NOT NULL,
    VendedoresID NUMBER,
    DataVenda DATE NOT NULL,
    Quantidade NUMBER NOT NULL,
    CONSTRAINT fk_vendas_produtos FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID),
    CONSTRAINT fk_vendas_clientes FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    CONSTRAINT fk_vendas_vendedores FOREIGN KEY (VendedoresID) REFERENCES Vendedores(VendedoresID)
);

CREATE TABLE FaixasDePreco (
    FaixaID NUMBER PRIMARY KEY,
    Descricao VARCHAR2(100) NOT NULL,
    PrecoMinimo NUMBER(10, 2),
    PrecoMaximo NUMBER(10, 2)
);


INSERT INTO Categorias (CategoriaID, Nome, Descricao) VALUES (1, 'Computadores', 'Desktops, laptops e acessorios');
INSERT INTO Categorias (CategoriaID, Nome, Descricao) VALUES (2, 'Smartphones', 'Telefones celulares inteligentes e acessorios');
INSERT INTO Categorias (CategoriaID, Nome, Descricao) VALUES (3, 'Audio e Video', 'Equipamentos de audio e video, incluindo alto-falantes, fones de ouvido e TVs');
INSERT INTO Categorias (CategoriaID, Nome, Descricao) VALUES (4, 'Jogos', 'Consoles de jogos e acessorios');
INSERT INTO Categorias (CategoriaID, Nome, Descricao) VALUES (5, 'Redes', 'Equipamentos de rede, como roteadores, modems e switches');
INSERT INTO Categorias (CategoriaID, Nome, Descricao) VALUES (6, 'Software', 'Software variado, incluindo sistemas operacionais e aplicativos');
INSERT INTO Categorias (CategoriaID, Nome, Descricao) VALUES (7, 'Hardware', 'Componentes internos e externos para computadores e outros dispositivos');
INSERT INTO Categorias (CategoriaID, Nome, Descricao) VALUES (8, 'Fotografia', 'Cameras, lentes e acessorios de fotografia');
INSERT INTO Categorias (CategoriaID, Nome, Descricao) VALUES (9, 'Drones', 'Drones e acessorios relacionados');
INSERT INTO Categorias (CategoriaID, Nome, Descricao) VALUES (10, 'Wearables', 'Dispositivos vestiveis como smartwatches e bandas de fitness');

INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (1,'Dell XPS 13', 1200.00, 1);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (2,'MacBook Pro 16', 2400.00, 1);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (3,'Lenovo ThinkPad X1 Carbon', 1500.00, 1);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (4,'HP Spectre x360', 1300.00, 1);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (5,'Asus ZenBook 14', 1100.00, 1);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (6,'iPhone 12 Pro', 999.00, 2);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (7,'Samsung Galaxy S21', 800.00, 2);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (8,'Google Pixel 5', 700.00, 2);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (9,'OnePlus 9', 729.00, 2);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (10,'Xiaomi Mi 11', 650.00, 2);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (11,'Sony WH-1000XM4', 350.00, 3);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (12,'Bose QuietComfort 35 II', 299.00, 3);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (13,'JBL Flip 5', 119.95, 3);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (14,'Apple AirPods Pro', 249.00, 3);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (15,'Sonos One', 199.00, 3);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (16,'PlayStation 5', 499.99, 4);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (17,'Xbox Series X', 499.99, 4);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (18,'Nintendo Switch', 299.99, 4);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (19,'Oculus Quest 2', 299.00, 4);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (20,'Razer DeathAdder V2', 69.99, 4);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (21,'Netgear Nighthawk AX12', 400.00, 5);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (22,'TP-Link Archer AX6000', 350.00, 5);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (23,'Asus RT-AX88U', 300.00, 5);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (24,'Google Nest Wifi', 169.00, 5);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (25,'Ubiquiti UniFi Dream Machine', 299.00, 5);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (26,'Microsoft Office 365', 99.99, 6);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (27,'Adobe Photoshop CC', 239.88, 6);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (28,'Windows 10 Pro', 199.99, 6);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (29,'Final Cut Pro X', 299.99, 6);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (30,'AutoCAD', 1690.00, 6);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (31,'NVIDIA GeForce RTX 3080', 699.99, 7);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (32,'AMD Ryzen 9 5900X', 549.00, 7);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (33,'Samsung 970 EVO Plus SSD 1TB', 199.99, 7);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (34,'Corsair Vengeance LPX 16GB', 79.99, 7);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (35,'Asus ROG Strix Z490-E Gaming Motherboard', 299.99, 7);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (36,'Canon EOS R5', 3899.00, 8);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (37,'Nikon D850', 2996.95, 8);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (38,'Sony Alpha A7 III', 1998.00, 8);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (39,'Fujifilm X-T4', 1699.00, 8);
INSERT INTO Produtos (ProdutoID, Nome, Preco, CategoriaID) VALUES (40,'Panasonic Lumix GH5', 1397.99, 8);

INSERT INTO FaixasDePreco (FaixaID, Descricao, PrecoMinimo, PrecoMaximo) VALUES (1, '0 a 500', 0.00, 500.00);
INSERT INTO FaixasDePreco (FaixaID, Descricao, PrecoMinimo, PrecoMaximo) VALUES (2, '501 a 1000', 501.00, 1000.00);
INSERT INTO FaixasDePreco (FaixaID, Descricao, PrecoMinimo, PrecoMaximo) VALUES (3, '1001 a 1500', 1001.00, 1500.00);
INSERT INTO FaixasDePreco (FaixaID, Descricao, PrecoMinimo, PrecoMaximo) VALUES (4, '1501 a 2000', 1501.00, 2000.00);
INSERT INTO FaixasDePreco (FaixaID, Descricao, PrecoMinimo, PrecoMaximo) VALUES (5, '2001 a 2500', 2001.00, 2500.00);
INSERT INTO FaixasDePreco (FaixaID, Descricao, PrecoMinimo, PrecoMaximo) VALUES (6, '2501 a 3000', 2501.00, 3000.00);
INSERT INTO FaixasDePreco (FaixaID, Descricao, PrecoMinimo, PrecoMaximo) VALUES (7, '3001 a 3500', 3001.00, 3500.00);
INSERT INTO FaixasDePreco (FaixaID, Descricao, PrecoMinimo, PrecoMaximo) VALUES (8, '3501 a 4000', 3501.00, 4000.00);

INSERT INTO Vendedores (VendedoresID, Nome, Salario) VALUES (1, 'Amanda da Cunha', 6490);
INSERT INTO Vendedores (VendedoresID, Nome, Salario) VALUES (2, 'Joao Miguel Ramos', 6619);
INSERT INTO Vendedores (VendedoresID, Nome, Salario) VALUES (3, 'Catarina Moraes', 6781);
INSERT INTO Vendedores (VendedoresID, Nome, Salario) VALUES (4, 'Mirella Santos', 7380);
INSERT INTO Vendedores (VendedoresID, Nome, Salario) VALUES (5, 'Gabriela Souza', 3291);
INSERT INTO Vendedores (VendedoresID, Nome, Salario) VALUES (6, 'Bryan Porto', 4387);
INSERT INTO Vendedores (VendedoresID, Nome, Salario) VALUES (7, 'Matheus Ribeiro', 5174);
INSERT INTO Vendedores (VendedoresID, Nome, Salario) VALUES (8, 'Thomas Martins', 5655);

INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (1, 'Henrique da Cruz', 'h.cruz@outlook.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (2, 'Murilo Silveira', 'm.veira@yahoo.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (3, 'Ana Beatriz Costela', 'a.stela@bol.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (4, 'Heitor Peixoto', 'h.ixoto@bol.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (5, 'Joana Silva', 'j.silva@gmail.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (6, 'Luiz Miguel Souza', 's.souza@outlook.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (7, 'Maysa Almeida', 'm.meida@yahoo.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (8, 'Stephany Nunes', 's.nunes@outlook.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (9, 'Stella Souza', 's.souza@outlook.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (10, 'Ana Laura Campos', 'a.ampos@gmail.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (11, 'Lavinia Barbosa', 's.rbosa@yahoo.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (12, 'Nathan da Cunha', 's.cunha@hotmail.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (13, 'Juliana Ramos', 'j.ramos@gmail.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (14, 'Sophia Barros', 's.arros@hotmail.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (15, 'Joao Gabriel Novaes', 'j.ovaes@hotmail.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (16, 'Emanuel Carvalho', 'e.valho@hotmail.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (17, 'Livia Ferreira', 'l.reira@outlook.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (18, 'Maysa Goncalves', 'm.alves@yahoo.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (19, 'Vitor Hugo da Rocha', 'v.rocha@hotmail.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (20, 'Maite da Conceicao', 'm.eicao@yahoo.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (21, 'Ana Mendes', 'a.endes@yahoo.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (22, 'Lucas Duarte', 'l.uarte@gmail.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (23, 'Joana Oliveira', 'j.veira@outlook.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (24, 'Isabel das Neves', 'd.neves@outlook.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (25, 'Carlos Eduardo Cardoso', 'c.rdoso@gmail.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (26, 'Bryan Correia', 'b.rreia@hotmail.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (27, 'Maria Vitoria Teixeira', 'm.xeira@bol.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (28, 'Marcos Vinicius da Costa', 'm.costa@outlook.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (29, 'Isaac da Rosa', 'i.rosa@hotmail.com');
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES (30, 'Fernando das Neves', 's.neves@bol.com');

INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (1, 8, 5, 8, TO_DATE('2023-06-15','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (2, 26, 27, 5, TO_DATE('2023-06-25','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (3, 4, 17, 6, TO_DATE('2023-06-13','YYYY-MM-DD'), 3);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (4, 29, 18, 5, TO_DATE('2023-03-14','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (5, 30, 28, 6, TO_DATE('2023-10-14','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (6, 40, 27, 3, TO_DATE('2023-05-12','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (7, 32, 2, 1, TO_DATE('2023-01-03','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (8, 8, 11, 6, TO_DATE('2023-09-26','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (9, 31, 8, 8, TO_DATE('2023-07-09','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (10, 35, 4, 4, TO_DATE('2023-02-19','YYYY-MM-DD'), 3);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (11, 34, 21, 2, TO_DATE('2023-06-03','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (12, 33, 5, 3, TO_DATE('2023-03-12','YYYY-MM-DD'), 3);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (13, 13, 15, 5, TO_DATE('2023-11-12','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (14, 23, 19, 7, TO_DATE('2023-05-25','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (15, 13, 20, 4, TO_DATE('2023-05-15','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (16, 19, 24, 8, TO_DATE('2023-09-14','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (17, 34, 16, 6, TO_DATE('2023-09-05','YYYY-MM-DD'), 3);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (18, 4, 1, 3, TO_DATE('2023-05-25','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (19, 6, 20, 7, TO_DATE('2023-06-02','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (20, 1, 22, 7, TO_DATE('2023-12-04','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (21, 37, 22, 7, TO_DATE('2023-01-11','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (22, 2, 27, 2, TO_DATE('2023-03-25','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (23, 9, 16, 4, TO_DATE('2023-03-28','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (24, 4, 30, 3, TO_DATE('2023-09-19','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (25, 19, 29, 8, TO_DATE('2023-07-01','YYYY-MM-DD'), 3);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (26, 13, 8, 1, TO_DATE('2023-03-05','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (27, 8, 26, 7, TO_DATE('2023-03-28','YYYY-MM-DD'), 3);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (28, 31, 2, 3, TO_DATE('2023-07-23','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (29, 27, 21, 1, TO_DATE('2023-02-15','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (30, 8, 16, 4, TO_DATE('2023-12-15','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (31, 25, 28, 2, TO_DATE('2023-02-06','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (32, 1, 16, 1, TO_DATE('2023-10-31','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (33, 5, 7, 7, TO_DATE('2023-03-16','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (34, 3, 6, 1, TO_DATE('2023-02-27','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (35, 13, 9, 8, TO_DATE('2023-03-27','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (36, 2, 28, 8, TO_DATE('2023-06-08','YYYY-MM-DD'), 3);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (37, 27, 26, 2, TO_DATE('2023-04-23','YYYY-MM-DD'), 3);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (38, 30, 2, 7, TO_DATE('2023-03-19','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (39, 34, 9, 8, TO_DATE('2023-12-26','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (40, 17, 12, 5, TO_DATE('2023-02-03','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (41, 13, 15, 4, TO_DATE('2023-12-23','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (42, 20, 30, 3, TO_DATE('2023-07-08','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (43, 32, 12, 6, TO_DATE('2023-09-27','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (44, 12, 26, 1, TO_DATE('2023-04-05','YYYY-MM-DD'), 3);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (45, 18, 26, 3, TO_DATE('2023-05-03','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (46, 9, 8, 8, TO_DATE('2023-09-19','YYYY-MM-DD'), 3);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (47, 7, 14, 1, TO_DATE('2023-08-02','YYYY-MM-DD'), 3);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (48, 7, 13, 6, TO_DATE('2023-08-24','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (49, 6, 10, 8, TO_DATE('2023-06-07','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (50, 12, 3, 8, TO_DATE('2023-08-19','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (51, 8, 24, 7, TO_DATE('2023-02-18','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (52, 22, 27, 5, TO_DATE('2023-05-03','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (53, 36, 17, 6, TO_DATE('2023-02-13','YYYY-MM-DD'), 1);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (54, 27, 29, 3, TO_DATE('2023-06-12','YYYY-MM-DD'), 3);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (55, 12, 30, 6, TO_DATE('2023-12-14','YYYY-MM-DD'), 3);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (56, 22, 18, 6, TO_DATE('2023-01-17','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (57, 35, 12, 7, TO_DATE('2023-02-05','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (58, 29, 1, 1, TO_DATE('2023-10-12','YYYY-MM-DD'), 3);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (59, 25, 12, 1, TO_DATE('2023-05-19','YYYY-MM-DD'), 2);
INSERT INTO Vendas (VendaID, ProdutoID, ClienteID, VendedoresID, DataVenda, Quantidade) VALUES (60, 27, 22, 2, TO_DATE('2023-12-28','YYYY-MM-DD'), 3);

COMMIT;


-- Resposta 1: Elabore uma consulta que mostre quais são os 15 produtos mais vendidos, informando seu nome
-- e a quantidade de vendas feitas, bem como a quantidade média por venda;
select
    p.nome,
    sum(v.quantidade) as "Quantidade Total Vendida",
    count(v.vendaid) as "Numero de Vendas",
    avg(v.quantidade) as "Quantidade Media Por Venda"
from 
    vendas v
inner join
    produtos p
on v.produtoid = p.produtoid
group by
    p.nome
order by
    2 desc
fetch first 15 rows only;

-- Resposta 2: Selecione o nome do cliente e seu email, juntamente com a quantidade de vendas relacionadas a
-- ele. Mostre também clientes que não compraram;
select
    c.nome,
    c.email,
    nvl(count(v.vendaid), 0) AS "Quantidade de Vendas"
from
    clientes c
left join
    vendas v 
on 
    c.clienteid = v.clienteid
group by
    c.nome, 
    c.email
order by
   3 desc;

-- Resposta 3: Selecione o nome do produto, a faixa de preço a qual ele pertence, e seu preço, mostrando a
-- moeda (currency) e os centavos;
select
    p.nome,
    fp.descricao as "Faixa de Preco",
    TO_CHAR(p.preco, 'L9999.99') as "Preco"
from
    produtos p
inner join 
    faixasdepreco fp 
on 
    p.preco between fp.precominimo and fp.precomaximo;

-- Resposta 4: Exiba o nome do produto, e o nome da categoria e descrição da categoria, dos produtos que não
-- tiveram nenhuma venda;
select
    p.nome as "Nome do Produto",
    c.nome as "Nome da categoria",
    c.descricao
from
    produtos p
    inner join categorias c on p.categoriaid = c.categoriaid
where
    p.produtoid not in (select produtoid from vendas);

-- Resposta 5: Quais os 5 clientes com maior ticket médio por compra? (Ticket médio = total vendido /
-- quantidade de vendas);
select
    c.nome,
    c.email,
    avg(v.quantidade) as "Ticket Medio"
from
    clientes c
    left join vendas v on c.clienteid = v.clienteid
group by
    c.nome, c.email
order by
    3 desc
fetch first 5 rows only;

