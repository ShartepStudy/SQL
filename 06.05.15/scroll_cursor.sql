declare gc cursor scroll for select  name from goods; -- объ€вл€ем курсор со скроллом
open gc; -- открываем курсор, выполн€€ запрос, уазанный в курсоре
declare @gname char(32); -- создаем временную переменную дл€ хранени€ результатов


fetch last from gc into @gname; -- берем последнюю запись
print @gname;

fetch relative -1 from gc into @gname; -- сдвигаемс€ назад на одну запись
print @gname;

fetch relative 1 from gc into @gname; -- вперед на одну запись
print @gname;

fetch first from gc into @gname; -- берем последний элемент
print @gname;

fetch absolute 3 from gc into @gname; -- берем третий по счету элемент
print @gname;

close gc;
deallocate gc; 
