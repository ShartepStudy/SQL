USE [Petrash]
GO
/****** Object:  Trigger [dbo].[OnBooksInsert]    Script Date: 5/6/2015 8:04:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[OnBooksDelete]
ON [dbo].[Books]
FOR DELETE AS
	IF EXISTS(SELECT * 
			  FROM deleted 
			  WHERE Id_Press IN (SELECT id 
								 FROM Press 
								 WHERE Name LIKE 'BHV'))
	BEGIN
		PRINT 'Ooops! Bad Press!'
		ROLLBACK TRAN
	END
	ELSE
		PRINT 'Hello from OnBooksDelete'