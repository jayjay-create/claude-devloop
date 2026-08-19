---
name: cut-into-tasks
description: Cut a spec into single tasks
---

# Cut a spec into tasks

**Answer in the language the user writes in, not the language of this
document.** These instructions are in English because the repository is; that is not a signal about how to reply.

Input is a published spec. Output is one issue per task, in an order that can be
queried. No code is written here.

Read `docs/agents/issue-tracker.md` first — it holds the exact commands for
creating, attaching and ordering issues in this project.

**Write into the issue tracker in English** — titles, bodies, comments. The
tracker is part of the project and outlives this conversation. Speak to the user
in their own language; that is a different thing.

**If a command this skill needs is missing from `docs/agents/`, say so.** Those
files were written when the project was set up and the template has moved on
since. Do not improvise a replacement — an invented query that returns something
plausible is worse than no answer, because nobody can tell it went wrong. Name
the file, say what is missing, and offer to bring it up to date.

## What a task is

**One session's work, demonstrable on its own.** Someone who does not know the
code should be able to look at the result and say whether it works.

Cut **vertically**: through every layer the change touches, so the slice does
something end to end. Not horizontally — not "all the database changes first",
because nothing can be shown until the last slice lands.

**One exception**, and it must be named as such: groundwork that installs or wires
something the later tasks need, and produces no visible behaviour of its own. Say
in the issue that it is groundwork and what it unblocks. Never use this to smuggle
a horizontal cut past the rule.

**A second exception**, for wide mechanical rewrites — renaming something that
appears in a thousand places. No vertical slice can stay green there. Cut it as:
add the new thing beside the old, move callers in batches, delete the old last.

## Each issue carries

- **Title** — what will be true when it is done.
- **Problem** — what is missing or wrong now.
- **Solution** — what to build, concretely enough to start. Interfaces and
  signatures where the spec fixed them.
- **Test decisions** — which of the spec's confirmed seams this task is checked
  at, and what is covered there.
- **Demonstrable as** — how someone sees that it works.
- **Out of scope** — what this task does not do, pointing at the spec or the
  task that does it.

Do not restate the whole spec in every issue. Reference it.

## Order

Attach every task to the spec as a sub-issue, in the order it should be done.

Where one task genuinely cannot start before another has landed, record that as a
**real blocking relationship**, using the command in
`docs/agents/issue-tracker.md`. Not a sentence in the body — a sentence cannot be
queried, and the skill that picks up the next task queries.

**Do not put a build label on a task.** Readiness is the blocker query and
nothing else: open, with zero open blockers. A label would be a second answer to
a question the tracker already answers, and nothing here reads it — so it would
sit going stale while the query stayed right. GitHub renders the blocking
relationship in its own interface, so a human sees what is takeable without one.

`ready-for-agent` keeps its meaning outside a spec: a standalone issue a human
has judged buildable as written. That is a decision, not something derivable, so
there it earns a label.

The spec itself never carries a build label either — nobody builds a spec. It is
the parent, not a task.

Do not invent dependencies. Two tasks that touch different files usually do not
block each other, and false blockers serialise work that could run in parallel.

## Before you create anything

Present the split as a numbered list: title, one line each, and which tasks wait
for which. Ask whether the cut is right.

This is the last cheap moment to change it. Once issues exist and work starts,
re-cutting costs real effort.

Change what the user asks to change, then create.

## After creating

Query the tracker for what you actually created — do not report from what you
intended. State the number of **tasks**, not the number of issues (the spec is an
issue too), and which one is ready first.

Then offer to start building, and do it on a yes. Say in plain words what that
means: one task at a time, each with tests, each reviewed before it lands, and
you see the result before anything is merged.
