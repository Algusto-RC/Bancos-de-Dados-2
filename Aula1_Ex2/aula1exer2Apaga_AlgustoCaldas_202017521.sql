-- -------- Sistema de Vendas --------
--
--                    SCRIPT DE EXCLUSAO (DROP)
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
--   21/10/2024 => Script para exclusão das tabelas.
--
-- ---------------------------------------------------------


USE aula1exer2;

-- Apagar tabela associativa VENDA_PRODUTO
DROP TABLE IF EXISTS VENDA_PRODUTO;

-- Apagar tabela associativa SUPERVISIONA
DROP TABLE IF EXISTS SUPERVISIONA;

-- Apagar tabela VENDA
DROP TABLE IF EXISTS VENDA;

-- Apagar tabela PRODUTO
DROP TABLE IF EXISTS PRODUTO;

-- Apagar tabela EMPREGADO
DROP TABLE IF EXISTS EMPREGADO;

-- Apagar tabela GERENTE
DROP TABLE IF EXISTS GERENTE;
