CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(25),
tamanho VARCHAR (255),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(tipo, tamanho)
VALUES ("Salgada", "Brotinho"), ("Salgada", "Média"), ("Salgada", "Grande"), ("Doce", "Brotinho"), ("Doce", "Média"), ("Doce", "Grande");

SELECT*FROM tb_categorias;

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR (255) NOT NULL,
borda_recheada VARCHAR (255),
pizza_vegana VARCHAR (3),
ingredientes_extras VARCHAR (255),
categorias_id BIGINT, 
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

ALTER TABLE tb_pizzas MODIFY pizza_vegana VARCHAR (3) NOT NULL;

INSERT INTO tb_pizzas (sabor, borda_recheada, pizza_vegana, ingredientes_extras, categorias_id)
VALUES ("Calabresa", "Catupiry", "Não", "Azeitona", 3), ("Prestígio", "Nutella", "Não", "Morango", 1);

INSERT INTO tb_pizzas (sabor, pizza_vegana, categorias_id)
VALUES ("Marguerita", "Sim", 2), ("Calabresa", "Sim", 3), ("Catuperoni", "Não", 1), ("Brigadeiro", "Não", 3);

INSERT INTO tb_pizzas(sabor, ingredientes_extras, pizza_vegana, categorias_id)
VALUES ("4 Queijos", "Azeitona", "Não", 2), ("Palmito", "Manjericão", "Sim", 3);

SELECT sabor, ingredientes_extras, borda_recheada, pizza_vegana, tb_categorias.tipo, tb_categorias.tamanho 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categorias_id = tb_categorias.id WHERE sabor LIKE "%m%";

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT sabor, ingredientes_extras, borda_recheada, pizza_vegana, tb_categorias.tipo, tb_categorias.tamanho 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categorias_id = tb_categorias.id WHERE tamanho = "Média";