DROP TABLE IF EXISTS dbo.hair

CREATE TABLE [dbo].[hair](
	[hair_id] [int] NOT NULL Primary KEY IDENTITY(1,1),
	[person_id] [int] NOT NULL FOREIGN KEY REFERENCES People(ID),
	[color] [varchar](255) NOT NULL INDEX IX_hair_color,
	[comment] [varchar](255) NULL)
GO

insert into dbo.hair values(1,'blonde',null)
insert into dbo.hair values(2,'red','dark red')

select * from dbo.hair