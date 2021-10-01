use LifelongLearning
go

DROP view IF EXISTS [dbo].[v_people] 
go


create view [dbo].[v_people]
as 
-- new view for demo
select id,name from dbo.people
go

select * from dbo.v_people
