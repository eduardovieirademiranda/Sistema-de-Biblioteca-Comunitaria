-- =========================================
-- ATIVIDADE 4 - SISTEMA DE BIBLIOTECA COMUNITÁRIA
-- Banco de Dados: SistemaBibliotecaComunitaria
-- =========================================

-- 1) CRIAÇÃO DO BANCO E USO
CREATE DATABASE IF NOT EXISTS SistemaBibliotecaComunitaria;
USE SistemaBibliotecaComunitaria;

-- =========================================
-- 2) CRIAÇÃO DAS TABELAS (DDL)
-- =========================================

-- Tabela: Biblioteca
CREATE TABLE IF NOT EXISTS Biblioteca (
    idBiblioteca INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(150) NOT NULL
);

-- Tabela: Livros
CREATE TABLE IF NOT EXISTS Livros (
    ISBN INT PRIMARY KEY,
    Titulo VARCHAR(100) NOT NULL,
    Genero VARCHAR(50) NOT NULL,
    Ano INT NOT NULL,
    Autor VARCHAR(100) NOT NULL,
    idBiblioteca INT NOT NULL,
    FOREIGN KEY (idBiblioteca) REFERENCES Biblioteca(idBiblioteca)
);

-- Tabela: Leitores
CREATE TABLE IF NOT EXISTS Leitores (
    idLeitor INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(150) NOT NULL,
    Telefone VARCHAR(15) NOT NULL,
    Email VARCHAR(120) NOT NULL
);

-- Tabela: Funcionario
CREATE TABLE IF NOT EXISTS Funcionario (
    idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50) NOT NULL,
    Telefone VARCHAR(15) NOT NULL
);

-- Tabela: Emprestimo
CREATE TABLE IF NOT EXISTS Emprestimo (
    idEmprestimo INT PRIMARY KEY AUTO_INCREMENT,
    DataEmprestimo DATE NOT NULL,
    DataPrevistaDevolucao DATE NOT NULL,
    DataDevolucao DATE,
    idLeitor INT NOT NULL,
    idFuncionario INT NOT NULL,
    FOREIGN KEY (idLeitor) REFERENCES Leitores(idLeitor),
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario)
);

-- Tabela: ItemEmprestimo
CREATE TABLE IF NOT EXISTS ItemEmprestimo (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    idEmprestimo INT NOT NULL,
    ISBN INT NOT NULL,
    FOREIGN KEY (idEmprestimo) REFERENCES Emprestimo(idEmprestimo),
    FOREIGN KEY (ISBN) REFERENCES Livros(ISBN)
);

-- =========================================
-- 3) INSERÇÃO DE DADOS (INSERT)
-- =========================================

-- 3.1) Inserir uma biblioteca
INSERT INTO Biblioteca (Nome, Endereco)
VALUES ('Biblioteca Comunitária Central', 'Rua das Flores, 123 - Centro');

-- 3.2) Inserir 15 livros
INSERT INTO Livros (ISBN, Titulo, Genero, Ano, Autor, idBiblioteca)
VALUES
(1001, 'A Sombra do Vento', 'Romance', 2001, 'Carlos Ruiz Zafón', 1),
(1002, 'O Conto da Aia', 'Distopia', 1985, 'Margaret Atwood', 1),
(1003, '1984', 'Distopia', 1949, 'George Orwell', 1),
(1004, 'O Pequeno Príncipe', 'Fábula', 1943, 'Antoine de Saint-Exupéry', 1),
(1005, 'Dom Casmurro', 'Romance', 1899, 'Machado de Assis', 1),
(1006, 'A Menina que Roubava Livros', 'Drama', 2005, 'Markus Zusak', 1),
(1007, 'Orgulho e Preconceito', 'Romance', 1813, 'Jane Austen', 1),
(1008, 'O Nome do Vento', 'Fantasia', 2007, 'Patrick Rothfuss', 1),
(1009, 'O Senhor dos Anéis', 'Fantasia', 1954, 'J.R.R. Tolkien', 1),
(1010, 'A Garota do Lago', 'Suspense', 2016, 'Charlie Donlea', 1),
(1011, 'It: A Coisa', 'Terror', 1986, 'Stephen King', 1),
(1012, 'O Alquimista', 'Ficção', 1988, 'Paulo Coelho', 1),
(1013, 'Coraline', 'Fantasia', 2002, 'Neil Gaiman', 1),
(1014, 'O Hobbit', 'Fantasia', 1937, 'J.R.R. Tolkien', 1),
(1015, 'A Garota no Trem', 'Suspense', 2015, 'Paula Hawkins', 1);

-- 3.3) Inserir 5 leitores
INSERT INTO Leitores (Nome, Endereco, Telefone, Email)
VALUES
('Ana Souza',   'Rua das Laranjeiras, 45', '11987654321', 'ana.souza@gmail.com'),
('Bruno Lima',  'Av. Paulista, 1000',      '11999887766', 'bruno.lima@gmail.com'),
('Carla Mendes','Rua Verde, 82',           '11988776655', 'carla.mendes@gmail.com'),
('Diego Rocha', 'Rua Azul, 12',            '11977665544', 'diego.rocha@gmail.com'),
('Eduarda Ramos','Av. Central, 500',       '11966554433', 'eduarda.ramos@gmail.com');

-- 3.4) Inserir 2 funcionários
INSERT INTO Funcionario (Nome, Cargo, Telefone)
VALUES
('Marcos Silva', 'Bibliotecário', '1133221100'),
('Julia Ferreira','Assistente',   '1144556677');

-- 3.5) Inserir 3 empréstimos
INSERT INTO Emprestimo 
(DataEmprestimo, DataPrevistaDevolucao, DataDevolucao, idLeitor, idFuncionario)
VALUES
('2025-01-10', '2025-01-20', NULL, 1, 1),
('2025-01-08', '2025-01-18', NULL, 2, 2),
('2025-01-12', '2025-01-22', NULL, 3, 1);

-- 3.6) Inserir itens de empréstimo
INSERT INTO ItemEmprestimo (idEmprestimo, ISBN)
VALUES
(1, 1001),
(2, 1005),
(3, 1008);

-- =========================================
-- 4) ATUALIZAÇÃO DE DADOS (UPDATE)
-- =========================================

-- 4.1) Atualizar endereço de um leitor
UPDATE Leitores
SET Endereco = 'Rua Nova Esperança, 200'
WHERE idLeitor = 1;

-- 4.2) Atualizar cargo de um funcionário
UPDATE Funcionario
SET Cargo = 'Supervisor'
WHERE idFuncionario = 2;

-- 4.3) Atualizar data de devolução de um empréstimo
UPDATE Emprestimo
SET DataDevolucao = '2025-01-19'
WHERE idEmprestimo = 2;

-- =========================================
-- 5) REMOÇÃO DE DADOS (DELETE)
-- =========================================

-- 5.1) Remover um item de empréstimo
DELETE FROM ItemEmprestimo
WHERE id_item = 3;

-- 5.2) Remover um leitor sem empréstimos
DELETE FROM Leitores
WHERE idLeitor = 5;

-- 5.3) Remover um livro não utilizado em itens de empréstimo
DELETE FROM Livros
WHERE ISBN = 1014;

-- =========================================
-- 6) CONSULTAS (SELECT)
-- =========================================

-- 6.1) JOIN entre empréstimos e leitores
SELECT 
    Emprestimo.idEmprestimo,
    Leitores.Nome AS Leitor,
    Emprestimo.DataEmprestimo,
    Emprestimo.DataPrevistaDevolucao
FROM Emprestimo
JOIN Leitores ON Emprestimo.idLeitor = Leitores.idLeitor;

-- 6.2) Livros de fantasia ordenados por ano (WHERE + ORDER BY)
SELECT 
    Titulo, Autor, Ano
FROM Livros
WHERE Genero = 'Fantasia'
ORDER BY Ano ASC;

-- 6.3) Mostrar apenas os 5 primeiros livros (LIMIT)
SELECT ISBN, Titulo, Autor
FROM Livros
LIMIT 5;

-- 6.4) Leitores com e-mail do Gmail (LIKE)
SELECT Nome, Email
FROM Leitores
WHERE Email LIKE '%gmail.com';

-- 6.5) Quantidade de livros por gênero (COUNT + GROUP BY)
SELECT Genero, COUNT(*) AS Quantidade
FROM Livros
GROUP BY Genero
ORDER BY Quantidade DESC;
