USE Petrash
GO

CREATE TRIGGER OnBooksInsert
ON Books
FOR INSERT AS
	DECLARE @year int
	
	SELECT @year yearpress
	FROM inserted

	IF @year < 2010
	BEGIN
		PRINT 'Ooops! Bad year!'
		ROLLBACK TRAN
	END
	ELSE
		PRINT 'Hello from InsertBooksTrigger'