# devloop

A set of skills for Claude Code that takes a piece of work from an idea to an
application or tool that runs on this machine: started by the run, its answer
read, its look recorded, and handed to you with one action. Today it gets as
far as merged, reviewed code; the road from there is `docs/plan.md`.

Twelve skills covering the main path. It has been exercised on throwaway
projects across five stacks — Python, TypeScript, Kotlin, Go and Rust — once
with nobody watching. The side paths — triaging incoming reports and finding
refactor candidates — are not built yet. Read "What is missing" before you
rely on it.

## What it is for

Not to replace your judgement. To remove the need to remember the process.

Three properties hold everywhere:

1. **No question about the process, only about the thing.** "Which of these three
   designs?" is a fair question. "What do you want to do next?" is a failure. No
   skill ever asks you for the name of a skill.
2. **The session start tells you where you are.** State lives in files and issues,
   not in your head. Come back after three days and it opens with what is done,
   what is next, and an offer to continue.
3. **Every decision point announces itself.** Nothing waits for you to think of
   the right command.

## Install

    /plugin marketplace add jayjay-create/claude-devloop
    /plugin install devloop@jayjay-create

You need git, a GitHub account, and `gh` signed in. The workflow keeps its state
in issues and their blocking relationships, so a tracker is not optional — the
setup stops without one and says so. A repository is not needed up front; it
offers to create one.

## What you type

    /devloop:start-work

That is the only command you ever type.

It sets the project up if that has not happened yet, asks what you want built,
and takes it from there all the way to merged code, one step at a time — each
one ending by offering the next. Starting what was built and handing it over
running is the next stretch of the road: planned in `docs/plan.md`, not built.

You answer questions about the work, and you see each piece before it merges.
You never have to know which step comes next.

## The steps

**Sharpen the idea.** Rounds of numbered questions, each with a recommended
answer, and an estimate of how many rounds are left. Facts are looked up, never
asked of you. Terms go into the glossary as they come up. It ends with the hard
core written down — the user stories any design has to carry, and what is out
of scope — and, where this repository allows the unattended mode, one question:
whether the rest runs alone.

**Read the code.** Read-only, before anything is proposed.

**Draft designs.** Three or four designs written in parallel, each under a
different constraint — smallest interface, most flexible, optimised for the
common caller, cleanest separation. Each is then checked by an agent of its own
against the stories and exclusions you settled — which story it does not carry,
which exclusion it builds anyway — as facts, not as a ranking. You get one
recommendation with those verdicts beside it, not a menu, and you choose; alone,
the recommendation is taken where it passed every item. This also fixes the
seams: where the work will be checked, each placed at a boundary that exists in
the code.

**Write the spec.** No new questions. It records what was decided and publishes
it to the issue tracker.

Planning writes as it goes. The issue is created before the first question and
each step is posted to it as it finishes, so an interrupted session picks up at
the step it was in rather than starting over.

**Cut it into tasks.** Each cuts vertically through every layer so it can be
demonstrated on its own, fits one fresh session, and records which tasks must
land first as real, queryable blocking relationships. The cut is presented and
then created — it follows from the spec, not from anything only you know — and
you can name a different one before it is.

**Build each task.** One at a time, in its own subagent with a fresh context.
Test first. Fast checks after every file change, the full suite before anything
is reported done.

**Review.** Several reviewers in parallel, each with one lens — this project's
standards, faithfulness to the spec, security, migrations, test quality, failure
behaviour. Findings are kept apart and never ranked against each other. Obvious
fixes are made; anything that would revisit a decision is filed as an issue; a
finding about the check table goes to the check setup for that class instead
of being fixed on the spot.

**Merge and verify.** Pull request, set to merge when the gates pass, then prove
at the platform that it did — not a report of success, and not a git log read
before the merge has happened. With you there the session does not sit and wait:
it says what is outstanding and picks up when you say it landed. Unattended it
waits for the checks in the same answer, because a run that ends its answer is a
run nothing wakes again. What comes after the merge today is a note on what to
pull locally; starting the thing, proving it answers and handing it over running
is where `docs/plan.md` takes the set next.

## Attended and unattended

By default you approve each task before it merges: you see the diff and the
review findings first, you choose the design, and every question comes to you as
it arises.

    /devloop:start-work --auto

means: do alone everything that can be done alone. Sharpening the idea always
runs with you, because it needs what only you know. Everything after it — the
designs, the design choice, the seams, the spec, the cut, the build, the merge —
can run alone, and what carries it is not that a wrong design or a wrong cut
stopped costing anything. It is that each of them has something to be checked
against: the design against the user stories and exclusions you settled, by an
agent per draft, as a question of fact; the seams against boundaries that exist
in the code; the cut against the spec it follows from; the build against the
check suite.

Without the flag you are asked once, at the end of the sharpening, how this piece
of work should run, and the three answers differ by where you are needed:
everything built without you; the plan made without you and put in front of you
before anything is built; or everything put to you as it arises.
That question is only asked where the mode is set up in this repository. The
check setup offers to set it up, and where you said no, typing the flag later
offers it again. Where you typed the flag, the question is skipped, since the
flag is the first of those answers given up front.

It refuses to go alone unless every check class is configured or explicitly
switched off with a reason, a failing gate genuinely blocks a merge on the
remote, the repository can merge without a person present — which needs
auto-merge enabled and a required check for it to wait on — no task in scope
waits on something outside it, Claude Code runs in auto mode, so that its
classifier answers in your place what would otherwise be asked, and you have
allowed it both to install the tools it needs
outside the project and to add check tools to your dependency file. Where you
said no to either, setting up the mode asks you again, and the mode is set up
only once you have said yes to both. Those are conditions for the run being
able to finish, not judgements about it: without them it would build a task and
then sit on a pull request nobody is there to merge, stand at a prompt nobody
is there to answer, start a task it cannot finish, stop at a tool it may not
install, or leave a check off that the work has made necessary. A prompt that
comes during the run anyway is answered no by a hook, and the run writes an
issue and takes the next task instead of waiting. All but the
one about the tasks, which do not exist yet, are read where you are asked, so
the question is not put and then found to have had one answer, and all of them
are read again where the build starts, since the route straight to a build has
no question and the state can change in between. Attended runs are
unaffected either way. There is no cap on how many tasks it gets through: it runs until
nothing in scope is ready any more, and picks up work that turns up along the way
where it serves the same goal. What bounds a single task is the turn-end hook,
which runs the check suite itself and hands the problem over once the same
classes have failed three turns running.

After the merge is armed the run waits for the platform's checks in the same
answer rather than ending it — at most thirty minutes, or longer where the suite
itself takes longer — and proves the merge happened before anything depends on
it. A check that comes back red is reworked, reviewed again and waited on again,
with no cap on the rounds; three rounds against the same failing checks is
standstill and ends the run with a report. A wait that simply runs out ends
nothing: it is reported, and the pull request stays armed and lands by itself.

Unattended does not mean unread. Read the diffs afterwards, in one go. Once
the run can start what it built, it hands you the thing itself as well; today
the diffs are what there is to read.

## The check suite

Nine classes: format, lint, types, unit tests, integration tests, end-to-end
tests, committed secrets, known vulnerabilities in dependencies, and static
analysis of your own code.

Filling all nine is not the goal. A class that does not apply to your project is
recorded as skipped, with the reason. Two rules hold throughout: a check target
renders a verdict and changes nothing, and it must be proven able to fail before
it counts as configured. The same proof is asked of each task: every condition a
task names is broken on purpose once, to see the check that guards it go red, and
what came back is written into the pull request. A check that cannot fail looks
exactly like a check that passes.

Hooks run without being asked: after every change made with the editing tool,
the checks for that file, and at the end of every turn, every blocking check; a
guard that, while the main branch is checked out, blocks the editing tool's
writes, `git commit` and a `git push` to it — a file written through the shell
is not stopped, and a push from another branch is not read, and neither is a
commit or push run through a git alias; a guard that blocks
`gh pr merge` in every form and names the command that arms auto-merge instead,
so that the platform merges and not the agent — a merge through `gh api` is not
read; a guard on the check table that reports a status in no allowed form right
after the editing tool writes the table, and refuses a commit while the table
holds one — a shell command that writes the table and commits in one go is read
before it runs, so that one commit goes through and the next is refused, and a
commit run through a git alias is not read; and a
guard that stops a command installing outside the repository — a package
manager, `sudo`, a copy into a bin directory, an installer piped from the
network, a command that fetches a tool and runs it without saying install,
such as `uvx` or `go run` of a module at a version, and a browser download for
tests through `playwright install`, `cypress install` or `puppeteer browsers
install` — and hands it to you to run, unless a record in
`docs/agents/environment.md` on the main branch says tools may be installed and
names the place this one lands, or the route it comes through, in which case the
run installs it itself and reports what it did; a command that fetches and
runs passes under that record without a place being read. `sudo`, an
installer piped from the network, a branded browser Playwright would install
at the system's own location and the system packages a browser's
`install-deps` would install stay with you whatever the record says. The
question that writes that record is put at setup. Since 9 October 2026 two
more: a guard that blocks the file marking an unattended run from being
written in any mode but auto, and states the permission mode beside a call
of `bin/devloop-permission-mode`, which is how the run reads whether it may
go alone; and a hook that answers no to every permission prompt while that
mark stands and names the session that wrote it, so that a run with nobody
there never waits at a prompt and a mark left behind touches no later
session of yours. The session-start hook sets the session's identifier for
the mark. The turn-end hook
gives up after three attempts at the same failure and hands it to you, rather
than looping. What it hands you is meant to be actionable in one step: a command
to paste, a script that gathers the environment, a smaller case that reproduces
the failure, or a question only you can answer. In an unattended run there is
nobody to hand it to, so the same report becomes an issue against that task and
the run carries on with the next one.

## What it writes into your project

Five short files under `docs/agents/`: where issues live, how to check this
project, its coding rules, how to run it locally, and where its glossary and
decision records are. Plus canonical targets in your task runner, so a skill can
say "lint" and be right in any project.

It does not touch your global configuration, and it does not decide how you like
to be spoken to.

## What is missing

- The road from merged code to an application that runs on this machine, an
  interface included: `docs/plan.md` says where the set ends, what is built
  first, and what stays yours.
- Triaging incoming reports and finding refactor candidates — decided, not
  built. `docs/roadmap.md` says under "Named, not built as skills" when the
  second is reached and why the first has no trigger yet.
- End-to-end testing has one worked-out approach and no second: the compiled
  program run as a subprocess, asserting on output and exit code. Anything
  that stays up — a service, an interface — still has none.
- Everything has been exercised on GitHub Issues. Other trackers and monorepos
  are untested.

## Working on devloop itself

An installed plugin runs from a copy under
`~/.claude/plugins/cache/<marketplace>/<plugin>/<version>/`. Pushing to this
repository does not touch that copy, and neither does `/plugin marketplace
update` on its own — the cache is keyed by version, so an unchanged version
number means nothing is fetched.

To make a change take effect: raise `version` in `.claude-plugin/plugin.json`,
once per branch, push, then, from an ordinary command line:

    claude plugin marketplace update <marketplace>
    claude plugin update <plugin>@<marketplace>

That is how 0.80.0 was raised to 0.81.0, without uninstalling. Anthropic's
plugin reference points out that these subcommands are meant to run from your
own terminal and are in part without effect inside a session.

A pull request into main merges only once the check `stock-take` is green: a
workflow under `.github/` runs the stock-take and its self-test on the merged
state, and the branch protection on main requires that check, for admins too,
so `gh pr merge` is refused while it is pending or red. The entry of 29
September 2026 in `docs/roadmap.md` on the merge gate carries the setting and
the merge sequence.

The way out if that does not take: `/plugin uninstall`, `/plugin marketplace
update`, `/plugin install`.

Old versions stay in the cache alongside the new one. Before testing a change,
confirm the installed copy actually carries it — all five directories, because a
hook runs from the installed path too, and so does the text the skills insert
from `shared/` at load:

    P=~/.claude/plugins/cache/<marketplace>/<plugin>/<installed version>
    for d in skills hooks shared bin scripts; do diff -r "$P/$d" "$d"; done

The version is the installed one, read out of
`~/.claude/plugins/installed_plugins.json` and not out of
`.claude-plugin/plugin.json`: a change ready to land has already raised the
number in the working tree, so that version names a cache directory which does
not exist yet, and the check answers `No such file or directory` instead of a
difference. `docs/skill-conventions.md` carries the same check with the lookup
written out, under "Before you change anything, run this".

Skipping that check costs more than it saves. Every conclusion drawn from a run
against a stale copy is worthless, and nothing about the run says it is stale.

## What hooks can and cannot do

Hooks are the only part of this that does not depend on a model deciding to
comply — they run in the harness. But what they inject is still text.

A hook can make something **happen**: report state, block a turn, feed a prompt
back in. A hook cannot make something be **said** — plain stdout from
`SessionStart` arrives as context, which shapes what the model does and does not
get reproduced word for word.

So: state and enforcement in hooks, wording nowhere. Where a particular thing has
to be said, describe what it must cover and let the model write it.

## Rules learned from this workflow's own bugs

Both already fixed in the skills, kept here so the same shape of bug does not
come back in a different file.

- A state file with no reader is not a safeguard, however carefully it is kept.
  The unattended mode wrote its round count and its cap into one, and this
  document described the hook that would read it. No such hook was ever built,
  so the run that wrote the file was also the only thing that read it — and it
  raised its own cap in the same write that advanced the count. Either something
  else reads the file or the file goes, because a run cannot be the reader of
  its own limit. The one file the mode writes today — the mark under `.claude/`
  saying which mode a run is in and how far it may go — is not that shape: it
  carries no limit, and it is read by parts of the run that did not write it,
  the build after the planning, the subagent inside the build, the next session
  that finds it left behind, and since 9 October 2026 the hook on permission
  prompts, which holds the session the mark names against the prompt's.
- A step that depends on a precondition (a remote, a permission, a tool) must
  refuse and stop when that precondition is missing, not fall back to a
  locally-equivalent action that quietly breaks one of the workflow's own rules
  — such as merging straight to main because there is no remote to open a pull
  request against.

## Credit

The interview, spec, task-cutting, test-loop and review-axis skills are adapted
from [Matt Pocock's skills](https://github.com/mattpocock/skills) (MIT). The
parallel-design step combines his design-it-twice reference with the mandatory
architecture phase from Anthropic's `feature-dev` plugin. The unattended loop is
modelled on Anthropic's `ralph-wiggum`.

MIT licensed.
