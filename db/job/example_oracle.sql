INSERT INTO sys_job VALUES ('1', 'testTask', 'test1', '3333', '0 0/5 * * * ?', '1', null, TO_TIMESTAMP(' 2019-01-16 11:15:26:000000', 'YYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP(' 2019-01-17 14:46:36:000000', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO sys_job VALUES ('2', 'testTask', 'test2', null, '0 0/5 * * * ?', '1', null, TO_TIMESTAMP(' 2019-01-16 11:16:41:000000', 'YYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP(' 2019-01-17 14:45:53:000000', 'YYYY-MM-DD HH24:MI:SS:FF6'));
commit;