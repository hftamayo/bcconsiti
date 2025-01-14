insert into productos2 (
   code,
   name
) values ( 1,
           'CLAVOS' );

insert into productos2 (
   code,
   name
) values ( 2,
           'ARANDELAS' );

insert into productos2 (
   code,
   name
) values ( 3,
           'ESCARPIAS' );

savepoint a;

update productos2
   set
   name = 'TORNILLOS'
 where code = 3;

rollback to a;