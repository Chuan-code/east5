drop table if exists fmbank_east5.east5_test1;
create table if not exists fmbank_east5.east5_test1 as
select t1.表名,t1.数据项名称
from fmbank_east5.original_east4 t1 ;