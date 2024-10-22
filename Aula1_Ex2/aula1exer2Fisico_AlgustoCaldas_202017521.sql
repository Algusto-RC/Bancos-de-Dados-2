-- -------- Sistema de Vendas --------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 21/10/2024
-- Autor(es) ..............: Algusto Rodrigues Caldas
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2
--
-- PROJETO => 01 Base de Dados
--         => 06 Tabelas
--         => 00 Visoes
--         => 02 Perfis (role)
--         => 00 Usuarios
--         => 00 Sequencias
--         => 00 Triggers
--         => 00 Procedimentos
--         => 00 Funcoes
--
-- Ultimas Alteracoes
--   21/10/2024 => Script de criação inicial das tabelas.
--
-- ---------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula1exer2;
USE aula1exer2;

-- Criação da tabela EMPREGADO
CREATE TABLE EMPREGADO (
    matricula VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    senha VARCHAR(20) NOT NULL,
    endereco VARCHAR(200),
    telefones VARCHAR(20)
);

-- Criação da tabela GERENTE
CREATE TABLE GERENTE (
    cpf CHAR(11) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(20) NOT NULL,
    formacao_escolar VARCHAR(50),
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Criação da tabela PRODUTO
CREATE TABLE PRODUTO (
    codigo_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL
);

-- Criação da tabela VENDA
CREATE TABLE VENDA (
    codigo_venda INT PRIMARY KEY,
    data_venda DATE NOT NULL,
    preco_total DECIMAL(10, 2) NOT NULL,
    matricula_empregado VARCHAR(10),
    FOREIGN KEY (matricula_empregado) REFERENCES EMPREGADO(matricula)
);

-- Tabela associativa SUPERVISIONA (N:N entre EMPREGADO e GERENTE)
CREATE TABLE SUPERVISIONA (
    matricula_empregado VARCHAR(10),
    cpf_gerente CHAR(11),
    PRIMARY KEY (matricula_empregado, cpf_gerente),
    FOREIGN KEY (matricula_empregado) REFERENCES EMPREGADO(matricula),
    FOREIGN KEY (cpf_gerente) REFERENCES GERENTE(cpf)
);

-- Tabela associativa VENDA_PRODUTO (N:N entre VENDA e PRODUTO)
CREATE TABLE VENDA_PRODUTO (
    codigo_venda INT,
    codigo_produto INT,
    quantidade INT NOT NULL,
    PRIMARY KEY (codigo_venda, codigo_produto),
    FOREIGN KEY (codigo_venda) REFERENCES VENDA(codigo_venda),
    FOREIGN KEY (codigo_produto) REFERENCES PRODUTO(codigo_produto)
);
