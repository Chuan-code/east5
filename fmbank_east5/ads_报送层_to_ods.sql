DROP TABLE if EXISTS ads_报送层_to_ods; 
CREATE TABLE ads_报送层_to_ods AS
SELECT t1.报送表名,
t1.报送字段名,
t1.业务分类,
t1.报送层赋值,
t1.报送层备注,
t1.ADM层表名,
t1.ADM层字段名,
a.ADM层备注,
a.ADM层赋值,
CASE
	WHEN LENGTH(IFNULL(t1.ADM层表名,''))<>0 THEN
		a.ODS层表名
	ELSE
		t1.ODS层表名
END ODS层表名,
CASE
	WHEN LENGTH(IFNULL(t1.ADM层表名,''))<>0 THEN
		a.ODS层字段名
	ELSE
		t1.ODS层字段名
END ODS层字段名,
t1.WHERE_ITEM,
t1.WHERE_CONDITION,
t1.WHERE_CONTENT,
t1.WHERE_ITEM2,
t1.WHERE_CONDITION2,
t1.WHERE_CONTENT2
FROM dws_报送层_total t1 
LEFT JOIN dws_adm_total a 
ON t1.`ADM层表名` = a.`ADM层表名` AND t1.`ADM层字段名` = a.`ADM层字段名`
