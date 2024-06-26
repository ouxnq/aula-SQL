CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL,
    idade INT,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, idade, cargo, salario)
VALUES ("Thiago", 23, "Analista Jr", 2500.52);
INSERT INTO tb_colaboradores(nome, idade, cargo, salario)
VALUES ("Beatriz", 21, "Estagiária", 1900.77);
INSERT INTO tb_colaboradores(nome, idade, cargo, salario)
VALUES ("Magda", 35, "Gerente", 5500.67);
INSERT INTO tb_colaboradores(nome, idade, cargo, salario)
VALUES ("Matheus", 27, "Analista Pl", 3800.80);
INSERT INTO tb_colaboradores(nome, idade, cargo, salario)
VALUES ("Roberta", 44, "Analista Sr", 8200.10);

SELECT * FROM tb_colaboradores WHERE salario>2000;

SELECT * FROM tb_colaboradores WHERE salario<2000;

SELECT * FROM tb_colaboradores;

UPDATE tb_colaboradores SET idade = 40 WHERE nome = "Roberta";


