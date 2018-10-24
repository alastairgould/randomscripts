```sql
exec beta_lockinfo
```

Procceses with ```!!``` in blklvl column are the main blocker

The key column in the result set is the blklvl column. If this column has double exclamation marks !! this process is a lead blocker, blocking one or more other processes (which could be other execution contexts of the same session) without being blocked itself. If there is a number, the process is blocked. 1 indicates that the process is blocked by a lead blocker, 2 indicates that the process is blocked by a process which in its turn is blocked by a lead blocker and so on. A process is not involved in blocking has a blank in this column.
