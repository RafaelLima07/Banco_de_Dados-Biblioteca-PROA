CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE Livros (
    livros_id INT PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    editora VARCHAR(255),
    ano_publicacao INT,
    isbn VARCHAR(13)
);

INSERT INTO Livros (livros_id, titulo, autor, editora, ano_publicacao, isbn) VALUES 
('A Culpa é das Estrelas', 'John Green', 'Intrínseca', 2012, '9788580573466'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, '9788532511010'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Martins Fontes', 1954, '9788533603149'),
('The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '1951', '9780316769488'),
('1984', 'George Orwell', 'Companhia Editora Nacional', 1949, '9788522106169'),
('Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Intrínseca', 2005, '9788598078355');

ALTER TABLE Livros
	MODIFY COLUMN livros_id INT AUTO_INCREMENT;

INSERT INTO Livros (titulo, autor, editora, ano_publicacao, isbn) VALUES 
('A Culpa é das Estrelas', 'John Green', 'Intrínseca', 2012, '9788580573466'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, '9788532511010'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Martins Fontes', 1954, '9788533603149'),
('The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '1951', '9780316769488'),
('1984', 'George Orwell', 'Companhia Editora Nacional', 1949, '9788522106169'),
('Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Intrínseca', 2005, '9788598078355');

INSERT INTO Livros (titulo, ano_publicacao, isbn) VALUES 
('A Culpa é das Estrelas', 2012, '9788580573466'),
('Harry Potter e a Pedra Filosofal', 1997, '9788532511010'),
('O Senhor dos Anéis: A Sociedade do Anel', 1954, '9788533603149'),
('The Catcher in the Rye', '1951', '9780316769488'),
('1984', 1949, '9788522106169'),
('Percy Jackson e o Ladrão de Raios', 2005, '9788598078355');

CREATE TABLE Autores (
	autor_id INT AUTO_INCREMENT PRIMARY KEY,
	nome_autor VARCHAR(255),
    idade_autor INT 
);

INSERT INTO Autores (nome_autor, idade_autor) VALUES
("John Green", "46"),
("J.K. Rownling","58"),
("J.R.R. Tolkien","81"),
("J.D. Salinger","91"),   
("Geroge Owell","46"),    
("Rick Riordan","59");  

CREATE TABLE Editoras (
	editora_id INT AUTO_INCREMENT PRIMARY KEY,
	nome_editora VARCHAR(255),
    cep_editora VARCHAR(9)
);

INSERT INTO Editoras (nome_editora, cep_editora) VALUES
("Intrínseca","07250-000"),
("Rocco","06422-122"),   
("Martins Fontes","01325-030"),   
("Little, Brown and Company","05411-000"),   
("Companhia Editora Nacional","06460-010"),   
("Intrínseca","07250-000");










    