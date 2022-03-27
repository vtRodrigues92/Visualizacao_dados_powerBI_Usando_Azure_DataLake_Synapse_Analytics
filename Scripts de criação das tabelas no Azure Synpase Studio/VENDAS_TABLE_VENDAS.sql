CREATE EXTERNAL TABLE [dbo].[vendas_dataset]
(
    cod_usuario INT,
    cod_produto INT,
    data_venda DATE,
    quantidade INT,
    valor_compra FLOAT,

)
WITH
(
    LOCATION = '/datalake/raw-zone/vendas/vendas/vendas.csv',
    DATA_SOURCE = DATALAKE_VENDAS,
    FILE_FORMAT = VENDAS_CSV_FORMAT
)