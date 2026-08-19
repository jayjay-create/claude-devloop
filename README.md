# devloop

A set of skills for Claude Code that takes a piece of work from an idea to
merged, reviewed code.

**Version 0.1.** Eight skills covering the main path. It has been run end to end
on a real project twice, once with nobody watching. The side paths — debugging,
triaging incoming reports, handing over between sessions — are not built yet.
Read "What is missing" before you rely on it.

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
one ending by offering the next.

You answer questions about the work, and you see each piece before it merges.
You never have to know which step comes next.

## The steps

**Sharpen the idea.** Rounds of numbered questions, each with a recommended
answer, and an estimate of how many rounds are left. Facts are looked up, never
asked of you. Terms go into the glossary as they come up.

**Read the code.** Read-only, before anything is proposed.

**Draft designs.** Three or four designs written in parallel, each under a
different constraint — smallest interface, most flexible, optimised for the
common caller, cleanest separation. You get one recommendation, not a menu, and
you choose. This also fixes the seams: where the work will be checked.

**Write the spec.** No new questions. It records what was decided and publishes
it to the issue tracker.

Planning writes as it goes. The issue is created before the first question and
each step is posted to it as it finishes, so an interrupted session picks up at
the step it was in rather than starting over.

**Cut it into tasks.** Each cuts vertically through every layer so it can be
demonstrated on its own, fits one fresh session, and records which tasks must
land first as real, queryable blocking relationships. You confirm the cut before
anything is created.

**Build each task.** One at a time, in its own subagent with a fresh context.
Test first. Fast checks after every file change, the full suite before anything
is reported done.

**Review.** Several reviewers in parallel, each with one lens — this project's
standards, faithfulness to the spec, security, migrations, test quality, failure
behaviour. Findings are kept apart and never ranked against each other. Obvious
fixes are made; anything that would revisit a decision is filed as an issue.

**Merge and verify.** Pull request, set to merge when the gates pass, then check
the git log that it actually landed.

## Attended and unattended

By default you approve each task before it merges: you see the diff and the
review findings first.

    /devloop:start-work --auto

replaces that approval with a green check suite, from the build step onward.
Planning is never unattended: the design choice and the task cut are the two
decisions where a mistake sends the whole thing in the wrong direction.

It refuses to start unless every check class is configured or explicitly recorded
as not applicable, a failing gate genuinely blocks a merge on the remote, and
auto-merge is enabled. It proposes an iteration cap if you did not give one — a
rip-cord for a run that gets stuck, not a capacity estimate.

Unattended does not mean unread. Read the diffs afterwards, in one go.

## The check suite

Nine classes: format, lint, types, unit tests, integration tests, end-to-end
tests, committed secrets, known vulnerabilities in dependencies, and static
analysis of your own code.

Filling all nine is not the goal. A class that does not apply to your project is
recorded as skipped, with the reason. Two rules hold throughout: a check target
renders a verdict and changes nothing, and it must be proven able to fail before
it counts as configured.

Hooks run without being asked: the check suite after every file change and at
the end of every turn, and a guard that blocks file writes, `git commit` and
`git push` on the main branch. The turn-end hook
gives up after three attempts at the same failure and hands it to you, rather
than looping. What it hands you is meant to be actionable in one step: a command
to paste, a script that gathers the environment, a smaller case that reproduces
the failure, or a question only you can answer.

## What it writes into your project

Five short files under `docs/agents/`: where issues live, how to check this
project, its coding rules, how to run it locally, and where its glossary and
decision records are. Plus canonical targets in your task runner, so a skill can
say "lint" and be right in any project.

It does not touch your global configuration, and it does not decide how you like
to be spoken to.

## What is missing

- Debugging, triaging incoming reports, finding refactor candidates, handing over
  between sessions, and a router for when you are lost — planned, not built.
- End-to-end testing has no worked-out approach yet.
- Everything has been exercised on one small Python project with GitHub Issues.
  Other stacks and other trackers are untested.

## Working on devloop itself

An installed plugin runs from a copy under
`~/.claude/plugins/cache/<marketplace>/<plugin>/<version>/`. Pushing to this
repository does not touch that copy, and neither does `/plugin marketplace
update` on its own — the cache is keyed by version, so an unchanged version
number means nothing is fetched.

To make a change take effect: raise `version` in `.claude-plugin/plugin.json`,
push, then `/plugin uninstall`, `/plugin marketplace update`, `/plugin install`.

Old versions stay in the cache alongside the new one. Before testing a change,
confirm the installed copy actually carries it:

    diff ~/.claude/plugins/cache/<marketplace>/<plugin>/<version>/skills/<name>/SKILL.md \
         skills/<name>/SKILL.md

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

- A hook that gates on a state file's existence must have that file **deleted**
  when the state it tracks ends — never overwritten with a "finished" status.
  The hook checks presence, not content, so a status field left behind still
  reads as "in progress" to the next ordinary turn.
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
