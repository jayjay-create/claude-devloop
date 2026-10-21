# devloop

A set of skills for Claude Code that takes a piece of work from an idea to an
application or tool that runs on this machine: started by the run, its answer
read, its look recorded, and handed to you with one action. Today it gets as
far as merged, reviewed code.

Twelve skills covering the main path. The side paths — triaging incoming
reports and finding refactor candidates — are not built yet. Read "What is
missing" before you rely on it.

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

You need git with your name and email address set, a GitHub account, and `gh`
signed in. Every commit devloop makes carries that name and address, and the
push puts them on GitHub, where they stay. Where none is set, git takes them
from your machine — on a Mac your user name and the computer's name — or refuses
to commit. To keep your address private, use the `noreply` address GitHub offers
in your email settings. Set both with `git config --global user.name` and
`git config --global user.email`. The workflow keeps its state in issues and
their blocking relationships, so a tracker is not optional — the setup stops
without one and says so. A repository is not needed up front; it offers to
create one.

To get a newer version, run in your terminal, not inside a Claude Code session:

    claude plugin marketplace update jayjay-create
    claude plugin update devloop@jayjay-create

The new version applies from the next session you start. If it does not take,
run `/plugin uninstall devloop@jayjay-create`,
`/plugin marketplace update jayjay-create` and
`/plugin install devloop@jayjay-create`. You can also have this done by itself:
under `/plugin`, Marketplaces, turn on auto-update for `jayjay-create`; for a
marketplace like this one it is off by default.

## What you type

    /devloop:start-work

That is the only command you ever type.

It sets the project up if that has not happened yet, asks what you want built,
and takes it from there all the way to merged code, one step at a time — each
one ending by offering the next. Starting what was built and handing it over
running is the next stretch of the road: planned, not built.

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
land first as real, queryable blocking relationships. The cut follows from the
spec, not from anything only you know, so it is created without asking you,
and you see it as what was created, at the next point where the run waits
for you, or in the tracker where the run goes alone.

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
is planned, not built.

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
issue and takes the next task instead of waiting. A run without you is not
stopped by what is yours on the main branch either:
a file you changed and did not commit, which bringing the main branch to
GitHub's state would overwrite, is set aside in git's stash under a name
devloop knows it by and brought back when the run ends — where GitHub
changed the same line meanwhile it stays set aside, an issue shows both
lines, and the next start asks you whether to bring it back, leave it or
discard it; commits of yours on the main branch that GitHub lacks go onto a
branch `my-commits`, the main branch is brought to GitHub's state, and the
last message offers to open a pull request for them. With you there the
run asks before either. All but the
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
`install-deps` would install stay with you whatever the record says, and so
does every program that runs the command as an
administrator or as another user — `doas`, `su`, `run0`, `pkexec` and the
rest of that kind. The question
that writes that record is put at setup, and at a refresh of the setup as
well where no record stands on the main branch. The record travels with the
repository: whoever works with devloop in a clone of the project works under
the answer it carries, so under a yes the run installs tools and browsers for
tests outside the project on their machine as well, without asking them. Two
more: a guard that blocks the file marking an unattended run from being
written in any mode but auto; and a hook that answers no to every permission
prompt while that mark stands and names the session that wrote it, so that a
run with nobody there never waits at a prompt and a mark left behind touches
no later session of yours. And a guard that blocks a command setting the
identity of a commit itself — `git -c` or `--config-env` on `user.name`,
`user.email` and the `author` and `committer` keys, `--author` on `git
commit`, the variables `GIT_AUTHOR_…` and `GIT_COMMITTER_…`, `EMAIL` beside
a git call, `GIT_CONFIG_KEY_…`, and `git config` writing or removing one of
those keys — so that every commit carries the identity your git
configuration gives and no address taken from a session's context, which
the push would make public; a configuration file written another way, an
include, a variable that points git at another file and an alias are not
read. The turn-end hook
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
say "lint" and be right in any project. And, where a run without you met a
change or commits of yours in the way of the main branch, a stash entry
named `devloop … set aside <file>` or a branch `my-commits`, both in your
repository and both yours to keep or drop.

It touches your global configuration in one place, `~/.claude/settings.json`,
and only after asking you: where you let it work without you, it asks whether
it may enter one rule under `autoMode.allow`, so that auto mode does not block
by itself the installs a devloop hook already guards; the rule allows installs
in projects set up with devloop and nothing else, and without your yes the file
is not touched. It does not decide how you like to be spoken to, with one
exception it makes itself: devloop brings its own output style and forces it,
so while devloop is enabled the output style you chose does not apply, in
every session, and devloop's stands in its place. That style says only where
what devloop owes you stands: what you need for a decision stands in the
question, everything else in the last message before devloop waits for you,
and nothing of it in a collapsed note between the steps; and it keeps Claude
Code's coding instructions.
Where another plugin forces a style of its own and Claude Code loads it
first, devloop's does not apply, and the run tells you so once in the
session. Disable devloop and your style applies again from the next session
on.

## What is missing

- The road from merged code to an application that runs on this machine, an
  interface included.
- Triaging incoming reports and finding refactor candidates — not built.
- End-to-end testing has one worked-out approach and no second: the compiled
  program run as a subprocess, asserting on output and exit code. Anything
  that stays up — a service, an interface — still has none.
- Tried in projects in Python, TypeScript, Kotlin, Go and Rust, with GitHub
  Issues as the tracker. Other stacks, other trackers and monorepos are
  untested.

## Credit

The interview, spec, task-cutting, test-loop and review-axis skills are adapted
from [Matt Pocock's skills](https://github.com/mattpocock/skills) (MIT). The
parallel-design step combines his design-it-twice reference with the mandatory
architecture phase from Anthropic's `feature-dev` plugin. The unattended loop is
modelled on Anthropic's `ralph-wiggum`.

MIT licensed.
