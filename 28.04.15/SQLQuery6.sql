DECLARE @input INT = 100;
DECLARE @i INT = 2;
DECLARE @res NUMERIC(33) = 1;
WHILE @i <= @input
BEGIN
	PRINT cast(@i as NVARCHAR) + ' ' + cast(@res as NVARCHAR);
	SET @res = @res * @i;
	SET @i = @i + 1;
END
