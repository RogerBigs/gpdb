-- @author prabhd 
-- @created 2012-12-05 12:00:00 
-- @modified 2012-12-05 12:00:00 
-- @tags dml HAWQ 
-- @db_name dmldb
-- @description test6: Insert with generate_series
\echo --start_ignore
set gp_enable_column_oriented_table=on;
\echo --end_ignore
SELECT COUNT(*) FROM dml_heap_pt_r;
TRUNCATE TABLE dml_heap_pt_r;
INSERT INTO dml_heap_pt_r SELECT generate_series(1,10),1;
SELECT * FROM dml_heap_pt_r ORDER BY 1;
SELECT COUNT(*) FROM dml_heap_pt_r;
SELECT COUNT(*) FROM dml_heap_pt_r;
