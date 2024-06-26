CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
matricula BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
data_nascimento DATE NOT NULL,
série VARCHAR (255) NOT NULL,
nome_da_mae VARCHAR (255) NOT NULL,
PRIMARY KEY (matricula)
);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nome_da_mae, notas)
VALUES ("Rhaissa Nascimento", "2006-12-16", "3º ano EM", "Maria Da Silva Nascimento", 9.95);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nome_da_mae, notas)
VALUES ("Wallacy Menezes", "2008-02-26", "2º ano EM", "Marta Menezes", 6.95);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nome_da_mae, notas)
VALUES ("Alexander Pereira", "2007-05-12", "3º ano EM", "Mônica Pereira", 4.60);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nome_da_mae, notas)
VALUES ("Rebeca Ouriques", "2010-07-06", "9º ano EF", "Arlete Ouriques", 10.00);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nome_da_mae, notas)
VALUES ("Marília Marques", "2011-11-20", "9º ano EF", "GIlce Marques", 8.75);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nome_da_mae, notas)
VALUES ("Palloma Rangel", "2006-10-10", "3º ano EM", "América Rangel", 9.95);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nome_da_mae, notas)
VALUES ("Rodrigo Araújo", "2012-03-31", "7º ano EF", "Marcelle Araújo", 2.40);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nome_da_mae, notas)
VALUES ("Rodrigo Silva", "2010-02-02", "9º ano EF", "Roberta Silva", 7.20);

SELECT*FROM tb_estudantes WHERE notas>7.00;

SELECT*FROM tb_estudantes WHERE notas<7.00;

UPDATE tb_estudantes SET nome = "Rhaíssa Lima" WHERE matricula = 1;

UPDATE tb_estudantes SET nome_da_mae = "Maria Nascimento Lima" WHERE matricula = 1;