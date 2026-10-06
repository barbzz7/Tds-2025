-- Criar tabela clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY, -- ID único do cliente
    nome VARCHAR(100) NOT NULL, -- Nome do cliente
    cidade VARCHAR(50) NOT NULL, -- Cidade onde o cliente mora
    idade INT NOT NULL CHECK (idade >= 0 AND idade <= 120) -- Idade entre 0 e 120
);


-- Criar tabela produtos
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY, -- ID único do produto
    nome VARCHAR(100) NOT NULL, -- Nome do produto
    categoria VARCHAR(50) NOT NULL, -- Categoria do produto
    preco DECIMAL(10,2) NOT NULL CHECK (preco >= 0) -- Preço do produto, sem valores negativos
);


-- Inserir dados na tabela clientes
INSERT INTO clientes (id, nome, cidade, idade) VALUES
(1, 'Lucas Fernandes', 'Salvador', 32),
(2, 'Pedro Cavalcanti', 'Canoas', 50),
(3, 'Bruno da Cunha', 'Curitiba', 41),
(4, 'Rafaela da Rocha', 'São Paulo', 36),
(5, 'Júlia Barros', 'Salvador', 52),
(6, 'Marcela Ribeiro', 'Canoas', 47),
(7, 'Renan Costa', 'Porto Alegre', 42),
(8, 'Ricardo Cavalcanti', 'Curitiba', 56),
(9, 'Vanessa das Neves', 'Canoas', 54),
(10, 'Juliana da Cunha', 'Curitiba', 28),
(11, 'Lucas da Rocha', 'São Paulo', 38),
(12, 'Carolina Moreira', 'Porto Alegre', 65),
(13, 'Ana Fernandes', 'São Paulo', 44),
(14, 'Felipe Martins', 'Canoas', 60),
(15, 'Gabriela Pereira', 'Curitiba', 41),
(16, 'André Almeida', 'Salvador', 26),
(17, 'Eduardo Correia', 'Porto Alegre', 18),
(18, 'Larissa Correia', 'Curitiba', 39),
(19, 'Diego Barbosa', 'São Paulo', 58),
(20, 'Camila Rodrigues', 'Canoas', 23);


-- Inserir dados na tabela produtos
INSERT INTO produtos (id, nome, categoria, preco) VALUES
(1, 'Celular 49', 'Informática', 544.88),
(2, 'Camiseta 78', 'Vestuário', 1212.62),
(3, 'Copo 69', 'Informática', 1459.94),
(4, 'Gamepad 11', 'Brinquedos', 446.84),
(5, 'HD 47', 'Brinquedos', 296.51),
(6, 'Camiseta 7', 'Eletrônicos', 990.37),
(7, 'Notebook 89', 'Alimentos', 121.96),
(8, 'Boneco 41', 'Informática', 1283.01),
(9, 'Celular 15', 'Informática', 881.59),
(10, 'Mouse 95', 'Informática', 1251.32),
(11, 'Notebook 64', 'Games', 1226.12),
(12, 'Fone 83', 'Games', 83.34),
(13, 'Fone 37', 'Brinquedos', 428.27),
(14, 'Teclado 77', 'Brinquedos', 1142.89),
(15, 'Mouse 2', 'Vestuário', 90.01),
(16, 'HD 79', 'Brinquedos', 1255.95),
(17, 'Boneco 29', 'Brinquedos', 387.66),
(18, 'Notebook 5', 'Informática', 765.00),
(19, 'Teclado 10', 'Eletrônicos', 781.18),
(20, 'Gamepad 54', 'Games', 274.66);


-- 1
-- Mostra o nome e o preço dos produtos com preço maior que 200
-- ORDER BY DESC organiza do maior para o menor
SELECT nome, preco
FROM produtos
WHERE preco > 200
ORDER BY preco DESC;


-- 2
-- Mostra as cidades sem repetir nenhuma
-- DISTINCT remove valores duplicados
SELECT DISTINCT cidade
FROM clientes;


-- 3
-- Procura produtos que tenham "Game" no nome
-- % significa que pode existir qualquer texto antes ou depois
SELECT nome
FROM produtos
WHERE nome LIKE '%Game%';


-- 4
-- Mostra os produtos do mais barato para o mais caro
-- LIMIT 3 mostra somente os 3 primeiros
SELECT *
FROM produtos
ORDER BY preco ASC
LIMIT 3;


-- 5
-- Mostra os clientes que moram em Porto Alegre ou Canoas
-- CORREÇÃO: "nomes" não existe na tabela, o campo correto é "nome"
SELECT nome
FROM clientes
WHERE cidade = 'Porto Alegre'
   OR cidade = 'Canoas';


-- 6
-- Mostra todos os clientes que moram em Canoas
SELECT *
FROM clientes
WHERE cidade = 'Canoas';


-- 7
-- Mostra clientes com idade entre 30 e 40 anos
-- BETWEEN inclui os dois valores: 30 e 40
SELECT *
FROM clientes
WHERE idade BETWEEN 30 AND 40;


-- 8
-- Mostra produtos que possuem "Note" no nome
SELECT *
FROM produtos
WHERE nome LIKE '%Note%';


-- 9
-- Mostra clientes de Porto Alegre, São Paulo ou Curitiba
-- CORREÇÃO: os nomes das cidades precisam estar escritos corretamente
SELECT *
FROM clientes
WHERE cidade = 'Porto Alegre'
   OR cidade = 'São Paulo'
   OR cidade = 'Curitiba';


-- 10
-- Mostra produtos da categoria Games
-- Ordena os produtos do menor preço para o maior
SELECT *
FROM produtos
WHERE categoria LIKE '%Game%'
ORDER BY preco ASC;


-- 11
-- Mostra os 5 produtos mais caros
-- DESC coloca os maiores preços primeiro
SELECT *
FROM produtos
ORDER BY preco DESC
LIMIT 5;


-- 12
-- Mostra os 3 clientes mais novos
-- ASC organiza as idades da menor para a maior
SELECT *
FROM clientes
ORDER BY idade ASC
LIMIT 3;


-- 13
-- Mostra apenas o nome e o preço dos produtos
-- que custam menos de 100
SELECT nome, preco
FROM produtos
WHERE preco < 100;


-- 14
-- Mostra produtos com preço maior que 1000
-- e que sejam da categoria Informática ou Eletrônicos
-- Os parênteses deixam clara a ordem da condição
SELECT nome, preco
FROM produtos
WHERE preco > 1000
  AND (categoria = 'Informática' OR categoria = 'Eletrônicos');


-- 16
-- Mostra todos os clientes que NÃO moram em São Paulo
SELECT *
FROM clientes
WHERE cidade != 'São Paulo';


-- 17
-- Aqui não foi colocada nenhuma consulta.
-- Se você tiver o enunciado do exercício 17, pode colocar abaixo.
