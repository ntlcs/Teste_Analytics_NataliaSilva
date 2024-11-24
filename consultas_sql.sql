

-- Explicação: As duas consultas abaixo fazem parte do exercício solicitado.
-- A primeira lista os produtos com maior total de vendas;
-- E a segunda identifica os produtos que venderam menos no mês de junho de 2023.

-- Explicando a primeira consulta: O objetivo -> Listar nome do produto, a categoria e a soma total das vendas.
-- O total de vendas é calculado multiplicando a quantidade vendida pelo preço do produto.
-- O resultado é agrupado por produto e categoria, e ordenado pela soma das vendas de forma decrescente.

SELECT Produto,
       Categoria,
       SUM(Quantidade * Preço) AS Total_Vendas
FROM vendas
GROUP BY Produto, Categoria
ORDER BY Total_Vendas DESC;



-- Explicando a segunda consulta: O objetivo -> Identificar os produtos que venderam menos no mês de junho de 2023.
-- Realizei a total das vendas, sendo resultado da quantidade multiplicada pelo preço, para o período de 01/06/2023 a 30/06/2023.
-- O resultado então é ordenado do menor para o maior na coluna com o total de vendas junho.


SELECT Produto,
       SUM(Quantidade * Preço) AS Total_Vendas_Junho
FROM vendas
WHERE Data BETWEEN '2023-06-01' AND '2023-06-30'
GROUP BY Produto
ORDER BY Total_Vendas_Junho ASC;
