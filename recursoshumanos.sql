CREATE DATABASE db_recursoshumanos;
USE db_recursoshumanos;

CREATE TABLE tb_funcionarios(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	cargo VARCHAR(255) NOT NULL,
    departamento VARCHAR(255) NOT NULL,
	salario DECIMAL(7,2) NOT NULL
);

INSERT INTO tb_funcionarios(nome, cargo, departamento, salario)
VALUES
("Thais Santos","Desenvolvedora Fullstack Jr", "Desenvolvimento de Software", 2500.00),
("Ana Silva","Desenvolvedora Fullstack Estagio", "Desenvolvimento de Software", 1500.00),
("Joel Carvalho","Desenvolvedor Fullstack Sr", "Desenvolvimento de Software", 3500.00),
("Luisa Moura","Desenvolvedora Fullstack Sr", "Desenvolvimento de Software", 4000.00),
("Karine Nascimento","Desenvolvedora Fullstack Pl", "Desenvolvimento de Software", 5000.00);

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 3000.00 WHERE ID = 1;


