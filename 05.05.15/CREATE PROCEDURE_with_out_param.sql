USE Petrash
GO
CREATE PROCEDURE Rect_shartep
@w float, @h float, @s float out, @p float out
AS
	SET @s = @w * @h;
	SET @p = 2 * ( @w + @h );
