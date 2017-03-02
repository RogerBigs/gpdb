-- @author prabhd 
-- @created 2012-12-05 12:00:00 
-- @modified 2012-12-05 12:00:00 
-- @tags dml HAWQ
-- @db_name dmldb
-- @description test1: Insert data that satisfy the check constraints 
\echo --start_ignore
set gp_enable_column_oriented_table=on;
\echo --end_ignore
SELECT COUNT(*) FROM dml_ao_check_s;
SELECT COUNT(*) FROM (SELECT dml_ao_check_s.a, dml_ao_check_s.b, 'text', dml_ao_check_s.d FROM dml_ao_check_r, dml_ao_check_s WHERE dml_ao_check_r.a = dml_ao_check_s.b)foo;
INSERT INTO dml_ao_check_s SELECT dml_ao_check_s.a, dml_ao_check_s.b, 'text', dml_ao_check_s.d FROM dml_ao_check_r, dml_ao_check_s WHERE dml_ao_check_r.a = dml_ao_check_s.b ;
SELECT COUNT(*) FROM dml_ao_check_s;
