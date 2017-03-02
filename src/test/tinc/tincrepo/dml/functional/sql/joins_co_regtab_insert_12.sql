-- @author prabhd 
-- @created 2012-12-05 12:00:00 
-- @modified 2012-12-05 12:00:00 
-- @tags dml HAWQ 
-- @db_name dmldb
-- @description test12: Join on the distribution key of target table. Insert Large number of rows
\echo --start_ignore
set gp_enable_column_oriented_table=on;
\echo --end_ignore
SELECT COUNT(*) FROM dml_co_s;
SELECT COUNT(*) FROM (SELECT dml_co_r.a,dml_co_r.b,dml_co_s.c FROM dml_co_s INNER JOIN dml_co_r on dml_co_r.b <> dml_co_s.b )foo;
INSERT INTO dml_co_s SELECT dml_co_r.a,dml_co_r.b,dml_co_s.c FROM dml_co_s INNER JOIN dml_co_r on dml_co_r.b <> dml_co_s.b ;
SELECT COUNT(*) FROM dml_co_s;
