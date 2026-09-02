--a) CPFs e nomes dos trabalhadores que ganham mais do que 2.500,00

SELECT cpf, nome, salario
FROM Trabalhador
WHERE salario > 2500.00;

--b) Nomes e salários dos trabalhadores da empresa ALFA, em ordem alfabética crescente

SELECT t.nome, t.salario
FROM Trabalhador t
JOIN Obra o
    ON t.fk_obra_codigo = o.codigo
JOIN Construtora c
    ON o.fk_Construtora_codigo = c.codigo
WHERE UPPER(c.nome) LIKE '%ALFA%'
ORDER BY t.nome ASC;

--d) Folha de pagamento de cada obra

SELECT o.nome, SUM(t.salario) AS folha_pagamento
FROM Obra o
JOIN Trabalhador t
    ON t.fk_obra_codigo = o.codigo
GROUP BY o.nome;

--f) Listar as categorias de equipamentos utilizadas nas obras da construtora ALFA.

SELECT DISTINCT cat.codigo, cat.descricao
FROM Categoria cat
JOIN Equipamento e
    ON e.fk_Categoria_codigo = cat.codigo
JOIN Obras_Equipamentos oe
    ON oe.fk_Equipamento_codigo = e.codigo
JOIN Obra o
    ON oe.fk_Obra_codigo = o.codigo
JOIN Construtora c
    ON o.fk_Construtora_codigo = c.codigo
WHERE UPPER(c.nome) LIKE '%ALFA%';