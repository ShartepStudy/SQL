-- показать всех поставщиков, которые поставляли товары более 2 раз.
USE Petrash

SELECT s.name
FROM Supplier s JOIN Delivery d ON d.id_supplier = s.id
GROUP BY s.name
HAVING COUNT(d.id_product) > 2 

----

SELECT s.name
FROM Supplier s
WHERE 2 < (
	SELECT COUNT(d.id_supplier)
	FROM Delivery d
	WHERE d.id_supplier = s.id
)