declare gc cursor scroll for select  name from goods; -- ��������� ������ �� ��������
open gc; -- ��������� ������, �������� ������, �������� � �������
declare @gname char(32); -- ������� ��������� ���������� ��� �������� �����������


fetch last from gc into @gname; -- ����� ��������� ������
print @gname;

fetch relative -1 from gc into @gname; -- ���������� ����� �� ���� ������
print @gname;

fetch relative 1 from gc into @gname; -- ������ �� ���� ������
print @gname;

fetch first from gc into @gname; -- ����� ��������� �������
print @gname;

fetch absolute 3 from gc into @gname; -- ����� ������ �� ����� �������
print @gname;

close gc;
deallocate gc; 
