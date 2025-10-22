SELECT * FROM Exportacao_Brasil_S


--VERIFICANDO ESCALA DE PECO UNITARIO 

SELECT 
	Produto,
	Preco_Unitario as 'antes',
	Preco_Unitario/1000 as simulado,
	Pais,
	Quantidade
FROM Exportacao_Brasil_S
where Produto = 'Milho'



--Adicionando coluna unidade 
ALTER TABLE Exportacao_Brasil_S
ADD Unidade_medida NVARCHAR(20)


--Adicionando colunas de preços e valor em reais 

ALTER TABLE Exportacao_Brasil_S
ADD Preco_unitario_Reais DECIMAL(18,2),
	Valor_Total_Reais DECIMAL (18,2)



--preenchendo as colunas preço e valor em reais]

UPDATE Exportacao_Brasil_S
SET Preco_Unitario_Reais = CASE
        WHEN ano = 2020 THEN Preco_Unitario * 5.1368
        WHEN ano = 2021 THEN Preco_Unitario * 5.3971
        WHEN ano = 2022 THEN Preco_Unitario * 5.1668
        WHEN ano = 2023 THEN Preco_Unitario * 4.9933
        WHEN ano = 2024 THEN Preco_Unitario * 5.3890
        WHEN ano = 2025 THEN Preco_Unitario * 5.7980
    END,
    Valor_Total_Reais = CASE
        WHEN ano = 2020 THEN Valor_Total  * 5.1368
        WHEN ano = 2021 THEN Valor_Total  * 5.3971
        WHEN ano = 2022 THEN Valor_Total  * 5.1668
        WHEN ano = 2023 THEN Valor_Total  * 4.9933
        WHEN ano = 2024 THEN Valor_Total  * 5.3890
        WHEN ano = 2025 THEN Valor_Total  * 5.7980
    END;



select *from Exportacao_Brasil_S

--ADICIONANDO A UNIDADE DE MEDIDA
UPDATE Exportacao_Brasil_S
SET Unidade_medida = 'Tonelada'



--corrigindo os numeros da coluna preco unitario 
UPDATE Exportacao_Brasil_S
SET Preco_Unitario = Preco_Unitario/1000
 

--Atualizando  valor total
UPDATE Exportacao_Brasil_S
SET Valor_Total = Quantidade * Preco_Unitario;

--verificação de tipos de dados das colunas
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Exportacao_Brasil_S';


--APAGAR REGISTROS BRASIL
DELETE FROM Exportacao_Brasil_S
WHERE Pais = 'BRASIL';