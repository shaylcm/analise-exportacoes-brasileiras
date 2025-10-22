--CRIA UMA CÓPIA COM OUTRO NOME DA TABELA
/*SELECT * 
INTO ExportacaoBrasil_copia
FROM Exportacao_Brasil_S*/


--========Exploração da base =========--


-- seleciona os 10 primeiros registros
SELECT 
	top(10)* 
FROM 
	Exportacao_Brasil_S


--Conta quantas linhas tem na tabela 
SELECT COUNT (*)  as ' QTD. Linhas na tabela' 
FROM Exportacao_BrasSil_S

--Listar paises distintos
SELECT DISTINCT Pais
FROM Exportacao_Brasil_S

--Listar produtos distintos 
SELECT DISTINCT 
	Produto
FROM Exportacao_Brasil_S





