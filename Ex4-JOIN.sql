USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);

INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo'),
('Arqueiro', 'Especialista em ataques à distância'),
('Mago', 'Usuário de magias e feitiços'),
('Ladino', 'Especialista em furtividade e ataques rápidos'),
('Paladino', 'Guerreiro sagrado com habilidades de cura');

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
     nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
('UrubuDoPix', 10, 2500, 1500, 1),
('LoboPidão', 15, 3000, 1800, 1),
('Raddan', 8, 2000, 1200, 2),
('Radagon', 20, 3500, 1100, 2),
('Malenia', 12, 1500, 1000, 3),
('Miquella', 18, 2200, 1300, 3),
('Kratos', 22, 2700, 1600, 4),
('Udir', 25, 2000, 2000, 5);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';
SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = "Mago";