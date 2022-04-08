DROP TABLE if EXISTS dws_报送层_total;
CREATE TABLE dws_报送层_total AS

-- SET @i = 0;
-- SELECT 
-- CONCAT('SELECT * FROM ',table_name,' UNION ALL') SQL_union,
-- (@i := @i + 1) AS num
-- FROM information_schema.tables WHERE table_schema = 'fmbank_east5' and table_name like 'ods_报送层_%'
-- AND LENGTH(table_name)<20
-- ORDER BY SQL_union

SELECT * FROM ods_报送层_1 UNION ALL
SELECT * FROM ods_报送层_10 UNION ALL
SELECT * FROM ods_报送层_11 UNION ALL
SELECT * FROM ods_报送层_13 UNION ALL
SELECT * FROM ods_报送层_14 UNION ALL
SELECT * FROM ods_报送层_19 UNION ALL
SELECT * FROM ods_报送层_2 UNION ALL
SELECT * FROM ods_报送层_21 UNION ALL
SELECT * FROM ods_报送层_23 UNION ALL
SELECT * FROM ods_报送层_24 UNION ALL
SELECT * FROM ods_报送层_3 UNION ALL
SELECT * FROM ods_报送层_30 UNION ALL
SELECT * FROM ods_报送层_33 UNION ALL
SELECT * FROM ods_报送层_34 UNION ALL
SELECT * FROM ods_报送层_48 UNION ALL
SELECT * FROM ods_报送层_9 