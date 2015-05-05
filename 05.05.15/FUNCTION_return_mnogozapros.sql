CREATE FUNCTION Books_By_Authors()
RETURNS @Book_Authors table (author varchar(200), amm INT)
AS BEGIN

	DECLARE @temp_books table (author1 varchar(200), amm1 INT)

	INSERT @temp_books
	SELECT authors.FirstName+' '+authors.lastname, COUNT(s_cards.id_book)
	FROM Authors, Books, S_Cards
	WHERE authors.id=books.id_author and books.id=s_cards.id_book
	GROUP BY authors.FirstName, authors.lastname

	INSERT @temp_books
	SELECT authors.FirstName+' '+authors.lastname, COUNT(t_cards.id_book)
	FROM Authors, Books, T_Cards
	WHERE authors.id=books.id_author and books.id=t_cards.id_book
	GROUP BY authors.FirstName, authors.lastname

	DECLARE @temp_books2 TABLE (author2 varchar(200), amm2 INT)

	INSERT @temp_books2
	SELECT t.author1,sum(t.amm1)
	FROM @temp_books t
	GROUP BY t.author1

	INSERT @Book_Authors
	SELECT t.author2, t.amm2
	FROM @temp_books2 t

	RETURN
END