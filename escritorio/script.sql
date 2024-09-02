DROP DATABASE IF EXISTS escritorio_de_engenharia;
CREATE DATABASE escritorio_de_engenharia CHARACTER SET utf8 COLLATE utf8_general_ci;
USE escritorio_de_engenharia;

CREATE TABLE Cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    numero_telefone VARCHAR(20) NOT NULL,
    nascimento DATE,
    idade INT
);

CREATE TABLE Projetos (
    id_projetos INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(50) NOT NULL,
    data DATE NOT NULL,
    nome VARCHAR(255) NOT NULL,
    cliente_id INT NOT NULL
);

CREATE TABLE Engenheiro (
    id_engenheiro INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    especializacao VARCHAR(255) NOT NULL
);

INSERT INTO Cliente (nome_completo, numero_telefone, nascimento, idade)
VALUES
('João Silva', '11 1234-5678', '1990-01-01', 32),
('Maria Souza', '11 9012-3456', '1985-06-15', 37),
('Pedro Oliveira', '11 7890-1234', '1995-03-20', 27);

INSERT INTO Projetos (codigo, data, nome, cliente_id)
VALUES
('PROJ-001', '2022-01-01', 'Projeto de Construção', 1),
('PROJ-002', '2022-06-01', 'Projeto de Reforma', 2),
('PROJ-003', '2022-09-01', 'Projeto de Ampliação', 3),
('PROJ-004', '2023-04-21', 'Projeto de Construção', 2),
('PROJ-002', '2023-05-12', 'Projeto de Reforma', 1),
('PROJ-003', '2023-11-11', 'Projeto de Ampliação', 3);

INSERT INTO Engenheiro (nome_completo, especializacao)
VALUES
('Engenheiro Civil', 'Construção'),
('Engenheiro Mecânico', 'Mecânica'),
('Engenheiro Elétrico', 'Elétrica');

SHOW TABLES;