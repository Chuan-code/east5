DROP TABLE if EXISTS res_east5_mark;
CREATE TABLE res_east5_mark AS
SELECT DISTINCT
t.报送表名 AS 报送表名,
t.报送字段名 AS 报送字段名,
t.`ODS层表名` AS ORACLE表名,
o.HIVE_SCHEMA AS 数仓库名,
o.HIVE_TABLE AS 数仓表名,
CASE 
	WHEN LENGTH(IFNULL(o.HIVE_TABLE,'')) <>0 THEN
		t.`ODS层字段名`
	ELSE
		NULL
END 数仓字段名,
t.WHERE_ITEM AS WHERE_ITEM,
t.WHERE_CONDITION AS WHERE_CONDITION,
t.WHERE_CONTENT AS WHERE_CONTENT,
t.WHERE_ITEM2 AS WHERE_ITEM2,
t.WHERE_CONDITION2 AS WHERE_CONDITION2,
t.WHERE_CONTENT2 AS WHERE_CONTENT2,
r.非空规则号 AS 非空规则号,
r.非空判定 AS 非空判定,
r.非空类型 AS 非空类型,
r.唯一规则号 AS 唯一规则号,
r.唯一判定 AS 唯一判定,
r.唯一类型 AS 唯一类型,
r.值域规则号 AS 值域规则号,
r.值域判定 AS 值域判定,
r.值域类型 AS 值域类型,
r.值域内容 AS 值域内容,
r.格式规则号 AS 格式规则号,
r.格式判定 AS 格式判定,
r.格式类型 AS 格式类型,
r.格式内容 AS 格式内容,
r.时间分区标识 AS 时间分区标识
FROM
	ads_报送层_to_ods t 
LEFT JOIN dws_oracle_hive_mapping o ON t.ODS层表名 = o.ORACLE_TABLE 
LEFT JOIN dws_rule_total r ON t.报送表名 = r.报送表名 and t.报送字段名 = r.报送字段名 AND LENGTH(IFNULL(o.HIVE_TABLE,'')) <>0
WHERE LENGTH(IFNULL(t.`ODS层表名`,'')) <> 0