DROP DATABASE IF EXISTS petshop;
CREATE DATABASE petshop CHARACTER SET utf8 COLLATE utf8_general_ci;
USE petshop;

CREATE TABLE Cliente (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    numero_telefone VARCHAR(20) NOT NULL,
    CPF VARCHAR(11) NOT NULL,
    endereço VARCHAR(100) NOT NULL
);

CREATE TABLE Compra (
    codigo_do_cliente VARCHAR(50) NOT NULL,
    descricao VARCHAR(500) NOT NULL,
    data DATE NOT NULL,
    produto VARCHAR(255) NOT NULL,
    numero INT NOT NULL
);

CREATE TABLE ItemCompra (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    codigo_do_produto VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario FLOAT NOT NULL,
    numero_da_compra INT NOT NULL
);

CREATE TABLE Produto (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    quantidade_em_estoque INT NOT NULL,
    preco FLOAT NOT NULL,
    id INT NOT NULL
);

INSERT INTO Cliente (nome_completo, numero_telefone, CPF, endereço)
VALUES
('João Silva', '11987654321', '12345678909', 'Rua ABC, 123'),
('Maria Oliveira', '11991234567', '98765432109', 'Rua DEF, 456'),
('Pedro Sousa', '11999999999', '11122233344', 'Rua GHI, 789');


INSERT INTO Compra (codigo_do_cliente, descricao, data, produto, numero)
VALUES
('João Silva', 'Compra de brinquedos para cães', '2022-01-10', 'Brinquedo para cães', 4),
('João Silva', 'Compra de acessórios para cães', '2022-01-15', 'Acessório para cães', 5),
('Maria Oliveira', 'Compra de ração para gatos', '2022-01-20', 'Ração para gatos', 6),
('Maria Oliveira', 'Compra de brinquedos para gatos', '2022-01-25', 'Brinquedo para gatos', 7),
('Pedro Sousa', 'Compra de alimentos para peixes', '2022-02-05', 'Alimento para peixes', 8),
('Pedro Sousa', 'Compra de acessórios para peixes', '2022-02-10', 'Acessório para peixes', 9);

INSERT INTO ItemCompra (codigo_do_produto, quantidade, preco_unitario, numero_da_compra)
VALUES
('Brinquedo para cães', 1, 25.00, 4),
('Ração para cães', 1, 50.00, 4),
('Acessório para cães', 2, 15.00, 5),
('Ração para cães', 1, 50.00, 5),
('Ração para gatos', 2, 30.00, 6),
('Brinquedo para gatos', 1, 20.00, 6),
('Brinquedo para gatos', 1, 20.00, 7),
('Ração para gatos', 1, 30.00, 7),
('Alimento para peixes', 2, 10.00, 8),
('Acessório para peixes', 1, 15.00, 8),
('Acessório para peixes', 2, 15.00, 9),
('Alimento para peixes', 1, 10.00, 9);

INSERT INTO Produto (nome, quantidade_em_estoque, preco, id)
VALUES
('Ração para cães', 100, 50.00, 1),
('Ração para gatos', 50, 30.00, 2),
('Brinquedo para gatos', 20, 20.00, 3),
('Acessório para peixes', 30, 15.00, 4),
('Brinquedo para cães', 20, 25.00, 5),
('Acessório para cães', 30, 15.00, 7),
('Alimento para peixes', 50, 10.00, 6);

SHOW TABLES;