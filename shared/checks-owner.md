**Do not edit `docs/agents/checks.md` yourself.** If this work creates or changes
a check target — a test runner, a linter, a formatter — call `setup-checks` for
that class instead. Its columns are read by shell scripts, and the rules for them
live with the skill that owns the file: a row written by hand can carry a status
word that does not exist, or a raw shell command where a bare target name
belongs, which the turn-end hook then runs.
That covers every cell, the reason beside `skipped` included, and it holds
where a task's own text says to write the file: whatever this work finds that
the table should say differently goes to `setup-checks` for that class as
well. A guard holds the `Status` column to its four forms — it reports a cell
in none of them once the editing tool has written the table, and refuses a
`git commit` while one stands. That refusal is answered by the same call, for
the row it names and on the branch this work stands on, and the commit is
made again after it: no issue is raised and no task is put down over it.
