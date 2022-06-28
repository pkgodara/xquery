# Xquery

## Database config
In the `config/config.exs`, edit db `username` and `password` according to your credentials

## Apps - 

`QServer` - Interface provides `exec/2` to run raw SQL queries

`QClient` - Example Client using QServer to execute raw queries placed under `sql` dir.
Provides `run/1` interface.

All SQL queries are under files in `apps/qclient/lib/sql/` directory. It is hardcoded to this, so you just need to provide the `file-name` through interactive shell.


## Run
run `iex -S mix` in the main directory and you should be able to run sql statements -

Examples - 

```
QClient.run("create_notes.sql")
QClient.run("insert_notes.sql")
QClient.run("insert_2.sql")
QClient.run("select_all_notes.sql")
QClient.run("select_1.sql")
QClient.run("select_given.sql", [1])
QClient.run("incorrect_q.sql")
```
