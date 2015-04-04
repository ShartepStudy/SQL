USE Petrash
SELECT S.name, G.name, SP.name
FROM Students S JOIN Groups G ON S.id_group = G.id
JOIN Specializations SP ON G.id_spec = SP.id