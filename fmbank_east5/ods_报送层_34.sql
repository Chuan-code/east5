DROP TABLE IF EXISTS `ods_报送层_34`;
CREATE TABLE `ods_报送层_34` (
				报送表名 VARCHAR ( 255 ),
        报送字段名 VARCHAR ( 255 ),
				检核字段 VARCHAR ( 255 ),
        业务分类 VARCHAR ( 255 ),
        报送层赋值 VARCHAR ( 255 ),
        报送层备注 VARCHAR ( 255 ),
        ADM层表名 VARCHAR ( 255 ),
        ADM层字段名 VARCHAR ( 255 ),
        ODS层表名 VARCHAR ( 255 ),
        ODS层字段名 VARCHAR ( 255 ),
        WHERE_ITEM VARCHAR ( 255 ),
        WHERE_CONDITION VARCHAR ( 255 ),
        WHERE_CONTENT VARCHAR ( 255 ),
        WHERE_ITEM2 VARCHAR ( 255 ),
        WHERE_CONDITION2 VARCHAR ( 255 ),
        WHERE_CONTENT2 VARCHAR ( 255 )
);
INSERT INTO `ods_报送层_34` (
	报送表名,
	报送字段名,
	检核字段,
	业务分类,
	报送层赋值,
	报送层备注,
	ADM层表名,
	ADM层字段名,
	ODS层表名,
	ODS层字段名,
	WHERE_ITEM,
	WHERE_CONDITION,
	WHERE_CONTENT,
	WHERE_ITEM2,
	WHERE_CONDITION2,
	WHERE_CONTENT2 
) 
SELECT
	报送表名,
	报送字段名,
	检核字段,
	业务分类,
	报送层赋值,
	报送层备注1,
CASE 
	WHEN LEFT(报送层上级表名,3) = "ADM" THEN
		报送层上级表名
	ELSE
		NULL
END ADM层表名,
CASE 
	WHEN LEFT(报送层上级表名,3) = "ADM" THEN
		报送层上级字段名
	ELSE
		NULL
END ADM层字段名,
CASE 
	WHEN LEFT(报送层上级表名,3) = "ODS" THEN
		报送层上级表名
	ELSE
		NULL
END ODS层表名,
CASE 
	WHEN LEFT(报送层上级表名,3) = "ODS" THEN
		报送层上级字段名
	ELSE
		NULL
END ODS层字段名,
	WHERE_ITEM,
	WHERE_CONDITION,
	WHERE_CONTENT,
	WHERE_ITEM2,
	WHERE_CONDITION2,
	WHERE_CONTENT2 
FROM sp_报送层_34_融资租赁业务表