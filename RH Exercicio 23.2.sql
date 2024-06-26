CREATE DATABASE db_recursoshumanos;

USE db_recursoshumanos;

CREATE TABLE tb_infos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255) NOT NULL,
    cargo VARCHAR (100) NOT NULL,
    datanascimento DATE NOT NULL,
    salario DECIMAL NOT NULL,
    documentorg INT (9),
    PRIMARY KEY (id)
);

INSERT INTO tb_infos (nome, cargo, datanascimento, salario, documentorg)
VALUES ("Maria do Carmo Almeida", "Recepcionista", "1998-06-05", 3550.00, 365215896);

INSERT INTO tb_infos (nome, cargo, datanascimento, salario, documentorg)
VALUES ("Sirius Theobaldo Jobim", "Analista Júnior", "2000-08-20", 6550.00, 375235882);

INSERT INTO tb_infos (nome, cargo, datanascimento, salario, documentorg)
VALUES ("Camila Vicenzo Costa", "Analista Pleno", "1991-01-10", 10550.00, 261219291);

INSERT INTO tb_infos (nome, cargo, datanascimento, salario, documentorg)
VALUES ("Remo João Silva", "Analista Sênior", "1996-08-17", 16550.00, 271659866);

INSERT INTO tb_infos (nome, cargo, datanascimento, salario, documentorg)
VALUES ("Ana Catarina Lemos", "Tech Lead", "1990-11-19", 24550.00, 626589320);

INSERT INTO tb_infos (nome, cargo, datanascimento, salario, documentorg)
VALUES ("Jonas Barbosa", "Estagiário", "2001-04-03", 1500.00, 968532145);

SELECT*FROM tb_infos WHERE salario<2000.00;

SELECT*FROM tb_infos WHERE salario>2000.00;

UPDATE tb_infos SET salario = 1800.00 WHERE id=6;