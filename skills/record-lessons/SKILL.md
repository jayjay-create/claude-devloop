---
name: record-lessons
description: Write down what went wrong so it does not repeat
disable-model-invocation: true
---

# Record what went wrong

**Answer in the language the user writes in, not the language of this
document.** These instructions are in English because the repository is; that is
not a signal about how to reply.

Turn a failure into something that prevents the next one. Run at the end of a
build run, or whenever the user asks.

## What counts as a lesson

Not every finding. A defect the checks caught is the system working — recording a
rule about it adds weight and prevents nothing.

Record it when one of these holds:

- **It happened a second time.** One occurrence is an accident; two is a pattern.
- **No check could have caught it.** Nothing in `checks.md` was ever going to see
  it, so only a written rule stands between it and the next repetition.

Everything else stays where it is: fixed, or filed as an issue.

## Where it goes

**The lesson goes in the file that would have prevented it.** Ask what someone
would have had to read to avoid this, and write it there:

| The failure was | Where it goes |
|---|---|
| A rule this project holds that nobody wrote down | `docs/agents/standards.md` |
| Something a check should catch and does not | the "what these checks do not cover" section of `docs/agents/checks.md` |
| Something unclear about running the project locally | `docs/agents/environment.md` |
| A decision that keeps getting revisited | a decision record |

Before recording anything about the workflow behaving oddly, check that the
version you are testing is the version you changed. A conclusion drawn from a
stale installed copy is not a lesson; it is noise, and filing it makes the next
person chase the same ghost.

If no file in this project would have prevented it, the workflow itself let it
through. **File an issue against the workflow's own repository** — do not edit a
skill mid-run. A skill that rewrites itself while working cannot be reviewed, and
the change would be invisible to everyone else using it.

## How to write one

One or two lines. What goes wrong, and what to do instead. Not the story of how
it was discovered — that is in the git history and the issue.

Write the rule, not the incident: "every check target must be able to fail; prove
it before marking it filled" outlives "the format target passed on broken code
that one time".

## Clear out as you go

Every rule is read again on every review. A list that only grows makes each
individual rule less visible and every review slower.

So before adding, remove: a rule a tool now enforces, a rule about code that no
longer exists, a rule nothing has bumped into for a long time. Say what you
removed and why — a rule quietly disappearing is worse than one that stays.

## Close

Say what you recorded, where, and what you removed. If you filed an issue against
the workflow, say what it asks for.
