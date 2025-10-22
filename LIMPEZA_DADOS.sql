

--EXCLUI OS RESGISTROS NULOS DA TABELA 

DELETE  FROM Exportacao_Brasil_S
WHERE 
    Produto IS NULL
    OR PAIS IS NULL
    OR Quantidade IS NULL
    OR Preco_Unitario IS NULL
    OR Valor_Total  IS NULL
    OR Data_Exportacao IS NULL;



SELECT * FROM Exportacao_Brasil_S







--VERIFICANDO QUAIS VALORES ESTÃO NEGATIVOS 

SELECT* FROM Exportacao_Brasil_S
WHERE Quantidade < 0
	OR Preco_Unitario <0
	OR Valor_Total <0;
	

-- CORRIGINDO VALORES NEGATIVOS 
UPDATE Exportacao_Brasil_S
SET Quantidade = ABS(Quantidade),
	Preco_Unitario = ABS(Preco_Unitario),
	Valor_Total = ABS (Valor_Total)
WHERE QUANTIDADE < 0 
	OR Preco_Unitario < 0
	OR Valor_Total < 0


---padronizar nomes paises----

SELECT DISTINCT Pais
FROM Exportacao_Brasil_S


--padronizando update
UPDATE Exportacao_Brasil_S
SET Pais = UPPER(LTRIM(RTRIM(Pais)))

--corrigindo pais que esta so com sigla EUA
UPDATE Exportacao_Brasil_S
SET Pais = 'ESTADOS UNIDOS'
WHERE Pais IN ('EUA')

