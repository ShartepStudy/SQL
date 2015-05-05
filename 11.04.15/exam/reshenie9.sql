USE dating

DECLARE @t TABLE(text nvarchar(200));

INSERT INTO @t
SELECT TOP 100 mess
FROM messages

SELECT *
FROM @t