USE Petrash
GO

CREATE TRIGGER OnCategoriesInsert
ON Categories
FOR -- | AFTER | INSTEAD OF
INSERT -- | UPDATE | DELETE
AS
	DECLARE @x int
	SELECT @x = COUNT(*) FROM Categories
	PRINT 'Hello from trigger!' + CAST(@x as nvarchar)