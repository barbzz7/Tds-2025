-- ==========================================
-- CRIANDO AS TABELAS
-- ==========================================

-- Criar tabela de clientes
CREATE TABLE clientes (
    -- ID único do cliente, gerado automaticamente
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- Nome do cliente
    nome VARCHAR(100) NOT NULL,

    -- Cidade onde o cliente mora
    cidade VARCHAR(50) NOT NULL,

    -- Idade do cliente
    -- O CHECK permite somente idades entre 0 e 120
    idade INT NOT NULL CHECK (idade >= 0 AND idade <= 120)
);


-- Criar tabela de produtos
CREATE TABLE produtos (
    -- ID único do produto
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- Nome do produto
    nome VARCHAR(100) NOT NULL,

    -- Categoria do produto
    categoria VARCHAR(50) NOT NULL,

    -- Preço do produto
    -- DECIMAL permite armazenar valores com casas decimais
    -- O CHECK impede preços negativos
    preco DECIMAL(10,2) NOT NULL CHECK (preco >= 0)
);


-- ==========================================
-- INSERINDO DADOS
-- ==========================================

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


-- ==========================================
-- CONSULTAS
-- ==========================================

-- 1
-- Mostra o nome e o preço dos produtos
-- que custam mais de 200.
-- ORDER BY DESC organiza do maior para o menor preço.
SELECT nome, preco
FROM produtos
WHERE preco > 200
ORDER BY preco DESC;


-- 2
-- DISTINCT evita que uma cidade apareça repetida.
-- Mostra somente as cidades diferentes dos clientes.
SELECT DISTINCT cidade
FROM clientes;


-- 3
-- LIKE '%Game%' procura produtos que tenham
-- a palavra "Game" em qualquer parte do nome.
SELECT nome
FROM produtos
WHERE nome LIKE '%Game%';


-- 4
-- Mostra os 3 produtos mais baratos.
-- ASC organiza do menor para o maior.
SELECT *
FROM produtos
ORDER BY preco ASC
LIMIT 3;


-- 5
-- Mostra os nomes dos clientes que moram
-- em Porto Alegre ou Canoas.
SELECT nome
FROM clientes
WHERE cidade = 'Porto Alegre'
   OR cidade = 'Canoas';


-- 6
-- Mostra todos os clientes que moram em Canoas.
SELECT *
FROM clientes
WHERE cidade = 'Canoas';


-- 7
-- BETWEEN procura idades entre 30 e 40,
-- incluindo 30 e 40.
SELECT *
FROM clientes
WHERE idade BETWEEN 30 AND 40;


-- 8
-- Procura produtos que tenham "Note" no nome.
SELECT *
FROM produtos
WHERE nome LIKE '%Note%';


-- 9
-- Mostra clientes de Porto Alegre,
-- São Paulo ou Curitiba.
SELECT *
FROM clientes
WHERE cidade = 'Porto Alegre'
   OR cidade = 'São Paulo'
   OR cidade = 'Curitiba';


-- 10
-- Mostra produtos da categoria Games
-- e organiza pelo menor preço primeiro.
SELECT *
FROM produtos
WHERE categoria LIKE '%Game%'
ORDER BY preco ASC;


-- 11
-- Mostra os 5 produtos mais caros.
SELECT *
FROM produtos
ORDER BY preco DESC
LIMIT 5;


-- 12
-- Mostra os 3 clientes mais jovens.
SELECT *
FROM clientes
ORDER BY idade ASC
LIMIT 3;


-- 13
-- Mostra nome e preço dos produtos
-- que custam menos de 100.
SELECT nome, preco
FROM produtos
WHERE preco < 100;


-- 14
-- Mostra produtos que custam mais de 1000
-- e pertencem à categoria Informática ou Eletrônicos.
SELECT nome, preco
FROM produtos
WHERE preco > 1000
AND (categoria = 'Informática' OR categoria = 'Eletrônicos');


-- 16
-- Mostra os clientes que não moram em São Paulo.
SELECT *
FROM clientes
WHERE cidade != 'São Paulo';


-- ==========================================
-- ATUALIZANDO CATEGORIAS
-- ==========================================

-- Altera a categoria do produto de ID 3
UPDATE produtos
SET categoria = 'Utensílios'
WHERE id = 3;

-- Altera a categoria dos produtos selecionados
UPDATE produtos
SET categoria = 'Eletrônicos'
WHERE id IN (4, 12, 13, 20);

-- Altera a categoria dos produtos selecionados
UPDATE produtos
SET categoria = 'Informática'
WHERE id IN (5, 7, 8, 10, 11, 14, 15, 16, 18, 19);

-- Altera a categoria do produto 6
UPDATE produtos
SET categoria = 'Vestuário'
WHERE id = 6;

-- Altera a categoria dos produtos 9 e 17
UPDATE produtos
SET categoria = 'Brinquedos'
WHERE id IN (9, 17);


-- ==========================================
-- CRIANDO A TABELA COMPRAS
-- ==========================================

-- A tabela compras relaciona clientes e produtos.
-- Um cliente pode comprar vários produtos
-- e um produto pode ser comprado por vários clientes.
CREATE TABLE compras (
    -- ID único da compra
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- ID do cliente que fez a compra
    cliente_id INT NOT NULL,

    -- ID do produto comprado
    produto_id INT NOT NULL,

    -- Data e hora da compra
    data_compra DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    -- Quantidade de produtos comprados
    quantidade INT NOT NULL CHECK (quantidade > 0),

    -- Relaciona a compra com a tabela clientes
    CONSTRAINT fk_compras_cliente
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),

    -- Relaciona a compra com a tabela produtos
    CONSTRAINT fk_compras_produto
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);
