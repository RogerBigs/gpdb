-- @author prabhd 
-- @created 2012-12-05 12:00:00 
-- @modified 2012-12-05 12:00:00 
-- @tags dml HAWQ 
-- @db_name dmldb
-- @description test4: Insert with generate_series
\echo --start_ignore
set gp_enable_column_oriented_table=on;
\echo --end_ignore
SELECT COUNT(*) FROM dml_heap_r;
INSERT INTO dml_heap_r values(generate_series(1,10), generate_series(1,100), 'text');
SELECT COUNT(*) FROM dml_heap_r WHERE c ='text';
SELECT COUNT(*) FROM dml_heap_r;
