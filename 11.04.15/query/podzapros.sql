USE Petrash

SELECT c.name, AVG(p.price)
FROM Category c JOIN Products p ON p.id_category = c.id
GROUP BY c.name
HAVING AVG(p.price) > 10

-------------------

SELECT name
FROM Category c
WHERE 10 < (
	SELECT AVG(p.price)
	FROM Products p
	WHERE p.id_category = c.id
)