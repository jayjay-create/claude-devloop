# What is built and what is not

## Built and exercised

| Skill | What it does |
|---|---|
| `start-work` | Take a piece of work from idea to merged |
| `setup-project` | Set up this repository for devloop |
| `setup-checks` | Build out this project's check suite |
| `untangle-idea` | Map the open decisions in something too big — built, not yet exercised |
| `plan-work` | Turn an idea into specced, ordered tasks |
| `cut-into-tasks` | Cut a spec into single tasks |
| `build-work` | Build the open tasks and merge them |
| `review-changes` | Review a change from several angles at once |
| `record-lessons` | Write down what went wrong so it does not repeat |

## Not built

Names and one-line descriptions are settled; the bodies are not written.
A description is a menu entry: verb first, no trigger conditions.

| Skill | Description | Origin |
|---|---|---|
| `diagnose-bug` | Find what actually causes a bug | Pocock, verbatim |
| `sort-incoming-requests` | Triage issues you didn't write | Pocock `triage`, verbatim |
| `which-skill` | Find out what to do next | Pocock `ask-matt`, renamed |
| `interview` | Ask until nothing is left open | Pocock `grilling`, verbatim |
| `define-terms` | Keep the glossary and decision records straight | Pocock `domain-modeling`, verbatim |
| `clarify-idea` | Sharpen an idea into something buildable | Pocock `grill-with-docs`, verbatim |
| `research` | Answer a question from primary sources | Pocock, adapted |
| `build-prototype` | Build something throwaway to settle a design question | Pocock `prototype`, verbatim |
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

Several of these currently live inside `plan-work` and `build-work` rather than
as separate skills. Pulling them out is only worth it where something else needs
to call them on their own.

## Known gaps

- **devloop's own repository is not set up with devloop.** There is no
  `docs/agents/` here, so the hooks this plugin ships stay inert while you work
  on the plugin itself — including the main-branch guard.
- **`docs/workflow.md`** in this repository predates the README and may
  contradict it. Reconcile or delete.
- **`record-lessons` has no answer for working inside this repository.** It says
  workflow-level lessons become issues against the workflow's own repository —
  which is where you already are when you are working on devloop itself. Its
  first run wrote into the README instead.
- **End-to-end testing has no worked-out approach.** The class exists in
  `checks.md`; nothing fills it.
- **Only one stack has been exercised**: a small Python project with GitHub
  Issues. Other languages, other trackers, monorepos — all untested.

## Names that were rejected

Kept so nobody re-proposes them: `plan-feature` and `build-feature` (the pair
implied planning was not building), `settle-open-questions` (too vague),
`split-into-tickets` (everything else says "task"), `clarify-idea-no-repo`
(the case does not exist in Claude Code), `map-decisions` and `sort-big-idea`
(lost to `untangle-idea`).

Never reuse the names of skills Claude Code ships: `doctor`, `code-review`,
`batch`, `debug`, `loop`, `claude-api`.
