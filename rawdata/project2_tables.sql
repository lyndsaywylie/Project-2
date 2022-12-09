drop table crowd;

create table crowd (
	id int,
	members_workingout int,
	date varchar primary key,
	temp float
);

create table members (
	date varchar primary key,
	membership_count int
);

select * from crowd;
select * from members;

-- Joins tables
SELECT crowd.id, crowd.members_workingout, crowd.date, crowd.temp, members.date, members.membership_count
FROM crowd
JOIN members
ON crowd.date = members.date;