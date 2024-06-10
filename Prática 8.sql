

CREATE TABLE livros (
    book_id NUMBER PRIMARY KEY,
    title VARCHAR2(255),
    author VARCHAR2(255),
    isbn VARCHAR2(13),
    publication_year NUMBER,
    genre VARCHAR2(100)
);


CREATE TABLE emprestimos (
    loan_id NUMBER PRIMARY KEY,
    book_id NUMBER,
    client_id NUMBER,
    loan_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES livros(book_id)
);


CREATE TABLE clientes (
    client_id NUMBER PRIMARY KEY,
    name VARCHAR2(255),
    email VARCHAR2(255),
    membership_date DATE
);

CREATE TABLE historico (
    history_id NUMBER PRIMARY KEY,
    record_type VARCHAR2(100),
    record_id NUMBER,
    action_date DATE,
    details VARCHAR2(400)
);


-- Resposta 1: Crie roles para cada um dos níveis de acesso: administrador, bibliotecário e cliente;
create role administrador;
create role bibliotecario;
create role cliente;

-- Resposta 2: Conceda todos os privilégios de objeto das tabelas para a role administrador;
grant all on livros to administrador;
grant all on emprestimos to administrador;
grant all on clientes to administrador;
grant all on historico to administrador;

-- Resposta 3: Conceda todos os privilégios de objeto da tabela livros e emprestimos para role bibliotecario, e
-- permita que a role consulte a tabela clientes e historicos;
grant all on livros to bibliotecario;
grant all on emprestimos to bibliotecario;
grant select on clientes to bibliotecario;
grant select on historico to bibliotecario;

-- Resposta 4: Conceda o privilégio de consulta na tabela livros para a role cliente;
grant select on livros to cliente;

-- Resposta 5: Conceda o privilégio de criar sessão para todas as roles;
grant create session to administrador;
grant create session to bibliotecario;
grant create session to cliente;