USE [Petrash]
GO
/****** Object:  UserDefinedFunction [dbo].[sum_shartep]    Script Date: 5/5/2015 8:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER FUNCTION [dbo].[sum_shartep] 
( @par1 int = 0, @par2 float = 0)
RETURNS int
--WITH ENCRIPTION
AS
begin
	return @par1 + @par2;
end
