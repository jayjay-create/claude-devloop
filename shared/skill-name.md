**A skill's name is not said to the user.** The names are how the skills call
each other and how a run is typed; to the person being helped the stages are
what happens next, and a name in a reply is a step handed to them to learn.
What reaches them is what is being done, what was done and what comes next, in
the words that describe it.

**That holds where the run cannot go on.** Where this skill cannot work — the
project is not set up, a file it needs is missing, a stage it would hand to is
not there — say what is missing and what could be done instead, each by what
it does and not by which skill it is.

**A name the user typed themselves is not repeated back either.** What that
command does is not announced in the reply, since 17 October 2026: it shows in
what the run does.

**One skill calling another is not saying a name.** The call carries it.

**A command the person is told to type is given as it is typed only where the
run cannot do the thing itself** — a `/clear` only they can trigger. Where the
run could call the stage itself, it asks in ordinary words and hands over no
command.

**A command handed over runs as it stands, from wherever the person is.** No
knowledge of commands in a terminal is assumed of them: the line is given
whole, so it carries everything it needs, wherever it is typed. A
`gh` command carries the repository, `--repo OWNER/REPO`, since `gh` resolves
it from the directory it runs in. A command that needs the project's
directory — an install into the project's packages, a browser download a
dependency of the project makes, a check command — carries the change into
it before it, `cd <directory> && <command>`, the directory written as their
shell takes it: `~` for their home directory, and the rest in double quotes
where it carries a space, `cd ~/"my project" && …`. A command that needs
nothing of the kind is given bare. Decided on 12
October 2026, point 18 of part B of the roadmap entry of that date, with the
example `cd ~/devloop-test-w && npx playwright install chromium`; where the
line is typed stands in the rule after the next, since 28 October 2026.

**Where a text to the person says they have to do something at the
computer, it says how, step by step**, since 28 October 2026, the person's
rule of that day in `docs/skill-conventions.md`: a command, an input into
Claude Code, ending Claude Code and starting it again, a change to a file
of their configuration — each step one command or one input, as it is
typed, in the order they can take them; a step the run has no sure command
for it reads first in the maker's guide, the program's or the shell's, with
its tools for the web, and gives as it stands there with the source, giving
none the guide itself warns against, since the decision of 28 October 2026
after the push; only where that yields no command — the page cannot be
read, or it does not name the system — the step says what is needed and
names no command; what the run can do itself it does, and hands over no
step for it. What another
program itself guides — the questions of `gh auth login`, the sign-in in
the browser — is not described after it: the text says that they follow
that program's instructions, since a description of another's flow stops
being true as soon as its maker changes it.

**Where the person types a command devloop hands them while Claude Code
runs, the text says, in one of two forms**, decided by the person on 28
October 2026. A command that asks nothing — `brew install`, `git config`,
the merge — is typed in Claude Code with `!` in
front, form A: the text says so and gives the line with the `!`, `! brew
install yq`; Claude Code puts the command and its output into the
conversation and the run answers that output, so the person says nothing,
the output in the conversation is the signal the run goes on from, and
what the run then reads — the installer's folder and the search path, the
pull request's state — it reads as before, never off the output alone. A
command that asks something — a sign-in, a password for `sudo` — is typed
in a second terminal window, form B: the text says expressly that it is
not the window in which Claude Code runs, names what the command asks, and
asks them to say here once it is through; their word is the signal, and
what the run reads after it, it reads as before. Where the run does not
know for certain whether a command asks, B holds. A command that does not
end by itself — a server a prototype needs — would hold Claude Code under
A and goes to the second window as B, with the reason that it runs until
they end it. Under either form the command carries everything it needs,
`--repo OWNER/REPO` and `cd <directory> &&`, as above. The hooks of devloop
do not fire on a `!` command, measured on 28 October 2026: a hook that is
to see a command of the person sees it under A as little as in their own
terminal. The wordings the person approved stand in the roadmap entry of
28 October 2026 on the handover steps; a skill says what is said, not the
words.

**A file is named by its path where the work is about the file.**

Measured on 18 September 2026, three times in a directory with nothing in it: a
run that could not build named the build, and named the setup as the thing to
run instead, a name nobody had typed.
