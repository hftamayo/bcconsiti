select first_name,
       last_name
  from employees
 where department_id = (
   select department_id
     from employees
    where first_name = 'John'
      and last_name = 'Chen'
);

select department_name
  from departments
 where location_id = (
   select location_id
     from locations
    where city = 'Toronto'
);

select first_name
  from employees
 where employee_id in (
   select manager_id
     from employees
    group by manager_id
   having count(*) > 5
);

select city
  from locations
 where location_id = (
   select location_id
     from departments
    where department_id = (
      select department_id
        from employees
       where first_name = 'Guy'
         and last_name = 'Himuro'
   )
);

select last_name,
       job_id,
       salary
  from employees
 where salary = (
   select min(salary)
     from employees
);

select *
  from departments
 where department_id in (
   select department_id
     from employees
    group by department_id
   having max(salary) > 10000
);

select *
  from jobs
 where job_id in (
   select job_id
     from employees
    where to_char(
      hire_date,
      'YYYY'
   ) between 2002 and 2003
);

select first_name,
       salary,
       department_id
  from employees
 where salary > any (
   select max(salary)
     from employees
    group by department_id
   having department_id in ( '50',
                             '60',
                             '70' )
);

select department_name
  from departments
 where department_id in (
   select department_id
     from employees
    group by department_id
   having avg(salary) > 9000
);

select first_name,
       department_name,
       salary
  from employees
  join departments
using ( department_id )
 where ( department_id,
         salary ) in (
   select department_id,
          max(salary)
     from employees
    group by department_id
)
 order by salary desc;

select first_name,
       department_name,
       salary
  from employees emple
  join departments dept
on ( emple.department_id = dept.department_id )
 where salary = (
   select max(salary)
     from employees
    where department_id = emple.department_id
    group by department_id
)
 order by salary desc;

select *
  from employees
 where salary > all (
   select salary
     from employees
    where department_id = 100
);

select department_id,
       first_name,
       salary
  from employees emple
 where salary = (
   select max(salary)
     from employees
    where department_id = emple.department_id
);

select city
  from locations localidades
 where exists (
   select *
     from departments
    where location_id = localidades.location_id
);

select region_name
  from regions regiones
 where not exists (
   select *
     from countries
   natural join locations
   natural join departments
    where region_id = regiones.region_id
);