select first_name,
       phone_number
  from employees;

select first_name as nombre,
       job_id as "Tipo de Trabajo"
  from employees;

select *
  from regions;

select country_name
  from countries;

select street_address as "Dirección",
       city as "Ciudad",
       state_province as "Estado"
  from locations;

select 'El empleado '
       || first_name
       || ' del departamento '
       || department_id
       || ' tiene un salario de
'
       || salary as datos
  from employees;

select 'La calle '
       || street_address
       || ' pertenece a la ciudad:'
       || city as "Calle y Ciudad"
  from locations;

select distinct city
  from locations;

select distinct department_id,
                job_id
  from employees;