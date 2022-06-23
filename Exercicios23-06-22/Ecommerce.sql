CREATE DATABASE db_commerce;
USE db_commerce;

CREATE TABLE tb_produtos(

	Id BIGINT auto_increment,
	Produto VARCHAR(255),
    Valor INT,
    Categoria VARCHAR(255),
	QEstoque INT,
    
    primary key (id)
);

INSERT INTO tb_produtos(Produto, Valor, Categoria, QEstoque)VALUES("Xbox One X", 4800.00, "Games", 67);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE Valor > 500;
SELECT * FROM tb_produtos WHERE Valor < 500;


    
