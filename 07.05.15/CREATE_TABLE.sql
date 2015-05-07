USE Petrash

create table MyTable2
(
	Id int not null Identity(1,1) PRIMARY KEY,
	ColumnName NVARCHAR(20), -- [NOT NULL],
	id_lib INT REFERENCES Books(id)
);

--drop table MyTable;