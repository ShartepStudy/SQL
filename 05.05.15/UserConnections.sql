CREATE FUNCTION UserConnections()
RETURNS int
AS
BEGIN
	DECLARE @c int
	SELECT @c=COUNT(DISTINCT(loginame))
	FROM sys.sysprocesses
RETURN @c

END