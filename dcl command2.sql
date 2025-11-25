select user from mysql.user;

create user 'user23'@'%' identified by '1234';
grant select,delete on school.student to 'user23'@'%';

show grants for 'user23'@'%';

revoke select,delete on school.student from 'user23'@'%';