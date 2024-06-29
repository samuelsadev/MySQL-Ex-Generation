USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);
CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tamanho VARCHAR(55) NOT NULL,
    valor DECIMAL(6, 2) NOT NULL,
    ingredientes VARCHAR(255),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao)
VALUES 
("Tradicional", "Pizzas com ingredientes tradicionais"),
("Especial", "Pizzas com ingredientes especiais"),
("Vegana", "Pizzas feitas sem ingredientes de origem animal"),
("Doce", "Pizzas com sabores doces"),
("Premium", "Pizzas com ingredientes premium");

INSERT INTO tb_pizzas (nome, tamanho, valor, ingredientes, categoria_id) VALUES
("Margherita", "Média", 35.00, "Molho de tomate, mussarela, manjericão", 1),
("Pepperoni", "Grande", 55.00, "Molho de tomate, mussarela, pepperoni", 1),
("Quatro Queijos", "Grande", 60.00, "Mussarela, provolone, parmesão, gorgonzola", 2),
("Pizza Vegana", "Média", 50.00, "Molho de tomate, mussarela vegana, pimentão, azeitonas, cebola", 3),
("Chocolate", "Pequena", 40.00, "Chocolate ao leite, chocolate granulado", 4),
("Romeu e Julieta", "Média", 45.00, "Queijo mussarela, goiabada", 4),
("Portuguesa", "Grande", 120.00, "Molho de tomate, mussarela, presunto, ovos, cebola, azeitonas", 5),
("Baiana", "Grande", 105.00, "Molho de tomate, mussarela, calabresa, pimenta, cebola", 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = "Doce"