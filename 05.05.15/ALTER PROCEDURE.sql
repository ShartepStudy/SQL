USE [Petrash]
GO

ALTER PROCEDURE MySum_shartep
@a int = 0, @b int = 5
AS
	DECLARE @res int;
	SET @res = @a + @b;
	RETURN @res