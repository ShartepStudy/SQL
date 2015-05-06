USE Petrash

DECLARE gc cursor for select Name from Books; -- объявляем курсор
OPEN gc; -- открываем курсор, выполняя запрос, уазанный в курсоре
DECLARE @gname CHAR(32); -- создаем временную переменную для хранения результатов

FETCH NEXT FROM gc INTO @gname; -- забираем первую запись
WHILE @@FETCH_STATUS = 0
begin
	PRINT @gname; -- выводим значение временной переменной
	FETCH NEXT FROM gc INTO @gname;	-- забираем следующую запись
end

CLOSE gc; -- закрываем курсор
DEALLOCATE gc; -- удаляем память, выделенную под курсор