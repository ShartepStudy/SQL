USE Petrash

DECLARE gc cursor for select Name from Books; -- ��������� ������
OPEN gc; -- ��������� ������, �������� ������, �������� � �������
DECLARE @gname CHAR(32); -- ������� ��������� ���������� ��� �������� �����������

FETCH NEXT FROM gc INTO @gname; -- �������� ������ ������
WHILE @@FETCH_STATUS = 0
begin
	PRINT @gname; -- ������� �������� ��������� ����������
	FETCH NEXT FROM gc INTO @gname;	-- �������� ��������� ������
end

CLOSE gc; -- ��������� ������
DEALLOCATE gc; -- ������� ������, ���������� ��� ������