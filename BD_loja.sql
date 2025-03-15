CREATE DATABASE LOJA; -- criação do banco de dados 

USE LOJA; -- utilizando o banco criado

-- criação das 2 tabelas
CREATE TABLE cliente(
Id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (100) NOT NULL,
endereco VARCHAR (150) NOT NULL,
cidade VARCHAR (150),
cep VARCHAR (10),
status VARCHAR(20) DEFAULT 'ativo'

); 

create TABLE pedidos(
Id INT PRIMARY KEY AUTO_INCREMENT,
Id_Cliente INT not null,
Item VARCHAR (100),
Data_pedidos DATE,
Valor INT(100),
CONSTRAINT FK_Cliente
FOREIGN KEY (Id_Cliente)
REFERENCES cliente (Id)
);

/* CONSTRAINTS 
ALTER TABLE pedidos
ADD CONSTRAINT FK_Cliente
FOREIGN KEY (Id_Cliente)
REFERENCES cliente (Id);
*/
-- INSERÇÃO DE DADOS
INSERT INTO cliente (nome, endereco, cidade, cep) 
VALUES ('Eduarda', 'Avenida Lins', 'Francisco Morato', '07830-310');

INSERT INTO pedidos (Id_Cliente,Item, Data_pedidos, Valor) 
VALUES ('1','Camiseta', '2025-03-14', '100');


-- EXIBIR TABELAS 
SELECT * FROM cliente;

SELECT * FROM pedidos;



-- ******  DELETAR CLIENTES ******
 DELETE FROM pedidos WHERE Id = 1;
