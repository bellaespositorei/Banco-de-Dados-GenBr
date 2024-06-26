CREATE DATABASE db_lojinha;

USE db_lojinha;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
valor DECIMAL (6,2) NOT NULL,
tipo_de_produto VARCHAR (255) NOT NULL,
cor VARCHAR (255),
PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, valor, tipo_de_produto, cor)
VALUES ("Cadeira de Praia", 59.99, "móvel", "preta");

INSERT INTO tb_produtos (nome, valor, tipo_de_produto, cor)
VALUES ("IPhone 15 Pro Max", 9959.99, "celular", "verde menta");

INSERT INTO tb_produtos (nome, valor, tipo_de_produto, cor)
VALUES ("Caixa de Ferramentas completa", 559.99, "ferramentas", "amarela");

INSERT INTO tb_produtos (nome, valor, tipo_de_produto)
VALUES ("Ração Bonzo 18kg", 99.99, "pet");

INSERT INTO tb_produtos (nome, valor, tipo_de_produto)
VALUES ("Ração Extrusada Nutrópica 5g", 359.99, "pet");

SELECT*FROM tb_produtos WHERE valor > 500.00;

SELECT*FROM tb_produtos WHERE valor < 500.00;

UPDATE tb_produtos SET valor = 259.99 WHERE id = 5;