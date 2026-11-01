**A change set aside at a fetch is brought back with `git stash pop <entry>`**,
the entry being the one a `set-aside:` line of
`${CLAUDE_PLUGIN_ROOT}/bin/devloop-setup-state` names for the file, the
program run without `--fetch` immediately before the pop, where this follows
the question at a start as well: an earlier pop or drop renumbers the entries
under it, so a line read before it can name another entry, the person's own
among them — and one line to them says that the change is back, at the next
message that ends a turn with text. The pop merges the change back where the
fast-forward changed another line of the file; where it changed the same line,
the pop reports a conflict in the file, keeps the stash, exit 1, and leaves both
versions in the file between conflict markers, theirs under `Stashed changes`
and GitHub's under `Updated upstream`. Then ask which line is to hold — a choice
through the harness's choice widget, in their language, alone in its call, every
point in a field of its own and no recommendation, both lines, theirs and
GitHub's, in its question field before the question line and nothing said before
the call; the change stays set aside until they answer. On the answer the file
is written with the line they chose — through the shell where the tree stands on
the main branch, where the branch guard blocks the editing tool on purpose — the
file is taken out of the index the conflicted pop put it in, `git restore
--staged -- <file>`, so that their change stands as it stood, uncommitted, and
the stash is dropped, `git stash drop <entry>`, with the entry a `set-aside:`
line names for the file when the program is run again just before it; `git
status --short` then reads ` M` for the file and the stash list is empty.
