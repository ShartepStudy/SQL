USE Petrash

SELECT TOP 1 p.name, s.price
FROM Sale s JOIN Products p ON p.id = s.id_product
ORDER BY 2 DESC

---------

SELECT p.name, s.price
FROM Sale s JOIN Products p ON p.id = s.id_product
WHERE s.price = (
	SELECT MAX(price)
	FROM Sale
)

