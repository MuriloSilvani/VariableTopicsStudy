CREATE DATABASE farmacia;

USE farmacia;

<ddl_farmacia.sql>

SHOW TABLES;

DESC medicos;
DESC receitas;

SELECT nome_remedio, valor, quantidade, valor_total FROM receitas ORDER BY valor_total DESC;

SELECT nome_remedio, valor, quantidade, (valor * quantidade) as valor_total FROM receitas ORDER BY valor_total DESC;

ALTER TABLE receitas DROP COLUMN valor_total;

SELECT sum(valor * quantidade) as total_notas FROM receitas;

SELECT *, (valor * quantidade) as valor_total FROM receitas WHERE (valor * quantidade) > 100;
