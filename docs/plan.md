# The plan

Written on 19 September 2026. This is the plan and not a measurement record:
what was measured stands in `docs/roadmap.md` under `## Known gaps`, with a
date on every run, the facts of the stock-take stand in `docs/stock-take.tsv`,
and what holds as a rule stands in `docs/skill-conventions.md`. This file says
where the set is going, in which order, and what "done" means at each step.
It changes as milestones land: a landed milestone keeps its text and gets a
line saying when it landed and in which pull request; where its text quotes
wording the work has since replaced, the quote says so where it stands; and
the run that closed it gets its dated entry in the roadmap. Milestone 1 is
the one exception: what it built was not the shape its text planned, so its
section was rewritten on 23 September 2026 to describe what stands. A
reference below names a file and a section, never a line: the line numbers
this file carried at `929dabe` had drifted by the next pull request, and the
section names had not.

## The aim

From an idea to an application or tool that runs on this machine: started by
the run, its answer read mechanically, and, where it has an interface, driven
through that interface; its look decided by the person once, on variants the
run drew, recorded in the repository and checked mechanically from then on; the
command that starts it written down; and handed to the person with one action.
Merged, reviewed code is the step before that. `README.md` used to name that
step as the aim, and the roadmap entry "The aim is idea to a running
application; this gets to merged code" already records that the aim had moved
and lists what stands between the two.

## Where the set ends

The set ends at what a run can do in one session on one machine and can read
back mechanically. Beyond that line is the person's.

- **Started in this session, on this machine.** Nothing the set starts survives
  the session: "Nothing resumes on its own", and the machine has to be awake
  (`docs/skill-conventions.md`, "Environment constraints, measured"). Keeping
  something running past the session is the person's.
- **Proof read by the run.** An exit code and output for a tool that runs to
  completion; an answer on a port for a service; state and text read out of the
  page for an interface. Not a screenshot: a screenshot needs someone to look
  at it.
- **The look decided by the person, once, on drawn variants.** The set can draw
  them, record the choice and check every later change against the record. It
  cannot decide whether something looks right: "No check can answer 'does this
  look right'" (`docs/roadmap.md`, the `settle-the-look` entry under "Where
  these would attach").
- **What lands on the machine.** A tool the project declares in its own
  manifest is the project's: it lands inside the repository. Anything that
  lands outside the repository lands there under the person's explicit
  permission only, asked once at setup under milestone 3 and recorded; what
  the project declares is what the person is shown at that question, and it
  does not stand in for it. A compiler or interpreter is the person's unless
  that permission names runtimes as a kind, which is open below.
- **Beyond this machine.** Deployment, configuration, secrets, a first release,
  documentation for the people who will use the thing: the roadmap entry on the
  aim lists them, and nothing here builds them.

Handing over means the last message names the one action that starts it, the
address where it answers, and how to stop it, in the form `build-prototype`
already uses under "Hand it over so it gets looked at".

## Five sentences

1. Done means: the situation that triggers it has been walked once on a named
   bench, with the date in `docs/roadmap.md`, or the roadmap says why it cannot
   be produced.
2. First what goes wrong with nobody reading; an abort is loud only with
   somebody watching.
3. Every branch that can be produced on a bench is walked once on purpose, the
   unwanted side included; the rest stand with the reason.
4. A building milestone ends with a run on a named bench. A measuring milestone
   ends with a dated entry in the roadmap. A text milestone ends with the
   rewritten rule and the list of every place that stood on it.
5. A rule that does not hold in a run is rewritten, not appended to, and every
   place deciding the same thing is named in the same change.

The fifth is `docs/skill-conventions.md` twice over: "A rule holds only on the
path it is written on", and the third rule under "A field is not an answer to a
question it was not asked". The first is the form the same file gives under "A
finding that would have passed unsupervised gets written down": where it can
happen again and cannot be prevented, that is the answer and it gets written
down as one.

## Eleven milestones, in this order

Each carries its kind, what it covers, what ends it, why it stands where it
stands, and the conventions it meets. "Conventions" names sections of
`docs/skill-conventions.md` unless another file is named. The list per
milestone comes from one reading of that file on 19 September 2026, and it is
what milestone 2 hands each later milestone to re-evaluate under the sentence
it writes.

### 1. Stock-take of what is built (measurement)

Done on 23 September 2026, pull request #131. This section describes what was
built, not what was planned on 19 September 2026: the plan said one dated entry
in the roadmap with one table in it, each line carrying one of four states,
and what stands is a table beside the roadmap and a tool that computes the
states. The roadmap entry of 23 September 2026 carries the findings and the
runs, and no state.

One table, `docs/stock-take.tsv`, and one tool, `scripts/devloop-stock-take`,
whose header holds the rules. The table holds facts only: per thing its kind,
the line it stands on and the line that carries its evidence, each as a file
and a verbatim substring of one line; per run its date, the version or commit
it ran and the roadmap line that records it; and for every line of the search
set judged not to be a thing, the reason. No state is written down. The tool
computes one of four states for every thing on every run, from the records
and the git history: undetermined, where the evidence is empty; recorded and
not built, where the evidence lies under `docs/` or in `README.md`; built and
never walked, where it lies under `skills/`, `shared/`, `hooks/`, `bin/` or
`scripts/` or under one of the two check headings of
`docs/skill-conventions.md` and no run counts; walked, where a run counts. A
run counts when the version it ran already contains the last change to every
line the thing stands on, read off `git blame`; a run recorded in the roadmap
with no version does not count, and the runs that do not count are printed
with their reason.

The things: the twelve skills down to their branches, `shared/`, `hooks/`,
`bin/` and `scripts/` down to their outcomes, the tool itself included; the
seventeen checks under "Before a handover, run these" and the check under
"Before you change anything, run this", both outcomes of each; the twenty-two
names under "Named, not built as skills", thirteen as things of their own and
nine as a note on the thing that does their work, the four side paths under
"What is missing" in `README.md` among the thirteen; every defect an entry
under "Known gaps" names, the three defects and seven mechanisms of the
comparison with Matt Pocock's set and the two remaining points of "The order
of work, and why" among them; and every finding the reading made, which the
close moved into the roadmap entry of 23 September 2026 as defects of this
set. Where the roadmap names the triggering situation, the bench and the cost
for a thing, the table carries them; where it does not, that is the building
milestone's work, not this one's.

The search set is what makes the table checkable for completeness: every line
under `skills/`, `shared/`, `hooks/`, `bin/` and `scripts/` that carries a
condition word, a heading, a numbered item, a list head or a table row; every
command block under the two check headings; every entry head and status line
under "Known gaps"; every row under "Named, not built as skills". A line of it
that no record covers is reported, so a line nobody read is seen rather than
missed, and a line that can carry no anchor is listed rather than dropped.

Ended when the tool reported no broken record, no unit without a straight
path, no uncovered line of the search set and no finding left in the table,
so that a third person can check any line without having been there: the
tool proves that every anchor stands where its record says, and every state
is recomputed from the files as they are.

Why here: the roadmap records that an entry answered by a later entry does not
notice, and that "Recorded, not built" has stood on things already built. A
later milestone that needs a list of things in a state runs the tool and
reads it off the output; milestone 5 does so.

Conventions: "A count lives in one place" (the tool's output is that place for
these states, which the table stores nowhere and the roadmap repeats nowhere);
"A time reference names its date"; "A figure taken from a command is copied
out of that command's output"; "Never assert state — query it" (every state
is computed on every run).

### 2. Conventions read against their cases (text)

Narrow, not a pass over every section. Four things:

- **The sentence at the top of `docs/skill-conventions.md`**, beside "each one
  comes from something that went wrong": conventions are not fixed laws. Where
  one blocks a change worth making, the case that produced it is read first;
  where the case no longer holds, the convention is re-evaluated — rewritten or
  dropped, with every place standing on it named — and it is never gone
  around. The same move the roadmap makes under "Decisions taken against":
  reopen when the reason stops holding, because the reason is the point.
- **Three rewritten, each with its sites.** "Works with nothing else installed":
  the case was another plugin's hooks running unnoticed, and it holds for the
  skills and hooks of another plugin, not for a tool the project declares or
  the person allowed. The sentence under "The install guard matches the outcome
  as well as the verb" that nothing lands outside the repository without the
  user running it: the backing stays, who runs it changes under milestone 3.
  That wording is quoted as it stood before pull request #128; the sentence
  now rests on the person's permission, not on who runs the command. "No other
  skill runs either of them, so locking them costs nothing" under "Who may
  invoke a skill": falsified by the same finding three times out of the
  review, and `record-lessons` has never run. That wording too is the one #128
  replaced; the section now says what each lock costs.
- **The claim that a delegating skill loads half its dependencies**
  (`docs/roadmap.md` under "Named, not built as skills") marked as what it is:
  unmeasured, moot for inserted text, and the measurement milestone 9 owes
  before it splits a skill. Not dropped.
- **"Writing long files"** marked as a case not seen since
  the editing tool exists; kept, because obeying it costs nothing.

And, for milestones 3 to 11, the list of conventions each carries below, so
that every milestone re-evaluates what it meets under the new sentence rather
than this one doing it for all of them now, before the cases of milestones 3
and 4 exist.

Ends when the sentence stands, the three are rewritten with their sites listed
in the roadmap entry of the day, and the checks under "Before a handover, run
these" pass. No run: a text milestone.

Why here: milestones 3 and 5 are blocked by the three rewritten, and 9 by the
marked delegation claim. May run before milestone 1; neither depends on the
other.

Done on 19 September 2026, pull request #128.

### 3. Informed permission to install (build)

Five parts. **The question**, at setup, with the person present: what kinds of
thing may land on the machine — tools for check classes, a driver for an
interface, and whether a runtime is one of them — where they may land, which
is the list of places the install guard already carries as `BINDIR`, what each
kind costs, and where a no leads: installs stay the person's, as today. What
can be named at setup is kinds and places, not tools: `setup-project` records
under "Permissions, before the first command" that the check commands are not
known until the check suite exists. **The record**: in `environment.md`, beside
the unattended-mode answer that `setup-checks` step 8 writes there; written
only with the person present, since setup never runs unattended. **The guard**:
`hooks/pre-tool-use-install-guard.sh` reads the record and passes a command
landing in an allowed place; outside it, it blocks as today. **The skills**:
`build-work` step 3 point 7, `setup-checks` step 3, `setup-project` step 4
question 3 and the guard's own message all say today that the person runs the
install; under a yes the run runs it, backed as today, and reads the result off
the path the installer writes to. **Unattended**: the run installs, reports
the command and what came back at a site that outlives the session, and where
the record says no, the decline path stays what it is.

Two things said openly. The record opens a guard and is written by a skill,
which is the shape "A limit the limited party maintains is not a limit" warns
about; what holds it is that it is written only with the person there and read
by a hook, and that the guard was a tripwire and not a wall before this. And the
browser download an interface driver needs passes the guard today — measured on
19 September 2026, both commands pass it, and the roadmap entry of that date
carries the commands and what came back — the wrapper case the guard was never
meant to see; the record covers it expressly, or it goes on landing in silence.

Ends with two runs on one bench: the record saying yes, a build installing a
tool unattended, the guard passing, the tool standing at the path; the record
saying no, the guard blocking, the decline path as today.

Why here: blocked by the three conventions milestone 2 rewrites; milestones 4,
7 and 8 need a driver and a linter that land outside the repository.

Conventions: "A hook cannot see consent" (gains the case of consent recorded
where the hook reads); "Tool classes can be pre-approved per project" (gains
the install class); "A file only its writer reads is not a safeguard" and "A
limit the limited party maintains"; "The install guard matches the outcome as
well as the verb, and is still a tripwire"; "A command handed over is backed,
and its result is read"; "A duty to say something needs a place where it is
said"; "Every offer says where a no leads"; "Never assert state — query it".

### 4. The road to running, measured (measurement)

Three shapes: a tool that runs to completion, a service that stays up, an
application with an interface. Per shape, the four questions: how it starts,
what the run reads to know it runs, what happens on a failed start, and where
it stops. Plus three things the plan cannot claim today: whether a process
started in the background survives across turns in a devloop run (the harness's
own tool description, read on 19 September 2026 and quoted in the roadmap entry
of that date, says it does; nothing here has measured it); whether the
auto-mode classifier lets a start command through unattended (the only record
is `go test` blocked as "Irreversible Local Destruction" on 14 September 2026,
and which allow rule stood is not recorded);
and who ends a server and a browser the run started. It defines "read
mechanically" per shape: exit code and output; an answer on the port; state and
text out of the page. It lays down the interface bench: none of the six benches
has an interface, and this one needs a stack the person picks.

Ends with a dated entry that confirms or moves the boundary under "Where the
set ends", shape by shape, every answer a measurement or marked as not
measured.

Why here: five milestones build on that boundary, and today it is a reading,
not a measurement. After 3, because the interface shape needs a driver.

Conventions: "Nothing resumes on its own" and the machine having to be awake
(a background process is not the backgrounded agent the exception names);
"Text shared between skills" (what a skill's inserted blocks cost against the
5,000 tokens re-attached after a compaction, which the interface shape's
longer skills will meet first).

### 5. What goes wrong with nobody reading (build)

The list comes from milestone 1, read off its tool and not off a table in the
roadmap: run `scripts/devloop-stock-take` and take every defect it reports, in
whatever state, that is in the class the conventions describe under "A finding
that would have passed unsupervised gets written down" as "the finding nothing
was watching … where no red is coming". Known
members today, each a roadmap entry: the same failure picture three times out
of the review, with no counter and `record-lessons` locked against being
called; a lens that fell over and reported "no findings"; reviewing agents that
committed to the branch; a change to the check chain landed unreviewed on the
standalone route; a finding announced as filed that was not filed; the glossary
staying empty while the work coined terms; a second review round that cannot
read a change to the test scaffolding; a lens checked against a decision it was
not given; the `!` channel the guards do not see. Per item: built, and its
situation produced once on a bench, or the roadmap says why it cannot be
produced — a lens falling over was spontaneous, six of twenty, and there only
the form of the report is measurable.

Ends when the tool reports each item walked, its run dated in the roadmap, or
the item's roadmap line carries the reason it was not run.

Why here: the second sentence. Independent of 4; before 9.

Conventions: "Who may invoke a skill" (the lock on `record-lessons`); "A
finding that would have passed unsupervised gets written down"; "A reason is
not the evidence the rule asked for"; "A duty to say something needs a place
where it is said".

### 6. Completion conditions (build)

The seven stage ends read against the two properties the roadmap took from
Pocock's `writing-for-agents`: whether the run can tell done from not done,
and how much it asks for. The roadmap lists the seven under the entry on the
comparison, five ending on a state and two on a judgement. Stage 1 of
`plan-work` ends on the empty frontier, the mechanism `untangle-idea` already
carries under "The interview": a round is the set of questions answerable now,
at most three of them, and the stage ends when that set is empty — not when
the run sees nothing important left, which is what let three questions through
on 14 September 2026.

Two things enter that end here and are read from here by milestone 8: the
stack — language, runtime, framework, database — which nothing in the set
chooses today, and the look, where the work has an interface. Both are
questions only the person can answer, and the second needs something to look
at, which `plan-work` Stage 1 already says does not let the idea stand while it
is open. So the frontier is not empty while either is open, and the run does
not go alone before it. Where the look is open, Stage 1 reaches for
`build-prototype`'s UI branch and the person chooses; milestone 7 says where
the choice goes.

Each rewritten end is reached once in a run, with the bench named, or the
roadmap says why not: the end of `untangle-idea`'s map needs an idea whose
destination is unknown, which two attempts have failed to produce.

Ends when the seven lines stand in the roadmap, each with the run or the
reason, and Stage 1's end names the frontier, the stack and the look.

Why here: before 8, which adds to Stage 1 and reads its end from here.

Conventions: "A rule holds only on the path it is written on" (look for the
competing sentence first: the roadmap records that the judgement "nothing
important open" stood beside the frontier in another skill the whole time);
"Only ask where there is something to decide"; "Every question carries its own
reason".

### 7. The look, recorded and checked (build)

`settle-the-look`, named and not built under "Named, not built as skills",
with its two halves. **The file**: a sixth control document under
`docs/agents/`, with what the roadmap entry lists as its content — the colours
and what each is for, the type sizes, the spacing steps, the corner radii, a
primary button against a secondary one, how a field shows an error, what an
empty state looks like — read out of an existing stylesheet at setup where
there is one, otherwise written at the first task that draws anything, from the
variant the person chose; the build subagent reads it as it reads
`standards.md`. **The check**: a target in an existing check class, not a tenth
class, that goes red on a raw value where a recorded name should stand. The
sixth file moves every place that counts five: `README.md`, `setup-project` in
three places, and the pointer block it writes into `CLAUDE.md`. Design
galleries stay out, by the roadmap's "Decisions taken against".

Ends on the interface bench from milestone 4: the file read out of its
stylesheet, a raw value planted on purpose turning the check red and green
again, and a build subagent handed the file.

Why here: the mechanism before the content. The content comes from the first
thing drawn, and that is milestone 8's and 11's; without writer, reader and
check in place first, the first choice lands on an issue and is read by
nothing, which is where it lands today (`build-prototype/UI.md`, "Capture the
answer and clean up"), and a file with no writer records the setup state for
good, which is what happened to `standards.md` in a bench after two dozen pull
requests. The list of what the file fixes came from reading, not from a drawn
thing; this milestone takes it as the start, and milestone 11 may extend it.

Conventions: "Shared words are defined in one place" (the look becomes a
defined word, and "A class is one of the nine kinds of check" keeps the check a
target); "A count lives in one place" (the five files); "Describe what must be
said; never dictate wording" (the file records names and values, not wording);
"Registering a skill".

### 8. The road to running, built (build)

Per shape milestone 4 found reachable. Stage 1 asks the stack and, where there
is an interface, draws the first screen through `build-prototype`'s UI branch
and has the person choose, with the choice recorded by milestone 7; its end is
milestone 6's and is not written a second time here. The spec says how the
thing is started and seen. "Demonstrable as" in each task is run once by the
build after the checks, and what came back is written into the pull request
body beside the guarded conditions; the spec lens reads it. `setup-checks` gets
the end-to-end shape for a service and for an interface: a target that starts
the thing, drives it and stops it, so that the turn-end hook, which only ever
runs a target, needs nothing. `setup-project` names the start command as a
class to grant. `start-work`'s promise — "code that is built, checked and
merged" — moves with the aim, and so do the three lines that say what the set
does today: the descriptions in `.claude-plugin/plugin.json` and
`.claude-plugin/marketplace.json`, "from idea to merged, reviewed code", and
`start-work`'s own description line, "from idea to merged", which the
roadmap's table repeats. After the last task of a spec closes, the run
starts the thing, reads the proof, and hands over the one action, the address
and how to stop it. On a fresh repository the first screen has no page to live
in, so it is `UI.md`'s second sub-shape, and the cost of bootstrapping a page
before any code exists is this milestone's to name.

Ends with a run per shape on a bench where the run starts what it built and the
proof stands in the pull request body.

Why here: after 6 and 7, before 9, so that the split in 9 goes once over the
final text.

Conventions: "Tool classes can be pre-approved per project" (the start class);
"Nothing resumes on its own"; "Works with nothing else installed" as milestone
2 rewrites it; "A duty to say something needs a place where it is said" (the
run record); "A rule holds only on the path it is written on" (the attended
and the unattended route both reach the start).

### 9. Compaction (build)

First the measurement milestone 2 left open: one split skill, one run, and a
reading off the session log of what its other halves loaded when called. Then
every skill as `scripts/devloop-expand` prints it, read against the limit the
vendor names — 5,000 tokens per loaded skill re-attached after a compaction,
25,000 in all — and split where it has to be. The count of skills changes with
it, and every place that counts twelve changes too.

Ends with the full run on the gated bench: with the person through Stage 1,
alone to the closing sentence, no question in between, the mark written and
deleted, the merges read off the platform.

Why here: last of the rebuilds, over the final text; the long run is the
measurement the split owes, since the roadmap holds no compacted run; and the
set forbids "alone" before the end of Stage 1, so the run is attended that far.

Conventions: "Text shared between skills"; "Registering a skill"; the checks
under "Before a handover, run these" that count twelve files; "A count lives
in one place"; the delegation claim in the roadmap, measured first.

### 10. The six remaining mechanisms (measurement, then build)

First the counter-check the Pocock entry says it owes before anything of it is
built: his repository pinned at a commit, each of the six read against the runs
the roadmap records, to see what it would have changed and what it would have
broken. The grilling mechanism is milestone 6's and is not counted here. Then
only what survives, each with its bench run; the worktree mechanism first needs
the experiment "One build task at a time" names — two build agents in one
working directory, with a date.

Recommended: the counter-check here, the builds after milestone 11, unless the
counter-check shows one standing on the road. If they stay here, each survivor
ends with its own run, so that milestone 11 has one variable.

Ends with a dated entry listing the six with a verdict each, and the survivors
built with their runs.

Conventions: "Adapting from Matt Pocock" (the clone, and the commit written
down); "One build task at a time" and "Agent Teams must stay off" (both marked
in the file as missing their evidence).

### 11. From an idea to the running thing (build and run)

On a fresh bench, with an interface. With the person through setup, the check
suite, the gate, and Stage 1 including the stack and the look at the variants;
alone from there to the closing sentence, with the thing started by the run,
driven, its proof in the last pull request, and the handover message with the
one action.

Ends when the closing sentence is said, the merges are read off the platform,
the run record stands in the last pull request, and the handover message
names the action, the address and how to stop it.

Why last: it is the aim, and every earlier milestone ends with a run of its
own, so that this one has one variable.

Conventions: the machine has to be awake (the person keeps it so, by hand,
with what `setup-checks` step 8 names); the classifier record in the roadmap's
entry on the first planning run alone.

Beside the eleven, one piece of work is waiting and is not a milestone:
`find-refactor-candidates`, decided on 25 September 2026 to be built, reached
when every task under a spec has closed; whether it becomes a milestone is not
decided. The other three of the four side paths that stood open here, named
under "What is missing" in `README.md` until that day, were answered with it:
triaging incoming reports waits for reports from other people, and the
handover between sessions and the router for when you are lost were decided
against, under "Decisions taken against" in `docs/roadmap.md`.

## Open

Not decided here, and not to be read as content. Each names the milestone
that answers it, or says that none does.

- **A later task draws what the look file does not cover**: a kind of screen
  or a state that did not exist when the file was written. Two answers: the
  run stops and asks, or it decides by what is recorded and reports it. Not
  decided now; milestone 7 names both and builds neither until it is.
- Whether a process started in the background survives across turns in a
  devloop run (milestone 4).
- Whether the classifier lets a start command or an install command through
  unattended, and which allow rule has to stand for it (milestones 3 and 4).
- Whether a headless browser runs on this machine unattended, and who ends it
  (milestone 4).
- What `npx playwright install` lands outside the repository; not read from
  the vendor (milestone 3).
- Whether a runtime is one of the kinds the install permission may cover
  (milestone 3).
- Whether a look file can be read out of a stylesheet mechanically
  (milestone 7).
- Whether a split skill loads its other halves when called (milestone 9).
- What survives a compaction: the roadmap holds the vendor's figures and an
  approximation, and no compacted run (milestone 9).
- Whether `Duration` in `checks.md` predicts the platform's time, and whether
  the failure signature after arming is stable; the roadmap entry on the run
  stopping four times after arming names both, and no milestone covers them.
- Whether an idea whose destination is unknown can be produced on demand
  (milestone 6).
- The cost per branch. Milestone 1 carries a cost only where the roadmap named
  one, on six things; no milestone names the rest, each building milestone
  names its own.
- The state of the benches. Read on 19 September 2026 off the platform, every
  bench carries an older version in `environment.md` than the one installed;
  the roadmap entry of that date carries the figures. Every bench is refreshed
  before a run on it.
- Which stack the interface bench gets; the person picks (milestone 4).
- How many skills and how many control documents there are at the end
  (milestones 7 and 9); both are counted in several places today.
- The commit of Pocock's repository the comparison was read at; never pinned
  (milestone 10).
