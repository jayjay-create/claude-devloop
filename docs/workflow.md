# The devloop workflow

**Status: 0.1.0. Only `setup-project` is implemented. Everything else described
here is being built — treat this as the plan, not a promise.**

## What it is

A set of skills for Claude Code that takes a piece of work from an idea to
merged, reviewed code. It does not replace your judgement — it removes the need
to remember the process.

Three properties hold everywhere:

1. **No question about the process, only about the thing.** "Which of these three
   designs?" is a fair question. "What do you want to do next?" is a failure. No
   skill ever asks you for the name of a skill.
2. **The session start tells you where you are.** State lives in files and issues,
   not in your head. Come back after three days and it opens with what is done,
   what is next, and an offer to continue.
3. **Every decision point announces itself.** Nothing waits for you to think of
   the right command.

## What you type

    /devloop:setup-project    once per repository
    /devloop:start-work       everything else

`start-work` runs both halves. The first half plans and writes nothing but
documents; the second half writes code.

## The stages

**Sharpen the idea.** Rounds of questions, each numbered and each with a
recommended answer. Facts are looked up, never asked of you. Terms that come up
go into the project glossary as they appear.

**Read the code.** Read-only. Nothing is proposed before the current state of the
repository has been verified.

**Draft designs.** Three or four designs are written in parallel, each under a
different constraint — smallest interface, most flexible, optimised for the
common caller, cleanest separation. You get one recommendation, not a menu, and
you choose. This stage also fixes the seams: the places where the work will be
checked.

**Write the spec.** No new questions — it records what was decided and publishes
it to the issue tracker.

**Cut it into tasks.** Each task cuts vertically through every layer so it can be
demonstrated on its own, fits one fresh session, and names the tasks that must
land before it.

**Build each task.** Test first: the failing test, then just enough code. Fast
checks run after every file change; the full check suite runs before anything is
reported done.

**Review.** Several reviewers run in parallel, each with one lens — does it follow
this project's standards, does it do what the spec asked, is it safe, are the
tests any good. Their findings are kept apart and never ranked against each other.

**Merge and verify.** Pull request, wait for the gates, merge — then check the log
that it actually landed, rather than trusting the report.

## Attended and unattended

By default you approve each task before it merges: you see the diff and the review
findings first.

    /devloop:start-work --auto --max-iterations 40

replaces your approval with a green check suite. Same stages, same checks. It
refuses to start unless every check class is either configured or explicitly
recorded as not applicable, and unless a failing gate genuinely blocks a merge.
Unattended does not mean unread — read the diffs afterwards, in one go.

## Where state lives

Five files under `docs/agents/` describe the project: where issues live, how to
check it, its coding rules, how to run it locally, and its glossary and decision
records. Everything else lives in the issue tracker and in git.

That is why a fresh session costs you nothing.

## Credit

The interview, spec, task-cutting, test-loop and review-axis skills are adapted
from Matt Pocock's skills (https://github.com/mattpocock/skills, MIT).
