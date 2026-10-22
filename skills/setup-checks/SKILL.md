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
own branch, lands it in step 7 and goes on to step 8, which every first setup
reaches once that merge is proven and no class is `empty` — with auto-merge
off and no gate on the main branch as much as with them, since those are
what step 8 sets up. For a single
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

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text set-aside-back`

## A guard's block is not a decline

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text guard-block-intro`

- **The command really is an install this class needs.** The guard did what it
  was built for. With the user there this is the question step 3 puts where
  the tool is missing under a no — they install it themselves, or the check
  goes off — and the check off makes the class `skipped (user)` with that
  reason. With
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
`--install-deps` would install; the classifier of auto mode or, since 18
October 2026, a safety check built into Claude Code refuses it; the
installer ran and ended with an error, after its three attempts; the call
did not finish inside its ten minutes: "A guard's block is not a decline"
above answers all four, the class going `skipped (state)` with what this
machine lacks, and `secrets` ending the task. A refusal of anything else
here — a guard's block on a command that is no install, the classifier's
no, the refusal of a safety check built into Claude Code since 18 October
2026, the no of the hook on permission prompts while the mark stands — ends
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
  form. Where the tool it needs is missing and the install record says no or
  was never written, with the person there, that decision is the question
  step 3 puts at once — install it themselves, or the check off — and the
  class is never left `empty` for it, since 21 October 2026: the run of 19
  October 2026 in project z handed the command over, left the class `empty`
  across a merge and said the mode's loss in a subordinate clause, defect 4
  of the roadmap entry of that date, and the person decided that the open
  decision is taken before the offer of the mode is made or dropped. With
  nobody there the task ends instead, and not the run, as "A
  guard's block is not a decline" above says, since 9 October 2026.

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
  name for the subject, the check. In the question line: that the check, in
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

Ask which to do now: all of them, or some first and the rest after them. The
question is put as text, last in the message that ends the turn, the
proposal above standing before it in that message, since 17 October 2026:
one line per class with what it catches, its cost and its tool, and the
reasons of the ones that do not apply, are what the answer is given on, and
they do not fit the harness's choice widget by the bound of the output
style of devloop. Where this skill was called whole for the classes still
`empty` — from `build-work` step 6 after a merge, or from step 4 of the entry
point at a start — that message opens with why the question comes now: after a
merge, that the work is merged but not every check is decided yet, so that
comes first; at a start, that the project is set up but not every check is
decided yet, so that comes first. Where no question is put here, it stands
in the message with which this skill's turn ends, before the merge handover.
Since 17 October 2026, where until then the caller said it before calling;
the wording for a start was approved on 6 October 2026 and stands in the
roadmap entry of 5 October 2026, the one after a merge on 17 October 2026 in
the roadmap entry of that day on the reports of what was done; this skill
says what is said, not the words. "None"
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
target in the task runner are not. When both kinds come up in one round, ask
about the ones that cost them something, and the ones that cost them nothing
stand in the pull request of step 7, beside the red proof of each class it
switches on, and are not said — never side by side with the questions as
though they were the same kind of thing. Since 17 October 2026; until then
they were stated in the conversation.

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

No paragraph here names the check commands as something to grant since 16
October 2026: at the moment one read it one could decide nothing, and later
it was forgotten; the decision falls in Claude Code's own prompt, which
offers to allow a command permanently, and in auto mode no prompt comes.
Point 8 of part B of the roadmap entry of 12 October 2026, with the note
that stood at the start of `setup-project` until the same day.

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

- **In the header: a name for the subject, the project's packages**, as
  telling as it can be, of twelve characters at most.
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

- **In the header**: the same name.
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

The command of the second way installs the tool outside the project — on a
route of the record, `brew install prettier` or `npm install -g prettier`
say — and is handed over after the no in the message that ends the turn —
where another question of this step follows through the widget, in the next
message that ends a turn with text, never before that call, since 17
October 2026 —
backed and as it runs from wherever they are, by "A command handed over runs
as it stands" in `docs/skill-conventions.md`. It is never the line that
enters the tool into the project's packages, `npm install --save-dev
prettier`: that is what the no just declined, and a no to a tool in the
packages is not a request for the same line by their hand. A tool with no
way outside the project — a package of type definitions, `@types/node` say,
which only the project's packages can carry — takes the third way: the
check stays off, no command is handed over, and the no's line says so and
promises none. The first closing run of milestone 3 handed over `npm install
--save-dev` for the three tools declined that way and promised a command
for `@types/node`, defect 3 of the roadmap entry of 11 October 2026 on that
run.

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
the install brings no compiler, no runtime and no system packages along —
`brew install pmd` brings `openjdk` with it, read off the formula on 6
October 2026, and a browser for tests with `--with-deps`, `install-deps` or
`--install-deps` brings the system's own packages — since a runtime and those
packages stay the user's under every answer, by the paragraph below. Where
it would bring one, the line is the one that gives them the command. Until
16 October 2026 this sentence named the compiler and the runtime alone,
recorded on 8 October 2026, built as point 15 of part B of the roadmap
entry of 12 October 2026.

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
question said: with the person there the decision on the class is put at
once, here, as a question, before the offer of the unattended mode in step
8 and never left open across a handover or a merge, since 21 October 2026,
the person's decision of 19 October 2026 after the run of that day in
project z, which handed the command over and left the class `empty` across
a merge, defect 4 of the roadmap entry of that date. A choice through the
harness's choice widget, in the user's language, alone in its call, every
point in a field of its own, and no recommendation, as every question of
this step; the wording approved on 21 October 2026 stands in the roadmap
entry of that date on milestone 3, part 4, with `gitleaks` for the class
`secrets` as its example, and this skill says what is said, not the words:

- **In the header: a name for the subject**, the check, of twelve characters
  at most.
- **In the question field**: that for this check, in ordinary words, the
  tool is missing, named; that outside the project the run may install
  nothing; that they can install it themselves, with the command in
  backticks, backed and as it runs from wherever they are — the change into
  the project's directory before it where it needs one, by "A command handed
  over runs as it stands" in `docs/skill-conventions.md`; and the question
  line, how it is to go on.
- **The first answer, label and line**: they install it themselves.
- **The second answer, label and line**: the check is switched off.

On the first: hand them the command, backed and as it runs from wherever
they are, once more as a line of its own to copy, last in the message that
ends the turn, and wait for their word; then read the place the command
writes to, never `command -v`, and set the class up in step 4 where the
tool stands there — the branch is cut after their word, as after the last
answer — and step 4 writes the line for that install into
`docs/agents/environment.md`, since the hook that writes the line for an
install the run made does not see one made in their own terminal, as step 4
says. Where it does not stand there, put the same question again, with the
place that was read and that the tool does not stand there in its question
field before the question line, and so each time the tool is not there
after their word, until they choose the check off or the tool stands there:
no check goes off but on their choice, which is the second answer, and not
on a tool not found — the person's decision of 21 October 2026, the roadmap
entry of that date on milestone 3, part 4; until then this paragraph made
the class `skipped (user)` the first time the tool was not there, against
the rule of step 1 that only the user switches `secrets` off and against
the approved wording, whose second answer alone switches a check off. On the
second the class becomes `skipped (user):` with that reason, naming the tool
and that the person did not install it — whether or
not another tool would be left for the class; another tool is not put to
them after the check was switched off. This holds for every class whose
tool is missing under a no, `secrets` included, which step 1 says is never
skipped on the run's own judgement and is decided here by theirs, and a
class is never left `empty` for it. Until 21 October 2026 the command was
handed over here with both ways said and the class decided by whether it
was run. And so does a class whose only way
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
called for one class; the standing fact — the command as its words ran and
the folder it installed into — is written into `environment.md` under
`Installed outside the project` by the hook `post-tool-use-install-fact.sh`
the moment the install went through, since 21 October 2026, from what the
guard read when it let the command through, and this run writes no second
line for it; until that day this sentence had the run write it, and the run
of 19 October 2026 in project z did not, defect 6 of the roadmap entry of
that date. Where the hook says it could not write — the tree on the main
branch, or the file missing — its message carries the line, and the run puts
it there as it stands.

**A tool the person installed themselves, on the first answer of the
question step 3 puts, the hook does not see**: the command ran in their
terminal and in no call of this run. Its line is this step's to write, with
the editing tool, under the same heading `Installed outside the project` of
`environment.md` and in the form the hook writes — one list item, the
command as it was handed over in backticks, the words `installed into` and
the folder step 3 read the tool at — and not a second time where that line
stands there already; on the branch this step writes on, the one cut after
their word at a first setup and on the route from the step after a merge,
the caller's where this skill was called for one class, since step 3 stands
before the cut and writes nothing. The person's decision of 21 October
2026, the roadmap entry of that date on milestone 3, part 4, which carries
the two ways weighed.

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
run that does not finish inside it is not answered, and with nobody there,
since the addendum of 9 October 2026, the task ends and not the run: an
issue carrying the command, the message, the path of the output file where
the message names one, and that the call did not finish inside its ten
minutes, labelled `raised-here` and `needs-human`, recorded as a blocker of
the task whose branch this is; the task put down, the caller takes the next;
nothing closed from it, no second start; the class as it stands:

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

**The break of the secrets class stands in an untracked file and never
enters the index.** The scanner ignores the documented example values, so
the break has to be a value that looks like a real key, and such a value in
the index is one commit away from the history the class exists to keep it
out of. So: a new file the tree does not track, the value in it, the target
run, the file deleted — and then the index read: `git status --short` prints
nothing for it and `git ls-files --stage` does not name it, an intent-to-add
entry included, which is what a `git reset` that failed without saying so
left behind in `devloop-test-v` on 4 October 2026, defect 7 of the roadmap
entry of 3 and 4 October 2026 on the two runs, built as point 16 of part B
of the roadmap entry of 12 October 2026. Where the target scans the history
alone, so that a file in the tree cannot turn it red, read whether the tool
has a mode over the tree, and that it scans the history alone stands in the
proof line of the pull request below and is not said, since 17 October
2026; the break goes into no commit either way.

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

The program reads `mergeStateStatus` once a second and arms in the pass that
reads `BLOCKED`, the state GitHub arms on, since 17 October 2026 — it moves
within seconds of the push, and a reading in one call with the arming in the
next left room for it to move, defect 5 of the roadmap entry of 16 October
2026 on the runs of that day; its last line says how it ended. `CLEAN`,
`HAS_HOOKS` and `UNSTABLE` mean nothing is outstanding and arming is refused —
but they cannot say whether that is because everything ran or because nothing
has started, and a branch pushed a moment ago is in the second. The program
arms on none of them and asks the branch: the head commit's
`statusCheckRollup` sees Actions check runs and older commit statuses alike,
since `StatusCheckRollupContext` is a union of `CheckRun` and `StatusContext`
(GitHub's live GraphQL schema, 31 August 2026), where `commits/SHA/check-runs`
sees only the first. The required names come from the two gate queries below —
`required_status_checks.contexts` for classic protection,
`parameters.required_status_checks[].context` for a ruleset — which it runs
itself and prints on its `gate:` lines. A required name with no entry, or an
entry whose `status` is not `COMPLETED`, or a status context still `PENDING`
or `EXPECTED`, means the check has not run yet: not a refusal case, so it
reads on, sixty seconds a call, and arms on the `BLOCKED` it moves to; where
it ends with `not started:`, call it once more, two minutes in all. Only every
required check `COMPLETED` makes this a pull request past its gate, `past its
gate:`. If the two minutes run out, say the gate is there and no check
registered in that time, rather than claiming the pull request is past it.
`UNKNOWN` is a missing answer rather than a state: GitHub computes
mergeability when it is asked for, so the program reads again a few seconds
later and uses that second value instead of making a case out of the first; a
second `UNKNOWN` is not read a third time but goes to the rollup. `BEHIND`
means the branch is behind the base and the required check ran against a state
that is not what would be merged, and the program ends with `behind:` — fetch,
three attempts, by the command under "When the main branch cannot be fetched
or fast-forwarded" above, and where the third fails too, stop as that section
says, opening with that the pull request has to be brought up to the latest
state of the main branch before it can be merged and that this is not possible
just now, nothing armed and no merge handed over; then rebase onto the base
and force-push, which lands nothing anywhere and is not the merge this step
may not perform, and call the program again, whose next reading is `BLOCKED`
with arming accepted. Measured on 30 August 2026 on a pull request seven days
old: `UNKNOWN` first, `BEHIND` on the second reading.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text empty-read`

The same distinction holds one step earlier: a required name missing from the
rollup is an answer and waiting helps, a rollup query that did not answer is not
and waiting does not, and the program ends with `no answer:` where the second
did not answer either.

A value in none of those groups is put in none of them — the program names it
on a `cannot be placed:` line and arms all the same; name it as it read, say it
cannot be placed, and do not turn it into one of the three cases below.

If arming is refused there are three cases. Two come as the program's own
answer, since it arms on no mergeable value — `no required check:` and `past
its gate:` — and the first as GitHub's, `refused:`, or as `past its gate:`
where a gate stands and auto-merge is off, the program reading no setting,
since 18 October 2026. `gh api repos/OWNER/REPO -q .allow_auto_merge` answers
only the first: auto-merge switched off on the repository, the field false; or
no gate for it to wait on at all; or a gate this pull request is already past,
auto-merge on — the required check green, nothing outstanding, so
GitHub will not arm what it would merge on the spot. The field cannot tell the
last two apart; measured on 30 August 2026, it read true in a repository with a
required check and in one without alike. At a first setup the field
ordinarily reads false since 16 October 2026: the setup asks about
auto-merge only where a gate stands already, so a repository without one
arrives here with it off, and step 8 switches it on where it sets a gate
up; nothing here asks them to. That is the first case only where a gate
stands, as the handover has it: where none does, the program answers
`no required check:` at a mergeable value, and the case is the second,
whatever the field reads, since 18 October 2026, after defect 4 of the
roadmap entry of 16 October 2026 on the runs of that day; until then this
paragraph called the first the ordinary case at a first setup.
The state comes from `mergeStateStatus`, as the program read it last.
Whether a gate exists takes both `gh api repos/OWNER/REPO/branches/main/protection`
(classic protection; blind to rulesets, needs admin, and a 404 means none only
where the body says "Branch not protected") and `gh api
repos/OWNER/REPO/rules/branches/main` (rulesets; no special rights, blind to
classic protection). The program asks both and prints them on its `gate:`
lines where it reads a mergeable value; where it printed none — at `BLOCKED`,
at a value it cannot place, at a refusal with `BLOCKED` read after it — ask
both here, since 18 October 2026. A gate found by either is a gate; where
neither query answered, say the rights did not allow finding out rather than
naming a case.
Then the handover, and do not go on to the next step on top of an unmerged
suite:

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text merge-handover`

**Once the merge is proven, on either way to it: fetch, fast-forward the
local main branch and switch to it, and delete `devloop-checks` locally and,
by the rule below, on the remote** — as `setup-project` step 8 does
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

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text branch-deletion`

**Step 8 follows now, at a first setup and on the route from the step after
a merge alike, once no class is `empty`.** The proven merge is what it
waited for, and nothing else decides it: not auto-merge being off, not the
main branch having no gate, not a record that does not say yes, since those
are what step 8 sets up or asks about; and not what the handover said,
since the handover says nothing of what comes after the merge. The first
closing run of milestone 3 went from the proven merge of this step to
planning, its handover having said before the merge that the mode stays off
and that `--auto` sets it up later, defect 1 of the roadmap entry of 11
October 2026 on that run.

## Step 8 — Offer the unattended mode

Only when no class is `empty` any more. While one is, the mode is unavailable
whatever the user answers, and asking would be a question with one possible
outcome. That is the one condition, and it holds at every first setup once
step 7's merge is proven, since the setup fills no class and this skill
decides every one: the five things below are read, and where they do not
all hold the question is put, with auto-merge off and no gate on the main
branch as much as with them.

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
is not a gate: count it as missing, not as present, and say nothing of it,
since 17 October 2026 — the yes of the question below says whether a
protection is added. Where a side did not answer,
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

**Read, before the question, whether GitHub offers the protection on this
repository at all, and ask nothing where it does not.** The query is the
second of the two above, `gh api repos/OWNER/REPO/rules/branches/<main
branch>`, which needs no special rights; what decides is its answer and not
its status alone, since a 403 comes from a GitHub CLI locked out of an
organization too. Three answers. `[]` or a list: the protection is offered,
and the question below is put. HTTP 403 whose body says "Upgrade to GitHub
Pro or make this repository public": no question is put. Say instead that
work without them is not possible in this project, because GitHub offers no
protection of the main branch for this repository; the two things that
change it — making the repository public, or keeping it private on the plan
GitHub names, GitHub Pro where `gh api repos/OWNER/REPO -q .owner.type`
answers `User` and GitHub Team where it answers `Organization`; and that
everything goes on with them as before. The wording approved on 8 October
2026 stands in the roadmap entry of 9 October 2026 as text 3; this skill
says what is said, not the words. Then step 9, as after a no, except that
nothing is written: nothing is set up, no branch is cut and no section goes
into `docs/agents/environment.md`; where `--auto` brought the run here, back
to the place that called, which goes on with them. Every other answer —
another status, another body, no answer — is a command that did not answer,
as "When a command does not answer" says: name the command and the message,
close nothing, and the question is not put. Measured on 8 and 9 October 2026
with gh 2.96.0 on the two probe repositories the roadmap entry of 9 October
2026 names: `[]`, exit 0, on a private repository of a personal account; the
403 with that body, exit 1, on a private repository of an organization on
the plan Free, whose auto-merge a PATCH left `false` with exit 0, which is
why the gate order below reads auto-merge back.

**The question, in the form of the other questions of this skill**: a choice
through the harness's choice widget, in the user's language, alone in its
call, every point in a field of its own, and no recommendation, on the
pattern `shared/install-question.md` sets out. What it decides: whether work
in this project may run alone at all — a permission for this repository,
which each piece of work is asked separately whether to use, at the end of
its sharpening, `--auto` being that answer given up front. Nothing stands
before the call: what no field carries is not said. Since 17 October 2026;
until then five parts stood before the window in the run's own message, and
in both runs of 16 October 2026 they landed in a collapsed note.

**Read before the question whether the repository is public**: `gh repo view
OWNER/REPO --json visibility -q .visibility`, a field `gh repo view --json`
offers beside `isPrivate`, in the manual of gh 2.89.0 and in `gh repo view
--help` of gh 2.96.0. Measured on 17 October 2026 with
gh 2.96.0: `PUBLIC` on a public repository and `PRIVATE` on a private one,
exit 0, and exit 1 with the GraphQL message on a name that resolves to no
repository. Where the answer is not `public`, in capitals or not, or where
no answer came, the question field carries the line on the cost below: on a
public repository the check runs on GitHub's standard machines free of
charge, on a private one it counts against the free minutes of the account,
GitHub Docs, "About billing for GitHub Actions", read on 17 October 2026.
Where no answer came, `shared/command-does-not-answer.md` holds beside it,
and the command and the message stand in the question field under the line
on the cost, since they bear on it.

- **In the header: a name for the subject**, as telling as it can be, of
  twelve characters at most — that it is about work without them.
- **In the question field, each point on a line of its own, and after a
  blank line the question line.**
  - The course and its end: without them devloop builds the planned tasks
    one after the other, GitHub merges each as soon as the checks are green,
    and they see the result only at the end.
  - The cost, only where the reading above leaves it standing: the checks
    spend minutes of their quota on GitHub.
  - Keeping the machine awake: it has to stay awake as long as devloop
    works. On macOS alone, where `uname -s` answers `Darwin`, the same line
    goes on: under which conditions `caffeinate` keeps it awake, as long as
    it runs in a terminal of their own and the laptop stays open, and not
    what does not suffice, since 19 October 2026, the person's statement of
    that day being that the line said what does not suffice instead of
    naming the conditions; until then that a closed laptop it does not keep
    awake. The backing stays: `caffeinate(8)` on that machine, read on 7
    September 2026, holds an assertion against idle sleep for as long as the
    process runs, and a closed lid is a different route into sleep. On every
    other system, and where `uname -s` does not answer, the first sentence
    alone and no command, backed or not: the commands for Linux and Windows
    come with milestone 12 of `docs/plan.md`. It is said here and not made a
    second question of: it is something they do outside the run, and a
    second question beside the real one blurs the real one.
  - The question line: whether devloop may work in this project without
    them.
- **In the yes, label and description: what a yes means.** The label: that
  they allow work without them, in which lies that devloop asks at every idea
  anew whether it is carried out without them, as the paragraph on what the
  question decides says above; no sentence of its own says so, since the
  person struck such sentences on 17 October 2026 and gave the point to the
  label, the roadmap entry of that date under what came out of text 6. The
  description: that devloop sets
  a check up on GitHub and protects the main branch, against their own
  direct pushes too; and that a run then works as long as this window is
  open. Where the protection stands already and binds, the first of the two
  sentences goes. What the two labels say stands here since 19 October 2026,
  the run of that day having written a bare yes and a bare no, the walk of
  defect 13 in the roadmap entry of that date.
- **In the no, label and description: where a no leads.** The label: that
  everything runs with them, in which lies that every task comes to them for
  approval; no sentence of its own for it, for the same reason. The
  description: everything stays
  as it is; `--auto` sets it up later.

At 80 columns, on macOS and with a private repository, these fields fill
twelve lines, inside the bound the output style of devloop sets, measured on
19 October 2026 with the approved wording wrapped at 76 and 73 characters,
the awake line of that day among it, which takes the three lines the line
of 17 October 2026 took; measured the same twelve on 17 October 2026.
The wording approved on 17 October 2026 stands in the roadmap entry of that
date as the new text 6, in place of text 6 of the roadmap entry of 9 October
2026, and the awake line as approved on 19 October 2026 in the roadmap entry
of that date under defect 13, in place of the sentence of 17 October
2026; this skill says what is said, not the words. What went from text 6
and from the five parts on that day — the steps of a task, the issue for a
task that does not go green, a failed merge ending the run, that the run
does not start again by itself, that the review costs more without them,
that the run stands still until they write, and how `caffeinate` is ended —
stands in that entry with the reason for each.

What the paragraphs that stood here until 9 October 2026 said before the
question and its fields do not — that the run takes up the issues it
raised against itself, that there is no ceiling on the number of tasks, that
the result reads as the diff from the starting commit, how the run ends and
how a standstill is seen, and a word against a yes on a first project — is
not said here any more; the behaviour stands where it is decided,
`build-work` under "Unattended mode" and step 6, and `plan-work` at the end
of Stage 1, and nothing of it has changed.

**Two things change what is put.** Where the gate is already there and
binding and the mode is not set up, the question is put all the same, with
the first sentence of its yes gone, since no protection is added. And where
`--auto` brought the run here: with the gate there and binding, the flag is
their yes and the question is not put; with no gate yet it is put all the
same, since it is what says what setting one up costs.

**On a no, nothing is set up**, on the platform or anywhere else, and every
piece of work runs with them. The record below says so, with the reason.
Nothing more is said on the no, since 17 October 2026: that typing `--auto`
where a piece of work starts sets the mode up then stands in the no's own
description already.

**On a yes — their answer, or the flag where the gate stands — one question
more, directly after it and before the two permissions: whether devloop may
enter a rule into their `~/.claude/settings.json`**, so that auto mode does
not block installs in devloop projects by itself. The rule is the one of
decision 1 of the roadmap entry of 9 October 2026, an entry of the list
`autoMode.allow`, which the classifier of auto mode reads as an exception
to its own rules. In the same form as the question above, alone in its
call:

- **In the header: a name for the subject, the rule**, as telling as it can
  be, of twelve characters at most.
- **In the question line**: whether devloop may enter a rule into their file
  `~/.claude/settings.json`, so that auto mode does not block installations
  in devloop projects by itself.
- **In the yes, label and line**: devloop enters the rule, and it allows
  installations only in projects set up with devloop.
- **In the no, label and line**: auto mode can then refuse an installation;
  without them the run then writes an issue with the reason and goes on with
  the next task.

It is not put where the rule stands in the file already, word for word under
`autoMode.allow`: `${CLAUDE_PLUGIN_ROOT}/bin/devloop-auto-mode-rule read`
says so with exit 0 and writes nothing. On the yes,
`${CLAUDE_PLUGIN_ROOT}/bin/devloop-auto-mode-rule write` enters it, and
nothing else does: the rule word for word as one entry of `autoMode.allow`,
the list created with `"$defaults"` before the rule where the file or the
list is missing, the rule appended where a list stands, nothing changed
where it stands already, every other key and value of the file kept in its
order, written over a temporary file so that no half file is ever left; the
file is `settings.json` under `CLAUDE_CONFIG_DIR` where that is set, as the
settings page of Claude Code says. Where the program writes nothing — the
file is not valid JSON, a key stands twice, `autoMode` is not an object,
`autoMode.allow` is not a list, or the write itself is refused — it names
the reason with exit 2, and the run says that it could not enter the rule,
with that message; that the run without them goes all the same; and that
where auto mode refuses an installation, the run writes an issue with the
reason and goes on with the next task. The wording approved on 8 October
2026 stands in the roadmap entry of 9 October 2026 as text 4, the rule in
English among it; this skill says what is said, not the words, and the
program carries the rule. Without the yes the file is never touched, and a
no here changes nothing of what follows.

**Then the two permissions, before anything is set up, each put a second
time where its record does not say yes.** The mode cannot run under a
no to either: a tool the run may not install becomes an issue that holds its
task and everything built on it, and a check whose tool may not be entered
stays off. First the install question, then the one on the dependency file;
after a no the other is not put, there being nothing left for it to decide.
In the question field of each, before its question line, stands one line
that names the permission: that work without them needs their yes to it — to
installing tools outside the project, or to adding check tools to the
project's packages itself. Where the record says no, a second sentence
follows in the same field, that they said no to it; where no record stands
on the main branch — the pull request carrying the answer never landed, say
— the line is the first sentence alone. Nothing stands before the call.
Since 17 October 2026; until then the line stood as prose before the widget,
and in the runs of 16 October 2026 it landed in a collapsed note or came
without the no. `shared/install-question.md` says of the question line that
nothing else stands there: this line stands above it, in the question field,
and the question line stays as it is.
The question itself is put as it was the first time, alone in its call, with
the line under its no that belongs to this second asking. The install
question:

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text install-question`

The question on the dependency file is the one step 3 describes, field for
field, with the line above in its question field and one line changed: its
no says that the run adds nothing itself
to the packages, and that work without them is then not possible, every
piece of work running with them. That a first setup puts this question in
step 3 and again here is meant: here it is the second asking, with its own
line under the no.

**Every yes to one of the two holds for its permission, whatever follows
it.** What follows is read off `checks.md` before anything lands: every row
`skipped (user)` whose reason names an install they declined, did not make
or did not run,
or a tool they declined into the packages — the reasons step 3 writes — is a
class the answers just given open again, by point 3 below, and every check
tool installed outside the project that a yes to the dependency file now
lets into the packages is one point 2 enters. That list, each class with
the tool it takes, is said to the person in one line at the next message
that ends a turn with text, its details standing in the pull request that
carries them, since 17 October 2026, defect 8 of the roadmap entry of 16
October 2026 on the runs of that day; until then in one line of the run's
own message before the first pull request. It decides how many pull
requests there are. Then, in this order, and none of it skipped for the
records having to land first — that is what point 1 is for:

1. **The records that changed land first** — the two permissions and the
   answer about the mode — through a pull request, and are fetched before
   anything is installed under them: the install guard reads its record off
   the main branch as last fetched. Where the list is empty, so that nothing
   is installed or entered under them, they land in one pull request with
   the rest of this step — the workflow file, where the gate order below
   writes one; otherwise in one of their own, ahead of it, and what points 2
   and 3 fill lands with the rest in the second.
2. **Under a yes to the dependency file**, every check tool that is
   installed outside the project and can be entered there is entered, and
   its class is proven red again as in step 5.
3. **Every class on the list** — off only for an earlier no that the answers
   just given lift, the reason in its `skipped (user)` cell naming what was
   declined: an install they declined, did not make or did not run, filled with the tool
   in the packages where the record on them says yes now and the tool can be
   entered there, and outside the project where the install record says yes
   now only where that does not hold, so that nothing it installs outside the
   project is a tool point 2, which comes first, would have entered; a tool
   they declined into the packages, with no other way left or with the check
   chosen off over another tool, filled with the tool first asked about where
   the record on the packages says yes now, and left off where only the
   install record changed — is filled, by steps 4 to 6 for those classes, its
   red proof into the pull request that carries it as step 5 says. That
   changes rows the user switched off, and not without them: they are here
   and have just said yes. A class off for an install has been filled this
   way since 18 October 2026, defect 9 of the roadmap entry of 16 October
   2026 on the runs of that day; until then it was filled where the install
   record said yes now, whatever the record on the packages said, and biome
   went outside the project under both yes and was entered nowhere.
4. **Only then the gate**, by the order further down, and only where every
   answer is now yes; the workflow file carries the installation line of
   every tool a blocking class now needs outside a project, as that order
   says.

The second closing run of milestone 3 went from the yes to the dependency
file to the records and their pull request, entered no tool and filled no
class, `checks.md` keeping format, lint, types and secrets as `skipped
(user)` with the first run's reasons, and set the gate up over three filled
classes; then it landed the workflow file in a pull request of its own, two
merges by the person's hand where one was owed, since nothing had been
installed between: defects b and i of the roadmap entry of 11 October 2026
on that run.

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

That section and the workflow file below are written with the editing tool,
by the rule the build carries for every file whose content is text about
commands, which stands here since 16 October 2026 because the main run of
the second closing run of milestone 3 wrote `environment.md` from the shell
twice in this step, where no rule named the editing tool:

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text editing-tool`

**What this step writes lands through a branch of its own**,
`devloop-unattended`, the third of the fixed names under "Cut the branch"
above. After this step's last question and before its first write: cut the
branch by the cases there, which since 6 October 2026 fetch, switch to the
main branch and fast-forward it before a fresh cut — step 7 has done so
where it ran before this step, and reached alone through `--auto` this
step stands wherever the run stood when the flag was typed. As few pull
requests as point 1 above allows, one or two, each landed the way step 7
lands one: armed where a gate stands, and handed to them to merge where none
does yet, since they are here, in the text step 7 hands a merge over with.
After every merge that is proven: fetch — three attempts, by the command
under "When the main branch cannot be fetched or fast-forwarded" above —
fast-forward the main branch and switch to it, as step 7 does, delete the
branch locally and, by the rule of step 7, on the remote, and only
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
3. Only then auto-merge, and the protection after it. Switch auto-merge on
   where it is off and read it back, `gh api repos/OWNER/REPO -q
   .allow_auto_merge`: a PATCH on it answered `false` with exit 0 on 8
   October 2026 in an organization on the plan Free, so the answer of the
   PATCH is not the state. Where it reads `false`, no protection is set, and
   it goes on as at a refused protection below, that reading as the reason.
   Where it reads `true`, set the protection, requiring that check, with
   `enforce_admins` on.

Where the gate was there and binding already, none of the three is done:
auto-merge is switched on where it is off, before the pull request above is
armed, since arming needs it, and read back the same way; where it reads
`false`, it goes on as at a refused protection below, that reading as the
reason.

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
