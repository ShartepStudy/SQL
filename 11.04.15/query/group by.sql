USE Petrash

SELECT p.name, MIN(s.price)
FROM Products p JOIN Sale s ON p.id = s.id_product
GROUP BY p.name