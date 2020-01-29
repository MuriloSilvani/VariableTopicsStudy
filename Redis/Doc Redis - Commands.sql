echo 'phrase';

-- Criar chave
SET chave 'valor'
SET total '23'

-- Buscar chave
GET chave
GET total

-- Deletar chave
DEL chave
DEL total

-- listar chaves
KEYS *

-- Chave +definida
SET chave:variavel:chavevar: valor
SET resultado:10-05-2020:megasena '10, 22, 33, 35, 45, 46'
SET resultado:17-05-2015:megasena "2, 15, 18, 25, 28, 32"
SET resultado:10-05-2015:megasena "4, 16, 19, 23, 28, 43"
-- tipo:identificador:campo
-- tipo do objeto: no caso, é do tipo "resultado";
-- identificador: no caso, é a data, aquilo que o faz diferente dos outros objetos;
-- campo do identificador: onde o objeto, com seu tipo e já identificado, é armazenado. No caso, "megasena".

-- Definir multiplas chaves
MSET chave1 valor1 chave2 valor2 chaven valorn
MSET resultado:03-05-2015:megasena "1, 3, 17, 19, 24, 26" resultado:22-04-2015:megasena "15, 18, 20, 32, 37, 41" resultado:15-04-2015:megasena "10, 15, 18, 22, 35, 43"
MSET resultado:05-05-2015:gigasena "1, 25, 34, 67, 89, 90" resultado:15-05-2015:gigasena "2, 14, 28, 56, 78, 88" resultado:25-05-2015:gigasena "4, 17, 38, 45, 57, 68" resultado:29-05-2015:lotomania "02, 04, 05, 10, 13"

-- Filtrar busca de chaves
KEYS 'resultado:*'
KEYS 'resultado:*-05-2020:megasena'
KEYS 'resultado:??-05-2020:megasena'
KEYS 'resultado:0?-05-2020:megasena'
KEYS 'resultado:0[37]-??-????:megasena'
KEYS 'resultado:?[37]-??-????:megasena'

-- hashes: valores complexos
HSET resultado:24-05-2020:megasena "numeros" "13, 17, 19, 25, 28, 32"
HSET resultado:24-05-2020:megasena "ganhadores" 23

HGET resultado:24-05-2020:megasena "ganhadores"

HDEL resultado:24-05-2020:megasena "ganhadores"

HMSET nome_da_chave campo1 "Ola" campo2 "Mundo"
HMSET resultado:05-06-2015:megasena numeros "13, 17, 19, 25, 28, 32" ganhadores 23

HGETALL "resultado:05-06-2015:megasena"



HSET sessao:usuario:1675 nome guilherme
HSET sessao:usuario:1675 total_de_produtos 3
HSET sessao:usuario:1675 sobrenome silveira

-- setar tempo para expirar
EXPIRE chave tempoSegundo
EXPIRE sessao:usuario:1675 30
-- cosulatar tempo para expirar
TTL sessao:usuario:1675

HGETALL sessao:usuario:1675





GET pagina:/contato:25-05-2015
-- Increment, soma mais 1
INCR pagina:/contato:25-05-2015
-- Increment, soma mais valor
INCRBY compras:25-05-2015:valor 22
INCRBYFLOAT compras:25-05-2015:valor 11.50

-- Decremencrement, diminui mais 1
DECR pagina:/contato:25-05-2015


-- Uso de boolean (bit)
SETBIT chave valor bit
SETBIT acesso:userid 36 1
-- Contar bit true
BITCOUNT acesso:userid

SETBIT acesso:28-01-2020 1 1
SETBIT acesso:28-01-2020 2 1
SETBIT acesso:28-01-2020 3 0

SETBIT acesso:29-01-2020 1 0
SETBIT acesso:29-01-2020 2 0
SETBIT acesso:29-01-2020 3 1

-- Operadores
BITOP AND acesso:28-e-29-01-2020 acesso:28-01-2020 acesso:29-01-2020

GETBIT acesso:28-e-29-01-2020


BITOP OR acesso:28-ou-29-01-2020 acesso:28-01-2020 acesso:29-01-2020
BITCOUNT acesso:28-ou-29-01-2020














BITOP AND acesso:/home:27e28-01-2020 acesso:/home:27-01-2020 acesso:/home:28-01-2020

BITOP OR acesso:/home:27ou28-01-2020 acesso:/home:27-01-2020 acesso:/home:28-01-2020


SETBIT acesso:/home:27-01-2020 1 0
SETBIT acesso:/home:27-01-2020 2 0
SETBIT acesso:/home:27-01-2020 3 1
SETBIT acesso:/home:27-01-2020 4 1

SETBIT acesso:/home:28-01-2020 1 0
SETBIT acesso:/home:28-01-2020 2 1
SETBIT acesso:/home:28-01-2020 3 0
SETBIT acesso:/home:28-01-2020 4 1

BITCOUNT acesso:/home:27e28-01-2020
BITCOUNT acesso:/home:27ou28-01-2020
