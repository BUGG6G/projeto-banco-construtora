# Sistema de Gerenciamento de Obras — Banco de Dados

## Sobre o Projeto

Este projeto consiste na modelagem e implementação de um banco de dados relacional destinado ao gerenciamento de informações relacionadas a construtoras, obras, trabalhadores e equipamentos.

O desenvolvimento contemplou as etapas de modelagem conceitual e lógica, criação da estrutura do banco de dados, inserção de dados e elaboração de consultas SQL.

## Modelagem do Banco de Dados

A estrutura do banco foi definida a partir da identificação das entidades, seus atributos e relacionamentos.

As principais entidades utilizadas são:

- Construtora
- Obra
- Trabalhador
- Equipamento
- Categoria

O modelo também contempla a relação entre obras e equipamentos, permitindo registrar a alocação de equipamentos em diferentes obras.

## Implementação

A implementação foi realizada utilizando Oracle Live SQL.

Foram utilizados comandos DDL (Data Definition Language) para definição da estrutura do banco de dados, incluindo a criação de tabelas, chaves primárias, chaves estrangeiras e demais relacionamentos.

Comandos DML (Data Manipulation Language) foram utilizados para inserção dos registros necessários para utilização e validação do banco de dados.

## Consultas SQL

Foram desenvolvidas consultas para recuperação e análise das informações armazenadas no banco.

Entre as operações realizadas estão:

- Filtragem de registros com `WHERE`;
- Relacionamento entre múltiplas tabelas utilizando `JOIN`;
- Ordenação de resultados com `ORDER BY`;
- Agrupamento de registros com `GROUP BY`;
- Utilização de funções de agregação;
- Eliminação de resultados duplicados com `DISTINCT`.
