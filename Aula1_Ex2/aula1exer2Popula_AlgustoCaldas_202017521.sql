-- -------- Sistema de Vendas --------
--
--                    SCRIPT DE INSERCAO DE DADOS
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
--   21/10/2024 => Script para inserir dados nas tabelas.
--
-- ---------------------------------------------------------


USE aula1exer2;

-- Inserindo dados na tabela EMPREGADO
INSERT INTO EMPREGADO (matricula, nome, cpf, senha, endereco, telefones) 
VALUES 
('001', 'João Silva', '11122233344', 'senha123', 'Rua A, 123', '99999-9999'),
('002', 'Maria Souza', '22233344455', 'senha456', 'Rua B, 456', '98888-8888');

-- Inserindo dados na tabela GERENTE
INSERT INTO GERENTE (cpf, nome, senha, formacao_escolar, email) 
VALUES 
('33344455566', 'Carlos Gerente', 'senha789', 'superior', 'carlos@empresa.com'),
('44455566677', 'Ana Gerente', 'senha101', 'médio', 'ana@empresa.com');

-- Inserindo dados na tabela PRODUTO
INSERT INTO PRODUTO (codigo_produto, nome_produto, preco_unitario) 
VALUES 
(1, 'Produto A', 50.00),
(2, 'Produto B', 30.00);

-- Inserindo dados na tabela VENDA
INSERT INTO VENDA (codigo_venda, data_venda, preco_total, matricula_empregado) 
VALUES 
(1001, '2024-10-20', 150.00, '001'),
(1002, '2024-10-21', 90.00, '002');

-- Inserindo dados na tabela SUPERVISIONA (associação N:N entre EMPREGADO e GERENTE)
INSERT INTO SUPERVISIONA (matricula_empregado, cpf_gerente) 
VALUES 
('001', '33344455566'),
('002', '44455566677');

-- Inserindo dados na tabela VENDA_PRODUTO (associação N:N entre VENDA e PRODUTO)
INSERT INTO VENDA_PRODUTO (codigo_venda, codigo_produto, quantidade) 
VALUES 
(1001, 1, 2),
(1001, 2, 1),
(1002, 2, 3);
