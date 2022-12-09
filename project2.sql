drop table times;
drop table members; 

create table times (
id int,
date varchar primary key, 
members int,
hour int,
weekday int, 
month int 
);

create table members (
date varchar primary key,
member_numbers int
);

select * from times;
select * from times; 

select times.id, times.members, times.hour, times.weekday, times.month, members.date, members.member_numbers
from times
join members
on times.date = members.date;