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
5. A rule that does not hold in a run is rewritten, not appended to, and every
   place deciding the same thing is named in the same change.

The fifth is `docs/skill-conventions.md` twice over: "A rule holds only on the
path it is written on", and the third rule under "A field is not an answer to a
question it was not asked". The first is the form the same file gives under "A
finding that would have passed unsupervised gets written down": where it can
happen again and cannot be prevented, that is the answer and it gets written
down as one.

## Twelve milestones, in this order

Each carries its kind, what it covers, what ends it, why it stands where it
stands, and the conventions it meets. "Conventions" names sections or bold
heads of `docs/skill-conventions.md` unless another file is named. The list per
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

The things: the twelve skills down to their branches, `shared/`, since 15
October 2026 `output-styles/`, `hooks/`,
`bin/`, `scripts/` and the workflow under `.github/` down to their outcomes,
the tool itself included; the
nineteen checks under "Before a handover, run these", seventeen until 28
September 2026 and eighteen until 5 October 2026, and the check under
"Before you change anything, run this", both outcomes of each; the twenty
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
line under "Known gaps"; every row under "Named, not built as skills". A
comment line of a hook, a program or a workflow and a docstring line of a
python program stand in no search set. A line of it that no record covers is
reported, so a line nobody read is seen rather than missed, and a line that
can carry no anchor is listed rather than dropped; a status word under "Known
gaps" broken over a line break is listed under a heading of its own and turns
the tool red. The calls, the comment lines and the broken status word since 12
October 2026, the roadmap entry of that day on the four changes to the tool;
the rules stand in the tool's header, section E.

Ended when the tool reported no broken record, no unit without a straight
path, no uncovered line of the search set and no finding left in the table,
so that a third person can check any line without having been there: the
tool proves that every anchor stands where its record says, and every state
is recomputed from the files as they are. A finding recorded since the close
stands in the table as a finding until an order moves it, and the tool lists
it on every run; how many stand today is read off that output.

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
29213, 5232, 12527, 11463 and 27167 of the roadmap, which do not hold the
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
decided on 23 October 2026 for line 7923 of the roadmap: `gitleaks` uninstalled
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
tree — the entry of 11 September 2026 in `docs/roadmap.md` on planning
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

Milestone 3 closes on the person's Mac in the terminal. This milestone fixes
which operating systems and which surfaces of Claude Code count — the
terminal, the desktop app, the IDE extensions, the web — and brings the
hooks, the programs and the guards into a form that runs on each: every
command guard stands on the tool `Bash` alone in `hooks/hooks.json`, and the
hooks reference says that a command hook's `shell` field "defaults to
"bash", or to "powershell" on Windows when Git Bash isn't installed", that a
shell hook runs under `sh -c` on macOS and Linux and under Git Bash on
Windows, or under PowerShell where Git Bash is not installed, and, under its
PowerShell section, that "a hook that matches only `Bash` never fires
there" — so a guard for PowerShell is part of it. It decides how devloop
reaches cloud sessions, or that it does not: the skills page, "How injected
commands run" and "When an injected command fails"; the tools reference,
"PowerShell tool"; the VS Code page, "VS Code extension vs. Claude Code CLI";
the JetBrains page, "Installation"; the desktop page, "Install plugins". And
it brings the commands that keep a machine awake under Linux and under
Windows, which `setup-checks` step 8 names today for macOS alone,
`caffeinate`, and for no other system — text 6 of the roadmap entry of 9
October 2026, part 5: until this milestone the sentence for every system
stands alone there.

Ends with one run per system, the cases of milestone 3 included: the guards
read, the mark written, the install under a yes, each on that system's
surface. A first piece stands since 14 October 2026, the fourth addendum of
the roadmap entry on the command reader: the reader runs on the three
systems, and a workflow job runs its self-test and every hook on
`ubuntu-latest`, `macos-latest` and `windows-latest`, there under Git Bash,
on every pull request, and since the fifth addendum of that day under Alpine
3.22 with busybox awk as well, in a container on `ubuntu-latest`; the guard
for PowerShell and the rest of this milestone stand as before. What devloop
does on a system without bash belongs here too: the hooks and the programs
are scripts for bash, and Claude Code's system requirements, read raw at
code.claude.com/docs/en/setup on 14 October 2026, name "Alpine Linux 3.19+"
among the systems and "Bash, Zsh, PowerShell, or CMD" as the shell, Alpine
not carrying bash by default - the page's own section on Alpine installs it
with `apk add bash curl libgcc libstdc++ ripgrep` before Claude Code runs
there. Nothing of this is built yet.

Why here: milestone 3 ends on one machine so that it has one variable, and
what it built — the guards, the record, the mode — is what has to run
elsewhere before any later milestone measures there; milestones 4 to 11 are
built on the Mac and measured on it, and this one widens what they stand on
rather than waiting for them.

Conventions: "Works with nothing else installed" (gains the systems); "A
hook cannot see consent"; "Every failure is a block"; "Environment
constraints, measured" (gains the measurements per system, the machine
being kept awake among them).

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
`docs/roadmap.md` records it, and the tool reads it as built and not walked
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
it, and every place that counts twelve changes too.

Ends with the full run on a fresh project on which the gate is set up — "on
the gated bench" until 5 October 2026, when the existing benches went out of
use: with the person through Stage 1,
alone to the closing sentence, no question in between, the mark written and
deleted, the merges read off the platform.

Why here: last of the rebuilds, over the final text; the long run is the
measurement the split owes, since the roadmap holds no compacted run; and the
set forbids "alone" before the end of Stage 1, so the run is attended that far.

Conventions: "Text shared between skills"; "Registering a skill"; the checks
under "Before a handover, run these" that count twelve files; "A count lives
in one place"; the delegation claim in the roadmap, measured first.

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

Why last: it is the aim, and every earlier milestone ends with a run of its
own, so that this one has one variable.

Conventions: the machine has to be awake (the person keeps it so, by hand,
with what `setup-checks` step 8 names); the classifier records in the roadmap's
entries on the first planning run alone and on the install command of 28
September 2026.

Beside the twelve, one piece of work is waiting and is not a milestone:
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
  October 2026 on the three closing runs; decided by the person after
  milestone 3, and no milestone names it.
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
  stopping four times after arming names both, and no milestone covers them.
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
