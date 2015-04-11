USE Petrash

SELECT p.name, AVG(s.price)
FROM Products p JOIN Sale s ON p.id = s.id_product
GROUP BY p.name
HAVING AVG(s.price) > 20