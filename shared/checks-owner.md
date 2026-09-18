**Do not edit `docs/agents/checks.md` yourself.** If this work creates or changes
a check target — a test runner, a linter, a formatter — call `setup-checks` for
that class instead. Its columns are read by shell scripts, and the rules for them
live with the skill that owns the file. Writing a row by hand has already
produced both failures available: a status word that does not exist, and a raw
shell command in a column that holds a bare target name, which the turn-end hook
then ran as `make python3 -m unittest ...` and blocked the report.
