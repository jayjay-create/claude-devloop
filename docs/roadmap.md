# What is built and what is not

## Built and exercised

| Skill | What it does |
|---|---|
| `start-work` | Take a piece of work from idea to merged |
| `setup-project` | Set up this repository for devloop |
| `setup-checks` | Build out this project's check suite |
| `untangle-idea` | Map the open decisions in something too big |
| `research` | Answer a question from primary sources |
| `build-prototype` | Build something throwaway to settle a design question |
| `plan-work` | Turn an idea into a specced piece of work |
| `cut-into-tasks` | Cut a spec into single tasks |
| `build-work` | Build the open tasks and merge them |
| `review-changes` | Review a change from several angles at once |
| `record-lessons` | Write down what went wrong so it does not repeat |
| `diagnose-bug` | Find what actually causes a bug |

## Named, not built as skills

Names and one-line descriptions are settled; the bodies are not written. A
description is a menu entry: verb first, no trigger conditions. The origin says
where the body would come from if one is ever needed — mostly a file to copy from
mattpocock/skills and adjust, which is minutes of work, not days.

**This is a supply of names, not a backlog.** Nothing here is missing: the
pre-handover check that holds locked skills against their callers comes back
empty, so no built skill reaches for anything on this list. A name leaves it when
something needs to call it on its own, which is exactly how `research` and
`build-prototype` got built.

Two kinds of entry read as gaps and are not:

- **Already done, inside another skill.** `interview`, `define-terms` and
  `clarify-idea` are written out in `plan-work` and `untangle-idea` rather than
  delegated to, deliberately — upstream reports that a skill which only delegates
  loads half its dependencies and guesses at the rest. They will not be built.
- **Already done, as a stage.** `explore-codebase`, `design-options`,
  `write-spec`, `implement-ticket`, `test-first-loop` and `merge-and-verify`
  describe work the workflow does today, as stages inside `plan-work` and
  `build-work`. Pulling one out is only worth it if something else has to call
  it separately.

| Skill | Description | Origin |
|---|---|---|
| `sort-incoming-requests` | Triage issues you didn't write | Pocock `triage`, verbatim |
| `which-skill` | Find out what to do next | Pocock `ask-matt`, renamed |
| `interview` | Ask until nothing is left open | Pocock `grilling`, verbatim |
| `define-terms` | Keep the glossary and decision records straight | Pocock `domain-modeling`, verbatim |
| `clarify-idea` | Sharpen an idea into something buildable | Pocock `grill-with-docs`, verbatim |
| `write-questionnaire` | Get facts out of someone else's head | Pocock `to-questionnaire`, verbatim |
| `explore-codebase` | Read the code and report, change nothing | new |
| `design-options` | Draft several designs and pick one | Pocock `DESIGN-IT-TWICE` + Anthropic `feature-dev` |
| `write-spec` | Write the spec from what was decided | Pocock `to-spec`, adapted |
| `design-vocabulary` | Look up the words for talking about code structure | Pocock `codebase-design`, verbatim |
| `implement-ticket` | Build one task | Pocock `implement`, adapted |
| `test-first-loop` | Write the failing test, then the code | Pocock `tdd`, verbatim |
| `measure-runtime-effect` | Prove a change no test can catch | new |
| `resolve-merge-conflict` | Resolve conflicts by intent, not by lines | Pocock, verbatim |
| `script-manual-steps` | Script the steps only a human can do | Pocock `wizard`, verbatim |
| `merge-and-verify` | Merge and check that it landed | new |
| `find-refactor-candidates` | Find code worth restructuring | Pocock `improve-codebase-architecture`, verbatim |
| `check-docs-consistency` | Check the project documents against each other | new |
| `write-handover` | Hand this work to another session | Pocock `handoff`, verbatim |
| `say-it-plainly` | Say that again in plain words | Pocock `wait-what`, verbatim |
| `writing-for-agents` | Look up how to write for an agent to read | Pocock, verbatim |
| `settle-the-look` | Decide once how this project looks, and write it down | new |

Several of these currently live inside `plan-work` and `build-work` rather than
as separate skills. Pulling them out is only worth it where something else needs
to call them on their own.

### Where these would attach

The origin column says where a body would come from. It does not say when the
skill would be reached, which is the thing that decides whether to build it. For
the ones with a plausible answer:

- **`resolve-merge-conflict`** — step 1 of a build, where a diverged main branch
  currently stops the run. Parallel work already exists: research subagents run
  at once, and the map explicitly allows working free tickets in parallel.
  Building is one task at a time from a fresh main, so today the conflict comes
  from two sessions or from the user's own work alongside.
- **`find-refactor-candidates`** — when every task under a spec has closed, which
  is the one moment the workflow looks back at all; it already asks there whether
  to close the spec. A second trigger worth measuring: the same file touched by
  several tasks in a row.
- **`check-docs-consistency`** — before a handover, which is where the existing
  five checks run. Done by hand once, and it found three false statements in this
  file.
- **`measure-runtime-effect`** — nothing runs today, so there is nothing to
  measure. Attaches once the first item under Known gaps is built.
- **`write-questionnaire`** — when the answer sits with a person the workflow
  cannot interview: a colleague, a customer, whoever holds the operational
  knowledge. The map has research and interview and nothing for "go and ask
  someone else". It fits the existing shape — a blocked ticket that waits — but
  it is the one type whose answer can take days.

- **`settle-the-look`** — setup, when the project already has a look worth
  reading out of its stylesheet; otherwise the first task that draws anything.
  Every other recurring decision in this workflow has a file: `standards.md` for
  how the code is written, `checks.md` for how it is checked, `domain.md` for
  what the words mean. How it looks has none, so each task invents a button
  again — a slightly different blue, a different spacing step — and no check
  class covers "does this match the rest", so the drift is only visible to
  someone who lays five screens side by side. What the file fixes: the colours
  and what each is for, the type sizes, the spacing steps, the corner radii, a
  primary button against a secondary one, how a field shows an error, what an
  empty state looks like. The build subagent then reads it the way it reads
  `standards.md`.

  The reason to want this is not tidiness, it is that it turns an unmeasurable
  question into a measurable one. No check can answer "does this look right". A
  linter can answer "does this use the recorded names, or is there a raw colour
  value in the file", which is the same move this workflow makes everywhere
  else. That check is the second half of the work and the part worth building.

  The picking already exists: `build-prototype/UI.md` generates radically
  different variants, wires them together and has the user choose. It is
  reachable only from inside a map, for one question at a time, and it throws
  the answer away afterwards. Sources for the file, in order of preference: read
  it out of an existing stylesheet; a chosen prototype; a short interview.
  Anthropic's `/design-sync` could produce one too, and is deliberately not a
  dependency — it is a research preview whose shape is expected to change, it
  needs a paid plan, and its artboards live on claude.ai, a third place beside
  the repository and the tracker.

The rest have no attachment point yet. That is the reason they are unbuilt, not
the size of the work.

## Known gaps

- **The aim is idea to a running application; this gets to merged code.** Not a
  bug in what exists — the stated aim was idea to merged, reviewed code, and that
  works. It is the aim that has moved. Five things stand between the two, and
  they are one chain, not a list: nothing runs, so there is nothing to look at,
  nothing to drive an end-to-end check against, and no reason to write down how
  to run it.
  - **How the user sees it.** After every task they get a diff and review
    findings, never the thing itself. Whether the work is going in the right
    direction is not visible in a diff, and asking them to start it by hand
    contradicts the promise that they need no commands. `environment.md` — the
    file meant to record how this project runs locally — has said "nothing to run
    yet" in every project set up so far, because no step ever needs it.
  - **How the interface gets decided.** Nothing in the set draws a UI, chooses a
    layout, or settles what a screen should feel like. `build-prototype` has a UI
    branch, but only inside a map, only for one question at a time, and it keeps
    no record of what was chosen. `settle-the-look` above is the named answer to
    the recording half of this; the drawing half is still open.
  - **How the stack gets chosen.** Language, runtime, framework, database. A spec
    presumes them; nothing ever picks them, so they arrive by whatever the first
    task happened to reach for.
  - **How it gets documented and shipped.** Nothing writes documentation for the
    people who will use or run the thing, and nothing takes it from a green main
    branch to somewhere it is actually running — deployment, configuration,
    secrets, the first release, what to do when it breaks. The workflow's own
    documents are written for agents; the app's are written for nobody.
  - **Which further skills belong in the loop when the work is done with AI.**
    Named as candidates, not evaluated: documentation lookup for current library
    APIs, frontend design guidance, browser-driving for end-to-end checks. The
    end-to-end class was empty in every project until a TypeScript command-line
    tool filled it: the compiled program invoked as a real subprocess, asserting
    on its output and exit code. That works because a command-line tool is the
    one shape that runs to completion on its own — a service or an interface
    still has nothing to drive, which is the first item above.
- **`build-work` step 2 lists ready tasks without saying what each unblocks.**
  The step asks for it; three runs in a row gave titles and descriptions only.
  Harmless while tasks are independent, misleading as soon as they are not.
- **A finding announced as filed is not always filed.** One run said it would
  record a point as an issue and the issue list did not grow. Nothing checks that
  a promised issue exists.
- **Refreshing the control documents opens a pull request for a five-character
  change.** Seen: a version marker on five files produced a branch, a commit, a
  pull request and a merge. Correct by the rules — never merge directly — and
  out of proportion, and it now happens without being asked for. Worth
  revisiting only with a rule that does not carve an exception into that one.
- **Not everything is exercised yet.** The entry point proposing the next step
  by title on a map in flight has now run; the two bugs it showed are fixed. The
  session-end handover naming the next question has not — that rule only fires
  once a ticket resolves, so it needs a full interview run to be seen at all.
  `diagnose-bug` has still not run. A project with a filled unit class now
  exists and a run did reach a red check — at the start of a build, checking its
  base, which was a route nothing had been wired for. That route is wired now.
  What made the attempt worthless was where the fault was put: a single
  unreviewed commit on the main branch, one line wide, so the history named the
  cause and there was nothing left to diagnose. The next attempt has to sit
  inside a change large enough that the suspect list is longer than one.
  Nothing merged after 0.46.0 has run either: the base check, the rewritten
  questions at four stage boundaries, and the control documents finally getting
  a writer all came out of a single run and have only been reasoned about since.
- **devloop's own repository is not set up with devloop.** There is no
  `docs/agents/` here, so the hooks this plugin ships stay inert while you work
  on the plugin itself — including the main-branch guard.
- **End-to-end testing has one worked-out approach and no second.** Running the
  compiled program as a subprocess and asserting on output and exit code, which
  has now been done. Anything that stays up — a service, an interface — still
  has none.
- **Two stacks have been exercised**: a small Python project with `make`, and a
  TypeScript command-line tool with npm and `make`, both on GitHub Issues. Other
  trackers, monorepos, and anything whose checks need a system install rather
  than a package — all untested.
- **The run bundles shell commands where it used to edit files one at a time.**
  Five version markers changed with one `sed` in a loop, staging and committing
  and pushing chained into a single call. The result is correct and the file
  hook never sees it: that hook fires on an edit, not on a shell command, so a
  bundled change skips the per-file checks entirely. Harmless for version
  markers, not harmless for content. No fix proposed — telling a run to prefer
  the edit tool would be wrong wherever the shell is the right instrument, and
  which of the two a given change wants is not something this file can decide in
  advance.

## Decisions taken against

Each of these was examined against a real run, rejected for a reason, and is
listed so it does not get rediscovered and proposed again as if new. Reopen any
of them if the reason stops holding — the reason is the point, not the verdict.

- **Fetching design references from galleries.** Search Dribbble, Mobbin and
  similar sites for admired app designs and offer them as the design proposal.
  Rejected for three reasons, the third being the one that decides it. Gallery
  shots are portfolio pieces: no empty states, no error states, no long strings,
  no real data density, so what is built from them looks right in a screenshot
  and comes apart as a product — Mobbin is better than Dribbble here, being real
  shipped screens, but not enough better. Both sites carry other people's
  copyrighted work and forbid automated access, which a public MIT plugin would
  push onto everyone who installs it. And it inverts the method: every decision
  in this workflow is derived from constraints, and picking a look from a
  gallery derives it from an aesthetic that answered somebody else's problem —
  the same error as adopting an architecture because it looked good in a blog
  post. What is actually missing is the constraints and a recorded design
  system, which is `settle-the-look` above. Reopen if a licensed source of real
  interface patterns appears that can be cited rather than copied.

- **A context-usage percentage in the prompt.** Read the transcript, sum the
  token fields, divide by the window size, show a percentage with thresholds.
  Rejected: the window size is not discoverable, so it rests on a number typed in
  by hand that goes quietly stale at the next model change, and the token sum is
  an approximation whose error cannot be measured. What it protected against was
  losing a long planning session, and that is now handled directly — planning
  writes each stage to the tracker as it finishes. Reopen if an unattended build
  run is genuinely cut off mid-flight, or if the window size ever reaches hooks.
- **A readiness check before clearing a session.** Verify the artifacts are
  current before the context goes away. Rejected: it answers a question this
  workflow does not have. The state is the tracker and git — a task is merged or
  it is not, an issue is open or it is not — so the check would report "current"
  every time. The one place it applied was planning, fixed as above.
- **Letting the branch guard pass writes to gitignored files.** Rejected: no real
  case was found. The two local-state files this workflow writes are produced on
  a branch or by a hook the guard never sees, and an exception would soften the
  signal for nothing. Reopen on a real false positive.

## Names that were rejected

Kept so nobody re-proposes them: `plan-feature` and `build-feature` (the pair
implied planning was not building), `settle-open-questions` (too vague),
`split-into-tickets` (everything else says "task"), `clarify-idea-no-repo`
(the case does not exist in Claude Code), `map-decisions` and `sort-big-idea`
(lost to `untangle-idea`).

Never reuse the names of skills Claude Code ships: `doctor`, `code-review`,
`batch`, `debug`, `loop`, `claude-api`.
