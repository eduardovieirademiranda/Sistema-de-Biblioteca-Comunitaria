-- ============================================
-- BANCO DE DADOS - SISTEMA BIBLIOTECA
-- ATIVIDADE 4 - SCRIPT SQL COMPLETO
-- ============================================

-- (OPCIONAL) CRIAR BANCO
-- CREATE DATABASE BibliotecaComunitaria;
-- USE BibliotecaComunitaria;

-- ============================================
-- CRIAÇÃO DAS TABELAS
-- ============================================

CREATE TABLE Biblioteca (
    id_biblioteca INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Endereco VARCHAR(150)
);

CREATE TABLE Livros (
    ISBN INT PRIMARY KEY,
    Titulo VARCHAR(100),
    Genero VARCHAR(100),
    Ano INT,
    Autor VARCHAR(100),
    idBiblioteca INT,
    FOREIGN KEY (idBiblioteca) REFERENCES Biblioteca(id_biblioteca)
);

CREATE TABLE Leitores (
    id_leitor INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Endereco VARCHAR(150),
    Gmail VARCHAR(120)
);

CREATE TABLE funcionario (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Cargo VARCHAR(100)
);

CREATE TABLE Emprestimo (
    id_Emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    Data_emprestimo DATE NOT NULL,
    Data_devolucao DATE NOT NULL,
    Data_Prevista_Devolucao DATE NOT NULL,
    idFuncionario INT,
    idLeitores INT,
    FOREIGN KEY (idFuncionario) REFERENCES funcionario(id_funcionario),
    FOREIGN KEY (idLeitores) REFERENCES Leitores(id_leitor)
);

CREATE TABLE ItemEmprestimo (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    idEmprestimo INT NOT NULL,
    ISBN INT NOT NULL,
    FOREIGN KEY (idEmprestimo) REFERENCES Emprestimo(id_Emprestimo),
    FOREIGN KEY (ISBN) REFERENCES Livros(ISBN)
);

-- ============================================
-- INSERÇÃO DE DADOS
-- ============================================

-- Inserir biblioteca
INSERT INTO Biblioteca (Nome, Endereco)
VALUES ('Biblioteca Comunitaria Central', 'Rua das Flores, 123');

-- Inserir livros
INSERT INTO Livros (ISBN, Titulo, Genero, Ano, Autor, idBiblioteca)
VALUES
(1001, 'A Sombra do Vento', 'Romance', 2001, 'Carlos Ruiz Zafon', 1),
(1002, 'O Conto da Aia', 'Distopia', 1985, 'Margaret Atwood', 1),
(1003, '1984', 'Distopia', 1949, 'George Orwell', 1),
(1004, 'O Hobbit', 'Fantasia', 1937, 'J.R.R. Tolkien', 1),
(1005, 'Dom Casmurro', 'Classico', 1899, 'Machado de Assis', 1),
(1006, 'O Alienista', 'Classico', 1882, 'Machado de Assis', 1),
(1007, 'It: A Coisa', 'Terror', 1986, 'Stephen King', 1),
(1008, 'Coraline', 'Fantasia', 2002, 'Neil Gaiman', 1),
(1009, 'A Menina que Roubava Livros', 'Drama', 2005, 'Markus Zusak', 1),
(1010, 'Duna', 'Ficcao', 1965, 'Frank Herbert', 1),
(1011, 'O Pequeno Principe', 'Infantil', 1943, 'Antoine de Saint-Exupery', 1),
(1012, 'Admiravel Mundo Novo', 'Distopia', 1932, 'Aldous Huxley', 1),
(1013, 'O Nome do Vento', 'Fantasia', 2007, 'Patrick Rothfuss', 1),
(1014, 'A Garota no Trem', 'Suspense', 2015, 'Paula Hawkins', 1),
(1015, 'Jogos Vorazes', 'Distopia', 2008, 'Suzanne Collins', 1);

-- Inserir leitores
INSERT INTO Leitores (Nome, Endereco, Gmail)
VALUES
('Ana Souza', 'Rua das Flores, 123', 'ana.souza@gmail.com'),
('Bruno Lima', 'Av. Central, 45', 'bruno.lima@gmail.com'),
('Carla Mendes', 'Rua Verde, 98', 'carla.mendes@gmail.com'),
('Daniel Torres', 'Rua Azul, 210', 'daniel.torres@gmail.com'),
('Eduarda Silva', 'Rua das Acacias, 77', 'eduarda.silva@gmail.com'),
('Felipe Santos', 'Av. Paulista, 1500', 'felipe.santos@gmail.com'),
('Gabriela Duarte', 'Rua do Sol, 34', 'gabriela.duarte@gmail.com'),
('Hugo Martins', 'Rua da Praia, 55', 'hugo.martins@gmail.com'),
('Isabela Costa', 'Rua das Laranjeiras, 90', 'isabela.costa@gmail.com'),
('Joao Farias', 'Rua Nova, 12', 'joao.farias@gmail.com'),
('Karen Almeida', 'Av. Brasil, 300', 'karen.almeida@gmail.com'),
('Leonardo Peixoto', 'Rua Sao Jose, 88', 'leonardo.peixoto@gmail.com'),
('Mariana Rocha', 'Rua Bela Vista, 101', 'mariana.rocha@gmail.com'),
('Nicolas Braga', 'Rua Campo Belo, 44', 'nicolas.braga@gmail.com'),
('Olivia Moura', 'Rua Horizonte, 29', 'olivia.moura@gmail.com');

-- Inserir funcionarios
INSERT INTO funcionario (Nome, Cargo)
VALUES
('Marcos Silva', 'Atendente'),
('Juliana Costa', 'Bibliotecaria'),
('Rafael Andrade', 'Assistente'),
('Bianca Souza', 'Gerente'),
('Thiago Mendes', 'Auxiliar'),
('Patricia Gomes', 'Atendente'),
('Luiz Fernando', 'Bibliotecario'),
('Camila Duarte', 'Recepcionista'),
('Marcelo Farias', 'Coordenador'),
('Sabrina Rocha', 'Assistente Administrativa');

-- Inserir emprestimos
INSERT INTO Emprestimo
(Data_emprestimo, Data_devolucao, Data_Prevista_Devolucao, idFuncionario, idLeitores)
VALUES
('2025-01-10', '2025-01-17', '2025-01-15', 1, 3),
('2025-01-12', '2025-01-19', '2025-01-18', 2, 5),
('2025-01-15', '2025-01-22', '2025-01-20', 3, 8),
('2025-01-20', '2025-01-27', '2025-01-25', 4, 1),
('2025-01-22', '2025-01-29', '2025-01-28', 5, 4),
('2025-01-25', '2025-02-01', '2025-01-30', 6, 7),
('2025-01-28', '2025-02-04', '2025-02-02', 7, 2),
('2025-02-01', '2025-02-08', '2025-02-06', 8, 9),
('2025-02-05', '2025-02-12', '2025-02-11', 9, 10),
('2025-02-07', '2025-02-14', '2025-02-13', 10, 6);

-- Inserir itens de emprestimo
INSERT INTO ItemEmprestimo (idEmprestimo, ISBN)
VALUES
(1, 1001),(1, 1005),
(2, 1003),
(3, 1008),(3, 1012),
(4, 1002),
(5, 1007),
(6, 1004),(6, 1009),(6, 1014),
(7, 1006),
(8, 1010),(8, 1013),
(9, 1011),
(10, 1015);

-- ============================================
-- CONSULTAS (SELECT)
-- ============================================

-- Consulta 1: Livros de Romance
SELECT ISBN, Titulo, Genero, Ano, Autor
FROM Livros
WHERE Genero = 'Romance'
ORDER BY Ano DESC;

-- Consulta 2: 5 leitores mais recentes
SELECT id_leitor, Nome, Endereco, Gmail
FROM Leitores
ORDER BY id_leitor DESC
LIMIT 5;

-- Consulta 3: Emprestimos com leitor e funcionario
SELECT 
    e.id_Emprestimo,
    e.Data_emprestimo,
    e.Data_Prevista_Devolucao,
    l.Nome AS NomeLeitor,
    f.Nome AS NomeFuncionario
FROM Emprestimo e
JOIN Leitores l ON e.idLeitores = l.id_leitor
JOIN funcionario f ON e.idFuncionario = f.id_funcionario
ORDER BY e.Data_emprestimo DESC;

-- Consulta 4: Emprestimos + Livros
SELECT 
    e.id_Emprestimo,
    l.Nome AS NomeLeitor,
    lv.Titulo AS TituloLivro,
    e.Data_emprestimo,
    e.Data_devolucao
FROM Emprestimo e
JOIN Leitores l ON e.idLeitores = l.id_leitor
JOIN ItemEmprestimo ie ON e.id_Emprestimo = ie.idEmprestimo
JOIN Livros lv ON ie.ISBN = lv.ISBN
ORDER BY e.Data_emprestimo DESC;

-- ============================================
-- UPDATE (AMANHÃ)
-- ============================================

-- Exemplo:
-- UPDATE Leitores SET Nome = 'Novo Nome' WHERE id_leitor = 5;

-- ============================================
-- DELETE (AMANHÃ)
-- ============================================

-- Exemplo:
-- DELETE FROM Leitores WHERE id_leitor = 15;

