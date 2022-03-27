CREATE EXTERNAL TABLE [dbo].[produtos_dataset]
(
    cod_produto INT,
    nome_produto NVARCHAR(500),
    categoria_produto NVARCHAR(100),
    preco float,

)
WITH
(
    LOCATION = '/datalake/raw-zone/vendas/produtos/produtos.csv',
    DATA_SOURCE = DATALAKE_VENDAS,
    FILE_FORMAT = VENDAS_CSV_FORMAT
)