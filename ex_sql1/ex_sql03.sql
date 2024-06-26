CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    sala VARCHAR(2) NOT NULL,
	nota DECIMAL(4,2),
    PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, idade, sala, nota)
VALUES("Gustavo Silva", 23, "3A", 6.5),
("Vinícius Pereira", 23, "3A", 9.5),
("Beazinat Gonçalves", 23, "3A", 8.7),
("Lucas Vasconcelos", 23, "3A", 10),
("Marilia Marques", 26, "3B", 10),
("Victor Silva", 27, "3B", 9.6),
("Julio França", 25, "3B", 7.9),
("Rodrigo Silva", 26, "3B", 8.2);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota>7;

SELECT * FROM tb_alunos WHERE nota<7;

UPDATE tb_alunos SET nota = 6.9 WHERE id =6;
UPDATE tb_alunos SET nota = 5.7 WHERE id =7;

SELECT * FROM tb_alunos;