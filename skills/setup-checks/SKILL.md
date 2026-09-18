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

**Never say a skill's name to the user.** The stages have names so the skills can
call each other; to the person in front of you they are just what happens next.

Turn every class in `docs/agents/checks.md` that still says `empty` into either
`filled` or `skipped: <reason>`.

**Filling all nine is not the goal.** A class that does not apply to this project
costs runtime and finds nothing. `skipped` with a reason is a finished answer for
as long as that reason holds, and some reasons are about a state the project will
grow out of; `empty` means nobody decided yet.

This skill changes the project from the outside — it adds tools and configuration.
Move carefully and ask before anything that reaches beyond the repository.

**Called for a single class**, which is how a build step reaches this skill when
the task it is building created the target: fill that one class, leave the others
untouched, and stay on the branch you were called on rather than cutting a new
one — the build owns that branch. Everything else below applies unchanged.

If a tool call fails, **say so**. Do not carry on as if it had returned, and do
not substitute something else without naming what failed.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text missing-command`

## When a command does not answer

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text command-does-not-answer`

## A guard's block is not a decline

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text guard-block-intro`

- **The command really is an install this class needs.** The guard did what it
  was built for. With the user there this is the question already described
  below, and a decline makes the class `skipped` with that reason. With nobody
  there, there is no one to ask: the class goes `skipped` with the block as its
  reason and the report names it. `secrets` is the exception it always is — it is
  never `skipped`, so there the run stops with the reason named instead.
- **The command is not an install and the guard matched on text.** Then nothing
  is blocking the class, and `skipped` would be an entry that is not true: a
  class standing as skipped while nothing hinders it, which the next reader takes
  for a decision somebody made. Do not skip it. Put the text through the editing
  tool rather than through the shell, and where that does not reach, stop with
  the reason named.

Neither case is a reason to write the class differently from what it is. What
tells them apart is what the command would have done, not what the guard matched.

## How to ask

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text how-to-ask`

## With nobody there

This skill is reached with nobody there from two places, and the mark
`.claude/unattended.local` says so. From a build that had an install declined for
a check class, which records the class as `skipped` with that reason and asks
nothing. And from the step after a merge that re-reads expired skip reasons,
where "Ask anyway where filling it changes their project" in step 2 can meet
nobody to ask. There the class stays as it is — `skipped`, with the expired
reason and a note that filling it needs their say — and an issue carrying
`raised-here` and `needs-human` says what filling it would add to their manifest
or put on their machine. The less committing option is the one that changes
nothing of theirs. Step 8's offer of the mode is never reached with nobody there:
it stands in a first setup, with them present.

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
`skipped: <reason>`, and the reason goes into its Status column when you write
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
- **`secrets` is never skipped.** Credentials get committed by accident
  everywhere, whoever owns the repository.

A reason that will expire is still a reason: no third-party packages yet, no
entry point yet. It goes in as `skipped` with that state named, and the step
after a merge re-reads these and fills the class once the state has changed.

**The cell is machine-read.** One line, plain ASCII, no `|` — the parsers split
the row on it by position. Where the reason needs more than a phrase, the phrase
goes in the cell and the long form under "What these checks do not cover".

## Cut the branch before the first write

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text cut-branch`

## Step 2 — Propose, in plain words

Present what you would do, one line per class: what it would catch, roughly what
it costs to set up, and which tool you would use. For the ones that do not apply,
say so with the reason.

Never name a class by its label alone. "secrets" means nothing to someone who has
not read the file; "searches the code and the git history for credentials that
were committed by accident" does.

Ask which to do now. All of them, some of them, or none — filling them later is
always possible. That question belongs to a first setup, where what this
project's check suite will be is genuinely theirs to settle.

**A class that is only back because its own reason expired is not that
question.** A skip is a decision already made, with its reason written next to
it — no code yet, no entry point, no third-party dependencies — and a merge is
what turns one of those false. Then there is nothing left to weigh: say which
reason no longer holds, fill the class, and report it. Asking again hands back a
decision the user already made, with nothing new to make it on.

**The reason has to be actually false, not merely older.** "No entry point
exists yet" still holds while the entry point is a stub, and filling a class
against a stub produces a check that proves nothing.

**Ask anyway where filling it changes their project rather than this workflow's
plumbing.** A dependency added to their manifest, or anything installed on their
machine, is theirs to allow, whatever made the class eligible. A test case and a
target in the task runner are not. When both kinds come up in one round, state
the ones that cost them nothing and ask about the ones that do — never side by
side as though they were the same kind of thing.

## Step 3 — Prefer tools that live inside the project

A tool declared in the project's own manifest travels with the repository and
works for everyone who clones it. A tool installed system-wide does not, and it
changes the user's machine.

**Name what you just wrote down as something to grant.** A check command
recorded in `checks.md` is something this workflow will run on every task from
now on. You cannot record the grant — the permissions file belongs to the tool
and writing it is refused — so say which commands they are and that choosing
"always allow" the first time each appears, or setting them in `/config`, stops
the confirmations. Setup could not name them, because they did not exist yet.
Only the check commands themselves — never what was needed to install them.

**Never install anything system-wide without asking**, and say plainly that it
reaches beyond this project. If the only candidate for a class needs a system
install and the user declines, that class becomes `skipped` with that reason —
not `empty`.

**The command is backed before it is handed over**, and the backing is one of two
things: the vendor's own installation line, quoted from where it was read, or the
path in the command resolving — `go list -m <module>@<version>` and its
equivalent wherever the package comes from. Say which of the two it hangs on.
This step is where it matters most: a check class is filled by naming a tool, so
this is the likeliest place in the whole workflow for a wrong path to be typed.
Measured on 6 September 2026 in `devloop-test-o`, exactly that happened to a
linter — `github.com/gitleaks/gitleaks/v8@latest` handed over as it stood, the
module path being `github.com/zricethezav/gitleaks/v8`, and it failed first in
the workflow on the main branch after the pull request carrying it had merged.
**Backed before it is handed over covers every way it travels**, the message and
any issue carrying the command alike.

**Whether it worked is read off the result, not off their message.** Look where
that command puts things — the path the installer writes to, read from the
installer rather than assumed, `$(go env GOPATH)/bin` or `$GOBIN` for `go
install` — and see the tool there before the class counts as filled. **`command
-v` answers a different question**: it finds any copy anywhere on `PATH`,
including an older one something else put there, which is what made the broken
line above look like a success on the user's machine.

## Step 4 — Introduce each class in stages

Turning a strict tool on a codebase that has never seen it produces hundreds of
findings at once, and fixing them in one commit makes the change unreviewable.

For each class:

1. Turn it on and see how many findings there are.
2. Fix what the tool can fix by itself, as its own commit.
3. Park what is left as narrow, commented exceptions, each naming what it defers.
4. Remove the exceptions one rule at a time, in later commits.

Only after the class is green does it become blocking.

## Step 5 — Every target renders a verdict and changes nothing

A tool that rewrites files is invoked with its checking option. The rewriting
variant gets its own target that appears in no table row and is called by no hook.

**A target that always passes is worse than no target**, because it looks like
protection and is none. Before writing `filled`, prove the target can fail:
break something on purpose, watch it go red, put it back.

A target that needs an argument fails loudly when it is missing, rather than
quietly doing something else.

**And the red has to come from the broken code.** A target that goes red because
the tool is not installed, or because the command was refused before it ran,
proves nothing about the target — it exits non-zero either way. Read the output
before writing `filled`, and where the command did not run, say so with the
command and the message rather than recording a class as proven.

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

- `Status` becomes `filled` only after you ran the target and saw it fail on
  purpose. `skipped: <reason>` where you have judged that the class finds nothing
  here, `empty` only where you have not judged it yet. Having reasoned about a
  class is having decided it — never leave the reasoning in prose and the column
  at `empty`. Never guess.
- `Blocking` becomes `yes` only on rows that are `filled`. A class whose result
  depends on a service you do not control is never blocking — an outage elsewhere
  must not stop work here. Keep it out of `check` and give it its own target.
- `Duration` from the run you just did, roughly.
- Rewrite "What these checks do not cover" from the table you have just written,
  rather than adding to what is there. Lines from an earlier pass describe an
  earlier table: a repository that had no code still said so after four classes
  had been filled. Every line in that section has to be true of the table as it
  now stands, and a class you just filled has no line there at all.

While any class is still `empty`, `check` must fail rather than pass, and say the
suite is incomplete.

## Step 7 — Land the check suite on the main branch

Skip this whole step when this skill was called for a single class from a build.
That branch belongs to the build, and the build lands it with the rest of its
task.

Otherwise the branch cut before Step 2 has to reach the main branch now, before
anything else happens. Everything from here on reads `checks.md` from the main
branch: the next task cuts its branch from there and would find no check suite
at all. Leaving it unmerged has worked so far only because a run improvised the
merge on its own, which is not something to build on.

**Never merge yourself.** Open a pull request and arm the platform to merge it
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
be merged — fetch, rebase onto the base and force-push, which lands nothing
anywhere and is not the merge this step may not perform, and the next reading is
`BLOCKED` with arming accepted. Measured on 30 August 2026 on a pull request
seven days old: `UNKNOWN` first, `BEHIND` on the second reading.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text empty-read`

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

## Step 8 — Offer the unattended mode

Only when no class is `empty` any more. While one is, the mode is unavailable
whatever the user answers, and asking would be a question with one possible
outcome.

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
way. Where the gate is already there and binding, say the
mode is available and skip the rest of this step.

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
  design no draft carries; a merge it cannot get past; a permission prompt,
  which nobody is there to answer, which is why the kinds of command it needs
  have to be approved before it starts.
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

Record the answer in `environment.md` either way. A later session then reports
that the mode is available, or that it was declined and can still be set up,
instead of asking again. What is recorded is that the mode is available in this
repository, or that it is not — a permission, which the question at the end of
each sharpening presupposes and reads. It is not an answer for any piece of
work, and no stage reads it as one.

**On a yes, in this order. Do not collapse it.**

1. Write `.github/workflows/checks.yml`, running exactly the blocking targets
   `checks.md` names and nothing else. Land it on the main branch the ordinary
   way, through a pull request.
2. Wait until it has run there and gone green. A required check that has never
   reported leaves every later pull request waiting on something that will never
   arrive. If it goes red, that is the answer: say what failed, and that a gate
   cannot be built on a suite that does not pass away from this machine.
3. Only then set the protection, requiring that check, with `enforce_admins` on,
   and switch auto-merge on if it is off.

**Never do this while a pull request is open.** A required check added underneath
an open one blocks it — the workflow never ran for that branch, so its result
never comes. Say so, merge what is open first, and come back to this.

**If the protection is refused,** say why in plain words — a private repository
on a plan that does not allow it is the usual reason — and say what would change
it, a public repository or a different plan. Offer to take the workflow file back
out, since it was added only for this. The attended mode is untouched and carries
on either way.

## Step 9 — Close

Say how many classes are `filled`, how many `skipped` and why, and how many are
still `empty`.

Then say what happens next and do it, without asking first: more classes if any
are still `empty`, otherwise the first piece of work. Say what the state means
either way — a class still saying `empty` is a record that nobody decided yet,
and the unattended mode stays unavailable until none are.

---

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text closing`
