--AUTOCOMMIT:
    --a) SQL is set to "AutoCommit" by default, meaning every change is treated as a "transaction" & "committed" automatically.
    --b) Basically everything is final & we don't get an "undo" option.


--SOME QUERIES:
SELECT @@autocommit; --check status
SET AUTOCOMMIT = 0; --turn off
ROLLBACK; --undo
COMMIT; --push


--SOME NOTES:
    --a) AutoCommit applies to the current database connection (session).
    --b) If I turn AC off, run some queries, & turn AC on. Everything commits automatically.
    --c) If I turn AC off, ru some queries, & quit. Everything rollbacks automatically.