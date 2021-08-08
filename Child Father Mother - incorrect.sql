-- return table Child - Father - Mother
-- this query return it incorrectly

select distinct 
   p.name 'Child'
, p1.name 'Father'
, p2.name 'Mother'

from people p
join relations r on p.id = r.c_id
left join people p1 on p1.id = r.p_id and p1.gender = 'M'
left join people p2 on p2.id = r.p_id and p2.gender = 'F'

--John	NULL	Jessica
--John	Sam		NULL


-- another incorrect attempt with subqueries
select distinct p.name
, (select p1.name from people p1 where p1.id = r.p_id and p1.gender = 'M')
, (select p1.name from people p1 where p1.id = r.p_id and p1.gender = 'F')
from people p
join relations r on p.id = r.c_id

