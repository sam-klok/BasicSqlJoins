use AdventureWorks2016CTP3;

create table Ludi(
	PersonID int Primary KEY,
	Name varchar(30),
	PhoneID int);

insert Ludi values (1, 'Serge',		1);
insert Ludi values (2, 'Tristan',	1);
insert Ludi values (3, 'Amanda',	2);
insert Ludi values (4, 'McKayla',	Null);
insert Ludi values (5, 'Mom',		3);
insert Ludi values (6, 'Serge',		8);


create table Phone(
	PhoneID int Primary KEY,
	Number varchar(10),
	PhoneColorID int Default Null);

insert Phone values (1, '1111',		1);
insert Phone values (2, '2222',		3);
insert Phone values (3, '3333',		null);
insert Phone values (4, '4444',		null);

Create table PhoneColor(
	ID int Primary KEY,
	Color varchar(10))

insert PhoneColor values(1, 'Red');
insert PhoneColor values(2, 'Blue');
insert PhoneColor values(3, 'Green');
