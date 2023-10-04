-- agora para remover apenas mudamos o ativo para 0, ao invés de deletar da tabela
UPDATE tb_pessoas SET ativo = 0 WHERE cod_pessoa = 2;

-- adicionar uma coluna
ALTER TABLE tb_pessoas
ADD COLUMN ativo TINYINT(1) NOT NULL DEFAULT 1;

-- delete 
DELETE FROM tb_pessoas WHERE cod_pessoa = 5;

-- atualizar (UPDATE)
UPDATE tb_pessoas SET nome = 'José da Silva' WHERE cod_pessoa = 1; -- mudando o nome para José da Silva para a pessoa que tenha cod_pessoa = 1
UPDATE tb_pessoas SET nome = concat(nome, ' ', 'Santos') WHERE cod_pessoa;

-- visualizar pessoas (SELECT)
SELECT * FROM tb_pessoas;
SELECT nome, fone FROM tb_pessoas; -- projeção (pegar apenas algumas colunas)
SELECT * FROM tb_pessoas WHERE cod_pessoa = 1; -- filtrando por linha
SELECT nome, fone FROM tb_pessoas WHERE nome LIKE 'j%'; -- pegar nome e email de pessoas com o nome que começa em j
SELECT nome, email FROM tb_pessoas WHERE nome LIKE '%o'; -- pegar nome e email com o o no final do nome
SELECT * FROM tb_pessoas WHERE email LIKE '%@email%'; -- pegar todas as colunas que tenham email @email
SELECT nome, email FROM tb_pessoas WHERE nome LIKE 'p%' OR nome LIKE 'm%'; -- pegar nome e email de pessoa q comece com p ou m
SELECT nome, fone, email FROM tb_pessoas WHERE nome LIKE 'm%' AND email LIKE '%@email%'; -- pegar nome, fone, email de pessoa que comece o nome com m e tenha o @email

-- cadastrar pessoas
-- comando INSERT
INSERT INTO tb_pessoas
(nome, fone, email) VALUES
('Raí', '11977733585', 'raijoiamv@gmail.com');
INSERT INTO tb_pessoas
(nome, fone, email) VALUES
('João', '382391283', 'joao@gmail.com'), -- tupla ou linha na tabela
('Pedro', '1238123', 'pedro@gmail.com'),
('Maria', '312381923', 'maria@email.com');

-- CREATE TABLE tb_pessoas(
-- 	cod_pessoa INT PRIMARY KEY AUTO_INCREMENT,
--     nome VARCHAR(200) NOT NULL,
--     fone VARCHAR(200) NULL,
--     email VARCHAR(200) NOT NULL
-- );

-- USE 20232_usjt_psc_segunda_pessoas;
-- CREATE DATABASE 20232_usjt_psc_segunda_pessoas;