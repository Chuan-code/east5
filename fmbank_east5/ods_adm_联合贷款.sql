DROP TABLE if EXISTS ods_adm_联合贷款;
CREATE TABLE ods_adm_联合贷款 as
SELECT DISTINCT
	t.`ADM层表名`,
	t.`ADM层字段名`,
	t.ADM_COMMENTS,
	t.XHS_COMMENTS,
	t.ODS_TABLE,
	t.ODS_ITEM 
FROM
	`ods_adm_联合贷款_pre` t