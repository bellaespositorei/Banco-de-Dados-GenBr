CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255),
origem VARCHAR (255),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(categoria, origem)
VALUES ("Fruta", "Vegetal"), ("Legume", "Vegetal"), ("Verdura", "Vegetal"), ("Ovos", "Animal"), ("Leite", "Animal");

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    price DECIMAL (5,2) NOT NULL,
    quantidade BIGINT,
    validade DATE,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos (nome, price, quantidade, validade, id_categoria)
VALUES ("Tangerina", 2.99, 102, "2024-08-01", 1), ("Batata Inglesa", 5.99, 520, "2024-09-10", 2), 
("Batata Doce", 7.99, 302, "2024-07-20", 2), 
("Ovo de Codorna", 10.39, 145, "2024-07-21", 4),
("Pitaya", 15.99, 206, "2024-06-30", 1),
("Espinafre", 2.99, 032, "2024-07-01", 3),
("Chicória", 1.99, 215, "2024-06-29", 3),
("Leite de Soja", 20.99, 093, "2024-08-15", 5),
("Caixa de Leite Desnatado", 64.00, 145, "2024-10-01", 5);

SELECT * FROM tb_produtos WHERE price > 50.00;

SELECT * FROM tb_produtos WHERE price BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id;

SELECT nome, price, tb_categorias.categoria, tb_categorias.origem 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id WHERE origem = "vegetal";