USE dating

--1. ѕоказать первых 10 пользователей с самым высоким рейтингом анкеты (Anketa_Rate).
SELECT TOP 10 [user_id], nick, age, g.name, AVG(ar.rating)
FROM users u JOIN gender g ON u.sex = g.id
	JOIN anketa_rate ar ON u.[user_id] = ar.id_kogo
GROUP BY u.[user_id], u.nick, u.age, g.name
ORDER BY 5 DESC

--2. ѕоказать 10 пользователей, чьи анкеты просматривали чаще всего (Anketa_View).
SELECT TOP 10 [user_id], nick, age, g.name, COUNT(av.id_kogo)
FROM users u JOIN gender g ON u.sex = g.id
	JOIN anketa_view av ON u.[user_id] = av.id_kogo
GROUP BY u.[user_id], u.nick, u.age, g.name
ORDER BY 5 DESC

--3. ѕоказать всех пользователей с высшим образованием, которые не кур€т, не пьют и не употребл€ют наркотики (если такие, конечно, вообще есть).
SELECT [user_id], nick, age, g.name, ed.name, sm.name, dr.name, dg.name
FROM users u JOIN gender g ON u.sex = g.id
	JOIN education ed ON u.id_education = ed.id 
	JOIN smoking sm ON u.my_smoke = sm.id
	JOIN drinking dr ON u.my_drink = dr.id
	JOIN drugs dg ON u.my_drugs = dg.id
WHERE ed.id > 3 AND sm.id = 1 AND dr.id = 1 AND dg.id IN (1, 6, 7)

--4. ѕоказать всех стройных голубоглазых блондинок, затем всех спортивных кареглазых брюнетов, 
--а в конце их общее количество (UNION).
DECLARE @t1 TABLE([user_id] int, nick nvarchar(50), age int, g_name nvarchar(50), f_name nvarchar(50), ec_name nvarchar(50), hc_name nvarchar(50));
DECLARE @t2 TABLE([user_id] int, nick nvarchar(50), age int, g_name nvarchar(50), f_name nvarchar(50), ec_name nvarchar(50), hc_name nvarchar(50));
INSERT INTO @t1
SELECT [user_id], nick, age, g.name, f.name, ec.name, hc.name
FROM 
	users u JOIN gender g ON u.sex = g.id
	JOIN figure f ON u.my_build = f.id
	JOIN eyescolor ec ON u.eyes_color = ec.id
	JOIN haircolor hc ON u.hair_color = hc.id
WHERE g.id = 2 AND f.id = 2 AND ec.id = 4 AND hc.id = 1

INSERT INTO @t2
SELECT [user_id], nick, age, g.name, f.name, ec.name, hc.name
FROM 
	users u JOIN gender g ON u.sex = g.id
	JOIN figure f ON u.my_build = f.id
	JOIN eyescolor ec ON u.eyes_color = ec.id
	JOIN haircolor hc ON u.hair_color = hc.id
WHERE g.id = 1 AND f.id = 4 AND ec.id = 2 AND hc.id = 4

SELECT * FROM @t1
UNION
SELECT * FROM @t2
UNION
SELECT 0, 'Total:',	(SELECT COUNT(*) FROM @t1) + (SELECT COUNT(*) FROM @t2), 'шт.', ' ', ' ', ' '
ORDER BY 4

--5. ѕоказать всех программистов с пирсингом, которые к тому же умеют вышивать крестиком (Moles, Framework и Interes)
SELECT u.[user_id], nick, age, g.name, fw.name, m.name, i.name
FROM users u JOIN gender g ON u.sex = g.id
	JOIN framework fw ON u.id_framework = fw.id
	JOIN users_moles um ON u.[user_id] = um.[user_id]
	JOIN moles m ON um.moles_id = m.id
	JOIN users_interes ui ON u.[user_id] = ui.[user_id]
	JOIN interes i ON ui.interes_id = i.id
WHERE fw.id = 1 AND um.moles_id = 1 AND ui.interes_id = 23
