-- Cria a tabela de clientes
-- id_cliente é a chave primária da tabela
-- nome armazena o nome do cliente
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(50)
);

-- Cria a tabela de pedidos
-- id_pedido é a chave primária
-- id_cliente relaciona o pedido ao cliente
-- produto armazena o produto pedido
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    produto VARCHAR(50),

    -- Cria uma chave estrangeira ligando pedidos aos clientes
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Cria a tabela de estoque
-- id_produto é a chave primária
-- id_fornecedor relaciona o produto ao fornecedor
-- produto guarda o nome do produto
-- quantidade informa quantas unidades existem no estoque
CREATE TABLE estoque (
    id_produto INT PRIMARY KEY,
    id_fornecedor INT,
    produto VARCHAR(50),
    quantidade INT,

    -- Relaciona o estoque com a tabela de fornecedores
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedores(id_fornecedor)
);


-- Insere alguns clientes na tabela clientes
INSERT INTO clientes (id_cliente, nome) VALUES
(1, 'Ana'),
(2, 'Bruno'),
(3, 'Carlos');


-- Insere pedidos relacionados aos clientes
INSERT INTO pedidos (id_pedido, id_cliente, produto) VALUES
(101, 1, 'Livro'),
(102, 2, 'Caneta'),
(103, 2, 'Caderno');


-- Insere fornecedores
INSERT INTO fornecedores (id_fornecedor, nome) VALUES
(1, 'Fornecedor A'),
(2, 'Fornecedor B');


-- Insere produtos no estoque
INSERT INTO estoque (id_produto, id_fornecedor, produto, quantidade) VALUES
(201, 1, 'Livro', 50),
(202, 1, 'Caneta', 100),
(203, 2, 'Caderno', 30);


-- 3.1
-- RIGHT JOIN mostra todos os pedidos,
-- mesmo que algum pedido não tenha um cliente correspondente.
SELECT clientes.nome, pedidos.produto
FROM clientes
RIGHT JOIN pedidos
ON clientes.id_cliente = pedidos.id_cliente;


-- 3.2
-- LEFT JOIN mostra todos os clientes,
-- mesmo aqueles que não fizeram nenhum pedido.
SELECT clientes.nome, pedidos.produto
FROM clientes
LEFT JOIN pedidos
ON clientes.id_cliente = pedidos.id_cliente;


-- 3.3
-- RIGHT JOIN mostra todos os fornecedores,
-- mesmo aqueles que não possuem produtos no estoque.
SELECT estoque.produto, fornecedores.nome
FROM estoque
RIGHT JOIN fornecedores
ON estoque.id_fornecedor = fornecedores.id_fornecedor;


-- 3.4
-- INNER JOIN junta as informações de clientes,
-- pedidos, estoque e fornecedores.
-- Mostra somente os registros que possuem correspondência
-- entre todas as tabelas.
SELECT 
    clientes.nome AS clientes,
    pedidos.produto AS produto,
    fornecedores.nome AS fornecedor,
    estoque.quantidade
FROM pedidos
INNER JOIN clientes
ON pedidos.id_cliente = clientes.id_cliente
INNER JOIN estoque
ON pedidos.produto = estoque.produto
INNER JOIN fornecedores
ON estoque.id_fornecedor = fornecedores.id_fornecedor;


-- 3.5
-- LEFT JOIN mostra todos os produtos do estoque
-- e os pedidos correspondentes a esses produtos.
-- Se um produto não tiver pedido, o id_pedido ficará NULL.
SELECT pedidos.produto, pedidos.id_pedido, estoque.quantidade
FROM estoque
LEFT JOIN pedidos
ON pedidos.produto = estoque.produto;


-- 3.6
-- LEFT JOIN mostra todos os fornecedores,
-- inclusive aqueles que não possuem produtos no estoque.
SELECT fornecedores.*, estoque.produto
FROM fornecedores
LEFT JOIN estoque
ON estoque.id_fornecedor = fornecedores.id_fornecedor;
