-- показать, какие товары были сделаны в Odessa

USE Petrash

SELECT name FROM Products
WHERE id_producer IN (
	SELECT id FROM Producer
	WHERE id_address IN (
		SELECT id FROM [Address]
		WHERE id_city IN (
			SELECT id FROM City
			WHERE name Like 'Odessa'
		)
	)
)