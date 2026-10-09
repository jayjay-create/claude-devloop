---
name: setup-checks
description: Build out this project's check suite
allowed-tools: Bash(${CLAUDE_PLUGIN_ROOT}/bin/devloop-text *)
---

# Build out the check suite

**If `[shell command execution disabled by policy]` stands anywhere in this
file, stop before anything else.** The rules this skill shares with the others
are inserted when it loads, and that text standing where a rule should be means
they were not. Tell the user, in the language they write in, three things: that
this workflow cannot work right now because its shared rules were not loaded;
that the cause is the setting `disableSkillShellExecution`, which switches off
the commands in skills; and that it stops here rather than carrying on without
those rules. Then do nothing else.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text language-opening`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text skill-name`

Turn every class in `docs/agents/checks.md` that still says `empty` into either
`filled` or `skipped`, in one of the two forms a skip has: `skipped (state):`
with the state of the project or of this machine that keeps the class off, or
`skipped (user):` with the user's own reason.

**Filling all nine is not the goal.** A class that does not apply to this project
costs runtime and finds nothing. `skipped` with its reason is a finished answer
for as long as that reason holds: a state is read again before every task is
released, at the end of step 4 of `build-work`, and a decision of the user's
stands until they change it; `empty` means nobody decided yet.

This skill changes the project from the outside — it adds tools and configuration.
Move carefully and ask before anything that reaches beyond the repository, unless
the install record has answered it already — step 3 says how.

**This skill is reached four ways, and which one decides the branch and the
close.** At a first setup, from `setup-project`, in every project with code:
every class is `empty`, since the setup fills none, and this skill cuts its
own branch, lands it in step 7 and offers the mode in step 8. For a single
class, on the branch of the work that called: fill that one class or write
its cell, leave the others untouched, stay on the branch you were
called on rather than cutting a new one — the caller owns that branch and lands
it — and skip steps 7 and 8, since a landing and the offer of the mode belong
to a suite completed with the person there, not to the middle of a task.
Four things call it that way. A build whose task created the target. A build
that had an install declined for a check class. Step 4 of a build: for a
finding of the review about the table, for a state that has ended, or for
what the user answered there about a class they had switched off — for the
class it names, for the class whose row it concerns where it names none, and
otherwise for the table, its `runner:` line or its section on what the checks
do not cover. And any skill whose commit the guard on the table refused, for
the row that guard named. From the step after a merge, for the
classes still `empty` once the repository has code: the tree stands on the
main branch, so cut a branch as at a first setup and land it in step 7; step 8
is reached where no class is `empty` any more, which is how a project set up
without code meets the offer. And from `--auto`, typed where the unattended
mode is not set up in this repository — at the end of the sharpening in
`plan-work`, or at the start of a build `build-work` was sent straight to —
for step 8 alone: nothing above it runs, and step 9 goes back to the place
that called. Everything else below applies unchanged.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text project-language`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text body-through-file`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text missing-command`

## When a command does not answer

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text command-does-not-answer`

## When the main branch cannot be fetched or fast-forwarded

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text fetch-three-times`

## A guard's block is not a decline

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text guard-block-intro`

- **The command really is an install this class needs.** The guard did what it
  was built for. With the user there this is the question already described
  below, and a decline makes the class `skipped (user)` with that reason. With
  nobody there, there is no one to ask: the class goes `skipped (state)`, the
  state being what this machine lacks and the block names, and the report
  names it; since 9 October 2026 the same holds for the three other ways an
  install does not go through, which the rule inserted in step 4 names.
  `secrets` is the exception it always is — it is
  never `skipped` on a run's own judgement, so there the task ends instead,
  and since 9 October 2026 not the run: an issue carrying the command, the
  message and what is in the way, labelled `raised-here` and `needs-human`,
  recorded as a blocker of the task whose branch this is; the task is put
  down and the caller takes the next; the class stays as it stands. The run
  says, for the person who comes back: that the check for credentials
  committed by accident cannot be set up without them; in plain words what
  is in the way — for instance a runtime the tool would need, Java say,
  which the run never installs, the rule step 3 below and `build-work` step
  3 point 7 carry, or an install through a route or to a place the record
  does not name, which the guard blocks under a yes as well, as "With
  nobody there" below says; the runtime is the example the approved wording
  carries and not the only cause; that this check is never switched off by
  the run on its own, which is why the run writes an issue with the reason
  and goes on with the other tasks; that the issue carries the command with
  which they install it themselves; and that running it and closing the
  issue frees the task again. Until 9 October 2026 the run that called
  ended here and deleted the mark; the deletion list in `build-work` says
  so no longer. The wording approved on 8 October 2026 stands in the
  roadmap entry of 9 October 2026 as text 1; this skill says what is said,
  not the words.
- **The command is not an install and the guard matched on text.** Then nothing
  is blocking the class, and `skipped` would be an entry that is not true: a
  class standing as skipped while nothing hinders it, which the next reader takes
  for a decision somebody made. Do not skip it. Put the text through the editing
  tool rather than through the shell, and where that does not reach, stop with
  the reason named — with nobody there, since 9 October 2026, the task ends
  as at `secrets` above and not the run: the issue carrying the command, the
  message and what is in the way, the task put down, the next taken, the
  class as it stands.

Neither case is a reason to write the class differently from what it is. What
tells them apart is what the command would have done, not what the guard matched.

**The guard on the table is neither of these, and this skill is the one its
message names.** Two hooks hold the `Status` column to its four forms: one
reports a cell in none of them once the editing tool has written the table,
the other refuses a `git commit` while the table in the working tree carries
one. Where either answers a write or a commit of this skill's own, nothing is
handed on and nothing becomes an issue: decide the row again, by the paragraph
in step 1 on a row in no allowed form, and commit again.

## How to ask

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text how-to-ask`

## With nobody there

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text mark`

This skill is reached with nobody there on one of its four ways only, and the
mark says so: for a single class, on the branch of a skill that commits — a
build, or a skill whose commit the guard on the table refused. Step 7 is
never reached that way, so nothing of this skill's waits on a merge with
nobody to say it has landed. Both records say yes there, since the mode does
not start otherwise: a tool the class needs is entered in the dependency file
or installed by the run, and step 3 asks nothing. Three things are left that
would have been a question. An install that does not go through, on any of
the four ways the rule in step 4 names since 9 October 2026 — the guard
blocks it under a yes, a runtime, a place the record does not name, and
since 8 October 2026 a branded browser at the system's own location or the
system packages a browser's `install-deps`, `--with-deps` or
`--install-deps` would install; the classifier of auto mode refuses it; the
installer ran and ended with an error, after its three attempts; the call
did not finish inside its ten minutes: "A guard's block is not a decline"
above answers all four, the class going `skipped (state)` with what this
machine lacks, and `secrets` ending the task. A refusal of anything else
here — a guard's block on a command that is no install, the classifier's
no, the no of the hook on permission prompts while the mark stands — ends
the task as "A guard's block, with nobody there" in `build-work` says, since
this skill is reached with nobody there on a task's branch alone. A row in
no allowed form whose text does not say whose decision it
was: it becomes `skipped (user)`, named in the pull request. And a row that
reads `skipped (user)`: it is never changed without them, whatever the caller
found. The less committing option is the one that changes
nothing of theirs. That "Ask anyway where filling it changes their project"
in step 2 meets nobody to ask no longer arises: until 5 October 2026 a reason
that had expired was read again after a merge, with nobody there as well, and
a fill that needed their say stayed open as an issue; a state is read before
the task is released now, on the task's branch, and the two records have
answered what a fill may add. Step 8's offer of the mode is never reached
with nobody there:
it stands in a first setup, with them present, and after a merge only where a
person is, and `--auto` is typed by somebody who is there. The third route,
the step after a merge finding classes `empty`
with code in the repository, never arrives with nobody there at all: the mode
refuses to start while a class is `empty`, so a run that gets there has a
person in it.

## Step 1 — Read the current state

Read `docs/agents/checks.md`. List which classes are `empty`. For each, judge from
the repository whether it applies at all:

- **format, lint, types** — apply to any project with source code. Two shapes get
  `skipped`: a language with no type checker at all, and one where the same
  errors are already caught by a tool another class runs. Name the class that
  covers it as the reason.
- **unit** — applies wherever there is logic to test.
- **integration** — needs several parts that talk to each other, or something
  external. A single pure function has nothing to integrate.
- **end-to-end** — needs an interface someone drives: a user interface, a network
  interface, a command-line entry point.
- **secrets** — applies to every repository without exception. Credentials get
  committed by accident everywhere.
- **dependencies** — applies as soon as the project has third-party packages.
- **code-security** — needs a meaningful amount of the project's own code.

**Deciding a class away is a decision — record it as one.** The moment you can
say why a class will find nothing in this project, that class is
`skipped (state):` with the state that keeps it off — no entry point, no
third-party packages, a language without a type checker, the errors already
caught by the tool of another class — and it goes into its Status column in
the table below. `empty` does not record a decision: it means nobody has
looked yet, and every step that asks whether the suite is complete reads that
column and nothing else. Reasoning written into the prose of `checks.md` does
not record it either — that section says what the checks miss, and the review
reads it for exactly that, but nothing reads it to find out whether a class was
settled.

- **Not yet built is not skipped.** A class that applies and has no target yet is
  work outstanding. Skip a class that would find nothing here, never one that is
  merely inconvenient today.
- **A class stays `empty` only where you could not judge it, and then you say
  which one and what would settle it.** That is the exception, not a resting
  place — the top of this file says the suite gets finished. Silence and `empty`
  look the same from outside.
- **`secrets` is never skipped on a run's own judgement.** Credentials get
  committed by accident everywhere, whoever owns the repository, so no state
  of a project or of this machine switches the class off. Only the user can,
  by a decision of theirs, and then the cell reads `skipped (user)` with
  their reason, as at every place below where their decision writes that
  form. With nobody there the run stops instead, as "A guard's block is not
  a decline" above says.

A state that will end is still a state: no third-party packages yet, no
entry point yet. It goes in as `skipped (state)` with that state named, and
`build-work` reads every such cell at the end of its step 4, before the task
is released, against the branch of the task, and calls this skill for the
class once the state has ended. A state of this machine — a runtime that is
missing and that only the user installs — is read on the machine, not on the
branch.

**A row whose status carries none of the four forms is decided again, and
its old text is read as a hint and no more.** The guard on the table sends
every such row here — a table written before 5 October 2026 carries
`skipped: <reason>`, a row written by hand a word that does not exist — and
what the row becomes is one of four:

- **Meant as `filled`** — `Filled`, or `filled` in backticks: prove the
  target red as step 5 does, then `filled`.
- **The text names a state of the project or of this machine**: where that
  state still holds, `skipped (state):` with it; where it no longer does,
  fill the class.
- **The text names a decision of the user's** — an install they declined, a
  class they did not want: `skipped (user):` with their reason.
- **The text does not say whose decision it was**: with the user there, ask
  them, in the form of the other questions of this skill — a choice through
  the harness's choice widget, in the user's language, alone in its call,
  every point in a field of its own, and no recommendation. In the header, a
  word for the subject, the check. In the question line: that the check, in
  ordinary words, is switched off, what the table gives as its reason, quoted
  as it stands, and whether they decided that. In the yes, label and line:
  it was their decision, and the check stays off until they change it — the
  row becomes `skipped (user)` with that text as its reason. In the no,
  label and line: it was not theirs, and the run sets the check up unless
  there is nothing in this project for it to check — the row is then decided
  as a judgement of the run, by the paragraph above: `skipped (state)` with
  the state where the class would find nothing here, and filled otherwise.
  With nobody there it becomes `skipped (user):` with the text as it stood,
  and the pull request names the row and says so. The wording approved on 6
  October 2026 stands in the roadmap entry of 5 October 2026; this skill
  says what is said, not the words.

**The cell is machine-read.** One line, plain ASCII, no `|` — the parsers split
the row on it by position. Where the reason needs more than a phrase, the phrase
goes in the cell and the long form under "What these checks do not cover".

## Step 2 — Propose, in plain words

Present what you would do, one line per class: what it would catch, roughly what
it costs to set up, and which tool you would use. For the ones that do not apply,
say so with the reason.

Never name a class by its label alone. "secrets" means nothing to someone who has
not read the file; "searches the code and the git history for credentials that
were committed by accident" does.

Ask which to do now: all of them, or some first and the rest after them. "None"
is not among the answers, and neither is a class left for later without a
reason. `empty` means nobody decided, and every step that asks whether the
suite is complete reads that word as undecided — the mode's first
precondition, the `check` target, the close of this skill, the step after a
merge, and since 6 October 2026 the start of a session — so an answer that
leaves rows `empty` is asked again at each of them,
which is the asking again the paragraph below names. A class they do not want
in this project is a decision: it goes into the cell as `skipped (user):` with
their reason, and no run changes that row without them. It is not read again
after a merge, as it was until 5 October 2026: `build-work` reads it before a
task is released, and only where the reason says something about the project
that can be checked; where that no longer holds it asks them, and with nobody
there the row stays. That
question belongs to a first setup, where what this project's check suite will
be is genuinely theirs to settle. Missing tools are asked about separately,
below, because installing one changes their machine and filling a class does
not.

**A class that is only back because its state has ended is not that
question.** A `skipped (state)` is a judgement already made, with the state
written next to
it — no code yet, no entry point, no third-party dependencies — and a task is
what turns one of those false. Then there is nothing left to weigh: say which
state no longer holds, fill the class, and report it. Asking again hands back a
decision the user already made, with nothing new to make it on. A
`skipped (user)` is the other kind and is never filled that way: the class is
off by their word, and only their yes fills it.

**The reason has to be actually false, not merely older.** "No entry point
exists yet" still holds while the entry point is a stub, and filling a class
against a stub produces a check that proves nothing.

**Ask anyway where filling it changes their project rather than this workflow's
plumbing.** A check tool entered in their dependency file that the record on
it does not already allow, or anything installed on their
machine that the install record does not already allow, is theirs to allow,
whatever made the class eligible; step 3 says how each is asked. A test
case and a
target in the task runner are not. When both kinds come up in one round, state
the ones that cost them nothing and ask about the ones that do — never side by
side as though they were the same kind of thing.

## Step 3 — Prefer tools that live inside the project

A tool declared in the project's own manifest travels with the repository and
works for everyone who clones it. A tool installed system-wide does not, and it
changes the user's machine.

This step decides, per class, which tool and where it lands, and asks where
that is the user's to allow. It writes nothing and installs nothing: its
questions are the last questions of
this skill, the branch is cut once they are answered, and the record of an
answer, the manifest line, the
install and the targets are step 4's, on that branch.

**Name what you just wrote down as something to grant.** A check command
recorded in `checks.md` is something this workflow will run on every task from
now on. You cannot record the grant — the permissions file belongs to the tool
and writing it is refused — so say which commands they are and that choosing
"always allow" the first time each appears, or setting them in `/config`, stops
the confirmations. Setup could not name them, because they did not exist yet.
Only the check commands themselves — never what was needed to install them.

**A check tool is entered in the project's dependency file by this run only
where the record on it says yes.** The dependency file is whatever this
stack declares its packages in — `pyproject.toml`, `package.json`,
`Cargo.toml` and the like — and the record is the section `## Dependency
permission` of `docs/agents/environment.md`, read off the main branch as last
fetched, `git show origin/main:docs/agents/environment.md` after a fetch,
except in the session in which the question was answered, where the answer
is known before it has landed. The permission covers the tools this workflow
enters for its own checks and nothing else: what a task enters for the thing
it builds is that task's work. No hook holds any of this — tasks change the
dependency file all the time, and a guard on it could not tell the two apart
— so it is a rule on the run, and it is said here as one.

Where no record stands and the user is there, put the question, once, and
put it whether a dependency file exists yet or not. A choice in the form of
question 3 of
`setup-project` step 4: through the harness's choice widget, in the user's
language, alone in its call, every point in a field of its own, and no
recommendation. It names no file, the project's own included.

- **In the header: one word for the subject, the project's packages**, of
  twelve characters at most.
- **In the question line**: whether the run may from now on add check tools
  to this project's packages itself.
- **In the yes, label and line**: from now on the run adds such tools itself
  and does not ask again.
- **In the no, label and line**: the run adds nothing itself and asks each
  time.

The no's line stops there, on purpose: that the unattended mode is not to be
had under a no costs nothing with them there, the run asking each time, and
it is said where it bites — step 8 puts this question a second time, with
that consequence under its no.

Under a yes nothing more is asked: step 4 enters the tool, with the user
there and with nobody there. Under a no, ask about each tool that can be
entered there, in the same form, each alone in its call:

- **In the header**: the same word.
- **In the question line**: the tool by its name, the check it is for in
  ordinary words, and whether the run may add it to the project's packages.
- **In the yes, label and line**: the run adds it and sets the check up with
  it.
- **In the no, label and line**: where a no leads for this tool, as it
  stands at that moment — one of three. The run installs it outside the
  project on this machine, where the install record says yes. They get the
  command to install it outside the project themselves, where that record
  says no or was never written. The check stays off, where the tool has no
  way outside the project and no other tool is left for the class.

**Where the tool has no way outside the project and another tool is left for
the same check, the question has three answers**, since a tool other than
the one proposed needs their yes. The header, the question line and the yes
as above. The second answer, label
and line: no, the other tool instead, named — and where that leads for it,
one of three. The run installs it outside the project on this machine and
sets the check up with it, where the install record says yes. They get the
command to install the other tool outside the project themselves, where that
record says no or was never written. The run asks them whether it may add it
to the project's packages, where that tool too has no way outside — which is
this question again, put for the other tool. The third answer, label and
line: no, and the check stays off. Under the second the other tool goes the
way its line named, by the paragraph below; under the third the class
becomes `skipped (user)`, its reason naming both tools and what was
declined. In every other case the question keeps its two answers.

The line that the run installs a tool outside the project comes only where
the run may install that tool itself: where the install record says yes, and
the install brings no compiler and no runtime along — `brew install pmd`
brings `openjdk` with it, read off the formula on 6 October 2026 — since a
runtime stays the user's under every answer, by the paragraph below. Where
it would bring one, the line is the one that gives them the command.

After a no the run goes the way that line named, by the paragraph below. The
wording approved on 5 October 2026 for both questions, as amended on 6
October 2026, stands in the roadmap entry of 5 October 2026; this skill says
what is said, not the words.

**A tool that lands outside the repository — or, since 8 October 2026, a
browser for tests that Playwright, Cypress or Puppeteer downloads into the
vendor's cache — is installed by this run only where
the install record says yes**, read where the guard reads it: the section
`## Install permission` of `docs/agents/environment.md` on the default branch
as last fetched, which the session-start line printed — or, in the session
that landed the record, the fetch `setup-project` step 8 made after its merge,
that line having been printed before the record existed — never the working
tree.
Under a yes there is nothing to ask: step 4 runs the backed command. A
compiler or a runtime, anything needing `sudo`, anything piping a script from
the network into a shell, a branded browser — `chrome`, `msedge` and their
channels — that Playwright installs at the system's own location over the one
already there, the system packages `install-deps`, `--with-deps` or
`--install-deps` install, and anything landing outside the places the record
names and the directories its routes answer stay the user's under
every answer. Where the record says no, or was
never written, the run installs nothing, which is what the no of the install
question said: hand them the command, backed, say
plainly that it reaches beyond this project, and they decide. Where the
command handed over is not run, the class becomes `skipped (user):` with
that reason, naming the tool and the command that was not run — whether or
not another tool would be left for the class; another tool is not put to
them after a command that was not run. And so does a class whose only way
was into the packages and they said no to
that — the class becomes `skipped (user):` with that reason, naming the tool
and what was declined, or both tools where the question offered another and
they chose the check off — not `empty`. With nobody there neither record says
no: the unattended mode does not start under one.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text fetch-and-run`

## Cut the branch, after the last question and before the first write

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text cut-branch`

Not on the single-class route: there the branch is the caller's,
as the opening says, and this step is skipped — no branch of the name above is
cut, and the one the run was called on is kept. And not on the route from
`--auto`, which runs step 8 alone: that step cuts its own branch, under the
third of the names above.

## Step 4 — Put each class in place: its tool, its target, its findings in stages

First the answer to step 3's question on the dependency file, where it was
put: write it into `docs/agents/environment.md` with the editing tool, as a
section of its own in the shape of the install record — one key and one
value per line, spelled exactly, ASCII only, since the skills that read it
read the start of each line:

    ## Dependency permission

    dependency-tools: yes
    dependency-answered: YYYY-MM-DD

`dependency-tools` is the answer, `yes` or `no` and nothing else, and
`dependency-answered` the date it was given. It lands with this branch — in
step 7's pull request, or in the caller's where this skill was called for one
class — and from then on it is read off the main branch.

Then what the class needs standing. A tool inside the project goes into its
manifest here, under a record saying yes or the user's yes to that tool in
step 3. A tool outside it, where step 3 found the record saying yes,
is installed here: run the backed command yourself, with the user there and with
nobody there, without asking again, with ten minutes on the call, 600000
milliseconds, as "When a command does not answer" says; the guard passes it
where every place it lands is one the record names or the answer of a route
it names, and blocks it otherwise, and "A guard's block is not a decline"
above says what follows a block, the rule inserted after the backed command
below what follows the three other ways an install does not go through with
nobody there. The class counts as filled only
once the tool stands at the path the installer writes to, never where
`command -v` finds one. Report the command as it ran, what came back, what
stands at that path, and what the package manager did besides — it updates
itself, fetches what it needs for that and cleans up unasked — in the pull
request body that lands the class, step 7's or the build's where this skill was
called for one class, and write the standing fact into `environment.md`.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text backed-command`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text install-not-through`

This is where it matters most: a check class is filled by naming a tool, so
this is the likeliest place in the whole workflow for a wrong path to be typed,
and the class counts as filled only once the tool stands there.

A class is filled under its canonical names, and this is where its target is
made: in the task runner `setup-project` created, a thin target calling the
tool with its checking option — the whole target on every row, the per-file
target where the row has one, taking the path as `FILE=<path>` — and the same
for the two fixed targets that belong to a class, `test-one` for unit and
`fmt-write` for format, which stand as failing placeholders until the class
that owns them is filled here. A class with no tool gets no target.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text canonical-targets`

Turning a strict tool on a codebase that has never seen it produces hundreds of
findings at once, and fixing them in one commit makes the change unreviewable.

For each class, every run of a target here and in step 5 with ten minutes on
the call, 600000 milliseconds, as "When a command does not answer" says — a
run that does not finish inside it is not answered, and with nobody there
the caller stops as that block says:

1. Turn it on and see how many findings there are.
2. Fix what the tool can fix by itself, as its own commit.
3. Park what is left as narrow, commented exceptions, each naming what it defers.
4. Remove the exceptions one rule at a time, in later commits.

Only after the class is green does it become blocking.

Where `.github/workflows/checks.yml` stands — step 8 writes it — and a class
that becomes blocking here needs a tool that exists only outside a project,
enter that tool's installation line for the platform's machine in the
workflow file in the same commit, backed as above. The file runs `check`, so
the class runs there from this commit on, and without the line it would go
red on a tool that is not there.

## Step 5 — Every target renders a verdict and changes nothing

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text verdict-target`

It looks like protection and is none. Before writing `filled`, prove the target
can fail: break something on purpose, watch it go red, put it back.

A target that needs an argument fails loudly when it is missing, rather than
quietly doing something else.

**And the red has to come from the broken code.** A target that goes red because
the tool is not installed, or because the command was refused before it ran,
proves nothing about the target — it exits non-zero either way. Read the output
before writing `filled`, and where the command did not run, say so with the
command and the message rather than recording a class as proven.

**The proof is written into the pull request that switches the class on**,
as the report of an install is in step 4. One line per class: what was
broken, which target ran, what came back, and that it was put back. That is
step 7's pull request; the caller's where this skill was called for one
class, handed up to it with the class; and step 8's own where a class is
filled there. A row that turns `filled` with no such line in the pull
request that carries it reads as written by something else.

## Step 6 — Record it

`docs/agents/checks.md` is read by shell scripts that split each row on `|` and
go by position. Keep the column count and order exactly as they are — seven
columns, this header, one row per class:

    | Class | Per-file | Whole | Files | Duration | Blocking | Status |
    |---|---|---|---|---|---|---|
    | lint | lint-file | lint | src/**/*.py | <1s | yes | filled |

Both target columns hold bare target names — `lint`, not `make lint` and not
`` `lint` ``. The runner comes from the `runner:` line in the frontmatter. A `-`
means the class cannot work that way.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text status-forms`

Spelled exactly, with nothing else in the cell: the two guards on the table
name a cell in any other form — `Filled`, `filled` in backticks, the
`skipped: <reason>` this workflow wrote until 5 October 2026 — and no commit
goes through while one stands.

- `Status` becomes `filled` only after you ran the target and saw it fail on
  purpose. `skipped (state):` where you have judged that the class finds
  nothing here, with the state that keeps it off; `skipped (user):` where the
  user decided it, with their reason;
  `empty` only where you have not judged it yet. Having reasoned about a
  class is having decided it — never leave the reasoning in prose and the column
  at `empty`. Never guess.
- `Blocking` becomes `yes` only on rows that are `filled`, `no` on a filled
  row that must not block, and `-` on every row that is not filled — the one
  value for such a row, as `setup-project` writes it. A class whose result
  depends on a service you do not control is never blocking — an outage elsewhere
  must not stop work here. Keep it out of `check` and give it its own target.
- `Duration` from the run you just did, roughly.
- Rewrite "What these checks do not cover" from the table you have just written,
  rather than adding to what is there. Lines from an earlier pass describe an
  earlier table: a repository that had no code still said so after four classes
  had been filled. Every line in that section has to be true of the table as it
  now stands, and a class you just filled has no line there at all.

`check` is `setup-project`'s target and this skill's to keep true: it runs the
whole target of every blocking class in sequence, and while any class is still
`empty` it must fail rather than pass, and say the suite is incomplete and
which classes are undecided — the failing line the setup wrote goes only when
no class is `empty` any more.

## Step 7 — Land the check suite on the main branch

Skip this whole step when this skill was called for a single class from a build.
That branch belongs to the build, and the build lands it with the rest of its
task.

Otherwise the branch cut before Step 4 has to reach the main branch now, before
anything else happens — at a first setup and on the route from the step after
a merge alike, where the tree stood on the main branch and this skill cut its
own branch, as the opening says. Everything from here on reads `checks.md` from the main
branch: the next task cuts its branch from there and would find no check suite
at all. Leaving it unmerged has worked so far only because a run improvised the
merge on its own, which is not something to build on.

**Never merge yourself.** Open a pull request — its body carrying the red
proof of step 5 for every class it switches on, and step 4's report where a
tool was installed — and arm the platform to merge it
once the gates pass, then prove the merge where it happens — `gh pr view --json
state,mergedAt`, `MERGED` with a time in it — before anything here stands on it.
A report of success is not evidence, and the git log immediately after arming is
not evidence either: the platform has not merged at that moment, so the log can
only carry it after a fetch, once the platform says it did. **This step does not
wait inside its answer**, because there is a person here: say what is still
outstanding rather than blocking the session. The wait that runs inside one
answer belongs to `build-work` step 6, where nobody is there to say it landed —
and a run that came here for a single class from a build has skipped this step
altogether, by the line at the top of it. Arming is a mutation of its own and
cannot merge:

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text arming-command`

`gh pr merge --auto` is not a substitute: the tool drops that flag whenever the
pull request is already mergeable and merges on the spot.

Read `gh pr view --json mergeStateStatus -q .mergeStateStatus` immediately before
arming and not earlier — it moves within seconds of the push, and `BLOCKED` is
the state GitHub arms on. `CLEAN`, `HAS_HOOKS` and `UNSTABLE` mean nothing is
outstanding and arming is refused — but they cannot say whether that is because
everything ran or because nothing has started, and a branch pushed a moment ago
is in the second. Ask the branch: `gh pr view --json statusCheckRollup` sees
Actions check runs and older commit statuses alike, since
`StatusCheckRollupContext` is a union of `CheckRun` and `StatusContext` (GitHub's
live GraphQL schema, 31 August 2026), where `commits/SHA/check-runs` sees only
the first. The required names come from the two gate queries below —
`required_status_checks.contexts` for classic protection,
`parameters.required_status_checks[].context` for a ruleset. A required name with
no entry, or an entry whose `status` is not `COMPLETED`, or a status context
still `PENDING` or `EXPECTED`, means the check has not run yet: not a refusal
case, so wait ten seconds and read again, up to two minutes, then arm on the
`BLOCKED` it moves to. Only every required check `COMPLETED` makes this a pull
request past its gate. If the two minutes run out, say the gate is there and no
check registered in that time, rather than claiming the pull request is past it.
`UNKNOWN` is a missing answer rather than a
state: GitHub computes mergeability when it is asked for, so read again a few
seconds later and use that second value instead of making a case out of the
first; a second `UNKNOWN` is not read a third time. `BEHIND` means the branch is
behind the base and the required check ran against a state that is not what would
be merged — fetch, three attempts, by the command under "When the main
branch cannot be fetched or fast-forwarded" above, and where the third
fails too, stop as that section says, opening with that the pull request
has to be brought up to the latest state of the main branch before it can
be merged and that this is not possible just now, nothing armed and no
merge handed over; then rebase onto the base and force-push, which lands nothing
anywhere and is not the merge this step may not perform, and the next reading is
`BLOCKED` with arming accepted. Measured on 30 August 2026 on a pull request
seven days old: `UNKNOWN` first, `BEHIND` on the second reading.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text empty-read`

The same distinction holds one step earlier: a required name missing from the
rollup is an answer and waiting helps, a rollup query that did not answer is not
and waiting does not.

A value in none of those groups is put in none of them — name it as it read,
say it cannot be placed, and do not turn it into one of the three cases below.

If arming is refused there are three cases, and `gh api repos/OWNER/REPO -q
.allow_auto_merge` answers only the first: auto-merge switched off on the
repository, the field false; or no gate for it to wait on at all; or a gate this
pull request is already past — the required check green, nothing outstanding, so
GitHub will not arm what it would merge on the spot. The field cannot tell the
last two apart; measured on 30 August 2026, it read true in a repository with a
required check and in one without alike. The state comes from `mergeStateStatus`.
Whether a gate exists takes both `gh api repos/OWNER/REPO/branches/main/protection`
(classic protection; blind to rulesets, needs admin, and a 404 means none only
where the body says "Branch not protected") and `gh api
repos/OWNER/REPO/rules/branches/main` (rulesets; no special rights, blind to
classic protection). A gate found by either is a gate; where neither query
answered, say the rights did not allow finding out rather than naming a case.
Then hand the user the one command that lands it, say which case it was, say that
this picks up as soon as they say it has, and do not go on to the next step on
top of an unmerged suite.

**Once the merge is proven, on either way to it: fetch, fast-forward the
local main branch and switch to it, and delete `devloop-checks` locally and,
where it still stands there, on the remote** — as `setup-project` step 8 does
after its merge, and step 8 below after each of its own. The fetch is tried
three times, by the command under "When the main branch cannot be fetched or
fast-forwarded" above; where the third attempt fails too, or the
fast-forward fails, stop as that section says, opening with that the merge
has landed on GitHub and nothing is lost, and that only the local main
branch cannot be brought to that state, and build nothing on it — step 8 is
not reached. Everything after
this step then stands on the main branch as freshly fetched, where the
install guard reads the record and where step 8 cuts; and a later cut under
this name meets no landed branch, which a squash merge leaves with a commit
of its own and the cut would otherwise switch back to.

## Step 8 — Offer the unattended mode

Only when no class is `empty` any more. While one is, the mode is unavailable
whatever the user answers, and asking would be a question with one possible
outcome.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text mode-set-up`

**Read the state before asking; never carry an impression of it.** Whether the
main branch is gated at all — both queries from step 7, since
`branches/main/protection` is blind to rulesets and `rules/branches/main` is
blind to classic protection, and a 404 from the first means none only where the
body says "Branch not protected" — whether that gate binds the account this runs
as, and whether auto-merge is on (`gh api repos/OWNER/REPO -q
.allow_auto_merge`). Binding is read per kind of gate: classic protection in
`.enforce_admins.enabled` together with `gh api repos/OWNER/REPO -q
.permissions.admin`, a ruleset in `gh api repos/OWNER/REPO/rulesets/RULESET_ID -q
.current_user_can_bypass`, with `RULESET_ID` off the rules `rules/branches/main`
returned — `never` binds, anything else does not, `pull_requests_only` included,
since that is a bypass at the merge itself. Reading only the classic field
reports a ruleset gate as missing, because that endpoint 404s where the gate is a
ruleset. A gate binds if either side binds. Protection this account can step over
is not a gate: report it as missing, not as present. Where a side did not answer,
say the binding could not be determined rather than reporting the gate either
way. Then the three records, as the paragraph above reads them. Where the
mode is set up by all five, say that it is and skip the rest of this step. A
gate that is there and binding is not enough for that, as it was until 5
October 2026: with a record that does not say yes, or with auto-merge off,
the question below is put all the same.

**Refuse to build a gate when no `filled` class is `Blocking: yes`,** and say
why. A required check that runs nothing green-lights everything, so an unattended
run behind it would have nothing whatever between a change and the main branch —
worse than not offering the mode at all.

**What the question has to carry.** What it decides: whether work in this
project may run alone at all — from the designs to the merge, without stopping
at every step for approval. It is a permission for this repository; each piece
of work is asked separately whether to use it, at the end of its sharpening, and
`--auto` is that answer given up front. What a yes
costs, said at the moment of asking — a workflow file is added, the main branch
becomes protected, that protection applies to the user too so they can no longer
push to it directly either, on a private repository the workflow spends the
account's Actions minutes, **the run works until the thing is done**, **every
review runs every angle the change touches** and
**the mode only works while this window is open and the machine is awake**. Say
the first of those three in ordinary words as well: it keeps going until nothing
in scope is left to build **and nothing the run raised against itself along the
way is still waiting** — its own reviews and checks file issues as they go, those
carry `raised-here`, and the run takes them up under the ordering in `build-work`
step 2 rather than leaving them lying. Work that nobody could see at the start
gets picked up where it serves the same goal, and there is no ceiling on how many
tasks that turns into. What bounds it is the scope and the tasks in it, not a
number of rounds. The second in ordinary words: with them there, an angle left
out comes with a reason they can read and disagree with, and unattended nobody
reads it, so no reason is taken and the full set runs on every change — which
costs more than the same review with them there. **How much more is not something
this project can tell them.** The one measurement available ran five angles over
one task and three over two others, and that gap is the defect being fixed rather
than a rate anything can be worked out from. Say that last one in ordinary words and without
naming a setting: it builds one task after the next for as long as it is
running, and if the machine goes to sleep — the lid closed, or left alone long
enough that it drops off by itself — it stops where it is and carries on only
once the user is back and says so. It is a cost like the others, not a footnote:
measured on 6 September 2026, a run carried straight on by itself after the
first merge and stood still the moment the machine went to idle sleep; the two
tasks after it landed the next morning, nine and a half hours later, after a
one-word message. What a no means: everything works exactly as it does now,
every task comes back for approval, and this can be set up later without redoing
anything.

**Two things change what is put.** Where the gate is already there and
binding and the mode is not set up, the question is put all the same,
without the part on what a yes sets up on the platform — the workflow file,
the protection, the minutes — since none of that is added. And where `--auto`
brought the run here: with the gate there and binding, the flag is their yes
and the question is not put; with no gate yet it is put all the same, since
it is what says what setting one up costs.

**Say how the machine can be kept from dropping off, and do not make a second
question out of it.** It is something the user does outside the run, and a second
question beside the real one blurs the real one. Read what this is running on
before naming anything — `uname -s` — and name a command only for the system that
came back. On macOS, which answers `Darwin`, that is `caffeinate`, started by
them in a terminal of their own and left running until they end it with Ctrl-C:
`caffeinate(8)` on that machine, read on 7 September 2026, says it creates an
assertion that prevents idle sleep and holds it for as long as the process runs.
**Say what it does not cover in the same breath.** That assertion holds off the
sleep that comes of the machine being left alone. Closing a laptop lid is a
different route into sleep and does not go through it — a closed lid sleeps
anyway — so a hint that leaves this out sells a safety it does not have. On any
other system, name a command only where that machine's own documentation backs
it, its manual page or the vendor's own words; where nothing does, name none and
say only that the machine has to stay awake. A `uname -s` that does not answer is
that same case.

**Say what a yes leads to, before they answer.** Otherwise they are agreeing to a
mode whose course nobody has described to them. Six things, short and in
ordinary words:

- **What the run then does, in order.** Where a piece of work is still being
  planned, first the rest of the planning: the code read, the designs drafted
  and each checked against the stories and exclusions they settled, the spec
  written, the tasks cut. Then it takes the ready tasks one after another. Each
  gets its own branch, then the code, then a deliberate break of
  every condition the task promises so the check guarding it is seen going red
  and green again, then the whole check suite, then a review from several angles
  at once, then the findings fixed, then a pull request handed to the platform,
  which merges it itself once the required check is green. **It waits for that
  merge instead of moving on**, since nothing would wake it again afterwards —
  up to half an hour, or longer where this project's own suite takes longer.
  Then the next task, until nothing in scope is ready and nothing it raised
  against itself is still waiting to be taken up.
- **Where it still stops.** Sharpening the idea — the questions at the start of a
  piece of work — always runs with them, because it needs what only they know.
  From the point where the idea stands, everything can run alone: the designs,
  the design choice checked against the stories they settled, the spec, the cut,
  the build. Whether it does is asked once per piece of work, at the end of that
  sharpening, with three answers — everything without them, the plan without
  them with a look at it before the build, or everything put to them — unless
  they typed `--auto`, which is the first of those given up front. Beyond that
  it stops rather than guesses: a precondition missing when it starts, named; a
  design no draft carries; a merge it cannot get past.
- **What a task that will not go green does, which is not stop.** Where the same
  checks fail three turns running, the turn-end hook says so and asks for a
  person — and with nobody there, waiting on that would leave the run standing
  in the middle of a task that still looks busy. So it writes the failure up as
  an issue against that task, puts the task down and takes the next one. Say
  this: it is the likeliest thing that will actually happen, and it means some
  tasks come back as issues to read rather than as merged work.
- **And where it will not go green on the platform, that does end the run.** A
  check that comes back red after the pull request is armed is fixed, reviewed
  again and waited on again, as often as the picture keeps changing. Three rounds
  against the same failing checks is a standstill, and there the run stops and
  says so, because a reviewed pull request is sitting on a gate that will not
  open and everything after it would be built without it. Say the difference:
  a task that will not build becomes an issue and the run goes on, a merge that
  will not land ends it.
- **How they see it has finished.** The closing sentence agreed at the start,
  said only once nothing ready is left in scope and nothing the run raised
  against itself is still waiting. What was built reads as the diff from the
  commit noted at the start to the current main branch.
- **How they see it is standing still.** No closing sentence, and the last
  message saying what stopped it. Nothing here starts itself again — a word from
  them does, and until it comes the run is not working on anything. Pull requests
  merging by themselves are not evidence to the contrary: once armed, the
  platform merges them whether or not anything on this machine is awake.

**Do not recommend a yes on a first project.** A green check suite says the code
does what the tests say, not that it is what the user wanted, and the approval at
each task is where a build heading the wrong way becomes visible. Say that, so
the recommendation is theirs to weigh rather than a door being held open.

**On a no, nothing is set up**, on the platform or anywhere else, and every
piece of work runs with them. The record below says so, with the reason.
Then say the one thing that changes it: typing `--auto` where a piece of
work starts sets the mode up then — a flag only they can type, so it is
given as it is typed.

**On a yes, the two permissions come before anything is set up, each put a
second time where its record does not say yes.** The mode cannot run under a
no to either: a tool the run may not install becomes an issue that holds its
task and everything built on it, and a check whose tool may not be entered
stays off. First the install question, then the one on the dependency file;
after a no the other is not put, there being nothing left for it to decide.
Before each widget stands one line of prose, in the run's own message, that
names the permission: that work without them needs their yes to it — to
installing tools outside the project, or to adding check tools to the
project's packages itself. Where the record says no, a second sentence
follows, that they said no to it; where no record stands on the main branch
— the pull request carrying the answer never landed, say — the line is the
first sentence alone.
The question itself is put as it was the first time, alone in its call, with
the line under its no that belongs to this second asking. The install
question:

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text install-question`

The question on the dependency file is the one step 3 describes, field for
field, with one line changed: its no says that the run adds nothing itself
to the packages, and that work without them is then not possible, every
piece of work running with them. That a first setup puts this question in
step 3 and again here is meant: here it is the second asking, with its own
line under the no.

**Every yes to one of the two holds for its permission, whatever follows
it.** Then, in this order:

1. **The records that changed land first** — the two permissions and the
   answer about the mode — through a pull request, and are fetched before
   anything is installed under them: the install guard reads its record off
   the main branch as last fetched. Where nothing is installed under them,
   they land in one pull request with the rest of this step; otherwise in
   one of their own, ahead of it.
2. **Under a yes to the dependency file**, every check tool that is
   installed outside the project and can be entered there is entered, and
   its class is proven red again as in step 5.
3. **Every class that was off only for an earlier no that the answers just
   given lift** — the reason in its `skipped (user)` cell names what was
   declined: an install they declined or did not run, filled where the
   install record says yes now; a tool they declined into the packages, with
   no other way left or with the check chosen off over another tool, filled
   with the tool first asked about where the record on the packages says yes
   now, and left off where only the install record changed — is filled, by
   steps 4 to 6 for those classes. That changes rows the user switched off,
   and not without them: they are here and have just said yes.
4. **Only where every answer is now yes** is the gate set up, by the order
   further down.

**The install record, where this step changes it.** Until 5 October 2026
only `setup-project` wrote it; this step writes it as well, and only with
the user there, which is what holds a record that opens a guard:

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text install-record`

**The record of the answer about the mode.** A section of its own in
`docs/agents/environment.md`, in the shape of the install record — one key
and one value per line, spelled exactly, ASCII only — so that a later run
reads the start of a line and not a sentence every run words differently:

    ## Unattended mode

    unattended-mode: no
    unattended-reason: <one line>
    unattended-answered: YYYY-MM-DD

`unattended-mode` is `yes` where they said yes to the question, or typed the
flag with the gate standing, and yes to both permissions; `no` otherwise,
and then `unattended-reason` says in one line which no it was — to work
running alone here, to installing, to the dependency file — or that the
platform refused the protection, or that the checks do not pass on the
platform, the workflow on the main branch red from the code, which are no
answer of theirs. Under a yes there is no reason line. `unattended-answered` is the date. Each of the
three records is written only where its answer changed or no record stood:
a no over a no leaves the file alone, and no pull request is opened for a
date. Where the file still carries the answer as a sentence, the way this
step wrote it until 5 October 2026, that sentence goes with the first
writing of the section. What is recorded is that the mode is set up in this
repository, or that it is not — a permission, which the question at the end of
each sharpening presupposes and reads. It is not an answer for any piece of
work, and no stage reads it as one.

**What this step writes lands through a branch of its own**,
`devloop-unattended`, the third of the fixed names under "Cut the branch"
above. After this step's last question and before its first write: cut the
branch by the cases there, which since 6 October 2026 fetch, switch to the
main branch and fast-forward it before a fresh cut — step 7 has done so
where it ran before this step, and reached alone through `--auto` this
step stands wherever the run stood when the flag was typed. As few pull
requests as point 1
allows, each landed the way step 7 lands one: armed where a gate stands,
and handed to them to merge where none does yet, since they are here. After
every merge that is proven: fetch — three attempts, by the command under
"When the main branch cannot be fetched or fast-forwarded" above —
fast-forward the main branch and switch to it, as step 7 does, delete the
branch locally and, where it still stands there, on the remote, and only
then cut it again for the next pull request. Where the fetch fails on its
third attempt, or the fast-forward fails, stop as that section says, opening
with that the merge has landed on GitHub and nothing is lost, and that only
the local main branch cannot be brought to that state; nothing more is cut
and nothing is installed under records not yet fetched.

**Setting the gate up, in this order. Do not collapse it.**

1. Write `.github/workflows/checks.yml`. It installs before it checks: first
   the project's own dependencies, then every tool a blocking check needs
   that exists only outside a project, each with its vendor's installation
   line for the platform's machine, backed as step 4 backs a command. Then
   it runs `check` and nothing else, the target that runs every blocking
   class and that this skill keeps true, so that a class that becomes
   blocking later runs on the platform too. Land it on the main branch the
   ordinary way, through a pull request.
2. Wait until it has run there and gone green. A required check that has never
   reported leaves every later pull request waiting on something that will never
   arrive. A red that comes of a tool missing on the platform's machine is
   the workflow file being wrong and not the suite: correct the file, land
   it and wait again, as step 5 does not take a red that did not come from
   the code. Only a red from the code itself is the answer, and it is no
   answer of theirs: say what failed, and that once the checks pass on
   GitHub they can set the mode up by typing `--auto`. The record of the
   answer then says that the mode is not set up, with that red as its
   reason: the yes has landed by now, so the change goes through a pull
   request of its own, as after a refused protection. The workflow file
   stays, since `--auto` needs it once the code is green.
3. Only then set the protection, requiring that check, with `enforce_admins` on,
   and switch auto-merge on if it is off.

Where the gate was there and binding already, none of the three is done:
auto-merge is switched on where it is off, before the pull request above is
armed, since arming needs it.

**Never do this while a pull request is open.** A required check added underneath
an open one blocks it — the workflow never ran for that branch, so its result
never comes. Say so, merge what is open first, and come back to this.

**If the protection is refused,** say why in plain words — a private repository
on a plan that does not allow it is the usual reason — and say what would change
it, a public repository or a different plan. Offer to take the workflow file back
out, since it was added only for this. The attended mode is untouched and carries
on either way. The record of the answer then says that the mode is not set
up, with that refusal as its reason; it is no answer of theirs, so what is
said beside it is what would change it, and not that the flag sets it up.

## Step 9 — Close

Say how many classes are `filled`, how many `skipped` and why, and how many are
still `empty`.

Then say what happens next and do it, without asking first. More classes while
any is still `empty`: that is the rest of the answer given in step 2, not a
second question. Otherwise it depends on the route in: reached for a single
class, back to the caller and its task; reached from `--auto` for step 8
alone, back to the place that called, with the tree on the main branch as
freshly fetched — on a yes that place reads the conditions again and goes
alone, on a no it goes on with them; reached from the step
after a merge, back to that step's own next, the query in `build-work` step 7;
at a first setup, the first piece of work — where they have already said what
they want built, say the suite is done and carry straight on into planning it,
where they have not, ask what to build, the one real question here, and either
way the next stage is `plan-work`, never the entry point they came from. Say
what the state means either way — a class still saying `empty` is a record
that nobody decided yet, and the unattended mode stays unavailable until none
are.

---

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text closing`
