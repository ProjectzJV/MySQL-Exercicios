CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE  tb_classes(

	id BIGINT auto_increment,
    poder_classes VARCHAR(255),
    PRIMARY KEY(id)
);

SELECT * FROM tb_classes; 

INSERT INTO tb_classes(poder_classes)VALUES("Fogo");
INSERT INTO tb_classes(poder_classes)VALUES("Agua");
INSERT INTO tb_classes(poder_classes)VALUES("Ar");
INSERT INTO tb_classes(poder_classes)VALUES("Terra");
INSERT INTO tb_classes(poder_classes)VALUES("Forca");

CREATE TABLE tb_personagens(
	
    id BIGINT auto_increment,
    nome VARCHAR(255),
    poder VARCHAR(255),
    ataque INT,
    classes_id BIGINT,
    
    PRIMARY KEY(id),
	FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_personagens;
SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE ataque < 2000;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id;

INSERT INTO tb_personagens(nome, poder, ataque, classes_id)VALUES("Liu Kang", "Fogo",2300,1);
INSERT INTO tb_personagens(nome, poder, ataque, classes_id)VALUES("Harry Potter", "Ar",2000,3);
INSERT INTO tb_personagens(nome, poder, ataque, classes_id)VALUES("Tempestade", "Ar",2400,3);
INSERT INTO tb_personagens(nome, poder, ataque, classes_id)VALUES("Vampira", "A",2300,5);
INSERT INTO tb_personagens(nome, poder, ataque, classes_id)VALUES("Selene", "Forca",1900,5);
INSERT INTO tb_personagens(nome, poder, ataque, classes_id)VALUES("Jean Grey", "Agua",1800,2);
INSERT INTO tb_personagens(nome, poder, ataque, classes_id)VALUES("Hades", "Fogo",2100,1);
INSERT INTO tb_personagens(nome, poder, ataque, classes_id)VALUES("Poseidon", "Agua",2100,2);