SELECT * FROM Livros;

ALTER TABLE Livros
	DROP COLUMN autor,
    DROP COLUMN editora;
    
ALTER TABLE Livros
	ADD COLUMN autor_id INT NOT NULL,
    ADD COLUMN editora_id INT NOT NULL;

UPDATE Livros
	SET autor_id = 13
	WHERE livros_id = 13;

UPDATE Livros
	SET editora_id = 12
    WHERE livros_id = 12;
    
ALTER TABLE Livros 
	ADD FOREIGN KEY (autor_id) REFERENCES Autores(autor_id),
    ADD FOREIGN KEY (editora_id) REFERENCES Editoras(editora_id);
    
INSERT INTO Livros (titulo,ano_publicacao, isbn, autor_id, editora_id) VALUES
('Grande Sertão: Veredas', 1956, '9788520923251', 7, 7),
('Memórias Póstumas de Brás Cubas', 1881, '9788535910663', 8, 8),
('Vidas Secas', 1938, '9788572326972', 9, 9),
('O Alienista', 1882, '9788572327429', 10, 10),
('O Cortiço', 1890, '9788579027048', 11, 11),
('Dom Casmurro', 1899, '9788583862093', 12, 12),
('Macunaíma', 1928, '97885030123', 13, 13);

UPDATE Livros
	SET livros_id = 13
    WHERE livros_id = 20;

SELECT Livros.livros_id, Livros.titulo, Livros.ano_publicacao, Livros.isbn, Autores.autor_id, Autores.nome_autor, Autores.idade_autor, Editoras.editora_id, Editoras.nome_editora, Editoras.cep_editora
FROM Livros
INNER JOIN Autores ON Livros.autor_id=Autores.autor_id
INNER JOIN Editoras ON Livros.editora_id=Editoras.editora_id;
    