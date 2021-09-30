use LifelongLearning
go


create view v_people 
as 
select id,name from dbo.people


select * from dbo.v_people
