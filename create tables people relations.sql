DROP TABLE [dbo].[people]
DROP TABLE [dbo].[relations]

CREATE TABLE [dbo].[people](
	[id] [int] NOT NULL Primary KEY,
	[name] [varchar](50) NULL,
	[gender] [char](1) NULL)
GO

CREATE TABLE [dbo].[relations](
	[c_id] [int] NOT NULL ,
	[p_id] [int] NOT NULL,
 CONSTRAINT [PK_relations] PRIMARY KEY CLUSTERED 
( [c_id] ASC,	[p_id] ASC )) 
GO


INSERT [dbo].[people] ([id], [name], [gender]) VALUES (1, N'John', N'M')
GO
INSERT [dbo].[people] ([id], [name], [gender]) VALUES (2, N'Sam', N'M')
GO
INSERT [dbo].[people] ([id], [name], [gender]) VALUES (3, N'Jessica', N'F')
GO

INSERT [dbo].[relations] ([c_id], [p_id]) VALUES (1, 2)
GO
INSERT [dbo].[relations] ([c_id], [p_id]) VALUES (1, 3)
GO
