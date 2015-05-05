USE Petrash
DECLARE @sq float, @per float
EXEC Rect_shartep 10.5, 20.5, @sq out, @per out;
SELECT @sq, @per;