
CREATE TABLE tb_jogos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    plataforma VARCHAR(50) NOT NULL
);

INSERT INTO tb_jogos (nome, descricao, preco, quantidade_estoque, plataforma)
VALUES
("FIFA 22", "Jogo de Futebol para PS5", 299.00, 30, "PlayStation 5"),
("The Legend of Zelda: Breath of the Wild", "Aventura para Nintendo Switch", 399.00, 25, "Nintendo Switch"),
("Cyberpunk 2077", "RPG de Ação para PC", 499.00, 15, "PC"),
("Call of Duty: Warzone", "Battle Royale para Xbox Series X", 299.00, 20, "Xbox Series X"),
("Animal Crossing: New Horizons", "Simulador Social para Nintendo Switch", 359.00, 18, "Nintendo Switch"),
("Assassin's Creed Valhalla", "Ação e Aventura para PS4", 449.00, 12, "PlayStation 4"),
("Genshin Impact", "RPG de Mundo Aberto para PC", 0.00, 50, "PC"),
("Fortnite", "Battle Royale Multiplataforma", 0.00, 40, "Multiplataforma");

SELECT * FROM tb_jogos
WHERE preco > 0;

SELECT * FROM tb_jogos
WHERE preco = 0.00;

UPDATE tb_jogos
SET preco = 449.00
WHERE nome = "Cyberpunk 2077";