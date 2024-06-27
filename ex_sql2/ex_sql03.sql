CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    linguagem VARCHAR(255) NOT NULL,
    qualificacao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_cursos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    duracao INT NOT NULL,
    classId BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classId) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias(linguagem, area)
VALUES("JAVA", "BackEnd"),
("Java", "FrontEnd"),
("Java", "FullStack"),
("JavaScript", "BackEnd"),
("JavaScript", "FrontEnd"),
("JavaScript", "FUllStack");


SELECT * FROM tb_categorias;

INSERT INTO tb_cursos(nome, preco, duracao, classId)
VALUES("Java FullStack", 649.90, 800, 3),
("Java FrontEnd", 349.90, 300, 2),
("Java BackEnd", 449.90, 450, 1),
("JavaScript FullStack", 949.90, 900, 6),
("JavaScript FrontEnd", 449.90, 450, 5),
("JavaScript BackEnd", 649.90, 550, 4);


SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 500;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600 and 1000;

SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

SELECT nome, preco, duracao, tb_categorias.linguagem, tb_categorias.area FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.classId = tb_categorias.id;

SELECT nome, preco, duracao, tb_categorias.linguagem, tb_categorias.area FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.classId = tb_categorias.id
WHERE tb_cursos.classId = 2 or tb_cursos.classId = 5 ;