-- Criando a tabela de clientes
CREATE TABLE clientes (
    -- ID único do cliente, gerado automaticamente
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- Nome do cliente, obrigatório
    nome VARCHAR(100) NOT NULL,

    -- Cidade do cliente, obrigatória
    cidade VARCHAR(50) NOT NULL,

    -- Idade do cliente, obrigatória
    -- CHECK impede valores menores que 0 ou maiores que 120
    idade INT NOT NULL CHECK (idade >= 0 AND idade <= 120)
);


-- Criando a tabela de produtos
CREATE TABLE produtos (
    -- ID único do produto
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- Nome do produto
    nome VARCHAR(100) NOT NULL,

    -- Categoria do produto
    categoria VARCHAR(50) NOT NULL,

    -- Preço do produto
    -- DECIMAL(10,2) permite valores com duas casas decimais
    -- CHECK impede preços negativos
    preco DECIMAL(10,2) NOT NULL CHECK (preco >= 0)
);


-- Inserindo dados na tabela de clientes
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


-- Inserindo dados na tabela de produtos
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


-- Atualizando as categorias dos produtos

-- Altera a categoria do produto de ID 3
UPDATE produtos
SET categoria = 'Utensílios'
WHERE id = 3;

-- Altera a categoria de vários produtos
UPDATE produtos
SET categoria = 'Eletrônicos'
WHERE id IN (4, 12, 13, 20);

-- Altera a categoria de vários produtos para Informática
UPDATE produtos
SET categoria = 'Informática'
WHERE id IN (5, 7, 8, 10, 11, 14, 15, 16, 18, 19);

-- Altera a categoria do produto de ID 6
UPDATE produtos
SET categoria = 'Vestuário'
WHERE id IN (6);

-- Altera a categoria dos produtos 9 e 17
UPDATE produtos
SET categoria = 'Brinquedos'
WHERE id IN (9, 17);


-- Criando a tabela compras
-- Essa tabela representa a relação entre clientes e produtos
-- Um cliente pode comprar vários produtos
-- E um produto pode ser comprado por vários clientes
CREATE TABLE compras (
    -- ID único da compra
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- ID do cliente que realizou a compra
    cliente_id INT NOT NULL,

    -- ID do produto comprado
    produto_id INT NOT NULL,

    -- Data e hora da compra
    -- Caso não seja informada, utiliza a data/hora atual
    data_compra DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    -- Quantidade de produtos comprados
    -- Deve ser maior que zero
    quantidade INT NOT NULL CHECK (quantidade > 0),

    -- Relaciona a compra com um cliente
    CONSTRAINT fk_compras_cliente
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),

    -- Relaciona a compra com um produto
    CONSTRAINT fk_compras_produto
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);


-- Inserindo dados na tabela compras
INSERT INTO compras (cliente_id, produto_id, data_compra, quantidade) 
VALUES
(1, 4, '2025-01-12', 1),
(1, 6, '2025-02-03', 2),
(1, 18, '2025-03-07', 1),
(2, 10, '2025-01-25', 1),
(2, 14, '2025-02-10', 1),
(3, 12, '2025-03-01', 3),
(3, 1, '2025-02-18', 1),
(3, 9, '2025-02-23', 2),
(3, 8, '2025-03-02', 1),
(4, 19, '2025-03-02', 1),
(5, 2, '2025-02-20', 4),
(5, 20, '2025-01-15', 1),
(6, 8, '2025-03-05', 2),
(6, 17, '2025-02-09', 1),
(6, 11, '2025-03-11', 1),
(7, 15, '2025-02-27', 5),
(8, 5, '2025-03-01', 1),
(8, 7, '2025-01-18', 2),
(8, 13, '2025-02-14', 1),
(9, 16, '2025-03-06', 1),
(9, 9, '2025-02-25', 2),
(10, 3, '2025-03-10', 6),
(11, 12, '2025-01-21', 2),
(11, 6, '2025-03-08', 1),
(12, 18, '2025-02-15', 1),
(12, 1, '2025-02-28', 2),
(12, 5, '2025-03-09', 3),
(13, 14, '2025-03-12', 1),
(14, 10, '2025-01-30', 4),
(14, 7, '2025-02-19', 2),
(15, 17, '2025-03-04', 1),
(15, 4, '2025-01-29', 3),
(15, 20, '2025-02-05', 1),
(15, 19, '2025-02-22', 2),
(16, 8, '2025-02-07', 1),
(16, 11, '2025-03-06', 1),
(17, 9, '2025-01-27', 2),
(18, 2, '2025-02-16', 1),
(18, 15, '2025-03-03', 4),
(19, 6, '2025-01-20', 2),
(19, 12, '2025-02-12', 1),
(19, 1, '2025-03-01', 1),
(20, 4, '2025-02-08', 1);


-- =========================
-- AULA 9
-- =========================


-- 1
-- Conta quantos produtos existem em cada categoria
SELECT categoria, COUNT(*) AS qtd_produtos
FROM produtos
GROUP BY categoria;


-- 2
-- Calcula o valor total dos produtos comprados
-- agrupado por categoria
-- preco x quantidade = valor total
SELECT p.categoria, SUM(p.preco * co.quantidade) AS total_estoque
FROM produtos p, compras co
WHERE p.id = co.produto_id
GROUP BY p.categoria;


-- 3
-- Conta quantos clientes existem em cada cidade
-- Ordena da cidade com mais clientes para a que tem menos
-- LIMIT 5 mostra somente as 5 primeiras
SELECT cidade, COUNT(*) AS total_clientes
FROM clientes
GROUP BY cidade
ORDER BY total_clientes DESC
LIMIT 5;


-- 4
-- Mostra produtos que não aparecem na tabela de compras
SELECT *
FROM produtos
WHERE id NOT IN (
    SELECT produto_id
    FROM compras
);


-- 5
-- Calcula a idade média dos clientes de cada cidade
SELECT cidade, AVG(idade) AS idade_media
FROM clientes
GROUP BY cidade;


-- 6
-- Calcula quanto cada cliente gastou no total
-- SUM soma o preço multiplicado pela quantidade
-- HAVING filtra somente clientes que gastaram mais de 5000
SELECT c.nome, SUM(p.preco * co.quantidade) AS total_gasto
FROM clientes c, compras co, produtos p
WHERE c.id = co.cliente_id
AND p.id = co.produto_id
GROUP BY c.nome
HAVING total_gasto > 5000;


-- 7
-- Calcula o valor médio das compras por categoria
SELECT p.categoria, AVG(p.preco * co.quantidade) AS valor_medio_compra
FROM compras co, produtos p
WHERE p.id = co.produto_id
GROUP BY p.categoria;


-- 8
-- Calcula o preço médio das compras por categoria
-- Mostra somente categorias com média acima de 1000
SELECT p.categoria, AVG(p.preco * co.quantidade) AS preco_medio
FROM produtos p, compras co
WHERE p.id = co.produto_id
GROUP BY p.categoria
HAVING preco_medio > 1000;


-- 9
-- Calcula a diferença entre o maior e o menor preço
-- de cada categoria
SELECT p.categoria, (MAX(p.preco) - MIN(p.preco)) AS diferenca_categoria
FROM produtos p
GROUP BY p.categoria;
