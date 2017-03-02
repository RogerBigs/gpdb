-- @author prabhd 
-- @created 2012-12-05 12:00:00 
-- @modified 2012-12-05 12:00:00 
-- @tags dml HAWQ 
-- @db_name dmldb
-- @description test10: Join on the distribution key of target table
\echo --start_ignore
set gp_enable_column_oriented_table=on;
\echo --end_ignore
SELECT COUNT(*) FROM dml_ao_s;
SELECT COUNT(*) FROM (SELECT dml_ao_s.* FROM dml_ao_r,dml_ao_s WHERE dml_ao_s.a = dml_ao_r.a)foo;
INSERT INTO dml_ao_s SELECT dml_ao_s.* FROM dml_ao_r,dml_ao_s WHERE dml_ao_s.a = dml_ao_r.a;
SELECT COUNT(*) FROM dml_ao_s;
