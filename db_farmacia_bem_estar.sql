CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    tipo VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2) NOT NULL,
    quantidade INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao, tipo) VALUES
("Medicamentos", "Produtos farmacêuticos para tratamento de doenças", "Remédios"),
("Cosméticos", "Produtos de beleza e cuidados pessoais", "Beleza"),
("Higiene", "Produtos de higiene pessoal e doméstica", "Higiene Pessoal"),
("Mamãe e bebê", "Prosutos de cuidado infantil ", "Infantil"),
("Vida Saudavel", "Vitaminas nutricionais", "Saúde");

INSERT INTO tb_produtos (nome, descricao, preco, quantidade, id_categoria) VALUES
("Paracetamol", "Analgésico e antitérmico", 10.50, 100, 1),
("Máscara de Hidratação", "Limpeza e cuidado dos cabelos", 65.00, 50, 2),
("Sabonete", "Limpeza e higiene corporal", 10.80, 80, 3),
("Pacote Fraldas G", "Alimento básico para o dia a dia", 40.00, 121, 4),
("Multivitamínico", "Suplemento vitamínico", 75.00, 30, 5),
("Creme Hidratante", "Hidratação intensa para a pele", 55.00, 40, 2),
("Escova de Dentes", "Higiene bucal", 10.00, 3, 3),
("Soro Fisiológico", "Solução salina estéril", 8.00, 9, 1);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT tb_produtos.*, tb_categorias.nome AS categoria_nome
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

SELECT tb_produtos.*, tb_categorias.nome
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.id = 2;

