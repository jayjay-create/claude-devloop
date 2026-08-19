---
name: setup-project
description: Set up this repository for devloop
disable-model-invocation: true
---

# Set up a project

**Answer in the language the user writes in, not the language of this
document.** These instructions are in English because the repository is; that is not a signal about how to reply.

Run this once per repository, before any other devloop skill. Other devloop
skills depend on the files it writes and will report the project as not set up
until it has run.

**Never say a skill's name to the user.** Say what you are about to do, in
ordinary words.

Produces five short files under `docs/agents/`, canonical targets in the
project's task runner, and a pointer block in `CLAUDE.md`.

## Language

Write every file you create in English — these files are part of the repository
and may be read by anyone. Speak to the user in the language they use.

## How to ask

Every question states what is being decided, what each answer means in practice,
what it costs, and why it comes up now. Never name a bare term the user may not
know. Someone who has never heard of this workflow must be able to answer.

**Only ask where the project or the human genuinely has something to decide.**
What is a convention of this workflow gets created and reported, not asked.
What you can look up yourself, look up. Never ask the user for a fact.

## Step 0 — Introduce yourself, then confirm

Do this before any tool call, including reading files. Someone seeing this for the
first time should not watch six commands run before learning what is going on.

If you cannot tell what language the user speaks — they have typed nothing but the
command — ask that first, in English, as a single question. Everything after runs
in their language.

If `~/.claude/CLAUDE.md` has no section about how to talk to this user, this is
their first contact. Say roughly this:

> This workflow takes you from an idea to merged, reviewed code, in stages:
>
> 1. We sharpen the idea until nothing important is open.
> 2. I read the existing code before proposing anything.
> 3. I draft three or four designs under different constraints and recommend one — you choose.
> 4. That becomes a written spec, cut into single tasks with an order.
> 5. Each task gets built test-first, checked, and reviewed by separate reviewers before it lands.
>
> You don't have to remember any of it. I tell you what's next at every step and
> only ask where there is something real to decide. Ask about any stage and
> I'll explain it.
>
> First I set up this repository: I look at what's already here and write five
> short files recording where tasks live and how to check whether something is
> broken. A few minutes, two or three questions.

If that section exists, one line is enough: what you are about to do and roughly
how long it takes.

Wait for the user to confirm before doing anything else.

Work on a branch cut from the current main branch. Never commit to main directly.

If a tool call fails, **say so**. Do not carry on as if it had returned, and do
not substitute something else without naming what failed.

## Step 1 — Explore, change nothing

- Git: remote, branch, whether there is any commit at all
- Is there code? Count source files outside config and docs
- Existing control documents: `CLAUDE.md`, `AGENTS.md`, `CONTEXT.md`, `docs/adr/`, `README.md`
- Task runner: `Makefile`, `justfile`, `Taskfile.yml`, `scripts` in `package.json`
- Languages and manifests: `pyproject.toml`, `package.json`, `go.mod`, `Cargo.toml`, `pom.xml`
- Existing checks: config for formatting, linting, types; test directories; `.github/workflows/`
- Existing labels in the tracker, if one is reachable
- How the project runs locally: `docker-compose.yml`, `.env.example`, README
- `~/.claude/CLAUDE.md`: is there already a section about how to talk to this user?

## Step 2 — Report what you found

Ten lines at most. Say explicitly what you did **not** find.

## Step 3 — The empty case

Finding no code is not an obstacle. Write `checks.md` with all nine classes set
to `empty`, skip Step 4, and say so at the end: the check suite gets filled once
there is something to check.

## Step 4 — Questions

Only these, each only under its condition. Lead with your recommendation so a
single word can answer.

1. **Issue tracker** — only if there is no remote, or several candidates.
   With exactly one remote: state it and move on.
   The tracker must *support* blocking relationships between issues; GitHub
   Issues and comparable trackers do, whether or not any exist yet. A text file
   never does — `build-work` picks the next task by which blockers are closed.
   If no suitable tracker is available, stop the setup and say exactly that. Do
   not carry on without one: every later step publishes specs and tasks there and
   picks up work from there. A repository with no remote cannot run this workflow
   yet — say so plainly and stop, rather than merging straight to the main branch
   as a substitute.
2. **Auto-merge** — only if the remote has it switched off
   (`gh api repos/OWNER/REPO -q .allow_auto_merge` returns false). Every later
   step opens pull requests and sets them to merge once the gates pass; direct
   merges are refused. Offer to switch it on:
   `gh api -X PATCH repos/OWNER/REPO -f allow_auto_merge=true`.
3. **Checks** — always. Present your mapping: which tool found fills which class,
   and which classes stay empty. Ask separately whether missing tools should be
   installed — that changes the project. Never install anything system-wide
   without asking; prefer tools that live inside the project.
4. **Local environment** — always, unless you could read it all from
   `docker-compose.yml` or the README. Which processes, in what order, on what ports.
5. **Labels** — only if the tracker already has labels with overlapping meaning.
   Then ask: map onto the existing ones, or add ours alongside. Otherwise create
   the five standard labels and report it.
6. **Where glossary and decision records live** — only if something already lives
   elsewhere. Otherwise `CONTEXT.md` at the root and `docs/adr/`, created and reported.

Never ask about the user's preferred language or tone here — that belongs to the
plugin's one-time setup, not to a per-project run.

## Step 5 — Canonical targets in the task runner

These names mean the same in every project, so a skill can say `make lint` and be
right everywhere. If there is no task runner, create a `Makefile`. If there is one
with different names, add thin targets that call the existing commands; leave the
existing ones untouched.

**A target listed in `checks.md` renders a verdict and changes nothing.** A tool
that rewrites files is invoked with its checking option — formatting as `--check`
or equivalent. The rewriting variant gets its own target (`fmt-write`) that appears
in no table row and is called by no hook. A target that always passes is worse
than no target at all.

| Class | Per-file target | Whole target |
|---|---|---|
| format | `fmt-file` | `fmt` |
| lint | `lint-file` | `lint` |
| types | — | `types` |
| unit | `test-file` | `test-unit` |
| integration | — | `test-integration` |
| end-to-end | — | `test-e2e` |
| secrets | — | `scan-secrets` |
| dependencies | — | `scan-deps` |
| code-security | — | `scan-code` |

Plus: `check` (every blocking class in sequence), `test-one NAME=<name>`,
`services-up`, `fmt-write`.

While no class is filled, `check` must fail rather than pass, and say that the
check suite is not configured. A green `check` over nothing is a false all-clear.

Per-file targets take the path as `FILE=<path>`.

Only create targets whose command you actually know. A class with no tool gets
**no** target.

## Step 6 — The five files under `docs/agents/`

### `checks.md`

Read by shell scripts. Keep the column count and order exactly. The `Status`
column takes only `filled`, `empty`, or `skipped: <reason>`. `Blocking` takes
only `yes` or `no`.

    ---
    runner: make
    all: check
    ---

    # Checks

    | Class | Per-file | Whole | Files | Duration | Blocking | Status |
    |---|---|---|---|---|---|---|
    | lint | lint-file | lint | src/**/*.py | <1s | yes | filled |
    | end-to-end | - | - | - | - | no | skipped: no interface to drive |

    ## Running a single test

    make test-one NAME=<test name>

    ## What these checks do not cover

    - <one line per gap>

    ## Services that must be running

    make services-up

- The two target columns hold **bare target names** — `lint`, not `make lint` and
  not `` `lint` ``. A shell script reads this column and puts the runner in front.
- `Files`: comma-separated glob patterns; `-` means it applies to everything.
- `Duration`: rough, like `<1s`, `20s`, `4min`. It decides where the class runs.
- `Status` is `filled` only when the target exists, calls a real checking tool,
  and you have run it once. Otherwise `empty` or `skipped: <reason>`. Never guess.
- `Blocking` is `yes` only on rows whose `Status` is `filled`. A class with no
  target cannot block anything; leave it `-` until it is filled.
- `skipped` means this class does not apply to this project, with the reason.
  `empty` means undecided — a later step will resolve it.
- The section "What these checks do not cover" is mandatory.

### `issue-tracker.md`

Where issues live, and the exact commands. The six labels and what they mean:
`needs-triage` (new), `needs-info` (waiting on an answer), `being-planned` (a
spec is being written into it right now — nobody acts on it, not an agent and
not a human), `ready-for-agent` (buildable as written), `needs-human` (needs a
human decision), `wont-do` (declined, with a reason).

Create all six in the tracker as part of this step. A label that only exists in
this document is not a label.

For GitHub, write these in verbatim, with OWNER and REPO filled in. Later steps
read them from here; do not leave the reader to guess the API.

    ## Ordering work

    Tasks are sub-issues of their spec. Dependencies are real, queryable
    relationships — never prose in the body.

    Get an issue's node ID:

        gh api graphql -f query='{repository(owner:"OWNER",name:"REPO"){issue(number:N){id}}}' -q '.data.repository.issue.id'

    Attach a task to its spec:

        gh api graphql -f query='mutation{addSubIssue(input:{issueId:"PARENT_ID",subIssueId:"CHILD_ID"}){issue{number}}}'

    Record that one task waits for another:

        gh api graphql -f query='mutation{addBlockedBy(input:{issueId:"WAITING_ID",blockingIssueId:"MUST_FINISH_FIRST_ID"}){issue{number}}}'

    Ask which task is ready — the first with zero open blockers:

        gh api graphql -f query='{repository(owner:"OWNER",name:"REPO"){issue(number:SPEC){subIssues(first:20){nodes{number title state blockedBy(first:10){nodes{number state}}}}}}}' -q '.data.repository.issue.subIssues.nodes[] | select(.state=="OPEN") | "\(.number) \(.title) | open blockers: \([.blockedBy.nodes[] | select(.state=="OPEN")] | length)"'

The mutation is `addBlockedBy` with the fields `issueId` and `blockingIssueId`.
There is no `addIssueBlockedBy`; guessing that name fails.

For any other tracker, work out the equivalent and write it down the same way.
If it has no queryable blocking relationship, stop the setup — see above.

### `domain.md`

Where the glossary and the decision records live. That terms go into the glossary
the moment they come up, not collected later. The three tests for writing a
decision record: hard to reverse, surprising without explanation, the result of a
real trade-off. The format: title, context, decision, binding consequences, status
only for superseded or deprecated, rejected options only when the rejection is not
obvious, and one line — "What would make this decision invalid".

### `standards.md`

Coding rules of this project beyond what a tool already enforces. If you find
none, write that down — empty is more honest than invented.

### `environment.md`

Processes, order, ports, which terminal window stays occupied. What to pull after
which kind of change: new dependency, schema change, new setting, server code,
frontend only. Which runs cost money and which path is free.

## Step 7 — Pointer block in CLAUDE.md

Append to an existing `CLAUDE.md`, delete nothing. Create it if absent.

    ## Control documents

    - docs/agents/checks.md — how to check this project
    - docs/agents/issue-tracker.md — where issues live
    - docs/agents/domain.md — glossary and decision records
    - docs/agents/standards.md — coding rules
    - docs/agents/environment.md — running it locally

## Step 8 — Land the setup on the main branch

The setup must be on the main branch before any other work starts. A task branch
cut afterwards would not carry `docs/agents/`, and every other skill would find
nothing.

Commit, open a pull request, merge it, and then verify against `git log` that it
actually arrived — a report of success is not evidence. If a check gate blocks the
merge, say so and stop here; do not offer the next step on top of unmerged setup.

## Step 9 — Close

Five lines at most: which files you wrote, which targets you created, how many
classes are `filled` and which are not.

Then name **no command**. Propose the next step and carry it out on a yes.
Explain in plain words what it buys, what it costs, and that it can wait:

- Classes still `empty` and enough code to check: offer to build out the check
  suite, naming each missing class in plain words and what it would catch. Run
  `setup-checks` on a yes.
- Barely any code yet: say the check suite is better built once there is
  something to check, and offer to start on the first piece of work instead.
- Otherwise: offer to start on the first piece of work. Run `start-work` on a yes.
