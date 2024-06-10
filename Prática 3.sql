-- Resposta 1: Crie as seguintes tabelas para o sistema de gerenciamento de cursos, utilizando constraints para que
-- as regras citadas sejam implementadas:
-- 1. Tabela Professores:
-- a. matricula: Número da matrícula do professor (chave primária).
-- b. nome: Nome do professor, um campo obrigatório.
-- c. RG: Registro Geral do professor, valor único para cada professor.
-- d. sexo: Sexo do professor, podendo ser 'M' (Masculino) ou 'F' (Feminino).
-- e. idade: Idade do professor, que deve estar entre 21 e 80 anos.
-- f. titulacao: Titulação do professor, que deve ser uma entre 'graduado', 'especialista', 'mestre'
-- ou 'doutor'.
-- g. categoria: Categoria do professor, que deve ser 'auxiliar', 'assistente', 'adjunto' ou 'titular'.
-- h. nroTurmas: Número de turmas que o professor leciona, deve ser maior ou igual a 0.
create table professores (
    matricula number,
    nome varchar2(50) not null,
    rg varchar2(15) unique,
    sexo char(1),
    idade number(2) check(idade between 21 and 80),
    titulacao varchar2(20),
    nroturmas number(2),
    constraint pk_matricula primary key(matricula)
);

-- Resposta 2: Tabela Cursos:
-- a. codigo: Código do curso (chave primária).
-- b. nome: Nome do curso, um campo obrigatório. Caso não seja informado um valor, assumir o
-- valor padrão 'A definir';
-- c. duracao: Duração do curso em fases, deve estar entre 4 e 12.
-- d. coordenador: Matrícula do professor coordenador do curso, uma chave estrangeira
-- referenciando a tabela Professores. Caso um registro de professor seja excluído, o valor da
-- chave deve ser nulo.
create table cursos (
    codigo number,
    nome varchar2(30) default 'A definir' not null,
    duracao number(4) check(duracao between 4 and 12),
    coordenador number,
    constraint pk_codigo_cursos primary key(codigo),
    constraint fk_coordenador foreign key (coordenador) references professores (matricula) on delete set null
);

-- Resposta 3: Tabela Disciplinas:
-- a. codigo: Código da disciplina (chave primária).
-- b. nome: Nome da disciplina, um campo obrigatório.
-- c. creditos: Número de créditos da disciplina, deve estar entre 2 e 8.
create table disciplinas (
    codigo number,
    nome varchar2(25) not null,
    creditos number check(creditos between 2 and 8),
    constraint pk_codigo_disciplinas primary key(codigo)
);

-- Resposta 4: Tabela Curriculos:
-- a. curso: Código do curso, uma chave estrangeira referenciando a tabela Cursos. Caso um Curso
-- seja excluído, o registro que o referencia deve ser excluído também.
-- b. disciplina: Código da disciplina, uma chave estrangeira referenciando a tabela Disciplinas.
-- Caso uma Disciplina seja excluída, o registro que o referencia ser excluído também.
-- c. fase: Fase do curso em que a disciplina é oferecida, deve estar entre 1 e 12. O par (curso,
-- disciplina) deve ser a chave primária da tabela.
create table curriculos (
    curso number,
    disciplina number,
    fase number(2) check(fase between 1 and 12),
    constraint pk_curriculos primary key(curso, disciplina),
    constraint fk_curriculo_curso foreign key (curso) references cursos (codigo),
    constraint fk_curriculo_disciplina foreign key (disciplina) references disciplinas (codigo)
);

-- Resposta 5: Tabela Turmas:
-- a. disciplina: Código da disciplina, uma chave estrangeira referenciando a tabela Disciplinas.
-- Caso uma Disciplina seja excluída, o registro que o referencia deve ser excluído também.
-- b. codigo: Código da turma, que, junto com a disciplina, forma a chave primária.
-- c. vagas: Número de vagas disponíveis na turma, deve ser maior que zero.
-- d. professor: Matrícula do professor que leciona a turma, uma chave estrangeira referenciando
-- a tabela Professores. Caso um registro de professor seja excluído, o valor da chave deve ser
-- nulo.
create table turmas (
    disciplina number,
    codigo number,
    vagas number(3) check(vagas > 0),
    professor number,
    constraint pk_codigo_turmas primary key(codigo),
    constraint fk_professor foreign key (professor) references professores (matricula) on delete set null,
    constraint fk_disciplina foreign key (disciplina) references disciplinas (codigo) on delete cascade
);

-- Resposta 6: Você deve fazer um rebuild de todos os índices associados às tabelas criadas.

--Comando para achar o nome dos ídices das tabelas criadas
select 
    index_name 
from 
    USER_INDEXES 
where 
    table_name in(upper('disciplinas'), 
                  upper('professores'),
                  upper('cursos'),
                  upper('curriculos'),
                  upper('turmas'));

-- Rebuild:
alter index PK_CURRICULOS rebuild online;
alter index pk_codigo_cursos rebuild online;
alter index pk_codigo_turmas rebuild online;
alter index pk_codigo_disciplinas rebuild online;
alter index pk_matricula rebuild online;
alter index SYS_C007672 rebuild online;