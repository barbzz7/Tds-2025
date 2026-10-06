-- Criar a tabela de alunos
CREATE TABLE aluno (
  id_aluno INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do aluno
  nome VARCHAR(100) NOT NULL, -- Nome do aluno
  email VARCHAR(100) UNIQUE NOT NULL -- E-mail do aluno, não pode ser repetido
);


-- Criar a tabela de instrutores
CREATE TABLE instrutor (
  id_instrutor INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do instrutor
  nome VARCHAR(100) NOT NULL, -- Nome do instrutor
  email VARCHAR(100) UNIQUE NOT NULL -- E-mail do instrutor, não pode ser repetido
);


-- Criar a tabela de departamentos
CREATE TABLE departamento (
  codigo VARCHAR(100) NOT NULL, -- Código do departamento
  nome VARCHAR(100) NOT NULL -- Nome do departamento
);


-- Criar a tabela de cursos
CREATE TABLE curso (
  codigo VARCHAR(100) NOT NULL, -- Código do curso
  titulo VARCHAR(100) NOT NULL, -- Título/nome do curso
  descricao VARCHAR(100) NOT NULL -- Descrição do curso
);
