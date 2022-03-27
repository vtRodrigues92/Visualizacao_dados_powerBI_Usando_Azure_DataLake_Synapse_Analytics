SELECT *
FROM OPENROWSET
(
    BULK 'https://datalakeaula141600.blob.core.windows.net/datalake/raw-zone/vendas/usuraios/usuarios.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    FIELDTERMINATOR = ',',
    HEADER_ROW =  TRUE
) AS usuarios