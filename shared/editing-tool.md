**A file whose content is text about commands is written with the editing
tool, never from the shell**: `docs/agents/environment.md`, the workflow
file under `.github/workflows/`, and a body file, which the rule on a body
says of that file. Not a heredoc, not `echo`, `cat`, `printf`, `sed` or
`tee`: each puts the text through the shell, and a change bundled into a shell
command goes past the per-file hooks entirely, which is harmless for a version
marker and not for content; and prose gets quoting wrong, a backtick, a dollar
sign, a newline. To the guards a quoted text is a word of its command and no
command, as the last sentence below says, so nothing of this is for them. On
the main branch the branch guard blocks
the editing tool for files under the project on purpose, and none of these files
is written there: the two land through a branch, and a body file lies outside
the repository. Not a rule for every change: where the shell is the right
instrument, it stays, and which of the two a change wants is not decided in
advance — the rule is about these files, whose content is text about commands.
One line of `environment.md` goes another way, the line of an install under
`Installed outside the project`: `bin/devloop-install-note put` writes it, for
the hook and for the run alike, its command an argument in single quotes, which
the guards read as a word of that call and not as a command, so that one program
holds the form of that line.
