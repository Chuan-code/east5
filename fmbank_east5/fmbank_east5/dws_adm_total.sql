DROP TABLE if EXISTS dws_adm_total;
CREATE TABLE dws_adm_total AS
SELECT * FROM ods_adm_非联合贷款 UNION
-- SELECT * FROM ods_adm_where条件 UNION
SELECT * FROM ods_adm_联合贷款 
 



