
alter table PiratesInfo
add age int not null default 19 check (age > 4)


select * from piratesinfo


insert into piratesinfo values('Billy', 'Jhonson', 3);


alter table piratesinfo
drop constraint CK__PiratesInfo__age__1ED998B2


alter table piratesinfo
drop column age


alter table pirates
add check (NOT (name = 'Billy' AND Ship_id = 2))


insert into pirates values('Billy', 'The Bycicle', 2);