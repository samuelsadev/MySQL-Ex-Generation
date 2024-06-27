CREATE TABLE tb_estudantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    curso VARCHAR(50) NOT NULL,
    nota DECIMAL(4, 2) NOT NULL
);

INSERT INTO tb_estudantes (nome, idade, curso, nota)
VALUES
("Maria Silva", 17, "Matemática", 8.7),
("João Oliveira", 16, "História", 7.5),
("Ana Santos", 18, "Física", 9.2),
("Lucas Costa", 17, "Biologia", 6.8),
("Juliana Pereira", 18, "Química", 8.9),
("Pedro Souza", 16, "Geografia", 7.2),
("Carla Lima", 17, "Inglês", 8.1),
("Matheus Santos", 18, "Artes", 7.4);

SELECT * FROM tb_estudantes
WHERE nota > 7.0;

SELECT * FROM tb_estudantes
WHERE nota <= 7.0;

UPDATE tb_estudantes
SET nota = 7.8
WHERE nome = "João Oliveira";