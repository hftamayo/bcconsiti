select *
  from employees
 where to_char(
   hire_date,
   'MON'
) = 'MAY';

select first_name,
       hire_date
  from employees
 where to_char(
   hire_date,
   'YYYY'
) = 2007;


select to_char(
   to_date('16-06-1966'),
   'DAY'
)
  from dual;

select first_name,
       hire_date
  from employees
 where rtrim(to_char(
   hire_date,
   'MONTH'
)) = 'JUNE';

select salary,
       to_char(
          salary,
          '$99,999.99'
       ) as dolares,
       to_char(
          salary * 0.79,
          'U99,999.99'
       ) as euros
  from employees;

select to_number('1210.73',
          '9999.99')
  from dual;

select to_number('$127.2',
          '$999.99')
  from dual;

select phone_number,
       to_number(substr(
          phone_number,
          1,
          3
       )) * 2
  from employees;

select to_date('10 DE FEBRERO DE 2018','dd "DE" MONTH "DE" YYYY')
  from dual;

select to_date('FACTURA: MARZO0806',
        '"FACTURA:" MONTHYYDD',
        'NLS_DATE_LANGUAGE=SPANISH')
  from dual;

select to_date('FACTURA: MARZO0806',
        '"FACTURA:" MONTHYYDD',
        'NLS_DATE_LANGUAGE=SPANISH')
  from dual;