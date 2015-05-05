USE dating

--6. �������� ������� �������� �������� ������� ������������, � �������� ���� ������� ����.
SELECT [user_id], nick, age, g.name, gp.name, COUNT(gs.message)
FROM users u JOIN gender g ON u.sex = g.id
	JOIN goroskop gp ON u.id_zodiak = gp.id
	JOIN gift_service gs ON u.[user_id] = gs.id_to
WHERE gp.id = 12
GROUP BY u.[user_id], u.nick, u.age, g.name, gp.name

--7. �������� ��� ����� ������������ ���� �� ����� ��������� (������� ����� 5 ������), ���������� �� ������� ��������.
SELECT u.[user_id], nick, age, g.name, COUNT(ul.id), k.name, r.name
FROM users u JOIN gender g ON u.sex = g.id
	JOIN users_languages ul ON u.[user_id] = ul.[user_id]
	JOIN kitchen k ON u.like_kitchen = k.id
	JOIN richness r ON u.my_rich = r.id
WHERE k.id = 2 OR k.id = 2
GROUP BY u.[user_id], u.nick, u.age, g.name, k.name, r.name

--8. �������� ���� ���������, ������� ���������� ���������� ��������������, ����� �� �������, 
--� � ��������� ����� �������� �� ������.
SELECT u.[user_id], nick, age, g.name, r.name, rs.name, s.name
FROM users u JOIN gender g ON u.sex = g.id
	JOIN religion r ON u.religion = r.id
	JOIN residence rs ON u.my_home = rs.id
	JOIN users_sport us ON u.[user_id] = us.[user_id]
	JOIN sport s ON us.sport_id = s.id
WHERE r.id = 6 AND rs.id = 9 AND (s.id = 6 OR s.id = 9)

--10. �������� ���������� ��������� ������������� � ����:
--�������	  ���-��   %
-- �� 18	   2000	   40
-- 18-24	   1500	   30
-- 24-30	   1000	   20
-- �� 30	   500	   10
DECLARE @d1 INT;
DECLARE @d2 INT;
DECLARE @d3 INT;
DECLARE @d4 INT;
DECLARE @s INT;

SELECT @d1 = COUNT([user_id])
FROM users u
WHERE u.age < 18

SELECT @d2 = COUNT([user_id])
FROM users u
WHERE u.age >= 18 AND u.age < 24

SELECT @d3 = COUNT([user_id])
FROM users u
WHERE u.age >= 24 AND u.age < 30

SELECT @d4 = COUNT([user_id])
FROM users u
WHERE u.age >= 30

SET @s = @d1 + @d2 + @d3 + @d4;
SELECT '�� 18', @d1, @d1*100/@s
UNION
SELECT '18-24', @d2, @d2*100/@s
UNION
SELECT '24-30', @d3, @d3*100/@s
UNION
SELECT '�� 30', @d4, @d4*100/@s


--11. ������� ������ � ����������� (� ���� ����������), ������� ������������ ��������� �������
--  ��� (�� ����������� ������)
--  ���
--  ����������� �������
--  ������������ �������
--  ����������� ����
--  ������������ ����
--  ����������� ���
--  ������������ ���
--� ���������� ������ 50 ��������� �������������, � ������ �������.
DECLARE @nik nvarchar(50);
DECLARE @pol INT;
DECLARE @min_age INT;
DECLARE @max_age INT;
DECLARE @min_rost INT;
DECLARE @max_rost INT;
DECLARE @min_ves INT;
DECLARE @max_ves INT;

SET @pol = 1; -- 2
SET @min_age = 5;
SET @max_age = 20;
SET @min_rost = 150;
SET @max_rost = 170;
SET @min_ves = 75;
SET @max_ves  = 85;
SET @nik = 'Goareg';

SELECT TOP 50 u.[user_id], u.nick, g.name, u.age, u.rost, u.ves
FROM users u JOIN gender g ON u.sex = g.id
WHERE g.id = @pol AND 
	age >= @min_age AND age <= @max_age AND
	rost >= @min_rost AND age <= @max_rost AND
	ves >= @min_ves AND age <= @max_ves 
	AND	nick LIKE @nik