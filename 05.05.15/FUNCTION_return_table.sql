CREATE FUNCTION SpisokKnig()
RETURNS TABLE
AS
	RETURN (
			SELECT b.name as book, a.LastName as author, p.name as izdat
			FROM books b, authors a, press p
			WHERE b.id_author=a.id and b.id_press = p.id
	)