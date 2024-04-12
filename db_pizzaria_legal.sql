CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	descricao VARCHAR(255)
    );
    
CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	ingredientes VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) 
VALUES
('Salgada', 'Pizzas com ingredientes salgados'),
('Doce', 'Pizzas com ingredientes doces'),
('Vegetariana', 'Pizzas sem carne, apenas vegetais'),
('Especial', 'Pizzas especiais com ingredientes únicos'),
('Clássica', 'Pizzas tradicionais com ingredientes simples');

INSERT INTO tb_pizzas (nome, ingredientes, tamanho, valor, id_categoria) VALUES
('Frango com Catupiry', 'Pizza com frango desfiado e catupiry',"Pequeno", 38.00,1),
('Calabresa', 'Pizza com calabresa, cebola e mussarela',"Medio", 46.00,1),
('Margherita', 'Pizza com molho de tomate, mussarela, manjericão e tomate',"Grande", 65.00,5),
('Brigadeiro', 'Pizza com chocolate, brigadeiro e granulado',"Pequeno", 38.00, 2),
('Portuguesa', 'Pizza com presunto, queijo, ovo, cebola, azeitona e orégano',"Medio", 46.00, 1),
('Quatro Queijos', 'Pizza com mussarela, parmesão, provolone e gorgonzola',"Grande", 65.00, 1),
('Romeu e Julieta', 'Pizza com goiabada e queijo',"Pequeno", 38.00, 2),
('Vegetariana', 'Pizza com tomate, pimentão, cebola, azeitona, palmito e mussarela',"Medio", 46.00, 3);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_categoria;

SELECT tb_pizzas.nome, tb_pizzas.ingredientes, tb_pizzas.tamanho, tb_pizzas.valor, tb_categorias.descricao
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id
WHERE tb_categorias.id = 2;


