-- TABELAS

create table ALUNO(
idaluno number not null,
nome VARCHAR(45),
email VARCHAR(45),
cpf number not null,
endereco VARCHAR(45),
numero number,
complemento VARCHAR(45),
cidade VARCHAR(45),
estado VARCHAR(45)
    );
    
create table CURSO(
idcurso number,
nome VARCHAR(45),
prof_idprof number
    );
    
create table CURSOALUNO(
curso_idcurso number not null,
aluno_idaluno number not null
);

create table PROFESSOR(
idprofessor number,
nome VARCHAR(45),
email VARCHAR(45),
cpf number not null,
endereco VARCHAR(45),
numero number,
complemento VARCHAR(45),
cidade VARCHAR(45),
estado VARCHAR(45)
    );

-- Constrains - Primary Key

alter table ALUNO add
	constraint PK_idaluno primary key(idaluno);
alter table CURSO add
	constraint PK_idcurso primary key(idcurso);
alter table PROFESSOR add
	constraint PK_idprofessor primary key(idprofessor);
	
-- Constrains - Foreign

alter table CURSOALUNO add
	constraint FK_curso_idcurso foreign key (curso_idcurso) references CURSO(idcurso);
	
alter table CURSOALUNO add
	constraint FK_aluno_idaluno foreign key (aluno_idaluno) references ALUNO(idaluno);

alter table CURSO add
	constraint FK_prof_idprof foreign key (prof_idprof) references PROFESSOR(idprofessor);
  
-- Index
  CREATE UNIQUE INDEX IND_NomeAluno on ALUNO(nome);
  CREATE UNIQUE INDEX IND_Cpf_Aluno on ALUNO(cpf);
  CREATE UNIQUE INDEX IND_NomeProf on PROFESSOR(nome);
  CREATE UNIQUE INDEX IND_Cpf_Prof on PROFESSOR(cpf);
  CREATE UNIQUE INDEX IND_NomeCurso on CURSO(nome);

    
-- Sequence
	CREATE SEQUENCE SEQ_aluno_idaluno
	    	START WITH 1
    		INCREMENT BY 1;
 	CREATE SEQUENCE SEQ_prof_idprof
	    	START WITH 1
    		INCREMENT BY 1;
	CREATE SEQUENCE SEQ_curso_idcurso
	    	START WITH 1
    		INCREMENT BY 1;
	
-- Inserts
 

insert into ALUNO(idaluno, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(01, 'Joao', 'joao@email.com', 00000000001, 'Rua Joao', 001, 'apto', 'Ribeirao Preto', 'Sao Paulo');
insert into ALUNO(idaluno, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(02, 'Gabriel', 'gabriel@email.com', 00000000002, 'Rua Gabriel', 002, 'casa', 'Ribeirao Preto', 'Sao Paulo');
insert into ALUNO(idaluno, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(03, 'Leonardo', 'leonardo@email.com', 00000000003, 'Rua Leonardo', 003, 'casa', 'Ribeirao Preto', 'Sao Paulo');
insert into ALUNO(idaluno, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(04, 'Arthur', 'arthur@email.com', 00000000004, 'Rua Arthur', 004, 'apto', 'Ribeirao Preto', 'Sao Paulo');
insert into ALUNO(idaluno, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(05, 'Felipe', 'felipe@email.com', 00000000005, 'Rua Felipe', 005, 'casa', 'Ribeirao Preto', 'Sao Paulo');
insert into ALUNO(idaluno, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(06, 'Henrique', 'henrique@email.com', 00000000006, 'Rua Henrique', 006, 'apto', 'Ribeirao Preto', 'Sao Paulo');
insert into ALUNO(idaluno, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(07, 'Igor', 'igor@email.com', 00000000007, 'Rua Igor', 007, 'apto', 'Ribeirao Preto', 'Sao Paulo');
insert into ALUNO(idaluno, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(08, 'Vinicius', 'vinicius@email.com', 00000000008, 'Rua Vinicius', 008, 'apto', 'Ribeirao Preto', 'Sao Paulo');
insert into ALUNO(idaluno, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(09, 'Alexandre', 'alexandre@email.com', 00000000009, 'Rua Alexandre', 009, 'casa', 'Ribeirao Preto', 'Sao Paulo');
insert into ALUNO(idaluno, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(10, 'Luciano', 'luciano@email.com', 00000000010, 'Rua Luciano', 010, 'casa', 'Ribeirao Preto', 'Sao Paulo');

insert into PROFESSOR(idprofessor, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(011, 'Carlos', 'carlos@email.com', 00000000011, 'Rua Carlos', 011, 'casa', 'Ribeirao Preto', 'Sao Paulo');
insert into PROFESSOR(idprofessor, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(012, 'Fabiano', 'fabiano@email.com', 00000000012, 'Rua Fabiano', 012, 'casa', 'Ribeirao Preto', 'Sao Paulo');
insert into PROFESSOR(idprofessor, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(013, 'Alexandre', 'alexandre@email.com', 00000000013, 'Rua Alexandre', 013, 'casa', 'Ribeirao Preto', 'Sao Paulo');
insert into PROFESSOR(idprofessor, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(014, 'Milton', 'milton@email.com', 00000000014, 'Rua Milton', 014, 'casa', 'Ribeirao Preto', 'Sao Paulo');
insert into PROFESSOR(idprofessor, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(015, 'Pablo', 'pablo@email.com', 00000000015, 'Rua Pablo', 015, 'casa', 'Ribeirao Preto', 'Sao Paulo');
insert into PROFESSOR(idprofessor, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(016, 'Edilson', 'edilson@email.com', 00000000016, 'Rua Edilson', 016, 'casa', 'Ribeirao Preto', 'Sao Paulo');
insert into PROFESSOR(idprofessor, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(017, 'Fernando', 'fernando@email.com', 00000000017, 'Rua Fernando', 017, 'casa', 'Ribeirao Preto', 'Sao Paulo');
insert into PROFESSOR(idprofessor, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(018, 'Sandra', 'sandra@email.com', 00000000018, 'Rua Sandra', 018, 'casa', 'Ribeirao Preto', 'Sao Paulo');
insert into PROFESSOR(idprofessor, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(019, 'Naia', 'naia@email.com', 00000000019, 'Rua Naia', 019, 'casa', 'Ribeirao Preto', 'Sao Paulo');
insert into PROFESSOR(idprofessor, nome, email, cpf, endereco, numero, complemento, cidade, estado) values(020, 'Jose', 'jose@email.com', 00000000020, 'Rua Jose', 020, 'casa', 'Ribeirao Preto', 'Sao Paulo');

insert into CURSO(idcurso, nome) values (101, 'curso a');
insert into CURSO(idcurso, nome) values (102, 'curso b');
insert into CURSO(idcurso, nome) values (103, 'curso c');
insert into CURSO(idcurso, nome) values (104, 'curso d');
insert into CURSO(idcurso, nome) values (105, 'curso e');
insert into CURSO(idcurso, nome) values (106, 'curso f');
insert into CURSO(idcurso, nome) values (107, 'curso g');
insert into CURSO(idcurso, nome) values (108, 'curso h');
insert into CURSO(idcurso, nome) values (109, 'curso i');
insert into CURSO(idcurso, nome) values (110, 'curso j');

insert into CURSOALUNO(curso_idcurso,aluno_idaluno) values (101,1);
insert into CURSOALUNO(curso_idcurso,aluno_idaluno) values (102,2);
insert into CURSOALUNO(curso_idcurso,aluno_idaluno) values (103,3);
insert into CURSOALUNO(curso_idcurso,aluno_idaluno) values (104,4);
insert into CURSOALUNO(curso_idcurso,aluno_idaluno) values (105,5);
insert into CURSOALUNO(curso_idcurso,aluno_idaluno) values (106,6);
insert into CURSOALUNO(curso_idcurso,aluno_idaluno) values (107,7);
insert into CURSOALUNO(curso_idcurso,aluno_idaluno) values (108,8);
insert into CURSOALUNO(curso_idcurso,aluno_idaluno) values (109,9);
insert into CURSOALUNO(curso_idcurso,aluno_idaluno) values (110,10);







parcial.sql
Exibindo parcial.sql…
