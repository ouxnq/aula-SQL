CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
    classe VARCHAR(255) NOT NULL,
    raca VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    classesid BIGINT,
    nome VARCHAR(255) NOT NULL,
    poderDeAtaque INT,
    poderDeDefesa INT,
    sorte INT,
    PRIMARY KEY (id),
    FOREIGN KEY (classesid) REFERENCES tb_classes (id)
);

INSERT INTO tb_classes(classe, raca)
VALUES("Guerreiro", "humano"),
("Guerreiro", "elfo"),
("Mago", "humano"),
("Mago", "elfo"),
("Ladino", "humano"),
("Ladino", "elfo");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens(nome, poderDeAtaque, poderDeDefesa, sorte, classesid)
VALUES("Illidan", 2500, 1200, 3, 2),
("Guldan", 3000, 800, 5,4),
("Genji", 5000, 200, 9,5),
("Lothus", 1500, 3000, 2,1),
("Malfurion", 1200, 1000, 10,6),
("Uther", 200, 5500, 1,1),
("Dracula", 3500, 800, 1,3),
("Tempesfuria", 100, 3500, 10,5);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poderDeAtaque>2000;

SELECT * FROM tb_personagens WHERE poderDeDefesa BETWEEN 1000 and 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome,poderDeAtaque, poderDeDefesa, sorte, tb_classes.classe, tb_classes.raca
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classesid;

SELECT nome,poderDeAtaque, poderDeDefesa, sorte, tb_classes.classe, tb_classes.raca
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classesid
WHERE tb_classes.id=5 or tb_classes.id=6;


