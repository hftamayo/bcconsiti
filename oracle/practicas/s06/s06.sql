select street_address,
       city
  from locations
 where country_id in ( 'CA',
                       'US' )
   and length(street_address) > 15;

select first_name,
       length(first_name),
       last_name,
       salary * 14
  from employees
 where instr(
   last_name,
   'b'
) > 3;

select *
  from employees
 where salary between 4000 and 7000
   and instr(
   upper(first_name),
   'A'
) <> 0
   and commission_pct is not null;

select first_name,
       last_name,
       substr(
          first_name,
          1,
          1
       )
       || '.'
       || upper(substr(
          last_name,
          1,
          1
       ))
       || '.' as iniciales
  from employees;

select first_name,
       last_name
  from employees
 where first_name like 'S%'
    or last_name like 'S%';

select first_name,
       salary,
       rpad(
          '*',
          salary / 1000,
          '*'
       ) as ranking
  from employees
 order by salary desc;

select first_name,
       hire_date,
       sysdate - hire_date
  from employees;

select sysdate + 15
  from dual;

select round(
   months_between(
      '25-12-2018',
      sysdate
   ),
   1
)
  from dual;

select first_name,
       hire_date,
       last_day(hire_date)
  from employees;

select first_name,
       hire_date,
       round(
          hire_date,
          'MONTH'
       ) as redondeo
  from employees
 where round(
   hire_date,
   'MONTH'
) > hire_date;