
USE Petrash

DECLARE @a1 INT, @a2 INT, @a3 INT;
DECLARE @cash INT;

SELECT @cash = My_count FROM Money WHERE id = 1;
PRINT 'Cash = ' + CAST(@cash AS NVARCHAR);
PRINT CAST(@a1 AS NVARCHAR) + ' ' + CAST(@a2 AS NVARCHAR) + ' ' + CAST(@a3 AS NVARCHAR);

IF (@cash > 0)
BEGIN
	SET @a1 = CAST(RAND()*8 AS INT);
	SET @a2 = CAST(RAND()*8 AS INT);
	SET @a3 = CAST(RAND()*8 AS INT);
	SET @cash = @cash - 50;
	UPDATE Money SET My_count = @cash WHERE id = 1; 
	IF (@a1 = @a2 AND @a2 = @a3)
		PRINT 'YOU WIN ' + CAST(@a1 AS NVARCHAR) + ' BUBLONOV';
END
ELSE 
	PRINT 'YOU HAVE NO CASH';