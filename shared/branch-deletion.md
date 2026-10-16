**The branch on GitHub is deleted only after the run has read that it still
stands there.** A merge made by the person's hand may have deleted it
already — the GitHub page offers that at the merge, and so does `gh pr merge`
with `--delete-branch` — and a repository may delete head branches on merge
by a setting of its own; a deletion then answers `error: failed to push some
refs`, which the first closing run of milestone 3 met after every one of its
five merges, defect 9 of the roadmap entry of 11 October 2026 on that run.
So the remote is asked first, under the same bound as a fetch, and the
deletion there runs only on a line coming back:

    ${CLAUDE_PLUGIN_ROOT}/bin/devloop-bounded 30 git ls-remote --heads origin <branch>

prints the branch's line where it stands there, and nothing, exit 0, where
it does not — measured on 16 October 2026 with git 2.50.1 — so `git push -q
origin --delete <branch>` runs after a line and not otherwise. A query that
does not answer, exit 128 with git's message or the program's line at the
bound, is a command that did not answer, reported as "When a command does
not answer" says, and nothing is deleted on it. The local branch goes either
way, `git branch -D <branch>`, once the tree stands on the main branch.
Nothing else does any of it: arming auto-merge carries no branch deletion.
