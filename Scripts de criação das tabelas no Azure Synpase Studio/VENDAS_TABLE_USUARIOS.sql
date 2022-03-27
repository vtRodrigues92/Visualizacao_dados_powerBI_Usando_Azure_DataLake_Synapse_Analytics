CREATE EXTERNAL TABLE [dbo].[usuarios_dataset]
(
    cod_usuario INT,
    data_cadastro DATETIME2,
    faixa_etaria NVARCHAR(20),
    cidade NVARCHAR(100),
    estado NVARCHAR(50),

)
WITH
(
    LOCATION = '/datalake/raw-zone/vendas/usuarios/usuarios.csv',
    DATA_SOURCE = DATALAKE_VENDAS,
    FILE_FORMAT = VENDAS_CSV_FORMAT
)
