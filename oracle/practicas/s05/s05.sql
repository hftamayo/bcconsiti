select *
  from employees
 where department_id = 100;

select street_address,
       city
  from locations
 where country_id = 'US';

select *
  from countries
 where region_id = 3;

select first_name,
       salary
  from employees
 where manager_id <> 114;

select *
  from employees
 where hire_date >= '01-01-06';

select *
  from employees
 where job_id = 'ST_CLERK';

select *
  from employees
 where last_name = 'Smith';

select first_name,
       salary
  from employees
 where first_name like 'J%';

select first_name,
       last_name
  from employees
 where first_name like 'S%n';

select country_name
  from countries
 where country_name like '_r%';

select *
  from locations
 where state_province is null;

select first_name,
       salary,
       commission_pct,
       salary + ( salary * commission_pct ) as "Salario total"
  from employees
 where commission_pct is not null;

select first_name,
       hire_date,
       job_id
  from employees
 where job_id = 'IT_PROG'
   and salary < 6000;

select *
  from employees
 where first_name like 'S%'
   and salary > 3000
   and ( department_id = 50
    or department_id = 80 );

select *
  from employees
 where job_id = 'IT_PROG'
   and phone_number like '5%'
   and hire_date between '01-01-2007' and '31-12-2007';