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
command does is not announced in the reply: it shows in what the run does.

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
nothing of the kind is given bare. Where the line is typed stands in the rule
after the next.

**Where a text to the person says they have to do something at the
computer, it says how, step by step**: a command, an input into Claude Code,
ending Claude Code and starting it again, a change to a file of their
configuration — each step one command or one input, as it is typed, in the order
they can take them; a step the run has no sure command for it reads first in the
maker's guide, the program's or the shell's, with its tools for the web, and
gives as it stands there with the source, giving none the guide itself warns
against; only where that yields no command — the page cannot be read, or it does
not name the system — the step says what is needed and names no command; what
the run can do itself it does, and hands over no step for it. What another
program itself guides — the questions of `gh auth login`, the sign-in in
the browser — is not described after it: the text says that they follow
that program's instructions, since a description of another's flow stops
being true as soon as its maker changes it.

**Where the person types a command devloop hands them while Claude Code
runs, the text says, in one of two forms, and which form and which place hold
follows from the surface Claude Code runs on and from the system**.
`${CLAUDE_PLUGIN_ROOT}/bin/devloop-surface` reads both, and when this skill
loaded it printed:

    ${DEVLOOP_SURFACE}

Before every handover run that program once more and go by the line it prints
then, since a conversation can change its surface; no setting of Claude Code
is read for the form. `handover:` names the situation the forms go by, the
system before the surface: `terminal`, Claude Code in a terminal under macOS
or Linux, the terminal of VS Code among them; `desktop`, a local session of
the desktop app under macOS or Linux; `panel`, the graphical panel of the
extension for VS Code under macOS or Linux; `windows`, Windows, on every
surface; `unknown`, a surface or a system the program does not know, and a
line that does not come.

Form A, typed in Claude Code with `!` in front, holds for a command that asks
nothing — `brew install`, `git config`, the merge — under `terminal` and under
`desktop`, and nowhere else: the text says so and gives the line with the `!`,
`! brew install yq`. Under `terminal` the text has them type „fertig“, the
word as their language has it, right after the command, in a sentence of its
own directly before the last sentence of the handover; under `desktop` it
carries no such sentence. Claude Code puts the command and its output into the
conversation, and the run goes on from the first of two signs: that output,
once Claude Code gives it to the run to answer, or their word. What the run
then reads — the installer's folder and the search path, the pull request's
state — it reads as before, never off the output alone and never off their
word. Where what the command was handed over for is there then — the
tool, the merge, the identity — the run goes on. Where it is not, the run says
that the command did not do what it was handed over for only where the
conversation shows that the command ran to its end; else it says what it sees,
with what the command was handed over for in the place of the tool: where the
conversation has, in the place of the output, that the command runs in the
background or was sent there, that the command still runs in the background
and the tool is not there yet, and, under `terminal`, that they type „fertig“
once more as soon as it is through, under `desktop`, where the handover had
them type no word, that they say here once the command is through; where the
conversation shows that the command was interrupted before it ended, that it
was interrupted before it was through and the tool is not there yet, then the
same handover once more; where neither the command nor an output of it stands
in the conversation, that the run sees no command and no output here and the
tool is not there yet, then the same handover once more. A „fertig“ that
comes after the run has gone on, and under `desktop` their word on that
request, is answered in one sentence, that the tool was there already and
that the run goes on, and repeats nothing.

Form B, typed in a terminal and not in Claude Code, holds for a command that
asks something — a sign-in, a password for `sudo` — under `terminal` and under
`desktop`, and for every command under `panel`, `windows` and `unknown`: the
text says where, gives the line without a `!`, names what the command asks
where it asks, and asks them to say here once the command is through; their
word is the signal, and what the run reads after it, it reads as before. The
place the text names: under `terminal` a second terminal window, the text
saying expressly that it is not the window in which Claude Code runs; under
`desktop` a terminal, the terminal of the app for instance; under `panel` a
terminal, the terminal of VS Code for instance; under `windows` Git Bash, the
terminal that comes with Git for Windows, which the text has them open; under
`unknown` a terminal and nothing more. Where the run does not know for certain
whether a command asks, B holds, the text naming what it may ask. A command
that does not end by itself — a server a prototype needs — would hold Claude
Code under A and goes as B, with the reason that it runs until they end it.

Under either form the command carries everything it needs, `--repo OWNER/REPO`
and `cd <directory> &&`, as above; several commands of one handover stand as
one line, joined by `&&`; and where a pronoun could point at two things, the
noun stands. With nobody there a handover carries neither the sentence on
„fertig“ nor the request to say here once the command is through, and neither
does the line `setup-checks` gives under the no in its step 8. That Claude
Code can be set to run a `!` command in PowerShell under macOS or Linux does
not count: form A holds there as above. The hooks of devloop do not fire on a
`!` command: a hook that is to see a command of the person sees it under A as
little as in their own terminal.

**A file is named by its path where the work is about the file.**
