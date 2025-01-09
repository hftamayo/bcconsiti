select department_id,
       first_name,
       case department_id
          when 50 then
             'Transporte'
          when 60 then
             'Dirección'
          else
             'Otro departamento'
       end
  from employees;

select country_id,
       city,
       case
          when country_id in ( 'US',
                               'CA' ) then
             'AMERICA DEL NORTE'
          when country_id in ( 'CH',
                               'UK',
                               'DE',
                               'IT' ) then
             'EUROPA'
          when country_id = 'BR' then
             'AMÉRICA DEL SUR'
          else
             'OTRA ZONA'
       end
  from locations;

select department_id,
       first_name,
       decode(
          department_id,
          50,
          'Transporte',
          60,
          'Dirección',
          'Otro departamento'
       )
  from employees;