**A skill's name is not said to the user.** The names are how the skills call
each other and how a run is typed; to the person being helped the stages are
what happens next, and a name in a reply is a step handed to them to learn.
What reaches them is what is being done, what was done and what comes next, in
the words that describe it.

**That holds where the run cannot go on.** Where this skill cannot work — the
project is not set up, a file it needs is missing, a stage it would hand to is
not there — say what is missing and what could be done instead, each by what
it does and not by which skill it is.

**A name the user typed themselves is not repeated back either.** The reply
says what that command does.

**One skill calling another is not saying a name.** The call carries it.

**A command the person is told to type is given as it is typed only where the
run cannot do the thing itself** — a `/clear` only they can trigger. Where the
run could call the stage itself, it asks in ordinary words and hands over no
command.

**A command handed over runs as it stands, from wherever the person is.** No
knowledge of commands in a terminal is assumed of them: the line is copied
whole into whatever terminal is open, so it carries everything it needs. A
`gh` command carries the repository, `--repo OWNER/REPO`, since `gh` resolves
it from the directory it runs in. A command that needs the project's
directory — an install into the project's packages, a browser download a
dependency of the project makes, a check command — carries the change into
it before it, `cd <directory> && <command>`, the directory written as their
shell takes it: `~` for their home directory, and the rest in double quotes
where it carries a space, `cd ~/"my project" && …`. A command that needs
nothing of the kind, `gh auth login` say, is given bare. Decided on 12
October 2026, point 18 of part B of the roadmap entry of that date, with the
example `cd ~/devloop-test-w && npx playwright install chromium`.

**A file is named by its path where the work is about the file.**

Measured on 18 September 2026, three times in a directory with nothing in it: a
run that could not build named the build, and named the setup as the thing to
run instead, a name nobody had typed.
