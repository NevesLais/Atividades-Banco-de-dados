-- Recalculando o valor_estoque após todas as atualizações
UPDATE produtos SET valor_estoque = preco * Qtde;

-- Exibindo todos os produtos ordenados por preço (de forma crescente)
SELECT * FROM produtos ORDER BY preco ASC;

-- Consultas adicionais de exemplo:

-- Produtos com preço acima de 10,00
SELECT * FROM produtos WHERE preco > 10.00;

-- Produtos com preço maior ou igual a 10,00
SELECT * FROM produtos WHERE preco >= 10.00;

-- Produtos cujo nome começa com 'A'
SELECT * FROM produtos WHERE nome LIKE 'A%';

-- Produtos cujo nome termina com 'A'
SELECT * FROM produtos WHERE nome LIKE '%A';

-- Produtos com preço entre 1,00 e 5,00
SELECT * FROM produtos WHERE preco >= 1.00 AND preco <= 5.00;

-- Exibindo novamente todos os produtos ordenados por preço
SELECT * FROM produtos ORDER BY preco ASC;

Update produtos
set Qtde = case 

When id in (1,2,3,4,5,6,7,8) then 53
when id in (9,10,11,12,13,14,15) then 13
When id in (16,17,18,19,20) then 22

Else Qtde 
end where id in (1,2,3,4,5,6,7,8,9,10,11,13,13,14,15,16,17,18,19,20);


Update produtos set valor_estoque = preco * Qtde 
Where id between 1 and 20;

show tables;

Create database clientes;
Use clientes;


CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR (64) NOT NULL,
    Email varchar (70),
    Telefone varchar (15)
);
INSERT INTO clientes (Nome, EMail, Telefone) VALUES
('Maria Silva', 'm.@.com', 11.9999-9999),
('João Souza', 'J.@.com', 11.9.8888-8888),
('Ana Oliveira', 'AO@.com', 11.9.6666-6666),
('Carlos Pereira', 'CP@.com', 11.9.7777-7777);

SELECT * FROM clientes;
;