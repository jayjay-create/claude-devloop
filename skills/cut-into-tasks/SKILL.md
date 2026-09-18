---
name: cut-into-tasks
description: Cut a spec into single tasks
allowed-tools: Bash(${CLAUDE_PLUGIN_ROOT}/bin/devloop-text *)
---

# Cut a spec into tasks

**If `[shell command execution disabled by policy]` stands anywhere in this
file, stop before anything else.** The rules this skill shares with the others
are inserted when it loads, and that text standing where a rule should be means
they were not. Tell the user, in the language they write in, three things: that
this workflow cannot work right now because its shared rules were not loaded;
that the cause is the setting `disableSkillShellExecution`, which switches off
the commands in skills; and that it stops here rather than carrying on without
those rules. Then do nothing else.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text language-opening`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text skill-name`

Input is a published spec. Output is one issue per task, in an order that can be
queried. No code is written here.

Read `docs/agents/issue-tracker.md` first — it holds the exact commands for
creating, attaching and ordering issues in this project.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text project-language`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text body-through-file`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text missing-command`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text seam-and-condition`

## When a command does not answer

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text command-does-not-answer`

## How to ask

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text how-to-ask`

## With nobody there

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text mark`

This stage asks nothing that the test above lets through: the split follows from
the spec and from the rules below, and "Before you create anything" says so. So
the order a planning run follows at an unanswered question — under the section
of the same name in `plan-work` — is not needed here. What this stage does fork
on is the mode, in one place, at the end: "After creating" says what happens on
each answer the user gave at the end of the sharpening, or on `--auto`, and reads
the mode off the mark that answer wrote.

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
- **Test decisions** — which of the spec's placed seams this task is checked
  at, and the conditions checked at each, one line apiece. **A condition is
  written so that it can be false**: "rejects an empty input with an error", not
  "unit tests at the parser boundary". The second is a scope, and a scope cannot
  be broken — the build proves each condition by breaking it and watching the
  check go red, and a scope leaves it nothing to break. Where a condition belongs
  to this task and cannot be captured as a check at all, say that here with the
  reason, rather than leaving the build to discover it and fill the hole with a
  check that cannot fail.
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
for which. Then say it is what you are about to create, and create it — **do not
ask whether the cut is right.** How to cut follows from the spec and from the
rules above it: vertical, demonstrable, one at a time, real blockers. It is not
a matter of taste the user holds and you do not, and they cannot judge whether a
task is too large without the code in front of them. Asking hands them a
decision they have nothing to decide it with.

Say it in a way they can stop: this is the last cheap moment to change it, and
once issues exist and work starts, re-cutting costs real effort. If they name a
different cut, take it and create that instead.

## After creating

Query the tracker for what you actually created — do not report from what you
intended. State the number of **tasks**, not the number of issues (the spec is an
issue too), and which one is ready first.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text refer-by-name`

Then what happens depends on how this piece of work was told to run, and the mark
says which.

- **With them**, say you are starting on the first task, and do it. Say in plain
  words what that means: one task at a time, each with tests, each reviewed
  before it lands, and they see the result before anything is merged. Do not ask
  permission first — nothing lands without the gate at the end of the build, and
  that gate is where the decision actually sits.
- **Alone, `build`**: say you are starting on the first task and that the build
  goes on by itself from here, and run `build-work`. Its section on the
  unattended mode reads the five preconditions — all five, this time with tasks
  to read the third against — finds the mark this run wrote, and opens the run.
- **Alone, `plan`**: this is the halt before the first build, and the run ends
  here. Say what is in the tracker to read: the spec by its title, how many
  tasks, which one is ready first and what it unblocks. Say that nothing is
  built, and how it goes on: the next session opens with this spec and its ready
  tasks and takes the first — with them there, or alone where they type `--auto`
  then, which is the only thing that sets the mode on that route. Then delete
  the mark with a shell command, say that you did, and stop. This is one of the
  exits the mark has to be cleared at: left standing, it would tell the next
  session's build that a run is still going, and that build would refuse to
  start.

---

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text closing`
