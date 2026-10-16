**A file whose content is text about commands is written with the editing
tool, never from the shell**: `docs/agents/environment.md`, the workflow
file under `.github/workflows/`, and a body file, which the rule on a body
says of that file. Not a heredoc, not `echo`, `cat`, `printf`, `sed` or
`tee`: each puts the text through the shell, where the guards read it, so
that a line quoting an install is blocked as the install it names — two
build subagents of the second closing run of milestone 3 were blocked so on
11 October 2026, writing the workflow file and `environment.md` from the
shell, defect c of the roadmap entry of that date on that run — and a change
bundled into a shell command goes past the per-file hooks entirely, which is
harmless for a version marker and not for content; and prose gets quoting
wrong, a backtick, a dollar sign, a newline. On the main branch the branch
guard blocks the editing tool for files under the project on purpose, and
none of these files is written there: the two land through a branch, and a
body file lies outside the repository. Not a rule for every change: where
the shell is the right instrument, it stays, and which of the two a change
wants is not decided in advance — the rule is about these files, whose
content is what the guards read. Since 16 October 2026 one text, point 26 of
part B of the roadmap entry of 12 October 2026, where until then
`build-work` named `environment.md` alone and the check setup nothing.
