USE Petrash;
DECLARE @a int = 10;
DECLARE @b int;
SET @b = 10;
DECLARE @d int, @e float = 15;
SELECT @d = 33, @b = 66;

SELECT @a = Price FROM Products WHERE name = 'Apples';
PRINT @a