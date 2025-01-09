select city,
       nvl(
          state_province,
          'No tiene'
       )
  from locations;

select salary,
       commission_pct,
       nvl2(
          commission_pct,
          salary + salary * commission_pct / 100,
          salary
       ) as total
  from employees;

select department_name,
       nvl(
          manager_id,
          -1
       )
  from departments;

select city,
       state_province,
       nullif(
          city,
          state_province
       )
  from locations;