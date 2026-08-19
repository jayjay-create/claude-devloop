---
name: setup-checks
description: Build out this project's check suite
---

# Build out the check suite

**Answer in the language the user writes in, not the language of this
document.** These instructions are in English because the repository is; that is not a signal about how to reply.

Turn every class in `docs/agents/checks.md` that still says `empty` into either
`filled` or `skipped: <reason>`.

**Filling all nine is not the goal.** A class that does not apply to this project
costs runtime and finds nothing. `skipped` with a reason is a finished answer;
`empty` means nobody decided yet.

This skill changes the project from the outside — it adds tools and configuration.
Move carefully and ask before anything that reaches beyond the repository.

Work on a branch cut from the current main branch. Never commit to main directly.

**Called for a single class**, which is how a build step reaches this skill when
the task it is building created the target: fill that one class, leave the others
untouched, and stay on the branch you were called on rather than cutting a new
one — the build owns that branch. Everything else below applies unchanged.

If a tool call fails, **say so**. Do not carry on as if it had returned, and do
not substitute something else without naming what failed.

## Step 1 — Read the current state

Read `docs/agents/checks.md`. List which classes are `empty`. For each, judge from
the repository whether it applies at all:

- **format, lint, types** — apply to any project with source code. A language
  without a type checker gets `skipped`.
- **unit** — applies wherever there is logic to test.
- **integration** — needs several parts that talk to each other, or something
  external. A single pure function has nothing to integrate.
- **end-to-end** — needs an interface someone drives: a user interface, a network
  interface, a command-line entry point.
- **secrets** — applies to every repository without exception. Credentials get
  committed by accident everywhere.
- **dependencies** — applies as soon as the project has third-party packages.
- **code-security** — needs a meaningful amount of the project's own code.

## Step 2 — Propose, in plain words

Present what you would do, one line per class: what it would catch, roughly what
it costs to set up, and which tool you would use. For the ones that do not apply,
say so with the reason.

Never name a class by its label alone. "secrets" means nothing to someone who has
not read the file; "searches the code and the git history for credentials that
were committed by accident" does.

Ask which to do now. All of them, some of them, or none — filling them later is
always possible.

## Step 3 — Prefer tools that live inside the project

A tool declared in the project's own manifest travels with the repository and
works for everyone who clones it. A tool installed system-wide does not, and it
changes the user's machine.

**Never install anything system-wide without asking**, and say plainly that it
reaches beyond this project. If the only candidate for a class needs a system
install and the user declines, that class becomes `skipped` with that reason —
not `empty`.

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
  purpose. Otherwise `skipped: <reason>` when the class does not apply here, or
  `empty` while it is still undecided. Never guess.
- `Blocking` becomes `yes` only on rows that are `filled`. A class whose result
  depends on a service you do not control is never blocking — an outage elsewhere
  must not stop work here. Keep it out of `check` and give it its own target.
- `Duration` from the run you just did, roughly.
- Add every remaining gap to "What these checks do not cover" — what is not
  covered, in plain words, not the class label.

While any class is still `empty`, `check` must fail rather than pass, and say the
suite is incomplete.

## Step 7 — Close

Say how many classes are `filled`, how many `skipped` and why, and how many are
still `empty`.

Then offer the next step and do it on a yes: more classes if any are still
`empty`, otherwise starting on the first piece of work.

If nothing is `empty` any more, say that the unattended mode's first condition is
now met — the check suite can stand in for a human's approval.
