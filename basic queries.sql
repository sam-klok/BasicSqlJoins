use AdventureWorks2016CTP3;

select * from Ludi;
select * from Phone;

select * from Ludi l inner join Phone p on l.PhoneID = p.PhoneID
select * from Ludi l full join Phone p on l.PhoneID = p.PhoneID
select * from Ludi l full join Phone p on l.PhoneID = p.PhoneID where p.PhoneID is null or l.PersonID is null -- full excluding join
select * from Ludi l, Phone p -- cartesian join (multiplication)

select * from Ludi l left outer join Phone p on l.PhoneID = p.PhoneID
select * from Ludi l left outer join Phone p on l.PhoneID = p.PhoneID where p.PhoneID IS NOT NULL	-- people with phone
select * from Ludi l left outer join Phone p on l.PhoneID = p.PhoneID where p.PhoneID IS NULL		-- people with no phone

-- phones used by more than 1 person
select p.Number, count(l.PhoneID) Abonents
from Ludi l left join Phone p on l.PhoneID = p.PhoneID
group by p.Number, l.PhoneID
having count(l.PhoneID) > 1