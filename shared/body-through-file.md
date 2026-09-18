**A body this run writes goes through a file, not through the command line.**
An issue body, a pull request body, a comment: write it to a file and pass
`--body-file`, rather than setting it as a string in the command. Two reasons,
and the second is the one that bites. Prose gets quoting wrong — a backtick, a
dollar sign, a newline — and a body the shell mangled is not the body that was
written. And the guards read the command as text, so a body quoting a command
one of them matches blocks the very call that was meant to hand that command
over: an issue carrying the exact line of a declined install, passed as a
string, cannot be filed at all. Narrowing what reaches a guard is written down
here rather than worked out at the block, and that is what separates it from
the rewording the shared block forbids.

**The file itself is written with the editing tool.** A heredoc, an `echo` or a
`cat` puts the same text through the shell, where the guard reads it, so nothing
is narrowed at all — the shell carries the `gh` call and nothing else. This is
the half the rule was missing when it was first written, and it is the half that
was measured: the pull request body on 6 September 2026 was blocked as a string
and blocked again on the way into a file.

**A title names the problem; it does not quote the command.** The title stays on
the command line — `gh` has no `--title-file` — so what keeps it clear of a guard
is what it says, not how it travels: "gitleaks cannot be set up", rather than the
broken install line repeated. The command belongs in the body, where it can be
copied. Two things that look like the fix are not: putting the title through a
substitution that reads a file, and setting a plain title and editing it
afterwards. Both are spellings that get through, which is the one move the shared
block forbids. And where a title genuinely needs the command in it, that is a
false positive, and the shared block already says what happens to one: it is
reported, not reworded.
