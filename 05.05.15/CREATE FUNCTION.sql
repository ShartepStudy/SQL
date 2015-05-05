USE Petrash
GO

CREATE FUNCTION sum_shartep 
( @par1 int, @par2 float )
RETURNS int
--WITH ENCRIPTION
AS
begin
	return @par1 + @par2;
end
