-- @author prabhd 
-- @created 2012-12-05 12:00:00 
-- @modified 2012-12-05 12:00:00 
-- @tags dml 
-- @db_name dmldb
-- @description test1: Delete from table
\echo --start_ignore
set gp_enable_column_oriented_table=on;
\echo --end_ignore
SELECT COUNT(*) FROM dml_heap_s; 
DELETE FROM dml_heap_s;
SELECT COUNT(*) FROM dml_heap_s;
