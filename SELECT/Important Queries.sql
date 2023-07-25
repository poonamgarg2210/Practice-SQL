SELECT * FROM Sys.all_objects 
WHERE type_desc = 'USER_TABLE' AND name Like '%employee%'

SELECT * FROM
INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME Like '%Customer%'