
CREATE TABLE tb_colaboradores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    data_admissao DATE NOT NULL,
    departamento VARCHAR(50) NOT NULL
);

INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao, departamento)
VALUES
('Samuel', 'Analista de Sistemas', 5000.00, '2020-05-10', 'TI'),
('Joao', 'Auxiliar Administrativo', 1800.00, '2019-03-15', 'Administração'),
('Maia', 'Gerente de Projetos', 5000.00, '2018-11-01', 'TI'),
('Nicole', 'Assistente de RH', 2200.00, '2021-01-25', 'Recursos Humanos'),
('Gabriel', 'Desenvolvedor', 2500.00, '2022-07-19', 'TI');

SELECT * FROM tb_colaboradores
WHERE salario > 2000;

SELECT * FROM tb_colaboradores
WHERE salario < 2000;

UPDATE tb_colaboradores
SET salario = 5000.00
WHERE nome = 'Samuel';