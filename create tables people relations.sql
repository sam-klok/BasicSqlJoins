use LifelongLearning


DROP TABLE [dbo].[people]
DROP TABLE [dbo].[relations]

CREATE TABLE [dbo].[people](
	[id] [int] NOT NULL Primary KEY,
	[name] [varchar](50) NOT NULL INDEX IX_people_name,
	[gender] [char](1) NULL)
GO

CREATE TABLE [dbo].[relations](
	[c_id] [int] NOT NULL ,
	[p_id] [int] NOT NULL,
 CONSTRAINT [PK_relations] PRIMARY KEY CLUSTERED 
( [c_id] ASC,	[p_id] ASC )) 
GO


INSERT [dbo].[people] ([id], [name], [gender]) VALUES (1, 'John', 'M')
INSERT [dbo].[people] ([id], [name], [gender]) VALUES (2, 'Sam', 'M')
INSERT [dbo].[people] ([id], [name], [gender]) VALUES (3, 'Jessica', 'F')

-- child of single mom
insert people values (4, 'Slava','M')
insert people values (5, 'Katia','F')

-- child of single dad
insert people values (6, 'Anastasiya','F')
insert people values (7, 'Yuri','M')

INSERT [dbo].[relations] ([c_id], [p_id]) VALUES (1, 2)
INSERT [dbo].[relations] ([c_id], [p_id]) VALUES (1, 3)

insert relations values (4, 5)
insert relations values (6, 7)


-- validate
select * from people
select * from relations
