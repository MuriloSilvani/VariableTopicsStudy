USE vendas_sucos;

SELECT * FROM sucos_vendas.tabela_de_produtos;

SELECT codigo_do_produto AS codigo, nome_do_produto AS descritor,
embalagem, tamanho, sabor, preco_de_lista AS preco_lista
FROM sucos_vendas.tabela_de_produtos;

SELECT * FROM produtos;

INSERT INTO produtos
SELECT codigo_do_produto as codigo, nome_do_produto as descritor,
sabor, tamanho, embalagem, preco_de_lista as preco_lista
FROM sucos_vendas.tabela_de_produtos
WHERE codigo_do_produto NOT IN (SELECT codigo FROM produtos);

SELECT * FROM produtos;



INSERT INTO clientes
(CPF,NOME,ENDERECO,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA)

SELECT CPF, NOME, ENDERECO_1, BAIRRO, CIDADE, ESTADO, CEP,    DATA_DE_NASCIMENTO, IDADE, SEXO, LIMITE_DE_CREDITO,    VOLUME_DE_COMPRA, PRIMEIRA_COMPRA FROM sucos_vendas.tabela_de_clientes WHERE CPF NOT IN (SELECT CPF FROM clientes);