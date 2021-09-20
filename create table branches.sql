-- Modify only this SQLite create table statement and nothing else
CREATE TABLE branches (
  id INTEGER PRIMARY KEY,
  address VARCHAR(100) not null,
  customerType VARCHAR(2) not null CONSTRAINT chk_cust CHECK (customerType IN ('r', 'b', 'rb')),
  openingHour INTEGER default 8,
  closingHour INTEGER default 19
);

select * from branches

insert into branches (id, address, customerType) values (1, 'address','r')
insert into branches values (2, 'address 2','r', 1,2)

-- will fail below:
insert into branches values (3, 'address 3','x', 1,2)
insert into branches values (4, null,'rb', 1,2)
