---
name: build-work
description: Build the open tasks and merge them
---

# Build the open tasks

One task at a time, each in its own subagent with a fresh context, each checked
and reviewed before it lands.

Read `docs/agents/checks.md` and `docs/agents/issue-tracker.md` first.

## Never assert state — always query it

Which task is next, which blockers are open, whether something merged: every one
of these is a query, never a memory of what was said earlier in the session.
Conversation goes stale; the tracker and the git log do not. Building a task whose
blocker is still open wastes the work and can silently produce something wrong.

## Pick the next task

Run the readiness query from `docs/agents/issue-tracker.md`. The next task is the
first open sub-issue with zero open blockers.

If none is ready, say which task blocks which and stop. Do not pick a blocked task
and do not invent an order.

## Build it

Hand the task to a subagent with a fresh context. Give it the task issue, the
spec it belongs to, and the paths of the control documents — not this
conversation. A fresh context is the point; do not summarise the session into it.

The subagent:

1. Cuts a branch from the current main branch.
2. Works test-first at the seams the spec confirmed, and at no others: the failing
   test, then just enough code to pass it, one slice at a time. It does not write
   every test up front — that tests imagined behaviour.
3. Fixes causes, not symptoms. No workaround where the root is reachable. If a
   second defect remains after the fix, that is its own defect with its own
   effect, not a leftover of the first.
4. Commits behaviour changes separately from mechanical ones.
5. Runs everything `checks.md` lists before reporting done. A report that a later
   gate rejects is not a report.

Refactoring is not part of this loop. It belongs to the review.

## Review it

Run `review-changes` on the diff. Findings are either fixed now or filed as
issues — never left in the conversation, where they evaporate.

## Hand it to the user

Show the diff and the review findings. Ask whether to merge or to revise, and say
what each means.

In unattended mode this gate is the check suite instead — see below.

## Merge it

Open a pull request, wait for the gates, merge.

Then **verify against `git log` that it actually arrived.** A successful report is
not evidence; an auto-merge can sit blocked on a red gate or a conflict without
anyone noticing.

Build the commit from `git status --short`, never from a list of paths someone
reported — a guessed list drops new files silently. Add paths explicitly, never
with `-A`.

Close the task issue. Check whether this work also closed anything else that was
open, and say which — naming each one you checked, including the ones it did not
close.

Then say what the user has to pull locally: a new dependency means install, a
schema change means migrate, a new setting means check the configuration, server
code means restart, frontend only means a hard reload. Read `environment.md` for
which of these apply here.

## Then the next task

Query again. Repeat until no task is ready.

## Unattended mode

`--auto` replaces the user's approval with a green check suite. Same stages, same
checks — only the gate differs.

**Refuse to start** unless all five hold, and say which one failed:

1. No class in `checks.md` is `empty`. Every one is `filled` or `skipped` with a
   reason. `empty` means undecided, and an undecided check cannot approve
   anything.
2. A failing gate genuinely blocks a merge on the remote — not just the model's
   judgement of whether it looks fine.
3. `--max-iterations` is set.
4. No task in range is blocked by anything outside the range.
5. The tools the run needs are pre-approved. A run nobody is watching cannot
   answer a permission prompt.

Then write `.claude/autorun.local.md` with `iteration`, `max_iterations`,
`completion_promise`, `scope`, and `started_from` (the current main-branch commit),
followed by the standing instruction: take the next ready task in scope, build it,
run everything in `checks.md`, review, merge if green, and emit the completion
phrase only when no ready task remains in scope.

Emit that phrase only when it is completely and unambiguously true — never to get
out of the loop.

Tell the user how to read the diffs afterwards, from `started_from` to the current
main branch, and how to stop the run.
