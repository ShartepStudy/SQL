declare gc cursor for select  name from goods; -- ��������� ������
open gc; -- ��������� ������, �������� ������, �������� � �������
declare @gname char(32); -- ������� ��������� ���������� ��� �������� �����������

fetch next from gc into @gname; -- �������� ������ ������
while @@FETCH_STATUS = 0
begin
	print @gname; -- ������� �������� ��������� ����������
	fetch next from gc into @gname;	- �������� ��������� ������
end

close gc; -- ��������� ������
deallocate gc; -- ������� ������, ���������� ��� ������