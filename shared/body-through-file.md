**A body this run writes goes through a file, not through the command line.**
An issue body, a pull request body, a comment: write it to a file and pass
`--body-file`, rather than setting it as a string in the command. Prose gets
quoting wrong — a backtick, a dollar sign, a newline — and a body the shell
mangled is not the body that was written. To the guards a quoted string is a
word of its command and no command; the file stays the channel all the same, for
the quoting. Narrowing what reaches a guard is written down here rather than
worked out at the block, and that is what separates it from the rewording the
shared block forbids.

**The file itself is written with the editing tool.** A heredoc, an `echo` or a
`cat` puts the same text through the shell, where the guard reads it, so nothing
is narrowed at all — the shell carries the `gh` call and nothing else.

**The file lies outside the repository.** It goes into a directory `mktemp
-d` makes — under the system's temporary directory, on macOS, Linux, Windows
with Git Bash and Alpine alike — and the path the editing tool writes it to
is the one that command printed, so the directory is made before the file.
Never under `.git/`, which is git's own directory and no place for a file of
the run's, and nowhere in the tree the commit is built from, where it would
stand untracked in `git status --short` and go in with the next `git add`
of its directory. The branch guard blocks the editing tool on the main branch
for files under the project alone, so a body is written there on the main branch
as well, where a planning issue is filed from.

**A title names the problem; it does not quote the command.** The title stays on
the command line — `gh` has no `--title-file` — so it says what the problem
is, "gitleaks cannot be set up", and the command belongs in the body, where it
can be copied. A title is a word of its command and no command to the guards, so
a title naming `sudo` or `make install` passes. Where a guard blocks the call
all the same, the title is not changed: the block is reported with the command
as it ran and the message that came back, as the shared block on a guard says,
and the issue is not filed under another title — not through a substitution that
reads a file, not set plainly and edited afterwards, not with the word taken
out. Each of those is a spelling that gets through, the one move that block
forbids.
