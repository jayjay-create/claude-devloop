# The plan

Written on 19 September 2026. This is the plan and not a measurement record:
what was measured stands in `docs/roadmap.md` and its archives,
`docs/roadmap-archive-<n>.md`, under `## Known gaps`, with a
date on every run, the defects stand in `docs/defects.md`, each as one block
under its milestone or under `## Without a milestone` — and until 5 November
2026, until the order of that day sorted it, under `## Not yet sorted` —,
the facts of the stock-take stand in `docs/stock-take.tsv`,
what holds as a rule stands in `docs/skill-conventions.md`, and the reasons and
cases of the rules in the texts devloop loads, with the wordings approved for
what a user sees, stand in `docs/rationale.md`. This file says where the set is
going, in which order, and what "done" means at each step.
It changes as milestones land: a landed milestone keeps its text and gets a
line saying when it landed and in which pull request; where its text quotes
wording the work has since replaced, the quote says so where it stands; and
the run that closed it gets its dated entry in the roadmap. Milestone 1 is
the one exception: what it built was not the shape its text planned, so its
section was rewritten on 23 September 2026 to describe what stands. A
reference below names a file and a section, never a line: the line numbers
this file carried at `929dabe` had drifted by the next pull request, and the
section names had not. A line of an archive of the roadmap,
`docs/roadmap-archive-<n>.md`, is the one exception: an archive never changes,
so its line numbers do not drift.

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
  manifest is the project's: it lands inside the repository, and whether a
  run may enter a check tool there itself is a second permission since 5
  October 2026, asked by the check setup and recorded beside the first.
  Anything that
  lands outside the repository lands there under the person's explicit
  permission only, asked at setup under milestone 3 and recorded — since 20
  October 2026 at a refresh of the setup as well, where no record stands on
  the main branch — and asked a
  second time only where the unattended mode is set up and the record does
  not say yes; what
  the project declares was reported at setup before that question, in step 2
  of `setup-project`, until 17 October 2026, and since that day step 2 says
  nothing of what step 1 found and what a question of step 4 turns on stands
  in that question's fields, the roadmap entry of 18 October 2026 on the
  audit; it does not stand in for the question. A compiler or interpreter is the person's under
  every answer: ruled on 28 September 2026, "Runtimes are not a kind the
  permission may cover" in `docs/skill-conventions.md`, which closed the item
  under "Open" that this sentence used to point at.
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
5. A rule that does not hold in a run is not repaired by its text as it stands:
   a hook or a program takes the duty over where one can, the rule is
   rewritten, not appended to, only where its old text shows the cause, and
   every place deciding the same thing is named in the same change.

The fifth is `docs/skill-conventions.md` twice over: "A rule holds only on the
path it is written on", and the third rule under "A field is not an answer to a
question it was not asked". It reads so since 24 November 2026, decided by the
person on that day, (1) of the roadmap entry of that date,
"A text a run did not hold is no repair, two blocks closed, three added",
under milestone 12 below with the reason and what was not chosen; until then it
read "A rule that does not hold in a run is rewritten, not appended to, and
every place deciding the same thing is named in the same change." The first is
the form the same file gives under "A finding that would have passed
unsupervised gets written down": where it can happen again and cannot be
prevented, that is the answer and it gets written down as one.

Decided on 2 November 2026 by the person, the roadmap entry of that date on
the blocks held against the branch point: a milestone counts as reached only
when no block in its section of `docs/defects.md` is open or carries "not
stated", and no open block stands outside the section of a milestone not yet
reached. Open means neither walked nor closed nor marked with the form
"Built, never walked, cannot be forced: decided in FILE at TEXT", which names
a defect whose case cannot be brought about, as this file says under "Five
sentences" of the first sentence and under milestone 3 of the defects that
depend on what the model does. The tool checks this when a branch adds the
line "Done on …" to a milestone here; that form and that check are built by
the order that sorts the defects into the milestones, not before. And the
blocks are not checked against the code all at once, as decision (7) of the
roadmap entry on the defects file foresaw, but each by the order that works
on its milestone, before it builds: the order checks the blocks of its
section against the code first, since that check stands before the build in
any case, and done for every defect now it would be done twice and be stale
by the build. A reference here names a file and a section, never a line
but one of an archive, as the opening of this file says.
Decided on 5 November 2026 by the person, the roadmap entry of that date on
the sorting into the milestones, which built the form and the check: every
block under the section of a reached milestone carries no "not stated",
its Wrong and Should filled from the entry its Found names with that entry's
words, where the entry carries them, since to every defect belongs its
should, done or not, and the rule above asks it of a reached milestone,
decision (4); the form is given block by block by the order of a milestone,
where no run of that milestone can meet the case, and the blocks for which a
recorded decision of the person says so already carry it since that day,
since that a case depends on what the model does does not mean it cannot be
brought about, decision (10); and the 30 contradictions of the loaded texts
stay open under "Without a milestone", so that the Done line of milestone
12 would be red until an order directly after that one mends all 30,
decision (5). Decided on 5 November 2026 by the person, the roadmap entry of
that date on the contradictions mended: to decision (4), where the entry a
block's Found names carries no should, the Should comes from the text that
says what holds — the conventions, a program's head, an archived entry, the
block's own note —, and where no text names one, the Should says what the
repair would have been and the status stays; to decision (5), where a block
of the 30 is mended, it stands afterwards where its state puts it: closed as
corrected in the document under "Without a milestone" where the sentence
itself was the error and a run does the same before and after, where it
stands where it is walked, and in the section of the milestone whose run
meets its case where it is built and never walked, the entry naming each
with its milestone and its group; a block whose case no milestone's run can
meet stays under "Without a milestone" for the person to decide on the form.

## The milestones, in this order

Each carries its kind, what it covers, what ends it, why it stands where it
stands, and the conventions it meets. "Conventions" names sections or bold
heads of `docs/skill-conventions.md` unless another file is named. The list per
milestone comes from one reading of that file on 19 September 2026, and it is
what milestone 2 hands each later milestone to re-evaluate under the sentence
it writes. Twelve milestones until 5 November 2026, when 13, 14 and 15 came
in by decision (2) of the roadmap entry of that date on the sorting into the
milestones, in the order 1, 2, 3, 12, 13, 14, 4, 5, 6, 7, 8, 9, 10, 11, 15
by its decision (3); until that day the heading above carried the count.

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
never walked, where it lies under `skills/`, `shared/`, `output-styles/`,
`hooks/`, `bin/`, `scripts/` or `.github/` or under one of the two check headings of
`docs/skill-conventions.md` and no run counts; walked, where a run counts. A
run counts when the version it ran already contains the last change to every
line the thing stands on, read off `git blame`; a run recorded in the roadmap
with no version does not count, and the runs that do not count are printed
with their reason.
Since 20 October 2026 the tool computes a fifth state, closed: the thing is a
defect, and its evidence stands on a line of the roadmap that records its
closing as lapsed, corrected in the document or left on purpose, with the
proof that reason asks for, which the tool confirms on every run and rejects
as a broken record where it fails; closed defects are counted apart and stand
in no list of open things — the roadmap entry of that date on the person's
answers, and section D of the tool's header.
Since 2 November 2026 the defects stand in `docs/defects.md`, each as one
block the tool reads, under the milestone that takes it or under "Without a
milestone", and under "Not yet sorted" until an order sorts it, which the
order of 5 November 2026 did for every block: the state of
a defect is computed off the block's `Fix` and
compared with what the block says, a run on a defect names the block's title
and is held against the `Fix` line alone, a closing stands in the block's
`Status` with its proof, and the table holds the things, the runs and the
lines judged not to be a thing, no defect and no finding among its rows; the
roadmap entry of that date on the defects file. Where this section speaks of
defects as rows of the table, of findings in the table and of the lines of
"Known gaps" in the search set, it quotes how the milestone stood when it
landed.

The things: the skills down to their branches, `shared/`, since 15
October 2026 `output-styles/`, `hooks/`,
`bin/`, `scripts/` and the workflow under `.github/` down to their outcomes,
the tool itself included; the
commands under "Before a handover, run these" and the one under
"Before you change anything, run this", both outcomes of each — under the
first heading, since 23 November 2026, the run of the workflow's steps alone,
the other checks there being outcomes of `scripts/devloop-handover-checks`;
until that day twenty checks stood there as commands, seventeen until 28
September 2026, eighteen until 5 October 2026 and nineteen until 31 October
2026; the twenty
names under "Named, not built as skills", eleven as things of their own and
nine as a note on the thing that does their work, the two side paths under
"What is missing" in `README.md` among the eleven, since two names left the
table on 25 September 2026; every defect an entry under "Known gaps" names,
the three defects and seven mechanisms of the comparison with Matt Pocock's
set among them, the grilling mechanism standing as part of the defect an
earlier entry measured first, and the two remaining points of "The order of
work, and why" being two of those three defects; and every finding the
reading made, which the close moved into the roadmap entry of 23 September
2026 as defects of this set. Where the roadmap names the triggering situation,
the bench and the cost for a thing, the table carries them; where it does not,
that is the building milestone's work, not this one's.

The search set is what makes the table checkable for completeness: every line
under `skills/`, `shared/`, `output-styles/`, `hooks/`, `bin/` and `scripts/`
that carries a
condition word, a heading, a numbered item, a list head or a table row; in a
shell file under `hooks/`, `bin/` and `scripts/` every line that calls, at the
place of a command, a function of the file that ends the program; under
`.github/workflows/` every line that decides what a workflow runs and when;
every command block under the two check headings; every entry head and status
line under "Known gaps", until 2 November 2026; every row under "Named, not
built as skills". A
comment line of a hook, a program or a workflow and a docstring line of a
python program stand in no search set. A line of it that no record covers is
reported, so a line nobody read is seen rather than missed, and a line that
can carry no anchor is listed rather than dropped; a status word under "Known
gaps" broken over a line break is listed under a heading of its own and turns
the tool red, until 2 November 2026, since when the tool reads no line of
"Known gaps". The calls, the comment lines and the broken status word since 12
October 2026, the roadmap entry of that day on the four changes to the tool;
the rules stand in the tool's header, section E.

Ended when the tool reported no broken record, no unit without a straight
path, no uncovered line of the search set and no finding left in the table,
so that a third person can check any line without having been there: the
tool proves that every anchor stands where its record says, and every state
is recomputed from the files as they are. A finding recorded since the close
stood in the table as a finding until an order moved it, and the tool listed
it on every run, until 2 November 2026; since then a finding is a block of
`docs/defects.md` like every other defect.

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

Done on 31 October 2026, pull request #216, by decision (5) of the roadmap
entry of that date on the audit after milestone 3.

Five parts. **The question**, at setup, with the person present: what kinds of
thing may land on the machine — tools for check classes, a driver for an
interface, and whether a runtime is one of them — where they may land, which
is the list of places the install guard already carries as `BINDIR`, what each
kind costs, and where a no leads: installs stay the person's, as today. What
can be named at setup is kinds and places, not tools: `setup-project` recorded
under "Permissions, before the first command" that the check commands are not
known until the check suite exists — a passage that went on 16 October 2026
with the two notes on permissions, point 8 of part B of the roadmap entry of
12 October 2026, so that this sentence quotes a wording the work has since
replaced and stands as written on 19 September 2026. **The record**: in `environment.md`, beside
the unattended-mode answer that `setup-checks` step 8 writes there; written
only with the person present, since setup never runs unattended — by
`setup-project`, and since 5 October 2026 by `setup-checks` step 8 as well,
where the question is put a second time and which runs only with the person
there, on the way through `--auto` too. **The guard**:
`hooks/pre-tool-use-install-guard.sh` reads the record and passes a command
landing in an allowed place; outside it, it blocks as today. **The skills**:
`build-work` step 3 point 7, `setup-checks` step 3, `setup-project` step 4
question 3 — the question that left for `setup-checks` on 1 October 2026 — and
the guard's own message all say today that the person runs the install; under a
yes the run runs it, backed as today, and reads the result off the path the
installer writes to. **Unattended**: the run installs, reports
the command and what came back at a site that outlives the session, and where
the record says no, the run does not start: until 5 October 2026 this read
"the decline path stays what it is", and since that day a yes on record is
one of the conditions the unattended mode starts on, the sixth in
`build-work`, so that the decline path is walked with the person there only.
Since 21 October 2026 the fact itself is written at the site that outlives
the session by a mechanism and not by the run:
`hooks/post-tool-use-install-fact.sh` puts the command and the folder into
`environment.md` under `Installed outside the project` the moment an install
the record let through went in, cluster 18 of the roadmap entry of 21
October 2026 on milestone 3, part 4; the report in the pull request stays
the run's.

Two things said openly. The record opens a guard and is written by a skill,
which is the shape "A limit the limited party maintains is not a limit" warns
about; what holds it is that it is written only with the person there and read
by a hook, and that the guard was a tripwire and not a wall before this. And the
browser download an interface driver needs passed the guard until 8 October
2026 — measured on
19 September 2026, both commands pass it, and the roadmap entry of that date
carries the commands and what came back — the wrapper case the guard was never
meant to see; the record covers it expressly, or it goes on landing in silence.
Since 8 October 2026, version 0.131.0, the guard reads the download —
`playwright install` in every form the vendor documents, `cypress install`,
`puppeteer browsers install` — and holds it against the vendor's default place
for the system it runs on, which the record names among eleven places since
that day; the roadmap entry of that date carries the vendors' pages and the
measurement. Since 12 October 2026, version 0.137.0, the guard reads every
command of a call for itself, through `bin/devloop-command-reader`, which
takes the command apart as the shell runs it, and a browser download moved
by a variable before the command is held against the place the variable
names, inside the project opening nothing; the roadmap entry of that date on
the command reader carries the measurement.

Ends with two runs on one fresh project, in this order, the second reusing
the first's project because it builds on the no the first put on record,
which the rule under "Open" allows since 6 October 2026. Both run on the
person's Mac in the terminal, where this milestone closes as planned,
decision 3 of the roadmap entry of 9 October 2026; every other system and
every other surface is milestone 12, directly after this one. First the install
record says no and the person is there: a build needs a tool, and the run
hands the command over without trying it, as `build-work` step 3 point 7
says, so that no run following the skill meets the guard there; the guard's
block under a record saying no stands walked with the person there in
`devloop-test-v` on 4 October 2026, the roadmap entry of that date on the
two runs of milestone 3. Until 11 October 2026 this read "a build needs a
tool, the guard blocks, and the command is handed over", corrected by the
roadmap entry of that date on the second closing run, defect 10 of the entry
on the first. Then `--auto`, the question put a
second time and a yes, and the build with nobody there installs a tool
itself: the guard passes, and the tool stands at the path. The two runs need
two different tools, each one a task needs and not a check tool — a code
generator such as `sqlc`, whose Homebrew formula lists no dependency, read
off `formulae.brew.sh/api/formula/sqlc.json` on 6 October 2026 — two
because a command handed over in the first run and run by the person has
installed its tool already, and a task's tool because a check class that was
off for the first no is filled in `setup-checks` step 8 with the person
there, before the run goes alone. Until 6 October 2026 this read "Ends with
two runs on one bench: the record saying yes, a build installing a tool
unattended, the guard passing, the tool standing at the path; the record
saying no, the guard blocking, the decline path as today."
Decided on 10 October 2026, the roadmap entry of that day on the arrangement
of the closing runs: the fresh project is a TypeScript project, a function
and a test committed and pushed before the setup, not the Go program that
decision 12 of the roadmap entry of 9 October 2026 named, the person's
reason being that Go had been the usual choice for the test projects so far
and is in practice presumably not the most common language — the Stack
Overflow Developer Survey 2026 lists ten languages under "Most popular
technologies" and Go is not among them, and GitHub's Octoverse 2025 has
TypeScript as the most used language on GitHub since August 2025; the first
run's tool is `dasel`, the second run's `re2c` with its program `re2js`, and
`htmlq` stands in where one of the two falls out, none of the three on npm as
a package whose command runs, each coming through Homebrew; and each task
calls for its tool expressly, as an npm script that runs `dasel` and as a
generation with `re2js`, since otherwise the build takes an npm package and
the guard on installs is never met. Until 12 October 2026 this went on "Where
doubts remain after the two runs, a run with Go follows, as decision 12 first
had it."; since that day no run with Go follows, the roadmap entry of that
date on the decisions.
The two closing runs were made on 11 October 2026 in `devloop-test-w`, the
first under the record saying no with the person there and the second under
`--auto` and a yes, the roadmap entries of that date on the first closing
run and on the second closing run.
Decided on 12 October 2026, the roadmap entry of that date on the decisions:
the milestone has not landed with the two closing runs; it lands when the
defects in its own parts, eight named there, are built and a run walks them,
arranged by the person before the run as decision 12 of the roadmap entry of
9 October 2026 arranged the two closing runs.
Decided on 16 October 2026, the roadmap entry of that date on the two runs of
that day in `devloop-test-x` and `devloop-test-y`: the milestone has not
landed; defects 1, 3, b, c and i held in a run, a did not hold at four places,
and d and 11 held on a bench and met no run.
Decided on 18 October 2026, the roadmap entry of that date on milestone 3:
d and 11 count as walked by the bench of 16 October 2026, for the person's
reasons: both are repaired in hooks, where no model decides between a
command and the hook, so that
the same command gets the same answer in a run as on the bench, which put
exactly the commands of a run through every hook under the four install
records; a run would show only whether the model writes such a command, and
a run arranged to meet them would test the arrangement and not devloop.
Defect 12 of the entry of 16 October 2026 stays built and never walked until
a run meets it, and does not hold the milestone up: it depends on what the
model does and cannot be forced. Where what a defect turns on is what the
model does, the milestone asks a run as before; of what that entry named as
standing between the milestone and its landing, that leaves defect a.
Decided on 19 October 2026, the roadmap entry of that date on the two runs of
that day in `devloop-test-z` and `devloop-test-y`: the milestone is reached
only when no defect is left that concerns it — a defect in one of the five
parts above, the defects those runs found anew and the older ones recorded
and not built among them — in place of the decision of 12 October 2026
above, by which it landed when the eight defects named there were built and
a run walked them; a defect this plan assigns to another milestone counts
there. By that criterion the milestone is not reached on 19 October 2026: the
list of the defects that concern it stands in that entry, in three groups.
Decided on 19 October 2026, the roadmap entry of that date on the list of the
defects that concern milestone 3 checked point by point: of the run without
the person this milestone covers installing alone, as the fifth part above
words it — the run installs, reports the command and what came back at a site
that outlives the session, and where the record says no it does not start; a
defect of the run without the person that does not concern installing — what
the run says at its end, what it writes, how it arms a merge — concerns this
milestone in none of its parts and stays recorded, and which milestone takes
it up the person decides after milestone 3; that entry replaces the list of 19
October 2026 above for everything further, and its clusters are the list this
milestone stands on.
Decided on 20 October 2026, the roadmap entry of that date on the person's
answers to the five questions of the entry of 19 October 2026: the person's
reasons of 18 October 2026 above hold for the fifteen points of cluster 12 of
that entry, repaired in the install guard and the command reader and put
through the benches of 12 and 16 October 2026, which count as walked by them;
for the benches owed after the builds of its clusters 8, 10, 13, 14, 15, 18
and 22, hooks and programs, for which a bench suffices; and for the seven
built points of its cluster 20 that cannot be forced, lines 1307, 18977,
29213, 5232, 12527, 11463 and 27167 of `docs/roadmap-archive-1.md`, which do not hold the
milestone up; and the clusters of the entry of 19 October 2026 with the
changes the entry of 20 October 2026 records — three uncertain points kept, 33
taken out, 22 defects closed, clusters 10, 23 and 25 emptied — are the list
this milestone stands on.
Decided on 20 October 2026, the roadmap entry of that date on milestone 3,
part 1: the examination of the sandbox of Claude Code for the install guard,
recorded and not built in the entry of 9 October 2026 on the open findings on
the guard, cluster 16 of the checked list, does not belong to this milestone,
which ends on one machine so that it has one variable, and leaves the list
this milestone stands on; which milestone takes it up the person decides
after milestone 3.
Decided on 22 and 23 October 2026, the roadmap entry of 23 October 2026 on the
arrangement of the six closing runs: six runs on the person's Mac in the
terminal, runs 1 to 3b in one new project and run 4 in a second, arranged
before the run as the closing runs of October were, and every command devloop
hands over the person runs. Run 1 with the person and a no to installing:
`gitleaks` uninstalled first, a public repository with a README and no code, a
small TypeScript command line whose two tasks call for `htmlq` and for
Playwright in WebKit expressly, the credentials check switched off where its
tool is missing, the mode declined. Run 2a through the planning under `--auto`:
the second asking answered yes, the check tools in the packages too, the
question on the rule for auto mode put there as well and answered yes, since
the earlier wording of the rule stands on the person's Mac and counts as none
since 23 October 2026, the
documentation getting diagrams through `mmdc` installed globally from npm, then
everything without the person. Run 2b the direct route under `--auto`, with a
small idea that needs no tool. Run 3a the question for the rule after a counted
refusal of `brew install yq`, fed to the install guard by hand, with an issue
carrying the command and the rule removed, answered no at one start and yes at
the next. Run 3b the refresh putting the install question anew after the
section was removed and the marker set back. Run 4 a first setup with a yes,
decided on 23 October 2026 for line 7923 of `docs/roadmap-archive-1.md`: `gitleaks` uninstalled
first, a public repository with a README, a TypeScript function and a test, the
install question and the question on check tools in the packages answered yes,
a missing check tool installed by the run after the setup has landed, the mode
declined, nothing planned and nothing built. The entry carries the stock of the
machine, the open risk that the rule does not name `npm install -g`, which the
rule's wording of 23 October 2026 ends, the roadmap entry of that date on the
catch-up after the audit, and every
open defect of the list with what it still needs and the run where it needs one.
The six closing runs were made on 23 October 2026 in `devloop-test-aa` and
`devloop-test-ab` and read off their session logs on 24 October 2026, the
roadmap entry of that date on the six closing runs: of the thirteen points
that waited for a run, eight held where a run met them, three held in part
and two did not hold, the report of an install and the reading of the start
conditions at the start of the build; the runs found ten new defects that
concern the milestone, the tenth found by the addendum of the same day to
that entry; whether it is reached that entry does not decide, the
two benches of the arrangement coming after the runs.
On 24 October 2026 the person decided on every point the runs left open,
the roadmap entry of that date on how an install is recorded, which
carries the decisions and the wordings approved with them, and the same
day sorted the open points by whether a user notices them, decision (9)
of that entry: what holds the milestone open since then are points 8 and
10 and defects 2, 5, 7, 9 and 34 of the entry on the six runs; points 5
and 9 with defect 3, defects 1, 4 and 8, the defect of the install line
written on the exit of the whole call that the new entry records, the
defect of context f its build found and the two points for a bench are
small matters that no longer hold it open, built all the same where they
are built or cost a few lines of text, without a run or a bench for the
milestone; the other defect its build found, an install behind `&` or
`!`, has no milestone, decision (8); and a defect the rest of part A
found, a redirection on a group that the context does not name, has none
either since part B, by decisions (8) and (9), the roadmap entry of 24
October 2026 on the install rules reaching the build subagent, which
records a defect of its own: the account the skills give of a call that
reaches its limit, which Claude Code moves to the background and does not
end. It is sorted since the roadmap entry of 24 October 2026 on the
questions: for an install a small matter by decision (9), and for the
check chain, which can run on beside the next task's with nobody there,
no matter of installing and so not of milestone 3, by the decision of 19
October 2026, the milestone that takes it up decided by the person after
milestone 3. They are built in four parts, each a branch of its own that
raises the version once and is merged before the next is cut — how an
install is recorded, the install rules in the text, the questions, the
start conditions, and all four are built, the first in that entry, the
second in the entry on part B, the third in the entry on the questions and
the fourth in the roadmap entry of 25 October 2026 on the start conditions
read by one program. Next comes the one pass with runs and benches on what
holds the milestone open, points 8 and 10 and defects 2, 5, 7, 9 and 34 —
for point 10 the call of the program in a run and the guard on the mark on
a bench — before it is decided whether the milestone is reached.
The benches of that pass were made on 25 October 2026, the roadmap entry of
that date on the guard on the mark and the fact hook benched: the guard on
the mark, decision (5), and the fact hook with the install guard, decision
(2), went as decided in every case, and the start conditions read in
`devloop-test-aa` lack nothing for the runs. Decided on 25 October 2026,
in that entry, the three runs of the pass, all on the person's Mac in the
terminal in `devloop-test-aa`: run 1 with the person under a no, after the
install record is removed, the refresh putting the install question with
its reason, a task needing `yq` handed over and declined into an issue,
defects 34, 9 and 5; run 2 through the planning with `--auto` under a yes,
`htmlq` and `mmdc` uninstalled first and installed by the build subagent,
defects 2 and 7, point 8 and point 10 on that route; run 3 the direct
route, an issue outside the plan blocking its second task, so that the
build's call with the range finds condition 3 not holding and refuses,
point 10 on that route. Then the three runs are read off their logs, and
it is decided whether the milestone is reached; what holds it open until
then stays as named above.
The three runs of the pass were made on 26 and 27 October 2026 in
`devloop-test-aa` and read off their session logs on 27 October 2026, the
roadmap entry of that date on the three closing runs: defect 34 held where
run 1 met it; defects 2 and 7 held in their should where run 2 met them,
the real tool and the backing under a yes, while the fifth rule of step 3 of
`build-work`, named as built with them, did not hold in run 1 and was not met
in run 2, which built without a subagent; defect 9 held in its should,
nobody settled to install, and not in its paragraph on a missing tool;
defect 5 held in part; point 8 held in both installs of run 2; point 10 held
on the direct route and in part on the route through the planning, where
condition 4 was not read again at the start of the build; the runs found
eleven new defects, seven of which concern the milestone, four of them small
matters by the measure of decision (9) if the person so decides, one on the
Stop hook while the subagent builds without a milestone yet, and met twelve
defects of the entry on the six runs again; whether the milestone is reached
that entry does not decide, the person does.
On 27 October 2026 the person decided on the three runs, the roadmap entry
of that date on the tool state read by one program: the milestone is not
reached; what holds it open since then are new defects 4, 6 and 7 of the
entry on the three closing runs and the rest of defect 5 of the entry on
the six runs, rebuilt in three parts before a run with the person under a
no — part 0, the three defects on visible text, built the same day; part
1, the program `bin/devloop-tool-state`, the planning saying of a tool
only what it read and the clause that the line on the mode not set up
reaches the person, built in that entry; part 2, `build-work` with a hook
on `SubagentStart` that hands every subagent the install record and the
rule, the handover before anything is built against a stand-in, the
closing of a blocking issue at the next start once the tool stands, and
condition 4 read in one call with the start conditions; the small matters
3, 9 and 10 wait, and the milestones of new defects 8 and 11 the person
decides after milestone 3.
On 28 October 2026 part 2 was built, the roadmap entry of that date on the
hook on `SubagentStart`: every subagent gets the install record and a rule
on installing as context at its start, after a bench on this Mac showed
that the context reaches it; the build reads the tools a task needs before
the subagent starts and under a no hands over first, with both ways in one
message and the issue on the no alone; a task is not offered for landing
while its tool is missing and not declined; at every start devloop reads
whether the tool of a blocking issue stands on this machine and closes the
issue itself where it does; and condition 4 is read in the one call with the
start conditions. Next comes the run with the person under a no.
On 28 October 2026 the handovers the run with the person under a no meets
were built to two rules of that day, the roadmap entry of that date on the
handover steps: a text that hands a command over says where the person
types it, in Claude Code with `!` in front where it asks nothing, the
command's output in the conversation then being the signal, and in a second
terminal window where it asks something, their word being the signal; and
what another program itself guides is not described after it. The handover
under a no, the refused sign-in, the sign-in at the setup, the identity of
a commit, the merge, a check class's tool and the issue after a refusal of
auto mode say so in the person's wordings of that day, the README its
steps, and the folder a command installs into is read beside the search
path at the next start and after a class's tool; the run with the person
under a no is still to come.
On 29 October 2026 the run with the person under a no was made in the test
project and read off its log, the roadmap entry of that date on the run under
a no: the handover came before any build, the issue was written on the no
alone with its two lines, and the person's `! brew install yq` after the no
was taken up in the same session, the run closing the issue inside step 3
with a comment naming a start that did not happen, so that the closing at
the next start was never walked; three new defects, the reader on `$'\xHH'`
and a lens writing into the project among them, seven defects and one open
point met again, three of the defects not held; whether the milestone is
reached that entry does not decide, the person does.
On 30 October 2026 part 3 of the rebuild was built, the roadmap entry of
that date on the install: the person chose the second reading of the first
new defect of 29 October 2026, so that the command typed with `!` after a no
in the same session, or their word under form B, has the run read both lines,
close the issue itself with a comment naming the install typed in the
session, and build the task; point 7 of step 3 of the build stands in a
shared text the build subagent reads through the command the SubagentStart
hook's rule names, the prompt carrying the tool-state lines alone; the
planning runs the tool-state program before a round where the code read
names a tool, names today's answer nowhere and says the one line on the
mode in the next message after the read, without a reason; and the reader
decodes every escape of `$'…'` as the bash manual lists them. Milestone 3 is
not reached: a short run of the closing at the next start and of the way
over `!` after a no follows, and then the person decides. The five points
of that entry that do not belong to the install go to the list for the
milestones after milestone 3, whose order the person sets.
On 30 October 2026 the short run was read off its two session logs and the
logs of their subagents, the roadmap entry of that date on the short run:
the `!` after a no was taken up in the session as decided, the issue closed
by the program with its comment and the task built; the closing at the
next start came from the program with its comment, after the run had tried
to close the issue by hand in start-work and Claude Code's classifier had
refused it; the merge was handed over twice for an armed pull request
GitHub merged within ten seconds; the prompt to the build subagent carried
the run's own words on installing; four new defects, recorded and not
built, two of them of milestone 3. Whether milestone 3 is reached that
entry does not decide; the person does.
On 30 October 2026 part 4 of the rebuild was built, the roadmap entry of
that date on the start reading the install issues: `start-work` runs the
program of the read at a start before its in-flight query, the first thing
of that start that reads an open issue, and closes no issue and reads no
tool itself; a bench of six sessions showed the rule of the SubagentStart
hook winning over a contradicting sentence in the prompt, the subagent
reading point 7 through the rule's command and installing as it says, the
one install that did not go through refused by Claude Code's classifier
and taken as the texts say; a bench of four sessions showed the program
running before the query and the issue closed by it alone, where a copy of
the day before read the issue and the tool itself first; the handover's
sentence on a later `!` is a small matter by decision (9) of 24 October
2026. Milestone 3 is not reached; the person decides.
On 31 October 2026 the person decided that the milestone is reached, decision
(5) of the roadmap entry of that date on the audit after milestone 3: what
held it open since 27 October 2026 — new defects 4, 6 and 7 of the entry on
the three closing runs and the rest of defect 5 of the entry on the six runs —
held in the short run of 30 October 2026 or is a small matter by decisions (3)
of 30 October 2026 and (4) of 31 October 2026, the run's own words on
installing in the prompt to the build subagent among the small matters; every
new defect on the way of the install since then is built and measured; the
way under a yes the bench of 30 October 2026 measures with the mechanism of
today, and a whole run under a yes in place of the bench was not chosen;
milestone 12 ends with one run per system, the cases of this milestone
included, and there they run again. The points the entries of 29 and 30
October 2026 name as not belonging to the install, with defects 8 and 11 of
the entry on the three closing runs and its small matters 3, 9 and 10, stand
as the list for the milestones after milestone 3 under "## Open" below, their
order the person's.
On 31 October 2026 the two setup skills came to read the gate's binding as
`build-work` and `bin/devloop-start-conditions` read it, one side binding
deciding, the defect of status line 44351 of `docs/roadmap-archive-1.md`, the roadmap entry of that date
on the audit built; the self-test of `scripts/devloop-run-workflow` runs on
GitHub since that day, in the job hooks on every system on three of its four
systems; and the pipx query of the install guard and of
`bin/devloop-tool-state` stays as it is, by decision (6) of 1 November 2026,
the defect a small matter by decision (9) of 24 October 2026: pipx bounds
its own log folder, eleven files after twelve calls and no more, measured
on 31 October 2026, when the decision was held back at more than ten; the
roadmap entry of 31 October 2026 on the follow-up after milestone 3.
Since 8 October 2026 both runs go through the drivers half as well. Under the
no, a task needs a browser for tests, and the run hands the download command
over without trying it, as under the no for a tool above; until 11 October
2026 this read "the guard blocks the download, and the command is handed
over". Under the yes, the run with nobody there downloads a
browser itself, and it stands at the vendor's place — a browser the first run
did not install, for the reason the paragraph gives for the tools: a command
handed over in the first run and run by the person has installed its browser
already. Since 10 October 2026 that task takes Playwright, Chromium in the
first run and Firefox in the second, so that the second run needs a browser
the first did not install; decision 12 had proposed Playwright and left it
open.

Three things stood before that run, each recorded on 5 or 6 October 2026,
and all three are built. Two on 9 October 2026, version 0.134.0, decisions 8
and 9 of the roadmap entry of 9 October 2026: the question of `setup-checks`
step 8, on the unattended mode, is described field by field like the other
questions of that skill, in the wording the person approved on 8 October
2026, text 6 of that entry, with five parts said before it and the
explanation of the mode that stood there until then gone; and step 8 reads,
before that question, whether GitHub offers the protection on this
repository, off `rules/branches/<main branch>`, and says so instead of
asking where it does not, text 3 of that entry — what the platform answers
there was measured first, on 8 October 2026, on a private repository of an
organization on the plan Free: HTTP 403, "Upgrade to GitHub Pro or make this
repository public". With them, the same day and version, decision 10: after
the yes, devloop asks whether it may enter the rule for the classifier of
auto mode into `~/.claude/settings.json`, text 4 of that entry, and
`bin/devloop-auto-mode-rule` enters it on the yes; since 23 October 2026 in a
wording that names the eleven routes whose place the install guard asks and
the three browser installers, the earlier wording counting as no rule, the
roadmap entry of that date on the catch-up after the audit. The third is built on 9
October 2026, version 0.133.0: start
condition 4 of the mode, which until then said that the kinds of command
the run needs are approved for the project, which no run could read in the
tree — the entry of 11 September 2026 in `docs/roadmap-archive-1.md` on planning
being fenced out of the unattended mode records that under "Precondition 4
cannot be read" — says now that Claude Code runs in auto mode, read off the
permission mode every hook receives, `permission_mode`, a field of every
hook's input in the Claude Agent SDK, `sdk.d.ts` of version 0.3.295, through
`bin/devloop-permission-mode` and the statement the hook on that call puts
beside its result; `dontAsk` and `bypassPermissions` do not count, allow
rules are not read, and where the mode cannot be read, the run says so.
A permission prompt that comes during the run anyway is answered no by a
hook while the mark stands, built the same day. Since 17 October 2026,
version 0.142.0, the question of `setup-checks` step 8 carries in its fields
the wording the person approved that day, text 6 as the roadmap entry of
that date has it, and nothing is said before it: the five parts that stood
before it went into those fields or were dropped, each with its reason in
that entry.

Built in part on 28 September 2026, version 0.114.0, and not landed as a
milestone: the tools half — the record's form, the guard reading it off the
default branch as fetched, the session-start line printing it through the same
reader, and, of the four skill places, the two that run the install under a
yes and report it in two places, `build-work` step 3 point 7 and `setup-checks`
step 3, while question 3 of `setup-project` hands the install over at a first
setup, no record having landed, and the guard's message says the install is
the user's to run — stands as `docs/skill-conventions.md` describes
under "The install guard reads a record". The question followed the same day,
version 0.115.0: question 4 of `setup-project` step 4, beside question 3, in
the wording approved that day, with the record written into `environment.md`
by step 6; no project carried a record until 30 September 2026, none having
been set up with it, and read through `gh` on 4 October 2026 off the default
branch of every bench of this account, four carry one now, `devloop-test-s`
saying yes and `devloop-test-t` saying no, both answered on 30 September 2026,
`devloop-test-u` saying yes on 3 October and `devloop-test-v` saying no on 4
October 2026, while the nine others carry none, and the guard blocks every
install naming that cause there and in any project set up before 0.115.0, or
set up empty before 0.118.0. Until 0.118.0 the question was not put in the
empty case, step 3 skipping the whole of step 4 where there is no code; since
29 September 2026, version 0.118.0, step 3 skips
the two questions that need code and not the step, so a project set up empty is
asked and carries a record naming no route, and a route its stack later reaches
for is held against the places until a route line is added with the person
there. Not built: the refresh in `setup-project`, which is where a project set
up before this version, or set up empty before 0.118.0, would be asked, and
which asks nothing anew today — since 5 October 2026 such a project is asked
where the unattended mode is set up, in `setup-checks` step 8, which writes
the whole record where none stands; and, until 8 October 2026, version
0.131.0, the drivers half, so that the place list carried no driver
destination and `npx playwright install` passed the guard as before — since
that day the guard reads the browser downloads, the record names their five
default places, and the refresh alone stays unbuilt. Since 20 October 2026,
version 0.152.0, the refresh puts the install question where no record
stands on the main branch, with the person there, as a first setup puts it,
and writes the record as step 6 does; a project whose record stands is asked
nothing, whatever it says; the roadmap entry of that date on milestone 3,
part 1, by the person's decision of that day.
Since 20 October 2026, version 0.153.0, the stored answer carries under a no
the answer and the date alone; the line at session start says under a no
`places: none` and `routes: none`, under an older answer that still carries
places and a route as well; the line reaches the run and not the person, and
`README.md` says that the answer travels with the repository; the roadmap
entry of that date on milestone 3, part 2.
Since 21 October 2026, version 0.154.0, the guard's block message joins each
cause behind "because" as one clause without a label of its own and says
that the command is handed over as it runs from wherever the person is; the
guard reads `--path` on `@puppeteer/browsers install` and the abbreviated
forms npm reads as a global install; the line at session start without a
record says handed to the person; and a second step of the merge gate holds
`README.md` to naming no file or document of devloop's own; the roadmap
entry of that date on milestone 3, part 3.
The two runs of the end as it read until 6 October 2026 ran on 30 September
2026, both attended, under 0.120.0
from the installed copy: the record saying yes in `devloop-test-s`, the record
saying no in `devloop-test-t`; the roadmap entry of that date carries both
with what they produced. What they walked: the question, put twice and
answered once each way; the record, written by step 6 and landed by step 8
under both answers and read back off the default branch; the decline at
setup, with a person there, ending in `skipped` with the reason. What they
did not walk, and so what the milestone could not claim on them: the guard against
a landed record under either answer — the yes run's installs ran before the
record landed, and the no run ran nothing after it landed; a build installing
under the record — the setup installed, in the window before the record; the
unattended half whole — the mode was never offered, since a setup that fills
every class itself never calls the skill that offers it; and the form of the
question, which held in neither run. The milestone has not landed. Two phrases above stand as written on 19 September 2026 and
were ruled on 28 September 2026: "tools for check classes" reads as a tool,
anything that runs and ends, under "The first kind is a tool, not a tool for a
check class"; and "whether a runtime is one of them" is answered no under
"Runtimes are not a kind the permission may cover". A third, "all say today that
the person runs the install", held until this build. A fourth, "which is the
list of places the install guard already carries as `BINDIR`", describes the
record and the session-start line and not the question: the question, as
built on 28 September 2026, named the kind of place a yes opens and said that
the record carries the list; since 30 September 2026, version 0.119.0, it
says only that such programs land outside the project on this machine, the
close of the setup names the record, and the routes of the stack are the run's
own reading where it writes the record; the six places stand in the record and
nowhere the person is asked. The same day the question was cut to the four
points that carry the decision and put in prose, the widget after it, since
the first run to put it, on 30 September 2026, put it through the harness's
choice widget and none of its thirteen points arrived whole; the roadmap entry
of that date says what came of the thirteen and what the form rule is worth.
Since 3 October 2026, version 0.126.0, the points stand in the widget's own
fields — the question line carrying the subject, its scope and the leak, the
yes and the no each a label and a line — and the boundary on runtimes and the
unattended half of the no stand outside the question as rules on the run; the
roadmap entry of that date carries the approved wording and the form rule as
rewritten.
The question stands in `setup-project` step 4 as a question of its own —
question 4 beside the mapping until 1 October 2026, question 3 since — and the
record in `environment.md` in step 6, counting once step 8
has landed it on the default branch. Widened on 29 September 2026, version
0.116.0 in the tree, 0.116.1 on main: the guard resolves eleven routes rather
than three — `brew`, `go`,
`npm` as before, and `pnpm`, `yarn`, `bun`, `cargo`, `gem`, `pipx`, `uv tool`
and `pip` through an interpreter the command names — each asked on the machine
with the command its vendor documents, `cargo` read in the vendor's order since
it cannot be asked on the stable channel; the record carries `install-route:`
lines beside the places, a route named there opening what it answers on the
machine the run is on; a pip inside the project passes without a record;
`make install` takes a destination written on its line; the roadmap entry of
that date carries the readings and the measurement. Blocked under every
answer still: the system package managers, the version managers, a bare
`pip`, and every route that does not answer. The refresh stayed unbuilt until
20 October 2026, and the drivers half until 8 October 2026, version 0.131.0; both halves of both runs on a bench, the setup and the guard
against the landed record, were walked on 3 and 4 October 2026 under 0.126.0
with the person there, the yes in `devloop-test-u` and the no in
`devloop-test-v`, and the yes half with nobody there was not, for the reasons
the roadmap entry of 4 October 2026 names. On 1 October 2026, version 0.122.0,
the mapping of tools to classes and the question about missing tools left
`setup-project` for `setup-checks`, which every project with code reaches from
the setup's close: `setup-project` fills no class and installs nothing, so the
four skill places above are three, the install question is question 3 of its
step 4, and the first install a project meets comes after step 8 has landed
the record and fetched it — which closes, by construction, the window the yes
run of 30 September 2026 installed in; the roadmap entry of that date says
what else it answers.

Why here: blocked by the three conventions milestone 2 rewrites; milestones 4,
7 and 8 need a driver and a linter that land outside the repository.

Conventions: "A hook cannot see consent" (gains the case of consent recorded
where the hook reads); "Tool classes can be pre-approved per project" (gains
the install class); "A file only its writer reads is not a safeguard" and "A
limit the limited party maintains"; "The install guard matches the outcome as
well as the verb, and is still a tripwire"; "A command handed over is backed,
and its result is read"; "A duty to say something needs a place where it is
said"; "Every offer says where a no leads"; "Never assert state — query it".

### 12. Every operating system, every surface (build)

Directly after milestone 3, and numbered twelve because the numbers 4 to 11
stay as they are: `grep -o -i -E 'milestones? [0-9]+'` finds a numbered
milestone 103 times in `docs/roadmap.md` and 104 times in
`docs/stock-take.tsv` on 9 October 2026, and none of those is moved for it.
Decision 3 of the roadmap entry of 9 October 2026, where the evidence stands.
Milestones 13, 14 and 15 took the next numbers the same way on 5 November
2026.

Milestone 3 closes on the person's Mac in the terminal. This milestone brings
the hooks, the programs and the guards into a form that runs on each system
and each surface of Claude Code that counts, decided on 9 November 2026 by
the three sentences below, and it does not reach cloud sessions, the third of
them: every command guard stands on the tool `Bash` alone in
`hooks/hooks.json`, and the hooks reference says that a command hook's
`shell` field "defaults to "bash", or to "powershell" on Windows when Git
Bash isn't installed", that a shell hook runs under `sh -c` on macOS and
Linux and under Git Bash on Windows, or under PowerShell where Git Bash is
not installed, and, under the PowerShell input of PreToolUse, that "a hook
that matches only `Bash` never fires there" — a sentence that holds for
every Windows on which the PowerShell tool is on, which it is with Git Bash
for claude.ai and Console accounts, the tools reference under "PowerShell
tool", read in the roadmap entry of 9 November 2026 on the blocks on systems
and surfaces; until that day this paragraph read it for Windows without Git
Bash alone — so a guard for PowerShell is part of it. The pages the three
decisions rest on: the skills page, "How injected commands run" and "When an
injected command fails"; the tools reference, "PowerShell tool"; the VS Code
page, "VS Code extension vs. Claude Code CLI"; the JetBrains page,
"Installation"; the desktop page, "Install plugins"; the projects page,
"What threads pick up from your repositories" and "Get skills, plugins,
connectors, and tools into threads"; the plugins page and the hooks
reference on what a cloud session loads and reads. And it brings the
commands that keep a machine awake under Linux and under Windows, which
`setup-checks` step 8 names today for macOS alone, `caffeinate`, and for no
other system — text 6 of the roadmap entry of 9 October 2026, part 5: until
this milestone the sentence for every system stands alone there.

Decided on 9 November 2026 by the person, the roadmap entry of that date on
the install blocks held to the code: the systems that count are macOS, Linux,
Alpine and Windows with Git Bash; Windows without Git Bash does not count.
Every skill carries `shell: bash` in its frontmatter, so that without bash it
does not load, with the vendor's message that names bash as what is missing,
instead of failing in PowerShell, and `README.md` says that under Windows
devloop needs Git for Windows. The guard for the PowerShell tool stays part
of this milestone, since on Windows with Git Bash the tool is on by default
for claude.ai and Console accounts, the tools reference as the entry of 9
November 2026 on the blocks on systems and surfaces read it. Reason: on the
other way every guard would exist twice, for bash and for PowerShell, and
where one version came to differ from the other the protection would be
missing on one system without anybody noticing; a plain message that bash is
missing is better than a devloop that runs without its guards. Not chosen:
Windows without Git Bash as a fifth system. The person's decision of 14
October 2026, "devloop runs on every system", `docs/roadmap-archive-1.md`
lines 22922 to 22923, meant macOS, Linux and Windows under Git Bash, lines
22999 to 23003.
Decided on 9 November 2026 by the person, the same entry: the surfaces that
count are the CLI — in the terminal, in JetBrains, in the extension for VS
Code with "Use Terminal" and with `claude` in its built-in terminal —, the
graphical panel of the extension for VS Code and the local sessions of the
desktop app. In the panel and in the desktop app devloop hands every command
over in form B, as `shared/install-tool.md` describes it under the way of
the yes. How devloop reads which surface it runs on is measured first in
this milestone; where no way is found, the question goes to the person
before anything builds on it. The closing runs gain a run in the panel and
one in the desktop app on the person's Mac. Reason: the plugin loads in the
panel and in the desktop app already, since the terminal, the desktop app
and the extension read the same settings files, the plugins page as that
entry read it; the only known gap is one form of the handover, and devloop
has the other; whoever shuts devloop out there shuts out whoever uses VS
Code as it opens. Not chosen: the CLI alone.
Measured on 9 November 2026 by the order on the surface reading, the roadmap
entry of that date: the way is the environment variable
`CLAUDE_CODE_ENTRYPOINT`, `claude-vscode` in the graphical panel of the
extension for VS Code, `claude-desktop` in a local session of the desktop
app and `cli` in the terminal, in the terminal of VS Code and in the
extension with "Use Terminal", on every way a text of devloop reaches the
model, a hook, an insert line, a command run with `Bash`; the variable is
the vendor's, undocumented, and compared in the program of Claude Code
2.1.319 and 2.1.321; since 21 November 2026 `bin/devloop-surface` reads it,
the second part of (4), below, where until that day this sentence said that
nothing was built on it yet; and the desktop app under Windows is not
measured.
Decided on 9 November 2026 by the person, the same entry: devloop does not
reach cloud sessions, the cloud threads of a project included; `README.md`
says that devloop runs where Claude Code runs on the person's own computer —
the terminal, the extension for VS Code, the desktop app — and not in cloud
sessions. Reason: a cloud session does not load the plugins installed
locally and does not read `~/.claude/settings.json`, where the rule for the
run without the person stands, the head of `bin/devloop-auto-mode-rule`; in
the threads of a project a plugin entered in the project's settings loads,
but whether its hooks run there the pages do not say; a protection that is
only partly there and whose missing parts do not show is worse than a plain
boundary. Not chosen: bringing devloop into the threads of a project through
the plugins in the project's settings. Where the vendor changes what cloud
sessions load, the question is put again.
Decided on 9 November 2026 by the person, after that entry, the roadmap
entry of that date on the two entries held and the desktop handover: in
the local sessions of the desktop app under macOS and under Linux devloop
hands a command over as in the terminal, form A where the command asks
nothing and form B where it asks; form B for every command holds in the
desktop app under Windows, where `!` runs in PowerShell, and in the
graphical panel of the extension for VS Code, where `!` is not there.
Reason: in the desktop app a command after `!` runs under macOS and Linux
in the login shell, and Claude answers its output whatever
`respondToBashCommands` says, the desktop page under "Claude Code settings
that behave differently in the Code tab", read in the entry on the install
blocks; where `!` works as in the terminal, devloop uses it so, and the run
reads the result itself instead of the person's word. Not chosen: form B
for every command everywhere in the desktop app.

Ends with one run per system in the terminal — macOS, Linux, Alpine and
Windows with Git Bash —, the cases of milestone 3 included: the guards read,
the mark written, the install under a yes; under a no, since every branch
that can be produced on a bench is walked once on purpose, the unwanted side
included, a run on the person's Mac in which a command that asks nothing is
handed over in form A, a run under Linux with `sudo apt install` in which a
command that asks is handed over in form B, and the next start after an
install the person made under a no; on the person's Mac with a run in the
graphical panel of the extension for VS Code, the command handed over in
form B, and one in the local sessions of the desktop app, the command handed
over as in the terminal, form A where it asks nothing, by the second
decision above and its addition; in the virtual machine under Windows with
Git Bash, the machine of the decision below, one in the local sessions of
the desktop app, a command that asks nothing handed over in form B, since
`!` runs in PowerShell there, the block of this milestone on the desktop app
under Windows, by the third of the five sentences, since that bench can
produce the case, and where the desktop app runs no local session on that
machine, the roadmap says why, by the first; with a run on Windows without
Git Bash in which the skills refuse to load with the vendor's message, by
the first;
once each on the person's Mac the cases a test project can produce that no
run above names: the refresh of `setup-project` without an install record
on the main branch, a planning with the record of the mode saying yes and
auto-merge off, a planning in German with a browser the program does not
read and with one in the wrong version, a start with `--auto` after a
refused install and one after two refused installs whose commands ask; and
the inputs the job hooks on every system gives the install guard, a line
with two destinations of one install and the updates of `brew` and `pipx`;
and, since 19 November 2026, by decision (18) of that day below, the cases the
handover by surface adds: in the run under Windows with Git Bash in the
terminal a command handed over in form B, in Git Bash; on the person's Mac in
the terminal form A once with `respondToBashCommands` set to `false` and once
with the setting as it stands by default; and the steps for the PATH once in
the graphical panel and once in the desktop app;
and, since 21 November 2026, by the roadmap entry of that date on the program
that reads the surface and the system, what the second part of (4) built and
only a session with the model on its surface shows: the rule on the forms as
the loaded texts carry it — the form and the place by the line
`bin/devloop-surface` prints before a handover, the word typed right after a
command in form A in the terminal and no such word in the desktop app, the
first of the two signs, what the run says where the command did not run to its
end, the merge handed over by the situation —, the things of
`shared/skill-name.md`, `shared/merge-handover.md` and `shared/install-tool.md`
that no run of that part counts for, and with them the four blocks of this
milestone on the merge without form B, on the failed install under form A, on
the six places of the signal of form A and on the identity handed over as two
commands; and whether Claude Code asks for permission where the run calls
`bin/devloop-surface` before a handover outside auto mode, which is not
measured;
and, since the corrections of the merge of that part, of the same day and in
the same entry, what the job hooks on every system does not show under
Windows: in the run under Windows with Git Bash the messages of the merge
guard, the identity guard, the install guard and the Stop hook, each on the
path on which it hands over and read whole — the request to say here once
the command is through and their word as what releases, which the eight
cases of the job do not read, a case reading the exit, the place, the command
line and the word typed after the command —, the four things on those
messages under `windows`; and the line `bin/devloop-text` puts into the rule
there, which since 22 November 2026 a case of the job runs on all four
systems and holds, the third part of (4), by the decision of 21 November
2026 below on that case, where until that day this sentence said that no
step of the job runs the program;
and, since 22 November 2026, by the roadmap entry of that date, "Every
handover and the steps for the PATH follow surface and system", what the
third part of (4) built and only a session with the model on its surface
shows: the form and the place by the situation at every other place that
hands a command over, the steps for the PATH as `shared/path-steps.md` has
them for the surface and the system, the terminal the issue for a missing
tool names, and with them fourteen blocks of this milestone: the ten that
took their Fix on texts the model loads, the three whose Fix line that part
built anew, and the one on texts loaded in `start-work`, `plan-work` and
`setup-checks` that pointed at `build-work` step 3 point 7, which that part
wrote with its Fix.
The machines for the runs under Linux, under Windows and under Alpine the
person provides before the milestone ends.
Decided on 9 November 2026 by the person, the roadmap entry of that date on
the surface reading and the machines: the runs under Linux, under Alpine and
under Windows, with and without Git Bash, run in virtual machines on the
person's Mac under Parallels Desktop, in the ARM versions of the systems,
Windows as Windows 11 Pro. Reason: the hooks and the programs of devloop run
on both processor architectures, since the job hooks on every system runs
them on every pull request on `macos-latest`, arm64, and on `ubuntu-latest`
and `windows-latest`, x64, so the x64 side of the hooks is covered; a
snapshot gives every closing run the same clean start, the Windows before
Git for Windows for the run without Git Bash and after it for the run with;
nobody waits for machines until the milestone ends; and Parallels Desktop is
the solution Microsoft authorizes for Windows 11 Pro on Apple silicon. Not
chosen: machines of the person's own with an Intel or AMD processor, bought
or rented, which would have the processor architecture most users have but
cost money and time to procure and have no snapshot. What the decision rests
on, read raw on 9 November 2026, stands in that entry.
Decided on 10 November 2026 by the person, the roadmap entry of that date
on the bound on every system: the orders of this milestone build in this
order. (1) `bin/devloop-bounded` and its self-test, the four blocks of
`docs/defects.md` on it under this milestone: under Windows with Git Bash,
the hang on macos-latest, the sleep left on alpine, the case "does not end"
red once on macos-latest. (2) The programs that read files under Windows
and under Alpine: the blocks on what is read off the default branch, the
check table, the mark, the file of check attempts and a cargo configuration,
not measured with CRLF or on Windows, and the three on awk not reached by
the check under Alpine. (3) The guard for the PowerShell tool and `shell:
bash` in the frontmatter of every skill, the two blocks on them. (4) The
handover by surface: the blocks on the panel of the extension for VS Code,
on the desktop app under Windows, on `respondToBashCommands`, on the steps
for the PATH under Use Terminal and on step 4 of `setup-checks` naming the
terminal alone. (5) The remaining questions of the installation: the blocks on
the sandbox of Claude Code, on `brew search`, on the readings of four groups of
programs going stale, until 24 November 2026 the group of programs the reader
reads over alone, on the workflow file changed with sed, closed on that day, on
the question on gitleaks, split on that day, on the planning of run 3 reading
the tool records itself, on the folders for browsers of run 2, on the install
of run 2 on main before the cut, and on `bin/devloop-tool-state` and pip;
before them the question to the person whether a text that says what the should
asks counts as a repair, answered on 24 November 2026; and since that day (5)
is built in six parts, with the blocks that day added, by the decisions of that
day below. (6) The texts users read: the README on Windows, on
the places where devloop runs and on the version of Claude Code it needs,
the three blocks on them, and the commands that keep a machine awake under
Linux and under Windows named above, after the person has approved the
wordings. (7) The virtual machines and the closing runs, among them the
list under `/` in the panel under Linux and under Windows for the block on
whether the extension runs the skills. Reason: the self-test of
`bin/devloop-bounded` hung on macos-latest until the job's limit and was
red on alpine and on macos-latest, so that every later pull request runs
through reliably only after (1); (2) GitHub measures, and it needs no
decision; the reading of the surface does not go stale while Claude Code
sets the variable the same way, measured at 2.1.317, 2.1.319 and 2.1.321.
Not chosen: the handover by surface first, while the measurement is fresh;
it would have brought the first change visible to users earlier, but
exposed every pull request until then to the hang of the self-test.
Decided on 11 November 2026 by the person, the roadmap entry of that date
on the bound and SIGKILL: two findings measured at `46030ab` each get a
block under this milestone and are built, by an order of their own after
(1), with these shoulds: the bound returns at most two seconds after its
seconds with exit 124 and its line, also where the command ignores SIGTERM,
its process group then sent SIGKILL; and a step of
`scripts/devloop-run-workflow` that runs past the job's timeout is ended
with everything it started, as GitHub ends the job, and nothing of it runs
on once the program has returned. Built on that day, on macOS, Linux and
Alpine for the step; what it found and did not build stands in six blocks
of this milestone with Fix none.
Decided on 12 November 2026 by the person, the roadmap entry of that date
on the three entries held: before (2) come two orders. First the two blocks
on `bin/devloop-bounded` from the branch of 11 November 2026: the extra second the
bound waits in a container for an ended process of the command's group, and
the line of bash in the command's stderr. Then the remaining time limits:
gh in `bin/devloop-auto-mode-question` and in `bin/devloop-install-issues`,
and the three open blocks of `scripts/devloop-run-workflow`, the process
that leaves the step's session, Windows, and the step that ends in time and
leaves a process behind, the block of 12 November 2026; the block on Windows
that order puts to the person as a question of its own. After them (2) to
(7) as decided. Reason: as with (1), every later pull request is to run
through reliably; the line of bash stood in a command's stderr in 6 of
20000 runs on the person's Mac and made a self-test red once, the extra second in
the container brings the self-test on alpine nearer its limit, and the
remaining time limits carry the fault of the two findings of 11 November
2026, with measurements and readings in the blocks. Not chosen: both orders
at the end of the milestone; the pull requests of (2) to (7) would then run
with the self-test that goes red at random.
Decided on 13 November 2026 by the person, the roadmap entry of that date
on the one entry held: a thing of `docs/stock-take.tsv` whose name names a
green and a red end at once is split in two, one for each outcome, as the
self-test of `bin/devloop-bounded` stands in two things. Such a thing that
carries runs is renamed to its green end, together with all its runs in the
same commit, its note naming the old name, and the sentence of the head of
`scripts/devloop-stock-take` on a thing whose name no longer says what the
thing says then reads that a thing with runs keeps its name unless it is
renamed with all its runs in the same commit; the red end stands as a new
thing, Built, never walked, until a run brings it about on purpose. The
records that name such a thing after "part of:" follow the name, the tool
rejecting one that names no thing. Built by the second of the two orders
before (2), which changes that sentence in a shipped directory and brings
about on purpose the red end of the programs it changes; the audit of that
day builds nothing of it. Reason: every outcome is a thing, the tool's rule
may undercount and must never overcount, and every branch is walked once on
purpose, the unwanted side included, the third of the five sentences above;
ten green runs stand on six things that name both ends, four of them
counting on that day, and no run has brought the red end of one of the six
about. Not chosen: the old name kept with the note alone saying what it
means; the green runs taken out; and one red run alone added to the thing
that names both.
A first piece stands since 14 October 2026, the fourth addendum of
the roadmap entry on the command reader: the reader runs on the three
systems, and a workflow job runs its self-test and every hook on
`ubuntu-latest`, `macos-latest` and `windows-latest`, there under Git Bash,
on every pull request, and since the fifth addendum of that day under Alpine
3.22 with busybox awk as well, in a container on `ubuntu-latest`; the guard
for PowerShell and the rest of this milestone were not built then. What devloop
does on a system without bash belongs here too: the hooks and the programs
are scripts for bash, and Claude Code's system requirements, read raw at
code.claude.com/docs/en/setup on 14 October 2026, name "Alpine Linux 3.19+"
among the systems and "Bash, Zsh, PowerShell, or CMD" as the shell, Alpine
not carrying bash by default - the page's own section on Alpine installs it
with `apk add bash curl libgcc libstdc++ ripgrep` before Claude Code runs
there. Until 12 November 2026 this paragraph ended "Nothing of this is built
yet.", which held until 10 November 2026.
A second piece stands since 10 and 11 November 2026, order (1) of the
decision above and the order of 11 November 2026, the roadmap entries of
those dates on the bound: `bin/devloop-bounded` ends a command at the bound
with its process group, by SIGKILL a second after the SIGTERM where
something of it still stands, on macOS, Linux and Alpine and under Windows
with Git Bash as far as the block of this milestone on the limit of the
runtime's walk says; its self-test and that of `bin/devloop-setup-state`
run in the job on all four systems; and `scripts/devloop-run-workflow` ends
a step past the job's timeout with everything it started on macOS, Linux
and Alpine. Since 13 November 2026, the first of the two orders before (2)
of the decision of 12 November 2026, the roadmap entry of that date on the
bound and the zombie: the bound returns without the watchdog's second where
everything of the command has ended on the SIGTERM, under Linux also where
nobody reaps what has ended, as in the container of a job on GitHub, and no
line of bash's own stands in a command's stderr; what that build does not
reach stands in two blocks of this milestone with Fix none, and under
Windows with Git Bash it is measured by the job first. The job measured it
on that day, runs 43401195658 and 43405794553 of pull request #242: the
self-test green under Windows with Git Bash with eighteen cases, its new
case 1.17 and 1.19 seconds after the line before it; and of the two blocks
the one on the two starts is closed since that day as left on purpose, the
roadmap entry of that date on the one entry held. The other, on the look
that rests on `/proc`, is built since the same day by an order of its own,
the next change to `bin/devloop-bounded` that the decision of that day
names, the roadmap entry of that date on the look under hidepid: where
`/proc` is mounted with hidepid the look is kill with the signal 0 alone,
as before 0.184.0, so that a process the kernel keeps from the shell has
its second after the SIGTERM, and the watchdog waits out its second there
again for a process that has ended and that nobody reaps; the program's
head gives the figure of the build's report and says what the job measured
under Windows with Git Bash, the block on it closed as corrected; and what
that order found, the self-test red under hidepid where nobody reaps, is
built since 16 November 2026, below. Since 14 November 2026,
the first part of the second order before (2), the roadmap entry of that
date on gh under the bound: `bin/devloop-auto-mode-question` and
`bin/devloop-install-issues` run gh under `bin/devloop-bounded` with sixty
seconds, and the second runs `bin/devloop-tool-state` so with a limit above
what that program's own bounds take, so that a command that does not answer
is ended with everything it started and the call is back with the bound,
measured on macOS and in Alpine and under Windows with Git Bash by the job
hooks on every system of its pull request, what the bound does not reach
there standing in the block of this milestone on the limit of the runtime's
walk; and every thing of `docs/stock-take.tsv` whose name named a green and
a red end at once is split in two, eight of them, the head of
`scripts/devloop-stock-take` saying the rule of the decision of 13 November
2026, and the red end of the self-test of each program that part changed
brought about once on purpose. That order was parted because its reading
list did not fit one session. What stood over of it, the three open blocks
of `scripts/devloop-run-workflow`, the process that leaves the step's
session, Windows, and the step that ends in time and leaves a process
behind, and the red end of that program's self-test, is the order of 15
November 2026, below. What the first part found and did not build, and what its merge
found, three blocks of this milestone, is built since 15 November 2026 by an
order of its own, the roadmap entry of that date on a limit over the whole
call: `bin/devloop-tool-state`, `bin/devloop-auto-mode-question` and
`bin/devloop-install-issues` each hold ninety-five seconds over their whole
call, as `bin/devloop-arm` and `bin/devloop-start-conditions` hold theirs, a
query having its own limit, or what is left of the ninety-five where that is
less, and none starting once fewer than ten of them are left, so that each
ends inside the 120 seconds of the Bash call the texts start it in, however
many queries it asks, measured on macOS and in Alpine; a query not started
answers in the words those two programs have for it; and under Windows,
where PATH holds no bash to run the bound, the two programs that start gh
start nothing and name bash, measured under Windows with Git Bash by the job
hooks on every system of its pull request. Since 16 November 2026, the rest
of the second order before (2), the roadmap entry of that date on a step's
own exit: on macOS, Linux and Alpine a step of
`scripts/devloop-run-workflow` that ends in time counts with its own exit
code, five seconds after its own end at most where a process it left holds
its output, and what the steps of a job left behind is ended at the job's
end, each step under a holder of the program that leads its session; the
self-test of `bin/devloop-bounded` passes where `/proc` is mounted with
hidepid, its case of a command that ends on the SIGTERM with all it started
held there to the two seconds the head allows after the bound; the paragraph
of the head of `bin/devloop-auto-mode-question` on a gh that does not answer
says what a call has since 15 November 2026, the block the consistency audit
of that day wrote on it closed as corrected; and the red end of the
self-test of `scripts/devloop-run-workflow` is brought about once on
purpose. Of the orders before (2) this is not built: the process that left
the step's session and its parent, since the mark in its environment that
would tie it to the step is not to be read on macOS for a program of the
system, measured on 15 November 2026, its block closed as left on purpose
by the person's decision of 16 November 2026 below; Windows, the block of
11 November 2026 and one of 16 November 2026 on a step that ends in time
there, both closed as left on purpose by the decision of that day below; and
the block on the limit of the runtime's
walk under Windows with Git Bash stands with Fix none. What that order found
beside its blocks: the numbers `scripts/devloop-run-workflow` kept from one
listing to the next while it ended a step, built with it and never walked,
its case one that cannot be forced by the decision of that day below, and a
sentence of the head of `bin/devloop-bounded` on what its self-test
needs, corrected. And one block of this milestone the consistency audit of
16 November 2026 wrote, the roadmap entry of that date on the two entries
held: a sentence of the head of `scripts/devloop-run-workflow` names one
block of this milestone on Windows where two hold what it says, the block of
11 November 2026 and the block of 16 November 2026, built with (2) by the
decision at the merge of that audit below. Since 17 November 2026 (2) is
built, the roadmap entry of that date on a project's files read with CRLF
as with LF: every place of the hooks, the programs and the loaded texts that
takes a file of the project apart reads it with CRLF, from a checkout under
`core.autocrlf=true` or committed so, as the same file with LF, the install
record off the main branch, the runner of the check table in both hooks, the
line of an install written into the record's file and the commands with
`git show` and `git log -p` of two loaded texts changed for it and every
other place measured as reading it so; the seventeen blocks of 15 October
2026 carry their Fix, and three blocks that order wrote with theirs; the
last step of the job hooks on every system reads every such place in the
three forms on all four systems and reaches the three calls of `awk` the
check under Alpine did not reach, busybox `awk` giving there what `awk`
gives on macOS; and the sentence of the head of
`scripts/devloop-run-workflow` names both blocks on Windows, its block
closed as corrected. The runs under Windows of the blocks on line endings
came from the job's log at the merge, run W1 of that entry, green on 18
November 2026. The first run of that step on
`windows-latest`, on 18 November 2026, was red at the four inputs, where
`grep -c` counted no carriage return; since that day the step counts them
over the bytes with Python and shows before the first place that its way
of comparing a reading tells CRLF from LF, red where either does not hold.
What that order found and did not
build stood in three blocks of this milestone with Fix none: the walk of
the install guard for a cargo configuration does not end at a path in the
form of Windows; the line of an install is handed to `awk` through `-v`,
which turns a backslash sequence into another character; and under Windows
the step builds its history of the standards file with one carriage return
fewer; the first and the third carry their Fix since (3) built them, below,
and the second since the second part of (5) built it, below.
Of (4) the second of its three parts is built, since 21 November 2026, and
the third, since 22 November 2026, both below; of (5) the second of its six
parts is built, since 25 November 2026, below, the first having written its
decisions down and changed no code; of its other four parts, of (6) and of
(7) nothing is built yet. Since 18 November
2026, by the
order before (3) the person decided on that day, below, the job stock-take
holds every line of the hooks, the programs and the loaded texts that reads
a file of the project to a case of the last step of the job hooks on every
system or to the places that step names as none; what that order found and
did not build stood in three more blocks of this milestone with Fix none,
on the line endings put writes, on a recorded command over several lines in
an issue with CRLF and on the folder an installer prints under Windows,
which carry their Fix since the second part of (5) built them, below.
And two blocks of this milestone the consistency audit of 18 November 2026
wrote, the roadmap entry of that date on the two entries held: a sentence of
the head of `bin/devloop-install-note` says that git converts a file put
wrote both line endings into, which git does not for a file committed with
CRLF; and a comment of the step on line endings quotes words of the
documentation of open() that it carries up to Python 3.9 alone. Order (5)
builds the first, beside the block on the lines put writes with LF, and
order (3) the second, beside the block on the history of the standards file
in the same step, decided on 18 November 2026 by the person after the
report of that audit, by the decision of that day that the order touching
the same place builds such a block.
And three blocks of this milestone the consistency audit of 19 November 2026
wrote, the roadmap entry of that date on the three entries held: a comment of
`hooks/subagent-start-install.sh` speaks of two lines where the line below it
joins two or three; devloop reads neither the version of git nor the name and
the address `git config` gives before the first commit, while `README.md` says
it says so; and step 8 of `setup-checks` names the command that keeps a
machine awake for macOS alone, which no block of this milestone carried. Order
(4) builds the first, the next order that changes shipped code, since none of
the orders still to build touches that hook and an order of its own for it
would cost one pull request more, the reason of the decision of 18 November
2026 below against an order of their own for such blocks; order (5) the
second, with the prerequisites of the installation; and order (6) the third,
which it names above; decided on 19 November 2026 by the person after the
report of that audit.
Since 18 November 2026 (3) is built, the roadmap entry of that date on the
guard for the PowerShell tool, by the decision of that day below: where
`docs/agents/` stands, `hooks/pre-tool-use-powershell-guard.sh` turns down
every call of the PowerShell tool on every system and has the model run the
same command unchanged with the Bash tool, where the six guards on commands
read it; the session start and the start of every subagent say so on the
same condition; `shared/command-does-not-answer.md` says that this refusal
is answered by the same command through the Bash tool and is no block; every
skill carries `shell: bash` in its frontmatter; `README.md` names the guard
in the wording the person approved; the install guard's walk for a cargo
configuration ends at the top of any path, a drive's root under Windows and
a path without a slash included; the last step of the job hooks on every
system builds every input with Python in binary mode, the history of the
standards file among them, and holds every line of that file in the blob
with CRLF to its carriage return; and the comment of that step over the
count of carriage returns quotes only what the documentation of open() and
of io carries at 3.15.2. The job hooks on every system runs the guard where
`docs/agents/` stands and where it does not, and the walk at D:/a/proj,
D:\a\proj and proj, on all four systems; under Windows its first run is the
pull request of that order. The block on the line of an install handed to
awk through -v and the three of the order before (3) stay with (5).
Since 21 November 2026 the second of the three parts of (4) is built, the
roadmap entry of that date on the program that reads the surface and the
system, by the decisions of 19, 20 and 21 November 2026 below:
`bin/devloop-surface` reads the surface off `CLAUDE_CODE_ENTRYPOINT` and the
system off `uname -s` and prints one line that names both and the situation
the forms go by, the system before the surface; `bin/devloop-text` puts that
line into the rule on the two forms of a handover in `shared/skill-name.md`
when a skill loads, and the rule has the run run the program once more before
every handover and reads no setting of Claude Code; the rule gives form A
under macOS and Linux in the terminal and in the desktop app and nowhere else,
in the terminal with the sentence that has the person type „fertig“ right
after the command, the first of two signs counting, and form B with the place
the situation has everywhere else; it says what the run says where the command
did not run to its end, by (14); `shared/merge-handover.md` hands the merge
over by that line; the four hooks that hand a command over call the program on
the path on which they hand over and name the form, the place and the signs of
the situation in their messages, the identity guard handing the identity over
as one line, by (9); `bin/devloop-install-issues` closes an issue after an
install during a session with the comment of (15); the comment of
`hooks/subagent-start-install.sh` names three lines; and the six places of the
block on the signal of form A name the two signs. The job hooks on every
system runs the self-test of `bin/devloop-surface` with the others and, by the
decision of 21 November 2026 below on the eight cases, each of the four hooks
on the path on which it hands over, twice, on all four systems; under Windows
its first run
was at the pull request of that part, run W1 of that entry, read off the
job's log at the merge, green on 21 November 2026, all eight ending with 2
and naming Git Bash. Of the nine blocks of this milestone that
part builds, four are walked by its runs, on the messages of the merge guard,
the identity guard and the Stop hook and on the comment at the closing, the
one on the comment of `hooks/subagent-start-install.sh` is closed as corrected
in the document, and four wait for the closing runs, named above where the
milestone ends. The five blocks both parts build kept Fix none until the
third part, by the
decision of 20 November 2026 below: on `respondToBashCommands`, on the
graphical panel, on the desktop app under Windows, on PowerShell under Windows
and on the wording of form B.
Since 22 November 2026 the third part of (4) is built, the roadmap entry of
that date, "Every handover and the steps for the PATH follow surface and
system", by the decisions of 19 to 22 November 2026 below: every other place
that hands a command over says the form and the place by the situation, the
steps for the PATH follow the surface and the system, and the job hooks on
every system runs `bin/devloop-text skill-name` on all four systems; what
stands where, that entry says. With it eleven blocks of this milestone take
their Fix, the five both parts build among them. For the closing runs of
(7), named above where the milestone ends, wait fourteen blocks of this
milestone: the ten of the eleven that stand on texts the model loads, three
whose Fix line that part built anew, and the one on texts loaded in
`start-work`, `plan-work` and `setup-checks` that pointed at `build-work`
step 3 point 7, which that part wrote with its Fix.
Before (5) came the checks of milestone 15 that come back at every
handover, by the decision of 22 November 2026 under milestone 15: built on 23
and 24 November 2026, the two roadmap entries that the decisions of those
days under milestone 15 name. Until 24 November 2026 this paragraph said that
these checks come before (5), as still to be built.
Since 25 November 2026 the second of the six parts of (5) is built, the
roadmap entry of that date, "The install programs keep a file's line ending
and say pip is not read": put of `bin/devloop-install-note` writes every
line it adds with the line ending the file's first line carries and hands
the line of an install to `awk` through the environment, so that the command
stands as it reads; `bin/devloop-auto-mode-question` reads a carriage return
in the title or the body of an issue as a line feed; `bin/devloop-tool-state`
takes the carriage return off the end of every line a query prints, says not
read of pip in the forms the install guard reads as pip, and asks
`uv tool dir --bin` for `uv tool` alone; and in the self-tests of
`bin/devloop-install-issues` and `bin/devloop-auto-mode-question` a call that
is answered at once has the ten seconds a command starts with at the fewest
in operation. Of the eight blocks of this milestone that part builds, the
one on `uv tool dir --bin` asked for every command of uv found and written
by it, five are walked by its runs, the one on the sentence of the head of
`bin/devloop-install-note` is closed as corrected in the document, one, on
the line endings put writes, waits for the log of the job hooks on every
system under windows-latest at the merge, and one, on the folder an
installer prints, stays Built, never walked until a measurement under
Windows with the installers themselves, that of the third part, which
measures what the installers answer under Git Bash, or the closing runs of
(7): decided on 25 November 2026 by the person, the paragraph "The addendum"
of that entry, since that job runs the self-test with stand-ins and no
installer itself, which does not hold the words of the block's should,
"measured under Windows with the installers the program names", and since
the waiting costs nothing, the third part measuring those answers anyway;
the should stands as it stands. Under Windows nothing of that part is
measured before its pull request. What that part found and did not build
stands in two more blocks of this milestone with Fix none: on an installer's
answer the install guard takes with a carriage return at its end, and, by
the addendum, on an installer written with its path, which
`bin/devloop-tool-state` reads as none of the ten it reads; the third part
builds both, (7) below.
Until 25 November 2026 this paragraph said that of (5) to (7) nothing was
built yet, that what the order before (3) found and did not build "stands in
three more blocks of this milestone with Fix none", and of the three blocks
(2) wrote with Fix none only that the first and the third carry their Fix;
mended by the audit of that part before its push, that entry.
Until 21 November 2026 this paragraph said that of (4) to (7) nothing was
built yet, and until 22 November 2026 that the third part was not built.
Until 19 November 2026 this paragraph said of the state of 14 October 2026
that "the guard for PowerShell and the rest of this milestone stand as
before", which holds no more since (1), (2) and (3) are built, and of what (2)
found and did not build that it "stands in three blocks of this milestone with
Fix none", "the first and the third are built by (3), below", where those two
carry their Fix since (3); both mended by the consistency audit of 19 November
2026, the roadmap entry of that date on the three entries held. Until 18
November 2026 this paragraph said that of (3) to (7) nothing was built yet,
`shell: bash` in every skill and the guard for PowerShell among them.
Until 17 November 2026 this
paragraph said that of (2) to (7) nothing was built yet and that the block
on the sentence of that head stood with Fix none; until 16
November 2026 this paragraph said that the three open blocks of
`scripts/devloop-run-workflow` with the red end of that program's self-test,
the block on the self-test of `bin/devloop-bounded` under hidepid and the
paragraph of the head of `bin/devloop-auto-mode-question` were not built
yet, and that what the order on the look under hidepid found stood in a
block with Fix none; until 15
November 2026 this paragraph said that what the first part found and what
its merge found stand in three blocks of this milestone with Fix none; until
14 November 2026, that of the rest nothing was built, the second order
before (2) among it; until 13 November 2026, that nothing of the orders
before (2) was built.

Decided on 16 November 2026 by the person, the roadmap entry of that date on
four blocks of `scripts/devloop-run-workflow` decided: the program is
left on purpose under Windows with both its blocks, the block of 11 November
2026 on a step past the job's timeout and the block of 16 November 2026 on a
step that ends in time, and runs there as it runs. Reason: no skill, hook,
program under `bin/` or `README.md` starts the program; it is a
check before a handover and runs under Windows by hand alone, over a step
with shell bash, and the job hooks on every system leaves its self-test out
there; a build would take a job object of Windows over ctypes that the job
or the virtual machine of the closing runs alone could measure, for a case
that has not occurred. Not chosen: a job object of Windows that holds the
step's shell and everything it starts and is ended at the timeout and at the
job's end.

Decided on 16 November 2026 by the person, the same entry: a process that
detaches from its step is left on purpose by `scripts/devloop-run-workflow`,
a process that left the step's session and its parent by a fork, a session
of its own and a second fork, at the job's timeout and at the job's end, as
the program's head says and as `bin/devloop-bounded` leaves a daemon beyond
the bound. Reason: on macOS the kernel gives another process of the same
user the environment of no program of the system while System Integrity
Protection is on, measured on 15 November 2026 on the person's Mac, so that
a mark in the step's environment would miss, on the Mac where the check
runs, the plainest case, a sleep or a bash of the system; no step of the
workflow detaches anything. Not chosen: a mark in every step's environment,
read off /proc under Linux and Alpine and by sysctl on macOS, with what
macOS keeps back said as a limit.

Decided on 16 November 2026 by the person, the same entry: the case of the
block on the numbers `scripts/devloop-run-workflow` kept from one listing to
the next, a number given out again between two listings, is one that
cannot be forced and does not hold milestone 12 up, and the block carries the
form for a built defect whose case cannot be forced. Reason: a number comes
back on macOS only once the counter has run through 99999 numbers,
`bsd/sys/proc_internal.h` line 767 of xnu-12377.121.6, and under Linux
through 32768 at least by default, `include/linux/threads.h` line 28 at
v7.0.14, so that no run of the milestone meets the case between two listings
0.05 seconds apart; a forced run would take a small limit of numbers in a
namespace of its own under Linux and cannot be made on macOS. Not chosen:
such a run, with a listing before the last SIGKILL so that it goes only to
what is still stopped and tied to the step.

Decided on 16 November 2026 at the merge of the consistency audit of that
day, the roadmap entry of that date on the two entries held, on three points
its report put to the person: order (2), the next order of this milestone,
builds the block that audit wrote on the sentence of the head of
`scripts/devloop-run-workflow` on Windows, so that a sentence of a head
rides along with the next order that raises the version; order (7) has the
virtual machine under Windows measure the case of the block on the limit of
the runtime's walk under Windows with Git Bash first, and then that block is
built or put to the person as left on purpose; and order (7) holds first the
blocks of this milestone that are built and never walked and carry no form
against the closing runs, names for each the run that meets its case, and
puts the form for a case that cannot be forced to the person for each that
no run of the milestone meets. Reason: no order named these three, and the
milestone is reached only once none of its blocks is open; the cases of the
runtime's walk are read and not measured under Git Bash, the head of
`bin/devloop-bounded` in its sentence "Its cases, read and not measured under
Git Bash", and the skills start the bound,
`skills/build-work/SKILL.md` among them, so that a measurement decides there
and not a reading. Not chosen: closing the block on the runtime's walk as
left on purpose now, unmeasured, and leaving the built blocks to (7)
unnamed.

Decided on 18 November 2026 by the person, the roadmap entry of that date on
a place without a case found by the merge gate: the blocks of this milestone
with Fix none that order (2) wrote are built by the order that touches the
same place. (3) takes the block on the install guard's walk for a cargo
configuration at a path in the form of Windows, since the walk starts from
the cwd of the hook's input and not from the tool, and the repair is small;
until the decision of the same day on the guard for the PowerShell tool,
below, the reason here read "since (3) registers every guard of commands for
the PowerShell tool as well, the block of this milestone on every command
guard matching the tool Bash alone, whose commands come with paths in the
form of Windows", which holds no more, since (3) registers no guard of
commands for that tool; whether a hook's input
carries its cwd in that form is not measured, the block on the walk says;
and the block on the history of the standards file in the step on line
endings under Windows, since that is a few lines and every later pull
request then measures the same input on the four systems. (5) takes the
block on the line of an install handed to awk through -v in put and the
three blocks that order of 18 November 2026 wrote, on the line endings put
writes, on a recorded command over several lines in an issue with CRLF and
on the folder an installer prints under Windows, since they are questions of
the installation and two of them concern the same place of put. Not chosen:
an order of their own for these blocks; the milestone is reached only once
its blocks are closed, so that it would come no earlier, and it would cost
one pull request more.

Decided on 18 November 2026 by the person, the same entry: an order before
(3) builds a check that finds a place without a case, a line of the hooks,
the programs or the loaded texts that reads a file of the project and that
the last step of the job hooks on every system holds to no case, since after
the search of 15 October 2026 three places came in within two weeks, on 24,
25 and 28 October 2026, one of which read CRLF otherwise than LF, and (3)
and (5) change such code next; that order found a fourth, from 22 October
2026, the place of put before it moved out of a hook. Built on that day,
form C of that entry, held line by line: a step of the job stock-take finds
every line that reads a blob of git or a path of the project, written on the
line or held by a variable of the same file, and is red where it carries no
anchor over the call of hold of a case of the step on line endings and
stands among none of the not places listed at the head of that step;
measured over the 77 commits from `919c9de` to `b77e3bc`, red at the four
places and at no other line, and naming the fourteen of 15 October 2026 at
`919c9de`. Not chosen: leaving the gap documented; form A, a path written on
the line alone, which did not find put and named 7 of the 14; form B, every
reading of a file, for its 22 false alarms in those 77 commits, eight pull
requests red by them alone; a case held by the file its hold names, under
which a new reading in one of the 15 files the step holds would go unseen;
and the anchors in `docs/skill-conventions.md`, where anchor and case would
stand in two files.

Decided on 18 November 2026 by the person, the roadmap entry of that date on
the guard for the PowerShell tool, how that guard, part of this milestone by
the decision of 9 November 2026 above, treats a command of the tool, which
no document said: in a project where devloop is set up, `docs/agents/`
standing as for every other guard, a guard under PreToolUse turns down every
call of the PowerShell tool, on every system, and its message says to run
the same command unchanged with the Bash tool; the six guards on commands
stay on the tool `Bash` as they are, and through the Bash tool every shell
command passes them as on the Mac. The session start and the start of every
subagent tell the model in such a project that every shell command goes
through the Bash tool, so that it seldom tries PowerShell at all. The loaded
texts name the Bash tool as the channel decided once for every shell
command, as `shared/command-does-not-answer.md` knows a channel decided once
for a text; the refusal is answered by running the same command unchanged
through the Bash tool, and it is no block that the run reports and, with
nobody there, files as an issue. `README.md` names the guard in the sentence
the person approved that day. Reason: the protection holds whole wherever
the hooks of devloop load, without devloop writing a setting, and no guard
exists twice. Not chosen: (a) besides the guard, writing
"CLAUDE_CODE_USE_POWERSHELL_TOOL": "0" into the env block of the project's
`.claude/settings.local.json` after a question at setup, so that the model
does not see the tool: one question more at setup with a wording to approve,
one file more that devloop writes and checks, and the tool off in the
project for the person's own work too, for a problem that is not measured,
that the model tries PowerShell despite the rule at the session's start;
where the closing run under Windows in (7) counts such calls, that becomes a
block. (b) taking the commands of the PowerShell tool apart so that the six
guards read them: every guard twice, for bash and for PowerShell, for the
reason the person turned that way down on 9 November 2026 above. Two
consequences. The block on the install guard's walk for a cargo
configuration stays with (3) though the reason the decision of the same day
above gave for it holds no more, since the walk starts from the cwd of the
hook's input and not from the tool, and the repair is small. And under
Windows without Git Bash a hook written for bash runs in PowerShell, where
it can fail, and a hook with "onFailure": "block" that fails blocks the
call, the hooks reference under "Block the action when a hook fails" and
"Failed hooks on Windows without Git Bash", read raw on that day: so there
the guard can block every call of the PowerShell tool in every project while
devloop is enabled, with a message of the vendor's on the failed hook whose
wording for that case the page does not give; the run on Windows without Git
Bash in (7) is the run that shows it. Built on that day by (3), above.

Decided on 19 November 2026 by the person, the roadmap entry of that date on
the lowest version of Claude Code: devloop names as the lowest version of
Claude Code it supports the version its closing runs of this milestone ran
on, the highest where they ran on more than one, and (6) names it in
`README.md`. Reason: only that number is measured. `"onFailure": "block"`
needs 2.1.295, but neither the skills page nor the changelog to 2.1.327 says
from which version the field `shell` of a skill holds, or how an older
version runs the inline commands of a skill under Windows with Git Bash,
where PowerShell is the primary shell wherever its tool is on since 2.1.126;
a lower number would rest on every fix after 2.1.295 that devloop builds on,
each to be shown. Not chosen: 2.1.295, the lowest version the documented
fields give, the field `shell` without a version of its own, a number no run
stands on.

Decided on 19 November 2026 by the person, the roadmap entry of that date on
the three entries held: where git is missing or older than 2.31, or where
`git config` gives no `user.name` or no `user.email`, devloop says so when a
project is set up and when a piece of work is started, before the first
commit, and gives the steps, as for `gh`; (5) builds it, the block of this
milestone on it. Reason: without `user.email` and `EMAIL` git 2.50.1 does not
refuse but guesses an address from the machine's name, with a warning,
measured on 9 October 2026, `docs/roadmap-archive-1.md` lines 15614 to 15618,
and the push makes that address public for good; and `README.md` says that
devloop says so. Not chosen: narrowing the sentence of the README to `gh`; the
README would hold then, and the way to the machine's address made public would
stay open.

Decided on 19 November 2026 by the person, the same entry: the version of
Claude Code that (6) names is the one installed when (6) is built; (7)
installs exactly that version on the person's Mac and in every virtual
machine, with the vendor's installer and the version number, and turns the
automatic updates off for the time of the closing runs, so that every closing
run runs on it and the number is the version they ran on, as the decision of
the same day above on the lowest version asks. The closing runs so walk the
check at the start of a session on all four systems in the case that the
version is not older; the case of an older version is walked on a bench on
which an older version is installed the same way. Reason: otherwise the number
and the check would exist only after (7), and no closing run would walk a case
of the check. Not chosen: building the block only after the closing runs, with
a pass of its own on the four systems and a version of devloop after them.
Where a closing run needs a later version, the number and the check change,
and the runs on them count no more. The vendor's page on the setup,
code.claude.com/docs/en/setup, read raw on 19 November 2026, names both: under
"Install a specific version" the install script with a version number, and
under "Disable auto-updates" `DISABLE_AUTOUPDATER`.

Decided on 19 November 2026 by the person, the roadmap entry of 20 November
2026 on the handover by surface, (1): devloop reads no setting of Claude Code
to choose the form of a handover. Reason: `respondToBashCommands` holds in any
settings file; over the user's file stand the two files of the project,
`--settings` and the managed settings, and of these a program can read neither
`--settings` nor the settings from the server nor the policies of the system;
a reading would be wrong there without a sound, and every change of the order
of precedence would have to be followed. Not chosen: reading the files a
program can read, in their order of precedence, and taking form B under
`false`, for that reason. The numbers (1) to (18) are those of that entry,
where the measurements, the readings and every approved wording stand, word
for word; `docs/rationale.md` takes the wordings with the order that builds
the rule each belongs to.

Decided on 19 November 2026 by the person, the same entry, (2): form A in the
terminal under macOS and under Linux carries a sentence that has the person
type „fertig“ right after the command, approved by the example of a check's
tool. It rests on two measurements of the person of that day in the terminal,
with `respondToBashCommands` set to `false` through `--settings`: after the
command's output nothing more appeared; and a „fertig“ typed while the command
ran was shown as queued and sent once the command was through, and Claude
answered and named the output. So their word arrives when the command is
through, whatever the setting says. This takes the place, for the terminal, of
"the run reads the result itself instead of the person's word" in the decision
of 9 November 2026 above on the desktop handover: the run reads the result
itself as before, and their word is one of the two signs on which it reads, by
(14) below.

Decided on 19 November 2026 by the person, the same entry, (3): under Windows
every command is handed over in form B, on every surface, typed in Git Bash.
Reason: the setting `defaultShell` can have a command typed with `!` run in
PowerShell wherever somebody set it so; under Windows with Git Bash the
default is bash, the vendor's settings reference, "Default: "bash", or
"powershell" on Windows when Bash isn't available"; and devloop does not read
the setting, by (1). This widens the decision of 9 November 2026 above, which
gave form B for every command to the desktop app under Windows and to the
graphical panel alone.

Decided on 19 November 2026 by the person, the same entry, (4): the wordings
of form B by the surface and the system, approved: in the graphical panel of
the extension for VS Code under macOS and Linux a terminal, for instance the
terminal of VS Code; under Windows, on every surface, Git Bash, the terminal
that comes with Git for Windows; in the desktop app under macOS and Linux, for
a command that asks something, a terminal, for instance the terminal of the
app; and where the system or the surface is unknown, a terminal and nothing
more; each followed by the command without `!`, by what it asks where it asks,
by the request to say here once the command has run through, and by the last
sentence of the wording. In the terminal under macOS and Linux the wording of
28 October 2026 for a command that asks stays, a second terminal window that
is not the one Claude Code runs in. It rests on this: in the panel and in the
desktop app Claude Code runs in no terminal window, so that the wording of
28 October 2026 meets nothing there. This takes the place, for the panel, of
"as `shared/install-tool.md` describes it under the way of the yes" in the
decision of 9 November 2026 above, where that text names a second terminal
window.

Decided on 19 November 2026 by the person, the same entry, (5): one program
reads `CLAUDE_CODE_ENTRYPOINT` and `uname -s`; `bin/devloop-text` puts its
line into the rule on the forms when a skill loads; the four hooks that hand a
command over, the install guard, the merge guard, the identity guard and the
Stop hook, call the same program; and before a handover the run runs it once
more, since a conversation can change its surface: the VS Code page says that
`claude --resume` continues in the terminal a conversation of the extension.
Not chosen: a line of `hooks/session-start.sh` at the start of the session,
since that hook writes nothing where no repository stands, its exit where
`git rev-parse --git-dir` fails, and one line alone in a project that is not
set up, "[ProjectStatus] devloop: not set up here", where
`setup-project` hands over, and since after a compaction the line stands in
the summary alone.

Decided on 19 November 2026 by the person, the same entry, (6): where
`TERM_PROGRAM` reads `vscode`, one step of the steps for the PATH reads,
fixed, that the person opens a new terminal in VS Code. Reason: under Use
Terminal the extension closes its terminal when Claude Code ends with `/exit`,
the code of the extension 2.1.327 quoted in that entry, and devloop cannot
tell Use Terminal from a `claude` the person typed themselves. Not chosen: a
sentence saying that where the terminal closes after `/exit` they open a new
one, since the reader has to watch first; and telling Use Terminal by the
variable `NoDefaultCurrentDirectoryInExePath`, since the vendor promises it
nowhere.

Decided on 19 November 2026 by the person, the same entry, (7): the issue for
a missing tool always names a terminal, under Windows Git Bash, never `!`, and
after it `/devloop:start-work`. Reason: it is read later, perhaps on another
surface. Not chosen: the form of the surface that wrote it, which is wrong as
soon as the person works on elsewhere; and no place at all, against the rule
of `shared/skill-name.md` that a text says where a command is typed.

Decided on 19 November 2026 by the person, the same entry, (8): the pattern by
which every approved wording of a handover changes. First, every approved
wording keeps what it says; the sentence that says where the command is typed
is exchanged by the situation, and the system goes before the surface. For a
command that asks nothing: in the terminal under macOS and Linux, here in
Claude Code with `!` in front; in the desktop app under macOS and Linux the
same; in the graphical panel under macOS and Linux, in a terminal, for
instance the terminal of VS Code; under Windows, Git Bash; where the system or
the surface is unknown, in a terminal. For a command that asks something: in
the terminal under macOS and Linux the second terminal window as before; in
the desktop app a terminal, for instance the terminal of the app; the others
as for a command that asks nothing. Second, form A
in the terminal carries the sentence on „fertig“ directly before its last
sentence, and in the desktop app it does not. Third, outside form A the
command line stands without `!` and with `cd <directory> &&` where the command
needs the project; where it asks, what it asks stands under it; then the
request to say here once the command has run through, and the last sentence of
the wording. Fourth, where a pronoun can point at two things, the noun stands.
Fifth, several commands of one handover stand as one line, joined by `&&`.
Sixth, the handover with nobody there and the line under the no in step 8 of
`setup-checks` stay without „fertig“ and without that request. Seventh, a
sentence in a question field of fixed length is counted anew, and where it
does not fit it goes back to the person.

Decided on 19 November 2026 by the person, the same entry, (9): the identity
is handed over as one line, both `git config --global` commands joined by
`&&`, in the wording approved for the terminal on the Mac, with the sentence
for an account older than 18 July 2017, after GitHub's page, which the run
reads every time. It rests on this: handed over as two commands, each with
`!`, Claude answers after the first and the run can commit before the address
is set, the block of this milestone on it.

Decided on 19 November 2026 by the person, the same entry, (10): the issue for
a missing tool, in the wording approved for the Mac: how they install the tool
themselves, the command in a terminal, `/devloop:start-work` in Claude Code,
and that devloop then closes the issue itself and takes the task up again;
behind a command that asks, what it asks; under Windows the first step with
Git Bash; and where a check belongs to the issue, that devloop sets the check
up. By (7).

Decided on 19 November 2026 by the person, the same entry, (11): the steps for
the PATH under macOS and Linux, approved: one opening and one closing sentence
on every surface, a sentence after every export line on what the line does,
five steps in a terminal that is not VS Code's, six in the terminal of VS
Code, by (6), and four in the graphical panel, where VS Code is quit entirely
and opened again from its program symbol. devloop puts in the folder, the file
of the shell and the project's folder itself, as `shared/path-steps.md`
reads them, from its sentence that opens "The shell is read off" on, a
sentence of `shared/install-tool.md` until 22 November 2026. What the
steps in the panel rest on, read at the
code of the extension 2.1.327 and of VS Code 1.145.2 and not measured, stands
in that entry.

Decided on 19 November 2026 by the person, the same entry, (12): in the
desktop app under macOS and under Linux form A stays without „fertig“, the
wording as it stood. Reason, measured by the person on that day in a local
session of the desktop app, Claude Code 2.1.326: the app sends a „fertig“
typed early at once, and Claude answers by itself as soon as a command typed
with `!` ends, as the desktop page says. Not chosen: the sentence on „fertig“
in the desktop app too, one wording of form A everywhere, since the run would
read too early there.

Decided on 20 November 2026 by the person, the same entry, (13): the steps for
the PATH in the desktop app, under Windows and on a surface devloop does not
know, approved. Under Windows one line typed in Git Bash enters the folder
into the `PATH` of the Windows account through `powershell.exe`, and it takes
the place of the reading of a command in the maker's guide,
`shared/path-steps.md` in its sentence that opens "For a shell the run has no
sure form for", a sentence of `shared/install-tool.md` until 22 November
2026, which stays for another shell, fish
say. Not chosen: the ways by clicks through the settings of Windows and of the
app, since they change with updates. Not measured: that line under Windows, of
which only this is checked, that bash hands the text between its single quotes
to `powershell.exe` unchanged; how the desktop app is ended entirely under
Windows; and whether the steps under Windows bring the new `PATH`. Order (7)
measures the three.

Decided on 20 November 2026 by the person, the same entry, (14): what the run
says on „fertig“ where the command did not run to its end, approved in four
sentences. The rule: of each handover the first sign counts; where the run
finds the tool, it goes on; that the command did not do what it was handed
over for it says only where the conversation shows that the command ran to its
end, and else it says what it sees — the command still running in the
background, the command interrupted, nothing of the command in the
conversation, and a „fertig“ after the run has gone on already. It rests on
this: by the rule the texts carried until the second part of (4) the run named
a failure in the first three, the block of this milestone on it.

Decided on 20 November 2026 by the person, the same entry, (15): the comment
with which `bin/devloop-install-issues` closes an issue after an install
during a session reads "devloop closed this issue after an install during a
session, the tool standing on this machine now: <the line>"; the comment at a
start stays. It rests on this: until the second part of (4) the comment named
an install typed in the session, also where the command ran in another
terminal.

Decided on 19 November 2026 without a question, by the rule that nothing is
asked where one way carries a great disadvantage and the other none, and
confirmed by the person, the same entry, (16): a command typed with `!` under
macOS or Linux that Claude Code runs in PowerShell, which takes
`CLAUDE_CODE_USE_POWERSHELL_TOOL=1` and `defaultShell` set to "powershell",
does not count. Reason: the other way would do away with form A everywhere.

Decided on 19 November 2026 without a question, by the rule that nothing is
asked where one way carries a great disadvantage and the other none, and
confirmed by the person, the same entry, (17): order (4) of the decision of 10
November 2026 above builds every place that hands a command over, the three
hooks no block held until then, the merge, the issue and the comment at the
closing among them, and not the six blocks alone. Reason: else the hooks would
contradict the skills in the graphical panel and under Windows. And it is
parted in three, since it does not fit one session. The first records, and is
that entry. The second builds the program that reads the surface and the
system, the rule on the forms with „fertig“ and with what the run says where
the command did not run to its end, the four hooks, the merge, the identity,
the comment in `hooks/subagent-start-install.sh` and the comment at the
closing. The third builds the wordings by the pattern at every place, the
steps for the PATH, the issue and step 4 of `setup-checks`. The order of the
orders above stands as decided on 10 November 2026, (4) in these three parts.

Decided on 19 November 2026 without a question, by the rule that nothing is
asked where one way carries a great disadvantage and the other none, and
confirmed by the person, the same entry, (18): the closing runs of this
milestone gain these cases, named above where the milestone ends: form B under
Windows in the terminal; form A with `respondToBashCommands` set to `false`
and once with the setting as it stands by default; and the steps for the PATH
in the graphical panel and in the desktop app. By the third of the five
sentences.

Decided on 20 November 2026 without a question, by the rule that nothing is
asked where one way carries a great disadvantage and the other none, and
confirmed by the person, the roadmap entry of that date on the one entry held,
the questions its report put: the second part of order (4) builds the six
places the block on the signal of form A names, a block of this milestone in
`docs/defects.md`. Reason: else, between the merges of the second and the
third part, the rule on the forms names two signs and those six places one. A
block both parts build, the blocks of this milestone on the graphical panel,
on the desktop app under Windows, on PowerShell under Windows and on the
wording of form B, and the block on `respondToBashCommands`, whose
sentence on „fertig“ at every handover the third part writes as point 2 of the
pattern, takes its Fix with the third part, its Note saying after the second
what stands. Reason: a run counts from the last change to the line of its Fix,
and Built before the wordings would not hold for the panel and for Windows.
And before it builds, the third part puts to the person the opening and the
close of the steps for the PATH for a check class's tool and for the folder
line read at a start, taken over from (11) of the entry on the handover by
surface. Reason: the wordings of 28 October 2026 there do not explain the PATH
either, which is why (11) was worded anew.

Decided on 21 November 2026 by the person, the roadmap entry of that date on
the program that reads the surface and the system: the step of the job hooks
on every system that starts the handlers runs each of the four hooks that hand
a command over on the path on which it hands over, twice, without
`CLAUDE_CODE_ENTRYPOINT` and with it set to `cli`, on all four systems. Reason:
the hooks change with the second part of (4); what their messages say of where
a command is typed was read on no system of the job until then, and under
Windows the job showed of it the self-test of `bin/devloop-surface` alone; and
the step feeds the guard on the mark so already, with an input of its own
after the handlers. Not chosen: a block for it alone, the closing runs of
order (7) walking the paths under Windows. Built with the second part of (4),
the block of this milestone on that step walked by a run of that part on the
person's Mac; under Windows the job ran the eight cases first at the pull
request of that part, run W1 of that entry, green on 21 November 2026. A case
reads of a message the exit, the words on the place, the command line and
the word typed after the command, so that the four things on the messages
under Windows, whose names name the request to say here or their word as
well, wait for the closing runs of order (7) all the same, above where the
milestone ends.

Decided on 21 November 2026 by the person, at the merge of the second part of
(4), the roadmap entry of 22 November 2026, "One entry held, a place added to
a block, a block on bin/devloop-text": the third part of order (4) gives the
job hooks on every system a case that runs `bin/devloop-text skill-name` on
all four systems and holds the line the program puts into the text. Reason:
that line was put into the rule in no run but T1 of the entry of 21 November
2026 on the program that reads the surface and the system, on the person's
Mac, and no step of the job runs `bin/devloop-text` on any system. Not chosen:
an order of its own right after the merge, which takes a pull request and a
run of the job more for one case; and the closing runs of order (7) alone, in
which a fault under Windows would show only at the end of the milestone, with
the person there. Built with the third part of (4), since 22 November 2026,
the roadmap entry of that date, "Every handover and the steps for the PATH
follow surface and system": the block of this milestone on that case carries
its Fix.

Decided on 22 November 2026 by the person, the roadmap entry of that date,
"Every handover and the steps for the PATH follow surface and system", (a): the
opening and the close of the steps for the PATH for a check class's tool and for
the folder line read at a start, taken over from (11) above, approved; with it
the sentence of the decision of 20 November 2026 above is met, that the third
part puts them to the person before it builds. For a check class's tool,
`setup-checks` step 3, the opening says that the command installed the tool into
the folder, that the folder is not in their `PATH`, the list of folders in which
their computer looks for programs, and that the check therefore does not find
the tool, and the close that the run then finds the tool and sets the check up.
For the folder line read at a start the opening names the command by the title
of its issue and says besides that the issue stays open, and the close says that
the run then finds the tool, closes the issue and builds the task, or closes the
issue and sets the check up where it concerns a check class. Not chosen: the
wordings of 28 October 2026 there, which do not explain the PATH.

Decided on 22 November 2026 by the person, the same entry, (b): in the desktop
app under Linux the step that ends the app names no key, as under Windows, that
they end the app entirely and open it again; under macOS the step keeps Cmd+Q.
Reason: under Linux there is no Cmd key, and that Ctrl+Q ends the app there is
neither read nor measured. Not chosen: Ctrl+Q, as (11) above has it for VS Code
under Linux.

Decided on 22 November 2026 by the person, the same entry, (c): in the terminal
of VS Code under Windows the steps for the PATH are seven, out of approved
sentences: Claude Code ended with `/exit`; the Windows step of (13) above with
its sentence on what the line does; all windows of VS Code closed and VS Code
opened again; a new terminal opened in VS Code through its menu Terminal; the
change into the project in the new terminal; Claude Code started there; and
`/devloop:start-work` typed in Claude Code. Reason: (6) above asks for a new
terminal in VS Code there, and (13) for the restart of the program that holds
the terminal, so that the steps hold whether VS Code gives a new `PATH` to its
terminals or not. Not chosen: the six steps of the terminal under Windows
unchanged.

Decided on 22 November 2026 by the person, the same entry, (d): in the graphical
panel and in the desktop app under macOS and Linux the line for the PATH goes
into the file of the login shell, `~/.zprofile` for zsh and for bash the first
of `~/.bash_profile`, `~/.bash_login` and `~/.profile` that is there,
`~/.profile` where none is; in the terminal, in the terminal of VS Code and on a
surface devloop does not know the file of the terminal stays. The sentence after
the line names VS Code in the panel and the app in the desktop app where it
names the terminal elsewhere. Reason: the panel reads its `PATH` from a login
shell, and the app by its page does the same; measured, in that entry. Not
chosen: the file of the terminal on every surface, which reaches the panel under
Linux with bash only where the login file reads `~/.bashrc` in, and the app only
if it reads interactively.

Decided on 22 November 2026 without a question, by the rule that nothing is
asked where one way carries a great disadvantage and the other none, and
confirmed by the person, the same entry, (f): the steps for the PATH stand once,
in `shared/path-steps.md`, inserted into `build-work`, `setup-checks`,
`start-work` and `plan-work`, by the rule of `docs/skill-conventions.md` under
"Text shared between skills". Reason: the reference to `build-work` step 3 point
7 pointed, in `start-work`, `plan-work` and `setup-checks`, at a text the run
does not load there. Not chosen: the steps written out at three places.

Decided on 22 November 2026 without a question, by the rule that nothing is
asked where one way carries a great disadvantage and the other none, and
confirmed by the person, the same entry, (g): the sentence on „fertig“ in the
handover under a no stands directly before the sentence on what the run does
once the command is through, where in form B of wording (1) of 28 October 2026
the request to say here stands, `docs/roadmap-archive-1.md` lines 41367
to 41368. Not chosen: before the closing question, parted from the command by
the way of the no.

Decided on 22 November 2026 without a question, by the rule that nothing is
asked where one way carries a great disadvantage and the other none, and
confirmed by the person, the same entry, (h): several issues under the no in
step 8 of `setup-checks` stay named one by one, as wording (9) of 28 October
2026 approves it, and the sentence on the bound reads that two issues in form B
can pass it, where it read that they pass it. Not chosen: one line joined by
`&&`, since point 5 of the pattern, (8) above, holds for the commands of one
handover.

Decided on 22 November 2026 without a question, by the rule that nothing is
asked where one way carries a great disadvantage and the other none, and
confirmed by the person, the same entry, (j): four findings of the third part of
(4) get a block each, written with that entry: on "Shift+Tab in the terminal" in
`build-work` and `plan-work` and on "`/clear` empties it without leaving the
terminal" in `untangle-idea`, both built by order (6), the texts users read; on
the message of the install guard that names the steps "as build-work step 3
point 7 has them", built by the next order that changes
`hooks/pre-tool-use-install-guard.sh`, by the decision of 18 November 2026 above
that the order touching the same place builds such a block; and on the
references to `build-work` step 3 point 7 in texts that are loaded elsewhere,
built on the branch of that part.
Reason: the rule of `docs/skill-conventions.md` that a finding in the code,
the skills, the shared texts, the hooks, the programs or the workflow gets a
block in every case. Not chosen: the findings in the report of the order
alone, where they would stand nowhere in the repository.

Decided on 24 November 2026 by the person, the roadmap entry of that date,
"A text a run did not hold is no repair, two blocks closed, three added", (1):
a text that said the should already when a run missed it does not count as the
repair, as it stands. Where it can be done, a hook takes the duty over without
blocking; otherwise a program the run uses with one call; a hook that blocks
only where the harm is great. A rewritten text counts only where the cause is
shown in the old text: a sentence that contradicts the should, or the rule
missing altogether. Where none of this takes hold, the block stays open and
goes to the person as a question of its own. Reason: the same text a run has
failed on already gives the next run no new reason to hold. With it the fifth
of the five sentences above reads as it does since that day, and the rule
stands in `docs/skill-conventions.md` under "A rule holds only on the path it
is written on", whose questions on a competing sentence and on the routes a
rule stands on are how a cause is shown. Not chosen: the text counts as it
stands and the closing runs of order (7) hold it, for the reason above, and
because it contradicts the fifth sentence. The numbers (1) to (7) are those of
that entry, where the counter-check stands and, for (5), the wording
approved, word for word.

Decided on 24 November 2026 by the person, the same entry, (2): the block of
this milestone on
the workflow file changed with sed is closed as left on purpose. Reason: no
cause is found in the text, `grep -rn -w sed skills shared` finding the rule
itself alone; the run named the fault itself as a slip,
`docs/roadmap-archive-1.md` lines 26042 to 26050; the change itself was right;
and a mechanism would have to block, which (1) rules out where the harm is
small. The block on the question on gitleaks is split. Its part on „installiert
nichts“ for „darf nichts installieren“ stays open, the cause shown: step 3 of
`skills/setup-checks/SKILL.md` says that under a no "the run installs nothing"
and asks of the question field, some lines on, "that outside the project the
run may install nothing"; the fourth part of order (5) builds it. Its part on
the command without backticks and on
the browser left out as the example is closed as left on purpose, as a block of
its own, for the reason of the first; the statement held in both runs. Both
closed blocks are opened again where the same fault comes back in a run and
does harm.
Not chosen: keeping the two open and moving them to milestone 13 to wait for
further runs; that milestone would hang on blocks nothing is built for, and
the condition above keeps them in sight.

Decided on 24 November 2026 by the person, the same entry, (3): the block on
run 2 installing on main before it cut the task's branch stays whole in this
milestone, as the decision of 5 November 2026 below has it, (11) of the roadmap
entry of that date on the sorting into the milestones. The third part of order
(5) builds one half: the message `bin/devloop-install-note` gives on the
default branch says besides that in the report the run stands as the writer of
the line and not the hook. The fourth part builds the other: step 3 of
`skills/build-work/SKILL.md` says that an install of a task runs on the task's
branch, after the cut, and that the main run installs nothing for a task
itself. The cause is the rule missing: `grep -n -i -E 'after the cut|before the
cut' skills/build-work/SKILL.md` finds nothing on it. The block of milestone 13
on the main run building the tasks itself stays apart from it.
Not chosen: moving the half on the install before the cut to milestone 13
beside that block, chosen first on that day and taken back the same day, since
the decision of 5 November 2026 puts it here and the rule missing in
`build-work` is a cause of its own by (1).

Decided on 24 November 2026 by the person, the same entry, (4): the check for
new versions is a workflow of its own that runs on GitHub once a week as a
scheduled run, at a minute that is no full hour, and is none of the checks
`main` requires. For every program it holds the version devloop read it at
against the vendor's newest and names those that are to be read anew, in four
groups: the programs the command reader knows; the installers the install guard
and `bin/devloop-tool-state` read; Playwright, Puppeteer and Cypress; and
Claude Code, where it reports a new version with its changelog to be read,
whether the guards still take hold after it being shown by a run, which belongs
to order (6). A reading that names no version gets it added once. A red run
changes nothing of devloop at its users and blocks no merge. The fifth part of
order (5) builds it, the block of this milestone on the readings going stale,
which named the first group alone until that day. GitHub's page on the event
`schedule`, "Events that trigger workflows" on docs.github.com, read on that
day, says: a scheduled workflow runs on the latest commit on the default
branch; its notifications go to the user who last modified the cron syntax in
the workflow file; in a public repository scheduled workflows are disabled
automatically when no repository activity has occurred in 60 days; and the
event can be delayed under high load, the start of every hour among the times
of high load, where some queued jobs may be dropped. Not chosen: the check on
every pull request, since every pull request would go red as soon as any vendor
releases something; and the check at the pull request alone that adds a line
"Done on", since once devloop is done there is no milestone any more and the
check would never run again.

Decided on 24 November 2026 by the person, the same entry, (5): where git is
missing or older than 2.31, devloop says so when a project is set up and at the
start of every piece of work and gives the steps as for `gh`, as the decision
of 19 November 2026 above on git has it; new is the wording, approved, which
that entry carries word for word: for a command that asks nothing, for a git
that is too old, for a command that asks for the password and for a page that
gives no command. Where `git config` gives no name or no address, devloop takes
the text `hooks/pre-tool-use-identity-guard.sh` hands over already, unchanged;
and the identity guard blocks every `git commit` as long as `git config` gives
no name or no address, and hands over the same text. Reason: an address git
guesses from the machine's name becomes public for good with the push, the
great harm for which (1) allows a hook that blocks; approved by the person with
the wording. The fourth part of order (5) builds it and takes the wording to
`docs/rationale.md`.
Not chosen: devloop saying so alone, without the guard on `git commit`, since
a session that goes on past what was said commits with a guessed address all
the same.

Decided on 24 November 2026 by the person, the same entry, (6): two findings on
the install guard under Windows with Git Bash get a block each under this
milestone, written with that entry. Under a record that says yes the guard
blocks every browser download of Playwright, Puppeteer and Cypress there where
neither a variable before the command nor a `--path` of Puppeteer names the
folder, since it names the default folders for macOS and Linux alone, and
`bin/devloop-tool-state` says not read
there for Cypress and Puppeteer, Playwright being read off its own dry run;
should: the default folders of the three under Windows are read from the
vendor's raw source at its newest version and named at the three places,
measured under Windows with Git Bash; the third part of order (5) builds it.
And the guard takes an installer's answer for a folder only where it opens with
a slash, what the installers answer under Git Bash not being measured, and
`bin/devloop-tool-state` reads the same answers; should: measured under Windows
with Git Bash for every program the guard asks, and an answer in the form of
Windows read as the same folder; the third part measures first. A third finding
of the same reading, a path in the form of Windows written in the command and
read as lying inside the project, is no part of this decision: it has a block
of its own by the rule of `docs/skill-conventions.md` that a finding in the
code gets one in every case, written with that entry; the third part builds
that block as well, as (7) below has it.
Reason for the two blocks of this decision: a finding in the code gets a block
in every case, `docs/skill-conventions.md`, and both stop an install under a
yes, which the closing run of this milestone under Windows walks.

Decided on 24 November 2026 by the person, the same entry, (7): order (5) is
built in six parts. The first writes these decisions down and changes no code.
The second, the programs: the line endings in put of
`bin/devloop-install-note`, in `bin/devloop-auto-mode-question` and in
`bin/devloop-tool-state`, pip, and the self-test of
`bin/devloop-install-issues`. The third, the install guard and the fact hook:
the folders for browsers, the two blocks of (6), the block on a path in the
form of Windows written in the command, found with those two, the message on
the steps for the PATH and the message on the default branch; the third block
belongs here since this part changes `hooks/pre-tool-use-install-guard.sh` and
the block is built by the next order that does, by the decision of 18 November
2026 above; and the block on an installer's answer the guard takes with a
carriage return at its end, found by the second part on 25 November 2026, the
roadmap entry of that date, "The install programs keep a file's line ending
and say pip is not read", on the same ground; and the block on an installer
written with its path, which `bin/devloop-tool-state` reads as none of the ten
it reads, written by the addendum of 25 November 2026 to that entry, since
this part changes the same function of that program for the second block of
(6), on an installer's answer in the form of Windows, by the same decision.
The fourth, the texts and git.
The fifth, the check for new versions. The sixth examines the sandbox and
reports.
Reason: the reading list of each part fits one session of Claude Code, and the
decisions stand in the repository before a part builds on them.

Why here: milestone 3 ends on one machine so that it has one variable, and
what it built — the guards, the record, the mode — is what has to run
elsewhere before any later milestone measures there; milestones 4 to 11 are
built on the Mac and measured on it, and this one widens what they stand on
rather than waiting for them.

Decided on 5 November 2026 by the person, the roadmap entry of that date on
the sorting into the milestones: the open blocks of milestone 3's subject,
the install permission, its record, its question, its guard, the command
reader and the handover, stand in this milestone's section of
`docs/defects.md`, since their cases run again here and an open block cannot
stand under a reached milestone; the 30 contradictions of the loaded texts
stay under "Without a milestone", open, and an order directly after that one
mends all 30 before this milestone's run, decision (5), since some of them
concern the installation, whose cases run here on every system, and most
follow from earlier decisions and are one line; the four blocks of this
section for which the person decided on 20 October 2026 that their case
cannot be forced carry the form of the rule under "Five sentences" and do
not hold this milestone up, decision (10); and the three small matters of
the three closing runs of 27 October 2026 — the start conditions read off
`origin/main` beside the program, the folders for browsers read around every
install, the install of a task on its branch after the cut — are built here,
decision (11), by decision (9) of 24 October 2026: what costs a few lines is
built all the same.

Conventions: "Works with nothing else installed" (gains the systems); "A
hook cannot see consent"; "Every failure is a block"; "Environment
constraints, measured" (gains the measurements per system, the machine
being kept awake among them).

### 13. The build loop with nobody there (build)

Decided on 5 November 2026 by the person, decision (2) of the roadmap entry
of that date on the sorting into the milestones, which drafted it; 170
blocks of `docs/defects.md` stood in its section on that day, and what
stands there today the tool counts on every run.

Covers: the question at the end of Stage 1 and in `setup-checks` step 8 with
its fields and the record it writes; the seven start conditions, read by one
program at the question and at the build; the mark, its guard and its
deletion; the build step with its subagent, the proof that a check guards
its condition and the exit codes it reads; the merge — the arming, the two
gate queries, the three refusal cases, the wait inside one answer, the
branch deletion, the handover with the person there, and the two open
measurements under "Open" below, whether `Duration` predicts the platform's
time and whether the failure signature after arming is stable; a command
that does not answer, a refusal of the classifier or of a safety check, the
bound on a call; what the run does with nobody there at a red or diverged
base, at a failed fast-forward, at a question inside a task, in
`diagnose-bug` and `build-prototype`, and in its last message; the answer
Claude Code sends by itself when `askUserQuestionTimeout` runs out, which
turns a run with the person there into one with nobody there, decision (14)
of 5 November 2026; and, decision (12) of that day, `build-work` step 2 with
the person there: once the spec is closed the run offers a loose issue and
takes it on a yes, where clause 3 of its order, "With the spec closed, take
it", stays for the run with nobody there, the wording of the offer approved
by the person before it is built — since with the spec closed, what the
person asked for is done, and a further issue is new work. The guard on the
mark reading the mode's record as well, decision (8) of that day, is built by
the order that mends the contradictions, before this milestone: built on 5
November 2026, the roadmap entry of that date on the contradictions mended,
through `bin/devloop-install-record --unattended`.

Ends with two runs on one fresh project, one through the planning under
`--auto` and one on the direct route, each meeting the cases the blocks of
its section name, read off the platform and the session logs; a third run,
decided on 6 November 2026 by the person, the roadmap entry of that date on
the language recorded, on a private repository under the plan Free of
GitHub, where the mode cannot be set up, through `setup-checks` up to its
step 8, meeting the case of the two blocks of this section on the reading
before the question — the HTTP 403 whose body says to upgrade or to make the
repository public, at which no question is put and nothing is written —,
which the two runs on the fresh project cannot meet, since the mode is set up
there; a fourth run, decided on 6 November 2026 by the person, the roadmap
entry of that date on the language signals, on a public repository of the
person's personal account, by a second GitHub account invited as a
collaborator with write access and without admin rights — a condition the
person establishes —, through `setup-checks` up to the end of its step 8 and
answering yes, meeting the second case of the block of this section on the
record saying no where the protection is refused once it is set: a
collaborator may push and merge pull requests, allowing auto-merge for the
repository is the owner's, and the reading before the question needs no
special rights, so the question comes, and on the yes the switch of
auto-merge is refused or reads back false and the record says no with that
reading as its reason; public, since a private repository under the plan
Free answers the reading before the question with 403; which sentence of
step 8 the run meets, the run shows; a bench for
each hook and program of the section; and the tool reporting every block of
its section walked, closed or carrying the form "Built, never walked, cannot
be forced". Every block of the section is checked against the code before
the build, as the rule under "Five sentences" says of every milestone's
order.

Why here: directly after milestone 12 and before milestone 4, decision (3)
of 5 November 2026. The runs of milestones 8, 9 and 11 build and merge; on a
repaired loop with nobody there each of them has one open question, as the
"Why here" of milestone 11 grounds it, where on the loop of today a defect of
the merge or of the mode would be a second variable in each. Not chosen: 13
and 14 directly before 9.

Conventions: "Every failure is a block"; "A hook that says 'hand this to a
person' assumes there is one"; "A duty to say something needs a place where
it is said"; "A rule holds only on the path it is written on" (the planning
route and the direct route both reach the build and the merge); "When a
command does not answer"; "In doubt, a run with nobody there is not
blocked"; "Never assert state — query it".

### 14. The setup and the text with the person there (build)

Decided on 5 November 2026 by the person, decision (2) of the roadmap entry
of that date on the sorting into the milestones, which drafted it; 123
blocks of `docs/defects.md` stood in its section on that day, and what
stands there today the tool counts on every run.

Covers: `setup-project`'s questions and steps from step 0 to step 8 and its
refresh — which, decision (7) of 5 November 2026, adds to a record under an
older yes the places this version names for the kinds the yes covers, the
five browser places among them, without a question, and says so in its pull
request, since the question names kinds and not places and the case returns
with every version that adds a place; `setup-checks`' steps 1 to 7 and 9
with the check table, the red proof and the skipped reasons; the planning
issue's record and the pick-up of an interrupted plan; the guards other than
the install guard, the hooks that run checks and their registration in
`hooks/hooks.json`; the git commands of the shared texts; the output style
and its hook, the form of a question, the widget's bound and header, the
language — a technical term the person's language uses as it stands not
translated, and the input named as the person types it, the two blocks the
person gave this milestone on 5 November 2026, decision (10), since every
run in German meets the first —, the skill-name rule; the session start and
`start-work`'s routes, where, decision (9) of that day, an open issue a person
wrote and not devloop counts as work: the run names it and offers to take it
up, on a yes the planning starts from it, on a no the open question what to
build follows, the wording of the offer approved by the person before it is
built, since whoever writes an issue in the project works along and wants it
taken up; the identity of a commit and the titles devloop writes in a user's
project; and, decision (13) of that day, the line at the end of a pull
request devloop opens: no fixed line of devloop's, but an option under
`userConfig` of `.claude-plugin/plugin.json` whose default is a line naming
devloop, shown in `/config` and appended by every skill that opens a pull
request where it is not empty, `README.md` saying that the line Claude Code
appends comes from its setting `attribution.pr` and where devloop's is
switched off, the wordings approved before the build, which checks the
lowest version of Claude Code devloop supports against the release that
substitutes `${user_config.KEY}` in skills — since the user decides in
`/config` what stands at the end of their pull requests, and a plugin cannot
preset `attribution.pr`.

Ends with a setup run on a fresh project with the person there through every
question and the check setup, a refresh of it, and a planning through Stage 1,
read off the session logs against the output style's rules on where text
stands; the setup run, decided on 6 November 2026 by the person, the roadmap
entry of that date on the language recorded, begins with the command alone in
a folder that holds one document the person wrote in a language and nothing
devloop wrote — decided the same day by the person, the roadmap entry of that
date on the language signals, that no document of the project is a sign of
the language, so that the run meets the case of the block of this section on
that beside the four; until that decision the folder was empty —, in a
session in whose context no instructions file of the
person in a language stands, so that it meets the cases of the blocks of this
section on the language — asked first where nothing shows it, the document
not counting, the answer that
names no language and is written in none the run can tell asked again, the
idea that shows none, and the language the setup ran in recorded —, and a
later session in the same project, in a session without such an instructions
file as well, takes the language from the record; how the person begins a
session without their instructions file in the context no text of this
repository says, so the condition alone stands here; a bench per guard,
hook and program of the section, the reader of the record of the language
with a value that is no name of a language among them; and the tool reporting
every block of its section walked, closed or carrying the form.

Why here: after milestone 13 and before milestones 8 and 9, decision (3) of
5 November 2026. Milestone 8 rewrites both setup skills for the start
command and the end-to-end shape, and milestone 9 splits every skill over
the final text, so the setup's text is to be final before either; and what
the person reads is the first thing a user of devloop meets.

Conventions: "Only ask where there is something to decide"; "Every question
carries its own reason"; "Every offer says where a no leads"; "Describe what
must be said; never dictate wording"; "A hook cannot force wording"; "Shared
words are defined in one place"; "Registering a skill".

### 4. The road to running, measured (measurement)

Three shapes: a tool that runs to completion, a service that stays up, an
application with an interface. Per shape, the four questions: how it starts,
what the run reads to know it runs, what happens on a failed start, and where
it stops. Plus three things the plan cannot claim today: whether a process
started in the background survives across turns in a devloop run (the harness's
own tool description, read on 19 September 2026 and quoted in the roadmap entry
of that date, says it does; nothing here has measured it); whether the
auto-mode classifier lets a start command through unattended (the records are
`go test` blocked as "Irreversible Local Destruction" on 14 September 2026 and
`brew install shellcheck` let through on 28 September 2026, neither a start
command, and which allow rule stood is recorded for neither);
and who ends a server and a browser the run started. It defines "read
mechanically" per shape: exit code and output; an answer on the port; state and
text out of the page. It lays down the interface bench: no bench has an
interface, and this one needs a stack the person picks.

Ends with a dated entry that confirms or moves the boundary under "Where the
set ends", shape by shape, every answer a measurement or marked as not
measured.

Why here: milestones 7, 8 and 11 build on that boundary, the first two naming
this one and the third needing its interface bench, and today it is a reading,
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
members today, each a roadmap entry: a lens that fell over and reported "no
findings"; reviewing agents that committed to the branch; a change to the
check chain landed unreviewed on the standalone route; a finding announced as
filed that was not filed; the glossary staying empty while the work coined
terms; a second review round that cannot read a change to the test
scaffolding; a lens checked against a decision it was not given; the `!`
channel the guards do not see. One member has left the list: the same failure
picture three times out of the review, with no counter and `record-lessons`
locked against being called, was built on 26 September 2026 at the close of
the review — `shared/rule-not-written-down.md`, inserted in `review-changes`
and `build-work`, without a counter, since nothing survives a task that a
later run could count against; the entry of 14 September 2026 in
`docs/roadmap-archive-1.md` records it, and the tool reads it as built and not walked
until a bench produces a finding at the close. Per item: built, and its
situation produced once on a bench, or the roadmap says why it cannot be
produced — a lens falling over was spontaneous, six of twenty, and there only
the form of the report is measurable.

Ends when the tool reports each item walked, its run dated in the roadmap, or
the item's roadmap line carries the reason it was not run.

Why here: the second sentence. Independent of 4; before 9.

Conventions: "Who may invoke a skill" (the lock on `record-lessons`, its price
met at the close since 26 September 2026); "A finding that would have passed
unsupervised gets written down"; "A reason is not the evidence the rule asked
for"; "A duty to say something needs a place where it is said".

### 6. Completion conditions (build)

The seven stage ends read against the two properties the roadmap took from
Pocock's `writing-for-agents`: whether the run can tell done from not done,
and how much it asks for. The roadmap lists the seven under the entry on the
comparison, five ending on a state and two on a judgement. Stage 1 of
`plan-work` ends on the empty frontier, the mechanism `untangle-idea` already
carries under "The interview": a round is the set of questions answerable now,
at most three of them, and the stage ends when that set is empty — not when
the run sees nothing important left, which is what let three questions through
on 14 September 2026. Brought forward on 12 October 2026, the roadmap entry of that
date on the decisions: the end on the empty frontier — no question answerable
now, every branch visited, nothing silently assumed, and the run acting only
once the person confirms a shared understanding, "nothing important is open"
gone — is built before the next run of milestone 3; the stack and the look
stay here.

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
it.

Ends with the full run on a fresh project on which the gate is set up — "on
the gated bench" until 5 October 2026, when the existing benches went out of
use: with the person through Stage 1,
alone to the closing sentence, no question in between, the mark written and
deleted, the merges read off the platform.

Why here: last of the rebuilds, over the final text; the long run is the
measurement the split owes, since the roadmap holds no compacted run; and the
set forbids "alone" before the end of Stage 1, so the run is attended that far.

Conventions: "Text shared between skills"; "Registering a skill"; the checks
under "Before a handover, run these" that hold a line or a count for every
skill, the number read off `skills/*/SKILL.md` by
`scripts/devloop-handover-checks`, and the list
`docs/handover-checks/invocability.txt` with its line for every skill; "A
count lives in one place"; the delegation claim in the roadmap, measured
first.

Recorded on 12 October 2026, the roadmap entry of that date on the decisions:
one session for a whole run can become a problem on larger ideas and is not
built now — the two closing runs of 11 October 2026 used about 65,000 and
50,000 tokens per task after the planning, which by arithmetic reaches the
compaction at about 967,000 after some 12 to 16 tasks, and no defect from the
context was seen in either; as an option for this milestone, the build loop as
a workflow the plugin ships, with the three measurements that entry names
first, each task as a session of its own with `claude -p` examined there and
rejected.

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

Why here, the last of the runs: it is the aim, and every earlier milestone
ends with a run of its own, so that this one has one variable. Until 5
November 2026 this read "Why last"; since that day milestone 15 follows it
and runs nothing.

Conventions: the machine has to be awake (the person keeps it so, by hand,
with what `setup-checks` step 8 names); the classifier records in the roadmap's
entries on the first planning run alone and on the install command of 28
September 2026.

### 15. The records of the development (text and measurement)

Decided on 5 November 2026 by the person, decision (2) of the roadmap entry
of that date on the sorting into the milestones, which drafted it; 103
blocks of `docs/defects.md` stood in its section on that day, and what
stands there today the tool counts on every run. Not
chosen: these blocks under "Without a milestone", each mended or closed
before the next Done, which would have held milestone 12 up with 103 blocks
of the records.

Covers: `scripts/devloop-stock-take` and its self-test, with the blocks of
its section on outcomes the stock-take found produced by no case, each with
its case and the run on it owed; its header; its search set and the records of
`docs/stock-take.tsv`; the checks under "Before you change anything, run
this" and "Before a handover, run these"; `scripts/devloop-run-workflow`; and
the statements of `docs/roadmap.md`, `docs/plan.md` and
`docs/skill-conventions.md` about the set that no branch mended — a date
wrong against a log, a line reference that drifted, a count gone stale, a
record standing on a wrong line, the benches of September. The three blocks
on the tool that the order of 5 November 2026 built with the form and the
check — the rejection of a not-a-thing record on a roadmap line, the things
and blocks Walked on a branch without a run the branch adds, the archive
named in the head for the entry of 29 September 2026 on the merge gate —
stand walked in its section since that day,
decision (15).

Ends with a run of the self-test under a version in which every outcome has
its case, recorded on each block; a dated entry listing each document
statement with what was corrected or why it is left, each block closed as
corrected in the document or as left on purpose; and the tool reporting
every block of its section walked or closed.

Why here: last, after milestone 11, decision (3) of 5 November 2026. Nothing
here gates a user or a run; placing it last brings the records in line once,
after the texts they describe have stopped moving, as milestone 9 is "last of
the rebuilds, over the final text" for the skills. An open block in its
section holds no other milestone's Done, since the rule under "Five
sentences" asks only that an open block stand in the section of a milestone
not yet reached.

Decided on 22 November 2026 by the person, decision (s) of the roadmap entry
of that date, "Every handover and the steps for the PATH follow surface and
system": the checks of this milestone that come back at every handover are
built before the rest of it, after the third part of order (4) of milestone
12 and before order (5). The checks under "Before a handover, run these"
that answer with yes or no run as a step of
`.github/workflows/stock-take.yml` on every pull request, and a program the
same workflow runs holds the references between the documents a script can
hold, among them a German wording of `docs/rationale.md` standing word for
word in the roadmap or its archive, a letter of a decision that a document
gives an entry standing in that entry, an entry a document names by its head
standing once, and a line of a file that `docs/plan.md` names against the
rule at its head. Which checks those are, how the workflow runs them without
their standing at two places, and how each reports green and red, the person
decides before the order. Correcting the statements of the documents that no
branch mended stays here, last. Reason: these checks cost work at every
handover, ten of the 34 merges from 5 to 22 November 2026, #228 to #261,
being consistency audits, and the orders of the third part of (4) cut the
twenty checks out of `docs/skill-conventions.md` and held quotes, letters
and counts with throwaway scripts of their own; the reason for placing this
milestone last, that the records are brought in line once after the texts
they describe have stopped moving, holds for that correcting and not for
checks that come back.
Not chosen: this milestone last as a whole, as decided on 5 November 2026,
under which every audit until then holds these by hand.

Decided on 23 November 2026 by the person, decisions (a) to (h) of the roadmap
entry of that date, "The checks before a handover run as one program on every
pull request", which builds the checks of decision (s) and decides the form of
the references. (a) The five checks whose output somebody judges run in the
workflow too: the one on invocability against
`docs/handover-checks/invocability.txt`, the four others each against a list
of the lines that were read and found right; a new line or a line gone is red,
and the branch that changes it reads it and brings the list in line.
`scripts/devloop-run-workflow` stays a check run by hand, since it runs the
workflow itself. Reason: decision (s) builds these checks first because they
cost work at every handover; by hand the checks with the most reading would
have stayed, and a line that vanishes would have dropped out in silence, as
the site with "picks up once" did on 7 September 2026. The output of these
checks changed in 3 of the 35 merges from 5 to 22 November 2026 and in 17 of
the 113 from 1 October 2026 to that day, each day as its commit carries it,
measured with their commands of `c047c03` over `skills/` and `shared/` at
every commit of the first-parent line of main, compared without line numbers.
Not chosen: the five by hand under the heading, the should since 12 October
2026 of the block "fourteen of the nineteen checks under Before a handover,
run these have a fixed expected answer and run only where somebody starts
them" of `docs/defects.md`, which this decision changes. (b) The checks stand
in one program under `scripts/` that the workflow runs as a step; the same
program later takes the references between the documents; the conventions keep
the reasons and name for each check its name in the program. Reason: it runs
by itself in seconds, after every change to a skill too; its self-test walks
every red case, where until then an order made each by hand; one new program
and not two. Not chosen: each check a step of its own of the job `stock-take`,
the form other rules of the conventions take, under which the checks run here
only with the whole workflow and every red case is made by hand; and the
workflow cutting the commands out of `docs/skill-conventions.md`, where green
stands in prose alone and an indented quote under the heading would run as a
command. (c) The program holds the four kinds of references of decision (s),
no counts and no quoted place in general. Reason for the counts: a check would
hold only the counts written in its form and so rest on the memory of whoever
writes, whose gaps the audits find; the counts that go stale most often "A
count lives in one place" keeps out of the text that carries no date, and the
audit of 6 November 2026 replaced three. Reason for the quoted places: of 795
quotes behind a file name in the five documents under `docs/`, the archive
left out, at `c047c03`, 158 do not stand in the file named, and of the first
40 of them, read by hand on 23 November 2026, 27 stand elsewhere than in the
file named — 8 heads of entries, 6 heads of rules or sections, 7 approved
wordings of what a run says, 4 subjects of commits and 2 titles of blocks or
finds —, 9 are older wordings of that file, found in it at the commit the
place names, and 4 are found in it at no commit read; such a check would be
red from its first day. Not chosen: counts in a fixed form that
the program computes again. (d) The program reads the references only in the
lines a branch adds or changes, with their paragraph; a head a branch adds
stands nowhere else; lines that move into a new archive count as moved. The
breaks that stand today the order on the references finds once, with a full
run, and writes as blocks. Every find is reported with file, line, text and
what makes it green; the last line opens with `green:` or `red:`, and the
program ends with 0, 1 or 2. Reason: what the four kinds refer to, the entries
on main and the archive, does not change; a new break arises in a line the
branch writes, and reading everything would be red on breaks no branch may
mend. Not chosen: reading everything, with a list of the known breaks. (e) The
lists stand under `docs/handover-checks/`. Reason: the root directory holds
the parts of the plugin, and the lists are records of the development like
`docs/stock-take.tsv`. Not chosen: `handover-checks/` in the root directory.
(f) The check of the default branch gets a second line that counts the files
carrying the opening line `DEFAULT=$(git symbolic-ref`; green is `1` and `4`,
the way the check of the notice holds its count. Reason: the check was green
where the block was missing in all four files, four checksums of nothing being
one line, measured in a throwaway clone at `c047c03`. Not chosen: leaving the
gap. (g) The check on locked skills prints a line for every place and not for
every file, in the form of the three other lists, file and text without the
line number. Reason: by (a) nobody reads the output any more, so a second
naming in a file the list carries already has to turn red as a new line. Not
chosen: a line for every file. (h) The self-test of the program runs in the
job hooks on every system under macOS alone. Reason: nobody hands over from
Alpine, and a red there would hold a pull request up for a system that is not
needed for it. Not chosen: under Alpine too. Built of decision (s) with that
entry: the checks, in `scripts/devloop-handover-checks` with its self-test and
its lists, run by two steps of the job `stock-take` and, the self-test, by the
job hooks on every system. Not built with it: the references between the
documents, whose form (c) and (d) decide; they are built since 24 November
2026, the roadmap entry of that date, "The checks before a handover hold the
references between the documents", the paragraph below. Until that day this
paragraph said that the order on them follows, before order (5) of milestone
12 as (s) places it.

Decided on 24 November 2026 by the person, decisions (1) to (4) of the roadmap
entry of that date, "The checks before a handover hold the references between
the documents", which builds the references of decision (s) in the form (c)
and (d) above decide, as three checks of `scripts/devloop-handover-checks`.
(1) Of the four kinds of references of decision (s) the first falls away, a
German wording of `docs/rationale.md` standing word for word in the roadmap or
its archive, and decision (n) of the roadmap entry of 22 November 2026, "Every
handover and the steps for the PATH follow surface and system", stays; the
program holds the three other kinds. Reason: `docs/rationale.md` is loaded
into no session, as its opening says, and what a user reads the model writes
from the description in the skill, which gives no wording, "Describe what must
be said; never dictate wording" in `docs/skill-conventions.md`. So the check
would guard a copy in the documents and not what users read, and the two
places where an approved wording reaches users word for word, `README.md` and
the rule in `bin/devloop-auto-mode-rule`, it would not read. Its use is small:
of 309 German quotes in `docs/rationale.md`, each read from „ to the next “ or
straight quotation mark, counted on 24 November 2026 at `b50e023`, 300 stand
word for word in the roadmap or its archive; the 9 others are eight wordings
that (a), (c) and (d) of 22 November 2026 approved and that by (n) stand in
`docs/rationale.md` alone, and one that (b) did not choose; none goes back to
a change nobody noticed. Its cost would be real: every approval would make the
roadmap longer again, against which (n) decided, and a German quote that is no
approval, „mit Ctrl+Q“ under `shared/path-steps.md` in `docs/rationale.md` for
one, would be red. Not chosen: (n) taken back, the entry that approves a
wording quoting it word for word again, as the entries of 28 October and of 19
and 20 November 2026 did, and the check holding both places alike. (2) A head
cut with „…“ before its closing quotation mark is green where the text before
the „…“ opens exactly one head, and red otherwise. Reason: what the check
holds, that the entry named stands once, can be decided for a head cut so; the
documents cut quotes openly with „…“; and the one head cut so on that day
stands in a dated entry of `docs/roadmap.md`, the entry "Six contradictions
settled, the README says what the mark guard reads.", which no branch may
mend, so that a branch correcting a line number in that paragraph would be red
on a break it may not mend. Its price: a new entry may cut a head as well. Not
chosen: red, a head being named whole or not at all, the rule the field Found
of a block has, one rule without an exception. (3) A head named without the
period it ends on is red, and green by the period. Reason: the head is the
text between `- **` and its closing `**`, as the header of
`scripts/devloop-stock-take` reads it for the field Found, and the period
belongs to it; counted on 24 November 2026 at `b50e023`, 823 places quote a
head whole and 2 do not, in this file under "The aim" and in `docs/roadmap.md`
under "Where these would attach", and both can be mended, neither standing in
a dated entry. Not chosen: green, a quote that is a head once a period stands
behind it naming that head, since the entry named stands once and nothing is
broken in substance; an exception in the rule for a form at 2 of 825 places.
(4) Without `origin/main`, or without a commit HEAD shares with it, the
program cannot run and ends with 2, one line on stderr and no last line;
`--all` runs without that commit. Reason: the program has three exits, and a
check that cannot read its lines is neither green nor red. Not chosen: one
line and not red, as `scripts/devloop-stock-take` holds it where it finds no
`origin/main`, whose report has a line of its own for that, where the last
line of this program has none. Built with that entry: the three checks,
`entry-heads`, `entry-letters` and `plan-lines`, read in the lines a branch
adds or changes with their paragraph and, with `--all`, in every line; what
each holds the head of the program says. The breaks that stood on that day the
full run of (d) found, and they stand as blocks of this milestone, mended with
the statements of the documents, last.

Decided on 24 November 2026 by the person, the roadmap entry of that date,
"One entry held, three sentences mended, the audit put before the push": every
branch of an order gets its audit before the push, as the last part of the
order, in a session of Claude Code that did not build it. That session holds
the entry sentence by sentence against code, tool, table and runs and searches
the whole repository, with several patterns for each subject, for every place
that a change or a decision of the branch makes wrong. Documents it mends in a
commit that changes `docs/` alone, so that the recorded runs count; at an
error in the code it stops and reports. Before a milestone gets a line "Done
on", an audit holds its whole area against the plan. No audit any more as an
order of its own after a merge and none at a handover of the chat; an order
that is itself an audit is checked at the merge. The rule stands in
`docs/skill-conventions.md` under "Before a push, the branch is audited".
Reason: of the 34 merges from 5 to 22 November 2026, #228 to #261, ten were
consistency audits, as the reason of decision (s) above counts them. What they
found, the branch held had mostly caused itself: #265 found in the entry held
a wrong date, a wrong line number and two omissions, and in the documents 41
places, most of them counts and ordinals that #264 had made stale. After the
merge every such finding costs a pull request of its own and, an entry on main
not changing, a new entry that says what was wrong. Of the findings of the six
audits #253, #257, #259, #261, #263 and #265 that change what devloop does or
what a user reads, a branch had caused three itself, in its lines or at places
its decision made wrong: the blocks "devloop reads neither the version of git
nor the name and address git config gives before the first commit, while
README.md says it says so", "six places name the command's output in the
conversation as the one signal of form A, the person saying nothing, where the
first of two signs counts" and "no step of the job hooks on every system runs
bin/devloop-text, so no system of the job shows the line it puts into the rule
on the forms" of `docs/defects.md`. One stood in an area no branch touched,
found because an audit held the open blocks of milestone 12 against the plan:
"setup-checks step 8 names the command that keeps a machine awake for macOS
alone, none for Linux or Windows".
Not chosen: the audit as an order of its own after a merge and at a handover
of the chat, as until that day; and an audit before the push that reads the
changed lines alone and misses the places a decision of the branch makes
wrong elsewhere.

Conventions: "A count lives in one place"; "A figure taken from a command is
copied out of that command's output"; "Never assert state — query it"; "A
run's date is copied from the session log of that run, not from memory"; "An
archive of the roadmap never changes".

Beside the milestones, one piece of work is waiting and is not a milestone:
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
- Whether the text of a pull request devloop opens in a user's project can say
  that it comes from devloop, beside or instead of the line Claude Code adds
  from its setting `attribution.pr`; asked by the person on 26 October 2026
  in the first closing run of the milestone 3 pass, the roadmap entry of 27
  October 2026 on the three closing runs. Decided on 5 November 2026 by the
  person, decision (13) of the roadmap entry of that date on the sorting
  into the milestones: devloop writes no fixed line; an option under
  `userConfig` of `.claude-plugin/plugin.json`, its default a line naming
  devloop, is appended by every skill that opens a pull request where it is
  not empty, and `README.md` says where Claude Code's line comes from and
  where devloop's is switched off; milestone 14 takes it, a block of
  `docs/defects.md` holds it, the wordings approved before the build.
- **The list for the milestones after milestone 3**, whose order the person
  sets, since 31 October 2026, the roadmap entry of that date on the audit
  after milestone 3, which names each point with its status line in
  `docs/roadmap-archive-1.md` or with the lines of the entry that name it: the merge
  handed over for an armed pull request, with the wrong sentence on who merged
  the first (status line 43116); the decision on `--pdfFit` taken without the
  person (43139); a lens or a builder writing into the project or ending
  processes with `pkill` (42226); the summary that arrived collapsed before
  „Ist die Idee so verstanden?“, the hard core in no message (25960); Claude
  Code's block of `sleep`, of which devloop says nothing (30379); the question
  on the loose issues where step 2 of `build-work` has a rule (the entry on
  the short run, lines 43061 to 43069); the repeated reading in step 6 with
  the person there (the same entry, lines 43069 to 43072); defect 8 (39600)
  and defect 11 (39827) of the entry on the three closing runs, and its small
  matters 3, 9 and 10 (39514, 39614 and 39631); and the question on
  `attribution.pr` above. Decided on 5 November 2026 by the person, decisions
  (11), (12), (13) and (14) of the roadmap entry of that date on the sorting
  into the milestones, which sorted every block: the merge handed over for an
  armed pull request, with the repeated reading in step 6, milestone 13; the
  decision on `--pdfFit`, milestone 13; the lens writing into the project,
  milestone 5; the collapsed summary before „Ist die Idee so verstanden?“,
  milestone 6; the block of `sleep`, milestone 13; the question on the loose
  issues, a new block of milestone 13 on `build-work` step 2 with the person
  there, decision (12); defects 8 and 11 of the entry on the three closing
  runs, milestone 13; its small matters 3, 9 and 10, built in milestone 12,
  decision (11); the question on `attribution.pr`, milestone 14, decision
  (13).
- What devloop does with an answer Claude Code sends by itself once the time
  `askUserQuestionTimeout` sets has run out, the field `afkTimeoutMs` marking
  it, where today devloop takes it for the person's answer; recorded on 1
  November 2026, status line 44850 of `docs/roadmap-archive-1.md`, the roadmap entry of that date on the
  question timeout, which leaves to the person which milestone takes it up.
  Decided on 5 November 2026 by the person, decision (14) of the roadmap
  entry of that date on the sorting into the milestones: milestone 13 takes
  it up, an answer the harness sends in the person's absence turning a run
  with the person there into one with nobody there.
- Whether a process started in the background survives across turns in a
  devloop run (milestone 4).
- Whether the classifier lets a start command through unattended (milestone
  4), and which allow rule has to stand for a start or an install command
  (milestones 3 and 4). Whether it lets an install command through was
  measured on 28 September 2026: one `brew install` passed it once, with the
  guard out of the way, and the roadmap entry of that date says what that
  does and does not license. Since 9 October 2026 the rule for an install is
  the one `setup-checks` step 8 enters under `autoMode.allow` after a yes,
  text 4 of the roadmap entry of that day, decision 10, in the wording of 23
  October 2026 since that day; in the second closing
  run of 11 October 2026 it stood and the two installs with nobody there met
  no refusal of the classifier, the roadmap entry of that date on the second
  closing run, and whether they passed because of it is not measured.
- Whether a headless browser runs on this machine unattended, and who ends it
  (milestone 4).
- What `npx playwright install` lands outside the repository; not read from
  the vendor before 28 September 2026, and read that day off
  `playwright.dev/docs/browsers`: three cache directories under the home
  directory with nothing set, the operating system's own location for Chrome
  and Edge, and the roadmap entry of that date carries the reading. What
  stayed was that destination entering the guard's list of places, milestone
  3's drivers half, not built on 28 September 2026 with the tools half and
  built on 8 October 2026, version 0.131.0: the five default places of
  Playwright, Cypress and Puppeteer on macOS and Linux stand in the record,
  the guard holds the download against the one for the system it runs on,
  and this item is closed.
- Whether a runtime is one of the kinds the install permission may cover
  (milestone 3). Ruled no on 28 September 2026, "Runtimes are not a kind the
  permission may cover" in `docs/skill-conventions.md`: a yes could not be
  honoured and a no could not be enforced, so a compiler or interpreter stays
  the person's under every answer, and this item is closed.
- Whether a look file can be read out of a stylesheet mechanically
  (milestone 7).
- Whether a split skill loads its other halves when called (milestone 9).
- What survives a compaction: the roadmap holds the vendor's figures and an
  approximation, and no compacted run (milestone 9).
- Whether `Duration` in `checks.md` predicts the platform's time, and whether
  the failure signature after arming is stable; the roadmap entry on the run
  stopping four times after arming names both. No milestone covered them
  until 5 November 2026; since that day milestone 13, which takes the merge
  and its arming, names them.
- Whether an idea whose destination is unknown can be produced on demand
  (milestone 6).
- The cost per branch. Milestone 1 carries a cost only where the roadmap named
  one, on six things; no milestone names the rest, each building milestone
  names its own.
- The state of the benches. Read on 19 September 2026 off the platform, every
  bench carries an older version in `environment.md` than the one installed;
  the roadmap entry of that date carries the figures. Until 5 October 2026
  this item ended "Every bench is refreshed before a run on it". Since that
  day the existing benches are neither used nor measured any more — their
  check tables carry the one shape a skip had until then, and nothing is
  carried over — and every further run gets a fresh project. The rule, since
  6 October 2026: every run gets a fresh test project, with one exception —
  a run may reuse a project an earlier run from 0.129.0 on created, where it
  builds on that project's content or checks more that way, and the
  milestone then names the project and the reason. The existing benches stay
  out, their check tables carrying the old form.
- Which stack the interface bench gets; the person picks (milestone 4).
- How many skills and how many control documents there are at the end
  (milestones 7 and 9); both are counted in several places today.
- The commit of Pocock's repository the comparison was read at; never pinned
  (milestone 10).
