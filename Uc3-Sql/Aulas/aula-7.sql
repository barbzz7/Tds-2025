-- Criar a tabela de usuários
CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do usuário
    nome VARCHAR(100) NOT NULL UNIQUE, -- Nome do usuário, obrigatório e não pode repetir
    email VARCHAR(100) NOT NULL UNIQUE, -- E-mail obrigatório e não pode repetir
    senha VARCHAR(100) NOT NULL, -- Senha do usuário
    funcao VARCHAR(100) -- Função do usuário no sistema
);


-- Criar a tabela de ordens/pedidos
CREATE TABLE ordem (
    id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único da ordem
    criarAT DATETIME NOT NULL, -- Data e horário em que a ordem foi criada
    status_ordem VARCHAR(100) NOT NULL, -- Status atual da ordem

    id_usuario INT NOT NULL, -- Identifica qual usuário criou a ordem
    FOREIGN KEY (id_usuario) REFERENCES usuario(id) -- Relaciona a ordem com um usuário
);


-- Criar a tabela de pratos
CREATE TABLE prato (
    id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do prato
    nome VARCHAR(100) NOT NULL, -- Nome do prato
    descricao VARCHAR(100) NOT NULL, -- Descrição do prato
    preco DECIMAL(10,2) NOT NULL, -- Preço do prato
    avaliacao BOOLEAN NOT NULL -- Indica uma avaliação como verdadeiro ou falso
);


-- Criar a tabela que relaciona ordens e pratos
CREATE TABLE ordem_item (
    id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do item da ordem

    id_ordem INT NOT NULL, -- Identifica a ordem
    FOREIGN KEY (id_ordem) REFERENCES ordem(id), -- Relaciona o item com uma ordem

    id_prato INT NOT NULL, -- Identifica o prato
    FOREIGN KEY (id_prato) REFERENCES prato(id), -- Relaciona o item com um prato

    quantidade INT NOT NULL -- Quantidade do prato na ordem
);
