select count(*)
  from employees
 where department_id = 50;

select count(*)
  from employees
 where to_char(
   hire_date,
   'yyyy'
) = '2007';

select max(salary),
       min(salary),
       max(salary) - min(salary)
  from employees;

select sum(salary)
  from employees
 where department_id = 100;

select department_id,
       round(
          avg(salary),
          2
       )
  from employees
 group by department_id;

select country_id,
       count(*)
  from locations
 group by country_id;

select department_id,
       round(
          avg(salary),
          2
       )
  from employees
 where commission_pct is not null
 group by department_id;

select to_char(
   hire_date,
   'YYYY'
),
       count(*)
  from employees
 group by to_char(
   hire_date,
   'YYYY'
)
having count(*) > 10;

select department_id,
       to_char(
          hire_date,
          'YYYY'
       ),
       count(employee_id)
  from employees
 group by department_id,
          to_char(
             hire_date,
             'YYYY'
          )
 order by department_id;

select distinct department_id
  from employees
 group by department_id,
          manager_id
having count(employee_id) > 5;