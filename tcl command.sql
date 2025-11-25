SELECT * FROM new.student;
select @@autocommit;
set autocommit=0;
insert into student values(104,'ammu');# temoprary data
SELECT * FROM new.student;

insert into student values(105,'rahul');
commit;

update student set name='anamika' where rollno=103;
savepoint D;

insert into student values(112,'chandran');
savepoint E;

insert into student values(113,'unnikuttan');
savepoint F;
-- show savepoint;
select * from student;
START TRANSACTION;

SAVEPOINT E;  -- Creating the savepoint
insert into student values(114,'unnikuttan p');

ROLLBACK TO SAVEPOINT E;  -- Rolling back to the savepoint
ROLLBACK TO  E;
COMMIT;

#not commit so undo possible
rollback to E;
rollback to savepoint E;
#last row release savepoiont

rollback to D;#savepoint no need
select * from student;
delete from student where rollno=114;# changes undo not data removed