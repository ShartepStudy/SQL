/*
�������� ���������� ��� ����� ���������� ������ �� ������� ���, ������� �� 01.04.2015 �� ��� ����. 
������������� �� �������� ����.
*/

declare @sd int = 1, @cd int = 11

while @sd <= @cd
begin
	declare @kp int = 0
	SELECT @kp = COUNT(*) FROM Sale WHERE date_of_sale = '2015-04-' + cast(@sd as nvarchar)
	print cast(@sd as nvarchar)+'-04-2015: ' + cast(@kp as nvarchar)
	set @sd +=1
end
---------
SELECT date_of_sale, COUNT(id)
FROM Sale WHERE date_of_sale > '20150401'
GROUP BY date_of_sale