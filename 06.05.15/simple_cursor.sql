declare gc cursor for select  name from goods; -- объявляем курсор
open gc; -- открываем курсор, выполняя запрос, уазанный в курсоре
declare @gname char(32); -- создаем временную переменную для хранения результатов

fetch next from gc into @gname; -- забираем первую запись
while @@FETCH_STATUS = 0
begin
	print @gname; -- выводим значение временной переменной
	fetch next from gc into @gname;	- забираем следующую запись
end

close gc; -- закрываем курсор
deallocate gc; -- удаляем память, выделенную под курсор