DROP TABLE [dbo].[customers]
DROP TABLE [dbo].[city]
DROP TABLE [dbo].[country]

CREATE TABLE [dbo].[country](
	[country_id] [int] NOT NULL Primary KEY,
	[country_name] [varchar](50) not NULL)
GO

CREATE TABLE [dbo].[city](
	[city_id] [int] NOT NULL Primary KEY,
	[city_name] [varchar](50) not NULL,
	[country_id] [int] not null)
GO

CREATE TABLE [dbo].[customers](
	[customer_id] [int] NOT NULL IDENTITY(1,1) Primary KEY,
	[customer_name] [varchar](100) NOT NULL ,
	[city_id] [int] NOT NULL) 
GO

insert country values (1, 'usa')
insert country values (2, 'russia')
insert country values (3, 'ukraine')
insert country values (4, 'germany')

insert city values (1, 'Phoenix', 1)
insert city values (2, 'Los Angeles', 1)
insert city values (3, 'New Yourk', 1)
insert city values (4, 'Moscow', 2)
insert city values (5, 'Peteburg', 2)
insert city values (6, 'Perm', 2)
insert city values (7, 'Kiev', 3)
insert city values (8, 'Ivano Frankovsk', 3)
insert city values (9, 'Augsburg', 4)

insert customers (customer_name, city_id) values ('John','1')
insert customers (customer_name, city_id) values ('Bob','1')
insert customers (customer_name, city_id) values ('Jessica','1')
insert customers (customer_name, city_id) values ('Amanda','1')
insert customers (customer_name, city_id) values ('McKayla','1')
insert customers (customer_name, city_id) values ('Lex','1')

insert customers (customer_name, city_id) values ('Cindy','2')
insert customers (customer_name, city_id) values ('Jack','3')
insert customers (customer_name, city_id) values ('Ivan','4')
insert customers (customer_name, city_id) values ('Serg','4')
insert customers (customer_name, city_id) values ('Sam','4')
insert customers (customer_name, city_id) values ('Sam','5')
insert customers (customer_name, city_id) values ('Yo','5')
insert customers (customer_name, city_id) values ('Akakiy','6')
insert customers (customer_name, city_id) values ('Linda','7')
insert customers (customer_name, city_id) values ('Anastasia','7')
insert customers (customer_name, city_id) values ('Ekaterina','7')
insert customers (customer_name, city_id) values ('Yuri','7')
insert customers (customer_name, city_id) values ('Vasia','8')
insert customers (customer_name, city_id) values ('Otto','9')
insert customers (customer_name, city_id) values ('Rico','9')
insert customers (customer_name, city_id) values ('Yalchin','9')
insert customers (customer_name, city_id) values ('Eric','9')
