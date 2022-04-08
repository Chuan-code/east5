drop table if EXISTS dws_rule_total;
CREATE table 	dws_rule_total as
SELECT DISTINCT * FROM
(SELECT DISTINCT
NULL AS 报送表名,
NULL AS 检核字段,
NULL AS 报送字段名,
NULL AS 非空规则号,
NULL AS 非空判定,
NULL AS 非空类型,
NULL AS 唯一规则号,
NULL AS 唯一判定,
NULL AS 唯一类型,
NULL AS 值域规则号,
NULL AS 值域判定,
NULL AS 值域类型,
NULL AS 值域内容,
NULL AS 格式规则号,
NULL AS 格式判定,
NULL AS 格式类型,
NULL AS 格式内容,
NULL AS 时间分区标识
UNION

-- SELECT 
-- CONCAT('SELECT * FROM ',table_name,' UNION') SQL_union
-- FROM information_schema.tables WHERE table_schema = 'fmbank_bfd' and table_name like 'sp_规则打标_%'

SELECT * FROM  sp_规则打标_east5
)t
WHERE LENGTH(IFNULL(报送表名,'')) <> 0