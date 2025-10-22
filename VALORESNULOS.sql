
SELECT * FROM Exportacao_Brasil_S --consulta à base 
------Exploração da base---------

--CONTAGEM E FILTRAGEM DE VALORES NULOS 

--CONTE QUANTAS LINHAS DA TABELA EXPORTAÇÃO TEM O CAMPO nomecoluna VAZIO E CHAME ESSE TOTAL DE NULOS_nomecoluna

--PRODUTO
SELECT 
    SUM(CASE WHEN Produto IS NULL THEN 1 ELSE 0 END) AS 'nulos_PRODUTO'
FROM Exportacao_Brasil_S;

--PAIS
SELECT 
    SUM(CASE WHEN Pais IS NULL THEN 1 ELSE 0 END) AS 'nulos_PAIS'
FROM Exportacao_Brasil_S;

--QUANTIDADE
SELECT 
    SUM(CASE WHEN Quantidade IS NULL THEN 1 ELSE 0 END) AS 'nulos_QUANTIDADE'
FROM Exportacao_Brasil_S;

--PRECO UNITARIO 
SELECT
  SUM(CASE WHEN Preco_Unitario IS NULL THEN 1 ELSE 0 END) AS 'nulos_PRECO_UNITARIO'
FROM Exportacao_Brasil_S;

--VALOR TOTAL
SELECT
  SUM(CASE WHEN Valor_Total IS NULL THEN 1 ELSE 0 END) AS 'nulos_VALOR TOTAL'
FROM Exportacao_Brasil_S;

--DATA EXPORTAÇÃO

SELECT
  SUM(CASE WHEN Data_Exportacao IS NULL THEN 1 ELSE 0 END) AS 'nulos_DATA EXPORTAÇÃO'
FROM Exportacao_Brasil_S;


---Criando tabela só com os nulos 

SELECT * 
INTO 
    Exportacao_Nulos
FROM
    Exportacao_Brasil_S
WHERE 
    Produto IS NULL
    OR PAIS IS NULL
    OR Quantidade IS NULL
    OR Preco_Unitario IS NULL
    OR Valor_Total  IS NULL
    OR Data_Exportacao IS NULL;


SELECT *FROM Exportacao_Nulos

    