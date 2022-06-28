# Xquery

## Database config
In the `config/config.exs`, edit db `username` and `password` according to your credentials

## Apps - 

`QServer` - Interface provides `exec/2` to run raw SQL queries

`QClient` - Example Client using QServer to execute raw queries placed under `sql` dir


## Run
run `iex -S mix` and you should be able to run sql statements

Example - 

```
QClient.run("create_notes.sql")
QClient.run("insert_notes.sql")
QClient.run("insert_2.sql")
QClient.run("select_all_notes.sql")
QClient.run("select_1.sql")
QClient.run("select_given.sql", [1])
QClient.run("incorrect_q.sql")
```
