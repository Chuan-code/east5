DROP TABLE IF EXISTS ods_adm_联合贷款_pre;
CREATE TABLE ods_adm_联合贷款_pre as
SELECT DISTINCT
	t.`ADM层表名`,
	t.`ADM层字段名`,
	IFNULL( t.`ADM层赋值`, t.`ADM层备注1` ) AS ADM_COMMENTS,
	t.`渠道标示`,
	t.`ADM层上级表名`,
	
	case 
	when ((t.`渠道标示`  = 'LHS' or t.`渠道标示` = 'PR') and t2.IN_HIVE_ACC = 'Y') then t3.XHS_table 
	WHEN ((t.`渠道标示`  = 'LHS' or t.`渠道标示` = 'PR') and t2.IN_HIVE_ACC = 'N') then CONCAT('ODS.',t2.`渠道名`,SUBSTR(t.`ADM层上级表名`,7))
	else t.`ADM层上级表名`
 	end as ODS_TABLE,
	case
	when ((t.`渠道标示`  = 'LHS' or t.`渠道标示` = 'PR') and t2.IN_HIVE_ACC = 'Y') then IFNULL(t3.XHS_assignment,t3.XHS_comments) 
	end as XHS_COMMENTS,
	case 
	when ((t.`渠道标示`  = 'LHS' or t.`渠道标示` = 'PR') and t2.IN_HIVE_ACC = 'Y') then t3.XHS_item 
	WHEN ((t.`渠道标示`  = 'LHS' or t.`渠道标示` = 'PR') and t2.IN_HIVE_ACC = 'N') then t.`ADM层上级字段`
	else t.`ADM层上级字段`
 	end as ODS_ITEM
	
FROM
	`sp_adm_联合贷款` t 
	LEFT JOIN `sp_adm_联合贷款渠道` T2 ON T.`渠道标示` = T2.CHANNEL ANd SUBSTR(T.`ADM层上级表名`,1,6) = 'ODS.XX'
	LEFT JOIN ods_lhs_xhs_mappping t3 ON T.`ADM层上级表名` = T3.LHS_table AND T.`ADM层上级字段` = T3.LHS_item;
	ALTER TABLE ods_adm_联合贷款_pre MODIFY COLUMN ODS_TABLE VARCHAR(255) 
