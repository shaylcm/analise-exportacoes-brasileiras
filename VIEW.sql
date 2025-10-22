--Criando view e Padronizando o formato dos numeros das colunas preco e valor total
CREATE VIEW  vw_tabela_Exportacao_atualizada  AS
SELECT 
    Produto,
    Pais AS 'País',
    Quantidade AS 'Quantidade (Ton)',
    FORMAT(Preco_unitario_Reais, 'N2', 'pt-BR') AS 'Preco Unitario (R$)',
    Unidade_Medida AS 'Unidade de medida',
    FORMAT(Valor_Total_Reais, 'N1', 'pt-BR') AS 'Valor Total Formatado (R$)',
    CONVERT(VARCHAR(10), Data_Exportacao, 103) AS 'Data da Exportação', --padronizando data para formato brasileiro 
    Ano,
    Mes,
    Categoria_Volume AS 'Categoria volume(Ton)'
    
FROM Exportacao_Brasil_S



