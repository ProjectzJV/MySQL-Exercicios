CREATE DATABASE db_colegio;

USE db_colegio;

CREATE TABLE tb_estudantes(

	id BIGINT auto_increment,
    nome VARCHAR(255),
    matricula INT,
    sala INT,
    turma VARCHAR(255),
	nota INT,
    
    primary key (id)
);

INSERT INTO tb_estudantes(nome, matricula, sala, turma, nota)VALUES("Giovana", 354, 2, "Jasmin", 7);

SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;
SELECT * FROM tb_estudantes WHERE nota = 7;



