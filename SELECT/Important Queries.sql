SELECT * FROM Sys.all_objects WHERE type_desc = 'USER_TABLE' AND name Like '%credit%'

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME Like '%BusinessEntityID%'
ORDER BY TABLE_SCHEMA, TABLE_NAME