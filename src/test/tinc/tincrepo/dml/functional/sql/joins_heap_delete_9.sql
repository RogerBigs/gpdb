-- @author prabhd 
-- @created 2012-12-05 12:00:00 
-- @modified 2012-12-05 12:00:00 
-- @tags dml 
-- @db_name dmldb
-- @description test9: Delete and using (with no rows)
\echo --start_ignore
set gp_enable_column_oriented_table=on;
\echo --end_ignore
TRUNCATE TABLE dml_heap_s;
SELECT COUNT(*) FROM dml_heap_r;
DELETE FROM dml_heap_r USING dml_heap_s; 
SELECT COUNT(*) FROM dml_heap_r;
