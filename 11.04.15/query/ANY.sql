USE Petrash

SELECT name
FROM Supplier
WHERE id IN (SELECT id_supplier
			 FROM Delivery)

---------

SELECT Cheap.name, Cheap.price
FROM (	SELECT *
		FROM Products
		WHERE price < 10 ) AS Cheap

---------

SELECT name
FROM Products
WHERE id_category = ANY(	SELECT id
							FROM Category
							WHERE name LIKE 'Vegetables'  )