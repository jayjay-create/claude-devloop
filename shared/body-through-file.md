**A body this run writes goes through a file, not through the command line.**
An issue body, a pull request body, a comment: write it to a file and pass
`--body-file`, rather than setting it as a string in the command. Two reasons,
and the second is the one that bites. Prose gets quoting wrong — a backtick, a
dollar sign, a newline — and a body the shell mangled is not the body that was
written. And until 12 October 2026 the guards read the command as text, so a
body quoting a command one of them matched blocked the very call that was
meant to hand that command over: an issue carrying the exact line of a
declined install, passed as a string, could not be filed at all; since that
day a quoted string is a word of its command and no command, by "A hook reads
its input through one program" in `docs/skill-conventions.md`, and the file
stays the channel all the same, for the quoting. Narrowing what reaches a
guard is written down here rather than worked out at the block, and that is
what separates it from the rewording the shared block forbids.

**The file itself is written with the editing tool.** A heredoc, an `echo` or a
`cat` puts the same text through the shell, where the guard reads it, so nothing
is narrowed at all — the shell carries the `gh` call and nothing else. This is
the half the rule was missing when it was first written, and it is the half that
was measured: the pull request body on 6 September 2026 was blocked as a string
and blocked again on the way into a file.

**A title names the problem; it does not quote the command.** The title stays on
the command line — `gh` has no `--title-file` — so it says what the problem
is, "gitleaks cannot be set up", and the command belongs in the body, where it
can be copied. Since 12 October 2026 a title is a word of its command and no
command to the guards, so a title naming `sudo` or `make install` passes, by
"A hook reads its input through one program" in `docs/skill-conventions.md`.
Where a guard blocks the call all the same, the title is not changed: the
block is reported with the command as it ran and the message that came back,
as the shared block on a guard says, and the issue is not filed under another
title — not through a substitution that reads a file, not set plainly and
edited afterwards, not with the word taken out. Each of those is a spelling
that gets through, the one move that block forbids; the second closing run
of milestone 3 renamed a blocked title on 11 October 2026, and the block
stood in no message and in no issue.
