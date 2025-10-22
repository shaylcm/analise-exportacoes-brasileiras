SELECT *FROM Exportacao_Brasil_S
-------------------------------------------------------------------------------

--PRODUTOS
SELECT DISTINCT 
    Produto
FROM Exportacao_Brasil_S


--Total exportado por produto 

SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao Açucar'
FROM Exportacao_Brasil_S
WHERE Produto = 'Açúcar'


SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao Milho'
FROM Exportacao_Brasil_S
WHERE Produto = 'Milho'


SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao Soja'
FROM Exportacao_Brasil_S
WHERE Produto = 'Soja'


SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao Café'
FROM Exportacao_Brasil_S
WHERE Produto = 'Café'

SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao Carne Bovina'
FROM Exportacao_Brasil_S
WHERE Produto = 'Carne Bovina'


SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao Algodão'
FROM Exportacao_Brasil_S
WHERE Produto = 'Algodão'


SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao Frango'
FROM Exportacao_Brasil_S
WHERE Produto = 'Frango'


SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao Suco de Laranja'
FROM Exportacao_Brasil_S
WHERE Produto = 'Suco de Laranja'
---------------------------------------------------------------------------------------------------------------

--MEDIA exportado por produto 

SELECT 
    AVG(Preco_Unitario) AS 'Média preço  Açucar'
FROM Exportacao_Brasil_S
WHERE Produto = 'Açúcar'


SELECT 
    AVG(Preco_Unitario) AS 'Média preço Milho'
FROM Exportacao_Brasil_S
WHERE Produto = 'Milho'


SELECT 
    AVG(Preco_Unitario) AS 'Média preço Soja'
FROM Exportacao_Brasil_S
WHERE Produto = 'Soja'


SELECT 
    AVG(Preco_Unitario) AS 'Média preço Café'
FROM Exportacao_Brasil_S
WHERE Produto = 'Café'

SELECT 
    AVG(Preco_Unitario) AS 'Média preço Carne Bovina'
FROM Exportacao_Brasil_S
WHERE Produto = 'Carne Bovina'


SELECT 
    AVG(Preco_Unitario) AS 'Média preço Algodão'
FROM Exportacao_Brasil_S
WHERE Produto = 'Algodão'


SELECT 
    AVG(Preco_Unitario) AS 'Média preço Frango'
FROM Exportacao_Brasil_S
WHERE Produto = 'Frango'


SELECT 
    AVG(Preco_Unitario) AS 'Média preço Suco de Laranja'
FROM Exportacao_Brasil_S
WHERE Produto = 'Suco de Laranja'


--criando colunas mes e ano

ALTER TABLE Exportacao_Brasil_S
ADD Ano INT,
    Mes INT;


--Preenchendo as colunas Ano e mês
UPDATE Exportacao_Brasil_S
SET Ano = YEAR(Data_Exportacao),
    Mes = MONTH(Data_Exportacao);

----------------------------------------------------------------------------------------------------------------
--Paises


SELECT  DISTINCT 
      Pais 
FROM Exportacao_Brasil_S


--TOTAL EXPORTAÇÃO POR PAIS
SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao alemanha'
FROM Exportacao_Brasil_S
WHERE Pais= 'ALEMANHA'


SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao Itália'
FROM Exportacao_Brasil_S
WHERE Pais = 'ITÁLIA'


SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao Argentina'
FROM Exportacao_Brasil_S
WHERE Pais = 'ARGENTINA'

SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao China'
FROM Exportacao_Brasil_S
WHERE Pais = 'CHINA'



SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao Brasil'
FROM Exportacao_Brasil_S
WHERE Pais = 'BRASIL'



SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao Japão'
FROM Exportacao_Brasil_S
WHERE Pais = 'JAPÃO'



SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao India'
FROM Exportacao_Brasil_S
WHERE Pais = 'INDIA'


SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao França'
FROM Exportacao_Brasil_S
WHERE Pais = 'FRANÇA'


SELECT 
    SUM(Quantidade) AS 'Quantidade exportacao Estados Unidos '
FROM Exportacao_Brasil_S
WHERE Pais = 'ESTADOS UNIDOS'


--coluna categoria volume 

ALTER TABLE Exportacao_Brasil_S
ADD Categoria_Volume VARCHAR(10)

--PREENCHENDO A COLUNA CATEGORA VOLUME
UPDATE Exportacao_Brasil_S
SET Categoria_Volume = CASE 
    WHEN Quantidade <= 1000 THEN 'Pequeno'
    WHEN Quantidade <= 5000 THEN 'Médio'
    ELSE 'Grande'
END;


