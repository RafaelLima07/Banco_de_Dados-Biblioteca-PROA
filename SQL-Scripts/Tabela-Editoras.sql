SELECT * FROM Editoras;

INSERT INTO Editoras(nome_editora, cep_editora) VALUES
("Nova Fronteira", "25215-365"),
("Companhia das Letras", "07232-151"),
("Companhia Editora Nacional", "06460-010"),
("Martin Claret", "01254-010"),
("Penguin Companhia", "80730-400"),
("Penguin Companhia", "80730-400"),
("Companhia Editora Nacional", "06460-010");

UPDATE Editoras
	SET editora_id = 13
    WHERE editora_id = 20;