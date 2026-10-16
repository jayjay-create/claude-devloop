**A change set aside at a fetch is brought back with `git stash pop <entry>`**,
the entry being the one a `set-aside:` line of
`${CLAUDE_PLUGIN_ROOT}/bin/devloop-setup-state` names for the file — read
already where this follows the question at a start, and run without
`--fetch` for it otherwise — and one line to them says that the change is
back. Measured on 6 October 2026 with git 2.50.1: the pop merges the change
back where the
fast-forward changed another line of the file; where it changed the same
line, the pop reports a conflict in the file, keeps the stash, exit 1, and
leaves both versions in the file between conflict markers, theirs under
`Stashed changes` and GitHub's under `Updated upstream`, measured again on 16
October 2026. Then show them both lines, theirs and GitHub's, and ask which
is to hold — a choice through the harness's choice widget, in their language,
alone in its call, every point in a field of its own and no recommendation;
the change stays set aside until they answer. On the answer the file is
written with the line they chose — through the shell where the tree stands
on the main branch, where the branch guard blocks the editing tool on purpose
— the file is taken out of the index the conflicted pop put it in, `git
restore --staged -- <file>`, so that their change stands as it stood,
uncommitted, and the stash is dropped, `git stash drop <entry>`; measured on
16 October 2026, `git status --short` then reads ` M` for the file and the
stash list is empty. The wording of the question approved on 12 October 2026
stands in the roadmap entry of that date under "The approved wordings",
point 19 of part B; a skill says what is said, not the words.
