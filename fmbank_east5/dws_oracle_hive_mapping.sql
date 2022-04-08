DROP TABLE IF EXISTS dws_oracle_hive_mapping;
CREATE TABLE dws_oracle_hive_mapping AS 
SELECT
CONCAT( 'ODS.', t.`ORACLE表名` ) AS ORACLE_TABLE,
T.`大数据平台库名` AS HIVE_SCHEMA,
T.`大数据平台表名` AS HIVE_TABLE 
FROM
(
	SELECT ORACLE表名,大数据平台库名,大数据平台表名 FROM sp_映射关系_非联合贷款  UNION 
	SELECT ORACLE表名,大数据平台库名,大数据平台表名 FROM sp_映射关系_联合贷款  UNION 
	SELECT ORACLE表名,HIVE_SCHEMA AS 大数据平台库名,HIVE_TABLE AS 大数据平台表名 FROM sp_映射关系_新核算
) t