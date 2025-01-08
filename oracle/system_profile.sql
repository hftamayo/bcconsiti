select username
  from dba_users
 where username = 'HR';

CONNECT hr/hr@localhost:1521/XE;

select table_name
  from user_tables;

select *
  from departments;

select user
  from dual;

select table_name
  from all_tables
 where owner = 'HR';

select distinct city
  from locations;