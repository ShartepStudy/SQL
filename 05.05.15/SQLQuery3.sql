USE Petrash
GO
CREATE PROCEDURE MySum_shartep
@a int, @b int
AS
	DECLARE @res int;
	SET @res = @a + @b;
	SELECT @res