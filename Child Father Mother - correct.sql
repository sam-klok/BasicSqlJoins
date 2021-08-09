-- return table Child - Father - Mother
-- this query return properly 

-- c - child
-- f - father
-- m - mother

select 
	  c.name 'Child'
	, f.name 'Father'
	, m.name 'Mother'
from relations r1
left join relations r2 on  r1.c_id = r2.c_id and r1.p_id <> r2.p_id
join people c on  r1.c_id = c.id  -- child
	join people f on  r1.p_id = f.id and f.gender = 'M'
	left join people m on  r2.p_id = m.id and m.gender = 'F'

union

select 
	  c.name 'Child'
	, f.name 'Father'
	, m.name 'Mother'
from relations r1
left join relations r2 on  r1.c_id = r2.c_id and r1.p_id <> r2.p_id
join people c on  r1.c_id = c.id -- child
	join people m on  r1.p_id = m.id and m.gender = 'F'
	left join people f on  r2.p_id = f.id and f.gender = 'M'
