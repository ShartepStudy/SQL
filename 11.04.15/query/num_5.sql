USE Petrash

SELECT c.name, COUNT(p.name)
FROM Products p JOIN Category c ON c.id = p.id_category
JOIN Delivery d ON d.id_product = p.id
GROUP BY c.name
HAVING SUM(d.price*d.quantity) > 23