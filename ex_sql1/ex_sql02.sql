CREATE DATABASE db_evaUM;
USE db_evaUM;
CREATE TABLE tb_produtos(
	id BIGINT auto_increment,
    nome VARCHAR(255) NOT NULL,
	preco DECIMAL(6,2) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    estoque INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome,preco,marca,estoque)
VALUES("dunk sb 2", "529.90","nike", 36),
("samba 02", "699.90","adidas", 20),
("spring blade", "499.90","adidas", 23),
("cortez", "499.90","nike", 16),
("Strange Love", "999.90","nike", 2),
("Air Jordan", "399.90","nike", 15),
("RBD Game BDP", "339.49","puma", 30),
("Trinity", "549.90","puma", 50);

SELECT * FROM tb_produtos WHERE preco>500;

SELECT * FROM tb_produtos WHERE preco<500;

UPDATE tb_produtos SET preco = 1049.90 WHERE id = 5;

SELECT * FROM tb_produtos;

