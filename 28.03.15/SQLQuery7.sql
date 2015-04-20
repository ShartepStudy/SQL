DECLARE @l INT = 80;
DECLARE @i INT = 1;
DECLARE @r NVARCHAR (1000) = '*';
WHILE @i <= @l
BEGIN
	SET @r = @r + '*';
	SET @i = @i + 1;
END
PRINT @r