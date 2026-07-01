-- Criar tabela de Seleções
CREATE TABLE Selecoes (
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

-- Criar tabela de Jogos (Mata-mata)
CREATE TABLE JogosCopa (
    id_jogo INT PRIMARY KEY,
    fase VARCHAR(30),
    data_jogo DATE,
    horario TIME,
    id_mandante INT,
    id_visitante INT,
    FOREIGN KEY (id_mandante) REFERENCES Selecoes(id),
    FOREIGN KEY (id_visitante) REFERENCES Selecoes(id)
);

-- Inserir algumas seleções classificadas para as oitavas
INSERT INTO Selecoes (id, nome) VALUES 
(1, 'Brasil'), (2, 'Noruega'), (3, 'Canadá'), 
(4, 'Marrocos'), (5, 'Paraguai'), (6, 'França'),
(7, 'México'), (8, 'Inglaterra');

-- Inserir os jogos definidos das Oitavas de Final
INSERT INTO JogosCopa (id_jogo, fase, data_jogo, horario, id_mandante, id_visitante) VALUES
(101, 'Oitavas de Final', '2026-07-04', '14:00:00', 3, 4), -- Canadá x Marrocos
(102, 'Oitavas de Final', '2026-07-04', '18:00:00', 5, 6), -- Paraguai x França
(103, 'Oitavas de Final', '2026-07-05', '17:00:00', 1, 2), -- Brasil x Noruega
(104, 'Oitavas de Final', '2026-07-05', '21:00:00', 7, 8); -- México x Inglaterra
