# Banco de Dados - Sistema de Loja (Exercício Acadêmico)

Este projeto consiste na modelagem e implementação de um banco de dados relacional simples para representar o funcionamento básico de uma loja. O sistema possui dados simulados para fins de estudos sobre clientes, produtos e pedidos realizados.

## Estrutura do Banco

O banco é composto por 3 tabelas relacionadas por chaves estrangeiras:

### Tabela: `pessoas`
Contém os dados dos clientes da loja.

| Campo      | Tipo      | Descrição                       |
|------------|-----------|---------------------------------|
| `id`       | INT       | Chave primária, auto incremento |
| `cpf`      | VARCHAR   | CPF do cliente                  |
| `nome`     | VARCHAR   | Nome completo do cliente        |
| `data_nasc`| DATE      | Data de nascimento              |
| `sexo`     | CHAR(1)   | Sexo                            |
| `uf`       | CHAR(2)   | Estado (Unidade Federativa)     |
| `tel`      | VARCHAR   | Telefone                        |
| `email`    | VARCHAR   | E-mail                          |

---

### Tabela: `produtos`
Armazena os produtos disponíveis na loja.

| Campo         | Tipo      | Descrição                       |
|---------------|-----------|---------------------------------|
| `id_produto`  | INT       | Chave primária, auto incremento |
| `nome_produto`| VARCHAR   | Nome do produto                 |
| `descricao`   | TEXT      | Descrição detalhada             |
| `valor`       | DECIMAL   | Valor do produto                |

---

### Tabela: `pedidos`
Registra os pedidos feitos pelos clientes.

| Campo        | Tipo      | Descrição                         |
|--------------|-----------|-----------------------------------|
| `id_pedido`  | INT       | Chave primária, auto incremento   |
| `id_cliente` | INT       | FK → `pessoas(id)`                |
| `id_produto` | INT       | FK → `produtos(id_produto)`       |
| `data_compra`| DATETIME  | Data e hora da compra             |

---

## Relacionamentos

- Um **cliente** (`pessoas`) pode fazer **vários pedidos** (`pedidos`)
- Um **produto** (`produtos`) pode estar em **vários pedidos** (`pedidos`)

---

## Tecnologias

- MySQL
- MySQL Workbench

---

## Objetivo

Este projeto tem finalidade **acadêmica**, com o objetivo de praticar conceitos de modelagem de dados, criação de tabelas com chaves primárias e estrangeiras, e relacionamento entre entidades.

---
