-- @author prabhd 
-- @created 2012-12-05 12:00:00 
-- @modified 2012-12-05 12:00:00 
-- @tags dml HAWQ 
-- @db_name dmldb
-- @description test8: Insert with generate_series
\echo --start_ignore
set gp_enable_column_oriented_table=on;
\echo --end_ignore
SELECT COUNT(*) FROM dml_co_r;
INSERT INTO dml_co_r SELECT * from generate_series(1,10);
SELECT COUNT(*) FROM dml_co_r;
