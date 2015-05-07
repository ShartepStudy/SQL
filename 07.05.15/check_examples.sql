--create table Parrots
--(
--	name char(32) primary key,
--	vocabulary int check( vocabulary > 2 ),
--	pname char(16) not null,
--	psurname char(32) not null,
--	foreign key (pname, psurname) references pirates(name, surname)
--);



--create table Hazzards
--(
--	name char(128),
--	piratesKilled int,
--	check (name <> 'Shark' OR (name = 'Shark' AND piratesKilled > 0))
--);

insert into Hazzards values('Shark', 0);