CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tamanho VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(4,2) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    classId BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classId) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tamanho, tipo)
VALUES("brotinho", "salgada"),
("brotinho", "doce"),
("média", "salgada"),
("média", "doce"),
("grande", "salgada"),
("grande", "doce");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas(nome, preco, ingredientes,classId)
VALUES("Baiana", 45.50,"Molho de tomate, mussarela, Calabresa, Ovo, Pimenta, Orégano, Azeitonas", 3),
("Peperoni", 65.50,"Molho de tomate, mussarela, Peperoni, Pimenta", 3),
("Chilena", 55.50,"Molho de tomate, mussarela, Frango desfiado, Catupiry, Bacon, Azeitonas", 5),
("Portuguesa", 35.50,"Molho de tomate, mussarela, Presunto, Tomate, Orégano, Azeitonas", 1),
("Docinho da Tarde", 29.50,"Massa Fininha, Chocolate ao leite, Morango, M&M", 2),
("Doção da Noite", 55.50,"Massa Fininha, Chocolate ao leite, Banana e Granulado", 6),
("Medium Shady", 45.50,"Massa Fininha, Chocolate ao leite e MUITO M&Ms", 4),
("Palmito", 65.50,"Molho de tomate, mussarela, Palmito, Milho e Azeitonas", 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 and 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, preco, ingredientes, tb_categorias.tamanho, tb_categorias.tipo FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.classId = tb_categorias.id;

SELECT nome, preco, ingredientes, tb_categorias.tamanho, tb_categorias.tipo FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.classId = tb_categorias.id
WHERE tb_pizzas.classId %2=0;



