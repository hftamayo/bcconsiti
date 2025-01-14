create table coches1 (
   codigo number,
   nombre varchar2(100)
);

create table coches2 (
   code number,
   name varchar2(100)
);
--INSERTAR DATOS EN TABLAS
insert into coches1 values ( 1,
                             'BMW 3' );
insert into coches1 values ( 2,
                             'AUDI A5' );
insert into coches1 values ( 3,
                             'CITROEN C5' );
insert into coches1 values ( 4,
                             'RENAULT CLIO' );
insert into coches2 values ( 1,
                             'BMW 3' );
insert into coches2 values ( 6,
                             'MERCEDES C' );
insert into coches2 values ( 3,
                             'CITROEN C5' );
insert into coches2 values ( 7,
                             'FORD MUSTANG' );
commit;

select *
  from coches1
union
select *
  from coches2;

select *
  from coches1
union all
select *
  from coches2;

select *
  from coches1
intersect
select *
  from coches2;

select *
  from coches1
minus
select *
  from coches2;