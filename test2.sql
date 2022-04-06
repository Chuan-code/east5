drop table if exists fmbank_east5.east5_test2;
create table if not exists fmbank_east5.east5_test2 as
    select t1.表名 from fmbank_east5.east5_test1 t1