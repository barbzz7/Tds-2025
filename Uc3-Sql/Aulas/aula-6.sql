-- Criar a tabela de estúdios
CREATE TABLE studio (
    id_studio INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do estúdio
    compania_nome VARCHAR(100) NOT NULL, -- Nome da companhia
    cidade VARCHAR(100), -- Cidade onde o estúdio está localizado
    fundada INT NOT NULL, -- Ano em que a companhia foi fundada
    tipo_compania VARCHAR(100) NOT NULL -- Tipo da companhia
);


-- Criar a tabela de diretores
CREATE TABLE diretor (
    id_diretor INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do diretor
    nome_diretor VARCHAR(100) NOT NULL, -- Nome do diretor
    genero_diretor CHAR(20) NOT NULL, -- Gênero do diretor
    lugar_de_nascimento VARCHAR(100) NOT NULL, -- Local onde o diretor nasceu
    nacionalidade VARCHAR(100) NOT NULL, -- Nacionalidade do diretor
    data_de_nascimento DATE NOT NULL -- Data de nascimento do diretor
);


-- Criar a tabela de filmes
CREATE TABLE filme (
    id_filme INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do filme

    diretor_id INT NOT NULL, -- ID do diretor responsável pelo filme
    FOREIGN KEY (diretor_id) REFERENCES diretor(id_diretor), -- Relaciona o filme com um diretor

    studio_id INT NOT NULL, -- ID do estúdio responsável pelo filme
    FOREIGN KEY (studio_id) REFERENCES studio(id_studio), -- Relaciona o filme com um estúdio

    nome_filme VARCHAR(100) NOT NULL, -- Nome do filme
    pais_lancamento VARCHAR(100) NOT NULL, -- País onde o filme foi lançado
    linguagem VARCHAR(100) NOT NULL, -- Idioma do filme
    local_filme VARCHAR(100) NOT NULL, -- Local onde o filme foi produzido/gravado
    ano_de_lancamento VARCHAR(100) NOT NULL, -- Ano de lançamento
    categoria VARCHAR(100) NOT NULL -- Categoria do filme
);


-- Criar a tabela de atores
CREATE TABLE ator (
    id_ator INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do ator
    nome_ator VARCHAR(100) NOT NULL, -- Nome do ator
    educacao VARCHAR(100) NOT NULL, -- Formação/educação do ator
    genero_ator VARCHAR(100) NOT NULL, -- Gênero do ator
    nacionalidade VARCHAR(100), -- Nacionalidade do ator
    data_aniversario DATE NOT NULL -- Data de nascimento do ator
);


-- Criar a tabela de elenco (casts)
CREATE TABLE casts (
    id_cast INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do registro do elenco

    filme_id INT NOT NULL, -- ID do filme
    FOREIGN KEY (filme_id) REFERENCES filme(id_filme), -- Relaciona o elenco com um filme

    ator_id INT NOT NULL, -- ID do ator
    FOREIGN KEY (ator_id) REFERENCES ator(id_ator), -- Relaciona o elenco com um ator

    funcacao VARCHAR(100) NOT NULL -- Função/papel do ator no filme
);
