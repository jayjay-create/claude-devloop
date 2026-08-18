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

## What you type

    /devloop:start-work

That is the only command you ever type.

It sets the project up if that has not happened yet, asks what you want built,
and works through the steps from there — designing, specifying, building,
testing, reviewing — each one ending by offering the next.

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

Three hooks run the suite without being asked — after every file change, at the
end of every turn, and blocking writes to the main branch. The turn-end hook
gives up after three attempts at the same failure and hands it to you, rather
than looping.

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

## Credit

The interview, spec, task-cutting, test-loop and review-axis skills are adapted
from [Matt Pocock's skills](https://github.com/mattpocock/skills) (MIT). The
parallel-design step combines his design-it-twice reference with the mandatory
architecture phase from Anthropic's `feature-dev` plugin. The unattended loop is
modelled on Anthropic's `ralph-wiggum`.

MIT licensed.
