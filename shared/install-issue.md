**An issue for a tool that is missing carries two lines the next start
reads**, since 28 October 2026, decision (5) of the roadmap entry of 27
October 2026 on the tool state read by one program, built in the roadmap
entry of 28 October 2026 on the hook on SubagentStart. Wherever this run
writes an issue because a tool outside the project is missing on this
machine — a handover the person declined, an install that did not go
through with nobody there, a check class's tool under a no, `secrets` with
nobody there, an install auto mode refused — its body carries, each at the
start of a line of its own and exactly so, beside what the issue says
otherwise:

    install-tool: <the tool as `bin/devloop-tool-state` names it: a command as it is called, `yq`, or a browser for tests as `VENDOR:NAME`, `playwright:webkit`>
    install-command: <the install command alone, as it was handed over, without the change into the project's directory before it>

At every start `bin/devloop-install-issues` reads every open issue
labelled `raised-here` and `needs-human` that carries both lines, reads
with `bin/devloop-tool-state --build` whether the tool stands on this
machine now — on the search path for a command, in the vendor's folder for
a browser, whichever way it got there — and closes the issue itself where it
does, with a comment naming the line it read; a task the issue held is free
again, and a check class it concerned goes to `setup-checks`. So the issue
tells the person what is missing and the command, and does not tell them to
close it: devloop does, and what devloop cannot read it does not close. It
tells them where they type the command, by "Where the person types a
command devloop hands them" in `docs/skill-conventions.md`, since 28 October
2026 — in Claude Code with `!` in front where it asks nothing, else in a
second terminal window that is not the one Claude Code runs in, where it
asks something, with what it asks named — and that they type
`/devloop:start-work` after it; the line `install-command:` stays the bare
command, since the program
reads it. Where the command installs into a folder the search path does not
reach, the next start says so with the steps, the text on that read.
Until that day the issue stayed until they had run the command and closed
it themselves.
