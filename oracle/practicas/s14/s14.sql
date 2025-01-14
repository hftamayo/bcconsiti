create table productos (
   codigo     number not null,
   nombre     varchar2(100) not null,
   precio     number not null,
   unidades   number,
   fecha_alta date
);

insert into productos (
   codigo,
   nombre,
   precio,
   unidades,
   fecha_alta
) values ( 1,
           'tornillos',
           100,
           10,
           '01-09-2017' );

insert into productos values ( 2,
                               'Tuercas',
                               50,
                               5,
                               '01-10-2009' );

insert into productos (
   codigo,
   nombre,
   precio
) values ( 3,
           'Martillos',
           90 );

insert into productos (
   codigo,
   nombre,
   unidades,
   precio
) values ( 4,
           'Arandela',
           10,
           80 );

insert into productos (
   codigo,
   nombre,
   precio,
   unidades
) values ( 4,
           'Arandela',
           80,
           10 );

create table productos2 (
   code number,
   name varchar2(100)
);

insert into productos2
   select codigo,
          nombre
     from productos
    where unidades > 8;

select *
  from productos2;

update productos
   set
   nombre = upper(nombre)
 where precio > 50;

update productos
   set
   precio = precio + 5
 where upper(nombre) like 'T%';

delete productos
 where unidades < 10
    or unidades is null;

truncate table productos2;