show databases;

use <database>;

ctrl + l : limpar

SELECT count(id) FROM livros;

SELECT count(id) FROM autores;

desc <table>

SELECT *,
(SELECT count(l2.data_de_lancamento)
	FROM livros l2 where l2.data_de_lancamento = l.data_de_lancamento) AS anteriores
FROM livros l ORDER BY l.data_de_lancamento;

EXPLAIN SELECT *,
(SELECT count(l2.data_de_lancamento)
	FROM livros l2 where l2.data_de_lancamento = l.data_de_lancamento) AS anteriores
FROM livros l ORDER BY l.data_de_lancamento;

////////////////////////////////////////////////////////////////////////////////////////////

CREATE INDEX index_por_lancamento ON livros(data_de_lancamento);

SHOW INDEX FROM livros;

-- ////////////////////////////////////////////////////////////////////////////////////////////

SELECT * FROM livros WHERE preco > 20;

EXPLAIN SELECT * FROM livros WHERE preco > 20;

SHOW TABLES;

CREATE TABLE usuarios(
	id int(11) AUTO_INCREMENT PRIMARY KEY,
	nome varchar(100) NOT NULL,
	email_1 varchar(100) NOT NULL,
	email_2 varchar(100) NOT NULL,
	telefone varchar(100) NOT NULL,
	email_3 varchar(100)
);

ALTER TABLE usuarios ADD COLUMN email_4 varchar(100);

INSERT INTO usuarios(nome, email_1, email_2, telefone) VALUES('Lázaro Jr','lazaro@alura.com.br','lazaro@gmail.com','49999999999');
INSERT INTO usuarios(nome, email_1, email_2, telefone) VALUES('Caio Souza','caio@alura.com.br','caio@gmail.com','49999999999');
INSERT INTO usuarios(nome, email_1, email_2, telefone) VALUES('Alex Felipe','alex@alura.com.br','alex@gmail.com','49999999999');
INSERT INTO usuarios(nome, email_1, email_2, telefone) VALUES('Camila Castro','camila@alura.com.br','camila@gmail.com','49999999999');
INSERT INTO usuarios(nome, email_1, email_2, telefone) VALUES('Alberto Souza','alberto@alura.com.br','alberto@gmail.com','49999999999');

ALTER TABLE usuarios ADD COLUMN email_concatenado varchar(500);

INSERT INTO usuarios(nome, email_1, email_2, telefone, email_concatenado) VALUES(
	'Joao da Silva','joao@alura.com.br','joao@gmail.com','49999999999', 'joao@yahoo.com.br/js@alura.com.br/joao@uol.com.br'
);

SELECT SUBSTRING_INDEX(email_concatenado, '/') FROM usuarios WHERE id = 6;

-- ////////////////////////////////////////////////////////////////////////////////////////////

ALTER TABLE usuarios DROP COLUMN email_1;

SELECT * FROM usuarios;

CREATE TABLE emails(
	id integer PRIMARY KEY AUTO_INCREMENT NOT NULL,
	usuario_id integer NOT NULL,
	email varchar(100) NOT NULL,
	FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

INSERT INTO emails( usuario_id, email) VALUES ( 1, 'lazaro@yahoo.com.br');
INSERT INTO emails( usuario_id, email) VALUES ( 1, 'lpj@gmail.com');

SELECT * FROM emails;

SELECT u.nome, e.email FROM usuarios u JOIN emails e ON e.usuario_id = u.id;

-- ////////////////////////////////////////////////////////////////////////////////////////////

ALTER TABLE usuarios ADD COLUMN email_2 varchar(100);

UPDATE usuarios SET email_primario = 'lazaro@alura.com.br' , email_secundario = 'lazaro@gmail.com' WHERE id = 1;
UPDATE usuarios SET email_primario = 'caio@alura.com.br' , email_secundario = 'caio@gmail.com' WHERE id = 2;
UPDATE usuarios SET email_primario = 'alex@alura.com.br' , email_secundario = 'alex@gmail.com' WHERE id = 3;
UPDATE usuarios SET email_primario = 'camila@alura.com.br' , email_secundario = 'camila@gmail.com' WHERE id = 4;
UPDATE usuarios SET email_primario = 'alberto@alura.com.br' , email_secundario = 'alberto@gmail.com' WHERE id = 5;
UPDATE usuarios SET email_primario = 'josao@alura.com.br' , email_secundario = 'js@gmail.com' WHERE id = 6;



-- ////////////////////////////////////////////////////////////////////////////////////////////
-- ////////////////////////////////////////////////////////////////////////////////////////////
-- ////////////////////////////////////////////////////////////////////////////////////////////
