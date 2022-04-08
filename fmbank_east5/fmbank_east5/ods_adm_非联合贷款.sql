DROP TABLE if EXISTS ods_adm_非联合贷款;
CREATE TABLE ods_adm_非联合贷款 AS
SELECT DISTINCT
a.ADM层表名 AS ADM层表名,
a.ADM层字段名 AS ADM层字段名,
a.ADM层备注1 AS ADM层备注,
a.ADM层赋值 AS ADM层赋值,
a.ADM层上级表名 AS ODS层表名,
a.ADM层上级字段 AS ODS层字段名
FROM sp_adm_非联合贷款 a 