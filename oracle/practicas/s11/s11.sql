select countries.country_name,
       region_name
  from regions
natural join countries;

select countries.country_name,
       region_name,
       city
  from regions
natural join countries
natural join locations;

select department_name,
       round(
          avg(salary),
          2
       )
  from employees
  join departments
using ( department_id )
 group by department_name;

select department_name,
       first_name,
       city
  from departments dept
  join employees emple
on ( dept.manager_id = emple.employee_id )
  join locations loc
using ( location_id );

select last_name,
       hire_date,
       department_name,
       job_title
  from employees
  join departments
using ( department_id )
  join jobs
using ( job_id )
 where to_char(
   hire_date,
   'yyyy'
) between 2002 and 2004;

select job_title,
       avg(salary)
  from jobs
natural join employees
 group by job_title
having avg(salary) > 7000;

select region_name,
       count(*) as "NUM DEPAR"
  from regions
natural join countries
natural join locations
natural join departments
 group by region_name;

select first_name,
       department_name,
       country_name
  from employees
  join departments
using ( department_id )
  join locations
using ( location_id )
  join countries
using ( country_id );

select emple.first_name as empleado,
       jefes.first_name as jefe
  from employees emple
  join employees jefes
on emple.manager_id = jefes.employee_id;

select department_name,
       sum(salary) as num_emple
  from employees
 right outer join departments
using ( department_id )
 group by department_name
 order by sum(salary);

select city,
       department_name
  from locations
  left join departments
using ( location_id );