DECLARE @f1 FLOAT = 1.58, @f2 FLOAT = 10.5864, @f3 FLOAT = 55.532;
DECLARE @r FLOAT;
SET @r = (@f1 + @f2 +@f3) / 3;
PRINT @r