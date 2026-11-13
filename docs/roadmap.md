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

What each of them has run is not written here: `scripts/devloop-stock-take`
computes it from `docs/stock-take.tsv` on every run. Until 26 September 2026
the row of `record-lessons` carried "built, never run", the one state in this
file written rather than computed.

## Named, not built as skills

Names and one-line descriptions are settled; the bodies are not written. A
description is a menu entry: verb first, no trigger conditions. The origin says
where the body would come from if one is ever needed — mostly a file to copy from
mattpocock/skills and adjust, which is minutes of work, not days.

**This is a supply of names, not a backlog.** Nothing here is missing: every
line the pre-handover check that holds locked skills against their callers
prints names `start-work`, a built skill, at a place that sends a run to it
and does not call it — `build-work` step 6 for an armed pull request among
them — and no name of this table; what the check prints is read off the
check each time and not counted here. So no built skill reaches for anything
on this list. A name leaves
it when something needs to call it on its own, which is exactly how `research`
and `build-prototype` got built, or when it is decided against: `which-skill`
and `write-handover` left it that way on 25 September 2026 and stand under
"Decisions taken against", each with its reason.

Two kinds of entry read as gaps and are not:

- **Already done, inside another skill.** `interview`, `define-terms` and
  `clarify-idea` are written out in `plan-work` and `untangle-idea` rather than
  delegated to, deliberately — upstream reports that a skill which only delegates
  loads half its dependencies and guesses at the rest. They will not be built.

  **Since 18 September 2026 the one text the three share stands in one place.**
  The paragraph `plan-work` and `untangle-idea` carry word for word — the
  ceiling on questions in a round — is inserted into both at load from
  `shared/three-questions.md`; the rest of the interview is written in each in
  its own words. The claim above about what a delegating skill loads was never
  measured and, since the measurement of 17 September 2026 under
  `## Known gaps`, decides nothing here: inserted text is neither delegated to
  nor copied. What decides whether the three stay written out or become skills
  is the reason this section already carries — a name leaves the list when
  something needs to call it on its own — and nothing does today.

  The claim stays as it stands here, unmeasured: it is the measurement
  milestone 9 of `docs/plan.md`, the compaction, owes before it splits a
  skill — one split skill, one run, and a reading off the session log of what
  its other halves loaded when called — and not one this entry can supply.
- **Already done, as a stage.** `explore-codebase`, `design-options`,
  `write-spec`, `implement-ticket`, `test-first-loop` and `merge-and-verify`
  describe work the workflow does today, as stages inside `plan-work` and
  `build-work`. Pulling one out is only worth it if something else has to call
  it separately.

**Decided on 25 September 2026, two of the four side paths.**
`find-refactor-candidates` gets built, reached when every task under a spec has
closed, the one moment the workflow looks back; the bullet under "Where these
would attach" carries it. This decides when it is reached, not how it works,
and it is a piece of work now waiting, not a milestone. `sort-incoming-requests`
stays here with no trigger, because there are no reports from other people in
this setup yet; it gets one when there are.

| Skill | Description | Origin |
|---|---|---|
| `sort-incoming-requests` | Triage issues you didn't write | Pocock `triage`, verbatim |
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
  is the one moment the workflow looks back at all; it already closes the spec
  there, without asking. Decided on 25 September 2026: it gets built, and this
  is its trigger. The second trigger named here before, the same file touched
  by several tasks in a row, stays what it is, something to measure, and
  decides nothing today. No body is decided here, only when it is reached.
- **`check-docs-consistency`** — before a handover, which is where the checks in
  `docs/skill-conventions.md` run; the count belongs there and is not repeated
  here, because a second copy of it is what went stale. Done by hand several
  times and never as a step, and every round has found false statements in this
  file. The rounds, by date rather than by "the round before this one": three in
  the first; four in a later one, three of those work recorded as run that had not
  run; sixteen on 7 September 2026; five on 9 September 2026; sixteen on 26
  September 2026, read against the tree at 0.109.0; fourteen on 30 September
  2026, against 0.120.1; twenty on 4 October 2026, against 0.127.0, read
  against the entry beside it as well; twelve on 7 October 2026, against
  0.129.0, three statements corrected, five notes and four findings; fourteen
  on 12 October 2026, against 0.135.0, read against the nine entries since the
  round before; fifteen on 14 October 2026, against 0.137.0, read against the three entries since the round before; thirty-three on 18 October 2026, against 0.147.0, read against the eleven entries since the catch-up of 14 October 2026; seventeen on 20 October 2026, against 0.151.0, read against the five entries since the catch-up of 19 October 2026; seventy-two on 23 October 2026, against 0.156.0, read against the six entries since the round before; ninety-one on 31 October 2026, against 0.167.0, read against the sixteen entries since the round before; fifty-five on 1 November 2026, against 0.170.0, read against the four entries since the round before; twenty-three on 3 November 2026, against 0.173.0, read against the three entries since the round before. The findings the stock-take recorded at its close on 23
  September 2026 are not a round of this check: they were read against the
  tool's states over the whole set and stand in the table with a count the
  tool prints, and a second copy of that count here is what this bullet warns
  against. **This sentence used
  to stop at the round of four**, and it was written in the very commit that
  corrected the sixteen — so the largest round on record was missing from the
  tally that same day. Relative time is how it happened: "the round before this
  one" needs a reader who knows which one "this" is, and there is no such reader
  two commits later.
- **`measure-runtime-effect`** — nothing runs today, so there is nothing to
  measure. Attaches once the entry "The aim is idea to a running application;
  this gets to merged code" under Known gaps is built.
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
  reachable from inside a map and, since 14 September 2026 (`e09fa80`), from
  `plan-work` Stage 1, for one question at a time; the answer — which variant
  and why — goes onto the issue, under "Capture the answer" in `UI.md`, and
  nothing reads it afterwards as a decision about the look. Sources for the
  file, in order of preference: read
  it out of an existing stylesheet; a chosen prototype; a short interview.
  Anthropic's `/design-sync` could produce one too, and is deliberately not a
  dependency — it is a research preview whose shape is expected to change, it
  needs a paid plan, and its artboards live on claude.ai, a third place beside
  the repository and the tracker.

The rest have no attachment point yet. That is the reason they are unbuilt, not
the size of the work. `sort-incoming-requests` is the one of them whose reason
is written down: there are no reports from other people in this setup yet, so
nothing arrives to be triaged, and it gets a trigger when there are (decided on
25 September 2026).

## Known gaps

The entries up to the order of 4 November 2026 stand in
`docs/roadmap-archive-1.md`, unchanged, every line at the number it had
here; that file never changes. `scripts/devloop-stock-take` reads it for
the heads a block's `Found` names, for the lines a run's record points at
and for the proofs of closings.

- **The dated entries of the roadmap move to an archive file.**

  4 November 2026, version 0.175.0, raised from 0.174.0 once. On
  `task/roadmap-archive`, off `origin/main` at `d026802`, in four commits:
  `scripts/devloop-stock-take` with its self-test and its header,
  `.github/workflows/stock-take.yml`, the comments under `hooks/`, `bin/`
  and `scripts/` that named `docs/roadmap.md` for an archived entry, and the
  version, `f6461fc`; then `docs/roadmap-archive-1.md`, this file with this
  entry, `docs/defects.md`, `docs/stock-take.tsv`,
  `docs/skill-conventions.md`, `docs/plan.md` and `docs/rationale.md`; then
  the runs of the tool's self-test under 0.175.0, measured on the second
  commit, for the things of `scripts/devloop-stock-take` that are new on
  this branch or lost their counting run to it; then, after the check of
  the branch before the merge, the evidence of one outcome of
  `hooks/pre-tool-use-identity-guard.sh` in `docs/stock-take.tsv`, the
  sentence on it in the tool's header and this entry, the last paragraph
  below. The first three were written by Claude Code from the person's
  order of that day, part 3 of the separation of `docs/roadmap.md`, after
  part 1 of 1 November 2026 and the two orders of part 2 of 2 November
  2026; no session log was read. A line number in this entry means this
  file as it stands after this entry; a line of the archive names the
  archive.

  **Decided on 4 November 2026** by the person, part 3 of decision (b) of 1
  November 2026 (`docs/roadmap-archive-1.md` lines 44922 to 44936) and the
  block "the three tasks of the roadmap are not separated, so nothing closed
  can leave it without losing a wording, a reason or a row of the table, and
  the history of the skills' states stands in the loaded texts" of
  `docs/defects.md`. (11) Every dated entry under `## Known gaps` that stood
  in `docs/roadmap.md` at `d026802` goes into the archive, unchanged and at
  once; the four sections without a date stay here: "Built and exercised",
  "Named, not built as skills" with "Where these would attach", "Decisions
  taken against" and "Names that were rejected". Reason: since parts 1 and 2
  the defects stand with their should in `docs/defects.md` and the reasons
  and the approved wordings in `docs/rationale.md`; only the should of a
  block with `not stated` stands in the entry its `Found` names, and it stays
  readable there, in the archive. Not chosen: only the entries no open block
  names in its `Found`; that measure follows the state of the defects and not
  whether an entry still carries anything, and asks for a new move after
  every milestone. (12) The archive is a file of the repository,
  `docs/roadmap-archive-1.md`: `docs/roadmap.md` of `d026802` byte for byte,
  every line at its number, the four sections included. A later archive is
  made the same way, as `docs/roadmap-archive-2.md`, with line numbers of its
  own. Not chosen: the archive as the state of a commit alone, read with `git
  show`, because every look into it would then go through git. (13) An
  archive never changes. The tool is red where a branch changes, renames or
  removes an archive that stands at the commit it forked from. A wrong line
  number in an archived entry is said right by the entry of the branch that
  finds it; the correction in place (`docs/skill-conventions.md` lines 1860
  to 1862 at `d026802`) holds for `docs/roadmap.md` alone. Not chosen:
  correcting line numbers in the archive as well, because the tool cannot
  tell a line number from a measured value.

  **What follows, each point with its rule.** (a) Every record of
  `docs/stock-take.tsv` whose anchor stands in an archived entry names
  `docs/roadmap-archive-1.md` instead of `docs/roadmap.md`, and so does every
  `Trigger`, `Bench` and `Cost` of `docs/defects.md` whose anchor stands
  there and every proof of a closing in a `Status` that named
  `docs/roadmap.md` for a text in an archived entry; the anchor and the
  quoted text stay — an anchor stands exactly once in its file, section C of
  the tool's header, lines 244 to 246 at `d026802`. Records on the lines of
  the four sections stay at `docs/roadmap.md`. (b) A not-a-thing record
  covers a line of the search set, section C line 326; one whose line is in
  no search set of section E (line 541 on, "Known gaps" at lines 589 to 600)
  is removed rather than rewritten; each is named below with what that does
  to the state of its thing. (c) For `Found` the tool reads the heads under
  `## Known gaps` in `docs/roadmap.md` and in every
  `docs/roadmap-archive-<n>.md`, and a `Found` names exactly one head over
  all of them — section F, lines 643 to 646. (d) A `Fix` points at no
  archive, as at no `docs/roadmap.md` and no `docs/defects.md`: no repair
  stands there — section F, lines 646 to 648. (e) The lines of an archive
  that quote a text in a closing form are left out of that text's count, as
  the tool holds it for `docs/roadmap.md` at `d026802` (`find_anchor` from
  line 1101, `closing_lines` from line 1154, `check_closing` from line
  1169). (f) An archive a branch adds is `docs/roadmap.md` at the commit it
  forked from byte for byte and carries the next free number, or the tool is
  red — "Never assert state — query it", `docs/skill-conventions.md` from
  line 460 at `d026802`. (g) The table "Named, not built as skills" of an
  archive is read nowhere, neither for the names nor for the search set; the
  check "No name in the roadmap resembles a real one" (lines 3955 to 3988
  there) reads `docs/roadmap.md` alone, since a hit in an archive could
  never be mended and the check would be red from the first day (line 3883);
  its description says so. (h) The step "README.md names no file or document
  of devloop's own" of `.github/workflows/stock-take.yml` (from line 154)
  and the rule in `docs/skill-conventions.md` (lines 1686 to 1707 at
  `d026802`) name the archives among devloop's documents, and so does the
  list of the documents the loaded texts do not refer to (lines 1715 to
  1720). (i) A reference that names a line of the roadmap names the file the
  line stands in: in the four sections of this file, in `docs/plan.md`,
  `docs/defects.md` (`Wrong`, `Should`, `Note` and the introduction),
  `docs/skill-conventions.md`, `docs/rationale.md`, the notes of
  `docs/stock-take.tsv` and the comments under `hooks/`, `bin/`, `scripts/`
  and `.github/`, every line number that meant a line of `docs/roadmap.md` at
  `d026802` names `docs/roadmap-archive-1.md`, and so does every explicit
  `docs/roadmap.md` that meant an archived entry, because this file grows
  again and an old number would then point at a wrong line without a word.
  What an anchor, a `Found` or a proof quotes stays word for word, where it
  names `docs/roadmap.md` too; a reference to an entry by its date, its
  subject or its head, without a file name and without a line, stays: the
  roadmap is the dated report in `docs/roadmap.md` and its archives, and
  `docs/skill-conventions.md` says so. Where that changed a `Should`, the
  entry carries the line "Should changed: <title>" and quotes the old and
  the new (`docs/skill-conventions.md` lines 1846 to 1850 at `d026802`; the
  tool's header, section F, lines 670 to 703). (j) The opening of
  `docs/plan.md` (lines 3 to 11 at `d026802`), of `docs/rationale.md`
  (lines 9 to 12), the introduction of `docs/defects.md` and the header of
  the tool (the exits at lines 40 to 49, section C line 269, sections E and
  F) say where the dated report stands; (11) to (13) and the sentence of
  (i) stand in a paragraph of their own in `docs/skill-conventions.md`,
  "An archive of the roadmap never changes", before "A should a later
  decision changes is written where the decision is, and in the block";
  the sentence on where a run points (lines 1793 to 1795 at `d026802`) says
  `docs/roadmap.md` or the archive that holds the entry, and the sentence on
  the correction in place (lines 1860 to 1862) holds for `docs/roadmap.md`.

  **What changed, each number with the command that gives it.**
  `docs/roadmap-archive-1.md` is `git show d026802:docs/roadmap.md` byte for
  byte: `cmp docs/roadmap-archive-1.md <(git show d026802:docs/roadmap.md)`
  prints nothing; 47840 lines (`wc -l`). This file: lines 1 to 192 of
  `d026802` unchanged (`diff <(git show d026802:docs/roadmap.md | sed -n
  1,192p) <(sed -n 1,192p docs/roadmap.md)` prints nothing), the paragraph
  under `## Known gaps`, this entry, then lines 47572 to 47840 of `d026802`
  with two lines changed by (i), the two under "Decisions taken against"
  that said "lines 19203 to 19215 of this file" and "lines 17161 to 17184 of
  this file" and name the archive now (`diff <(git show
  d026802:docs/roadmap.md | sed -n 47572,47840p) <(sed -n "$(grep -n '^##
  Decisions taken against' docs/roadmap.md | cut -d: -f1),\$p"
  docs/roadmap.md)` prints those two). `docs/stock-take.tsv`: 2559 run
  records name the archive (`awk -F'\t' '$1=="run" &&
  $13=="docs/roadmap-archive-1.md"' docs/stock-take.tsv | wc -l`), every run
  of the table, since no run points at the four sections; 2 triggers and 3
  benches of things (`$15==` and `$17==` the same way); 34 not-a-thing
  records removed, by (b), every one `part of: <thing>` on a status line
  "Built …" of an entry, lines 13639 to 44652 of the archive (`git diff
  f6461fc -- docs/stock-take.tsv | grep '^-not-a-thing' | grep -c
  'docs/roadmap.md'`); 9 not-a-thing records on the rows of the table
  "Named, not built as skills", 11 things of kind named skill with 6
  triggers under "Where these would attach" stay at `docs/roadmap.md` (`awk
  -F'\t' '$4=="docs/roadmap.md"' docs/stock-take.tsv | wc -l` gives 20,
  `$15=="docs/roadmap.md"` 6). `docs/defects.md`: 6 `Trigger`, 3 `Bench` and
  6 `Cost` fields and 8 closings `left on purpose` name the archive (`grep
  -c -E '^- (Trigger|Bench|Cost): .docs/roadmap-archive-1.md'
  docs/defects.md` gives 15, `grep -c '^-
  Status:.*docs/roadmap-archive-1.md'` 8); the ninth closing that names
  `docs/roadmap.md` does so in a text of the tool's header and stays. The
  heads every `Found` names, 684 blocks (`grep -c '^### ' docs/defects.md`),
  stand in the archive now and are found there exactly once; with the tool
  of `d026802` on the moved files every block was rejected, `Found names no
  head under '## Known gaps' in docs/roadmap.md`, measured in a copy of the
  repository before the build. The references of (i): `docs/plan.md` 8
  places, `docs/rationale.md` 4, `docs/skill-conventions.md` 30 with the new
  paragraph, `docs/defects.md` 37 with the introduction and the block below,
  the notes of three rows of `docs/stock-take.tsv`, four hooks, two programs
  under `bin/` in six lines, `scripts/devloop-version-guard` and
  `.github/workflows/stock-take.yml` (`git diff d026802 --stat`); nothing
  under `skills/`, `shared/`, `output-styles/` or in `README.md` named a
  line of the roadmap or an archived entry by file, the one hit, the table
  of `record-lessons`, naming the section "Names that were rejected", which
  stays here.

  **The 34 not-a-thing records removed by (b), and their things.**
  Re-pointed to the archive they would have held every run of their thing to
  the day of the archive: `git blame` attributes every line of
  `docs/roadmap-archive-1.md` to the commit that created it, the squash
  commit on main later, as measured in the copy. Removed, a line of the
  roadmap counts for no run, as it counts for no defect since decision (4)
  of 2 November 2026; the tool's header, section C, said until this day that
  such a record stays, and says now since when and why the records went. The
  things, 26, every one `Built, never walked` at `d026802` and after the
  fourth commit. On the second commit one stood `Walked`,
  `hooks/pre-tool-use-identity-guard.sh / whole file / block: text 7 on
  stderr with what was read filled in, exit 2, through no function`, whose
  three runs of 10 and 12 October 2026 under 0.134.0 and 0.137.0 had failed
  on the one line `docs/roadmap.md:41826 (part of)`, the status line of the
  entry of 29 October 2026 that records text 7 built on line 192 of the
  hook; text 7 changed after both versions, and the fourth commit puts the
  outcome's evidence onto it, the last paragraph below. The other 25 stay
  `Built, never walked`, their runs failing on lines of their own files or
  carrying no run. The records,
  by the line of the table at `d026802`, the line of the archive and the
  thing:

  table line 2689, archive line 13639, part of
  `hooks/pre-tool-use-install-guard.sh / whole file / pass under a yes: a
  command that fetches a tool and runs it without saying install, not held
  against the places`; table line 2764, archive line 14674, part of
  `shared/mark.md / whole file / the third line: the session that wrote the
  mark, from DEVLOOP_SESSION_ID, empty where the variable is not set, read
  by the hook on permission prompts`; table line 2765, archive line 14689,
  part of `hooks/hooks.json / whole file / the eleven hooks registered: six
  guards on PreToolUse, on the main branch, on merging, on the check table,
  on installing, on the mark and on the identity of a commit, the no to
  every permission prompt on PermissionRequest, the status line on
  SessionStart, the checks and the table guard on PostToolUse, the checks on
  Stop`; table line 2766, archive line 14778, part of
  `shared/install-not-through.md / whole file / straight path`; table line
  2767, archive line 14799, part of `setup-checks / A guard's block is not a
  decline / install block with nobody there on secrets: the task ends and
  not the run, an issue and the next task, said for the person who comes
  back`; table line 2768, archive line 14816, part of
  `shared/command-does-not-answer.md / whole file / nobody there to tell
  about an unanswered command: command and message into the run's own
  report, the run stops there`; table line 2988, archive line 15534, part of
  `setup-checks / Step 8 — Offer the unattended mode / the answer yes, or
  the flag with the gate standing: the question on the rule for auto mode,
  field by field, before the two permissions`; table line 2989, archive line
  15581, part of `hooks/hooks.json / whole file / the eleven hooks
  registered: six guards on PreToolUse, on the main branch, on merging, on
  the check table, on installing, on the mark and on the identity of a
  commit, the no to every permission prompt on PermissionRequest, the status
  line on SessionStart, the checks and the table guard on PostToolUse, the
  checks on Stop`; table line 2990, archive line 15656, part of
  `setup-checks / Step 8 — Offer the unattended mode / another system: the
  sentence on keeping awake alone and no command, backed or not, the ones
  for Linux and Windows coming with milestone 12`; table line 7036, archive
  line 41074, part of `setup-checks / Step 8 — Offer the unattended mode /
  the form for a start with --auto: the refusal named with the command and
  its issue, each install with its issue where several, the yes line by the
  kinds open, the no line with the issue open until they type the command
  with ! and /devloop:start-work and the question at every start with
  --auto`; table line 7037, archive line 41079, part of `setup-checks / Step
  8 — Offer the unattended mode / the answer yes, or the flag with the gate
  standing: the question on the rule for auto mode, field by field, before
  the two permissions`; table line 7038, archive line 41087, part of
  `setup-checks / A guard's block is not a decline / install block with
  nobody there on secrets: the task ends and not the run, an issue and the
  next task, said for the person who comes back`; table line 7046, archive
  line 41131, part of `shared/install-tool.md / whole file / after their
  word, --installed: the folder line then the search-path line, installed
  and not on the search path said with the steps that put the folder on it,
  Claude Code ended, the export line into the file of their shell, the file
  loaded, Claude Code started again in the project, the start input typed`;
  table line 7047, archive line 41225, part of `shared/install-tool.md /
  whole file / after their word, --installed: the folder line then the
  search-path line, installed and not on the search path said with the steps
  that put the folder on it, Claude Code ended, the export line into the
  file of their shell, the file loaded, Claude Code started again in the
  project, the start input typed`; table line 7097, archive line 41373, part
  of `shared/install-tool.md / whole file / install run, the build picks up
  once the tool is at the path`; table line 7098, archive line 41391, part
  of `shared/fetch-three-times.md / whole file / GitHub not reached or the
  sign-in refused: the run stops, the opening the place gives and the three
  parts after it, GitHub not reached in the wording of 12 October 2026 and
  the sign-in in the steps of 28 October 2026, form B`; table line 7099,
  archive line 41401, part of `setup-project / Step 1 — Explore, change
  nothing / gh not signed in: stop, the account named and created on
  github.com where none, the steps of the sign-in in a second terminal
  window, their word, the setup then`; table line 7100, archive line 41495,
  part of `shared/merge-handover.md / whole file / straight path`; table
  line 7101, archive line 41507, part of `setup-checks / Step 3 — Prefer
  tools that live inside the project / the first answer, install it
  themselves: the command handed over once more to copy, their word awaited,
  the place read, the class set up in step 4 where the tool stands there,
  the branch cut after their word`; table line 7102, archive line 41516,
  part of `setup-checks / A guard's block is not a decline / install block
  with nobody there on secrets: the task ends and not the run, an issue and
  the next task, said for the person who comes back`; table line 7103,
  archive line 41535, part of `setup-checks / Step 8 — Offer the unattended
  mode / the form for a start with --auto: the refusal named with the
  command and its issue, each install with its issue where several, the yes
  line by the kinds open, the no line with the issue open until they type
  the command with ! and /devloop:start-work and the question at every start
  with --auto`; table line 7104, archive line 41543, part of `setup-checks /
  Step 3 — Prefer tools that live inside the project / after the signal the
  folder line found and the search-path line not: said with the five steps
  that put the folder on their search path, the class as it stands until the
  start they lead to reaches this step again`; table line 7105, archive line
  41555, part of `bin/devloop-install-issues / whole file / the folder line:
  where the tool line says not found on the search path, --installed read
  with the issue's command and tool, and folder: printed where its first
  line says found at, nothing where it says not found or not read or
  refuses`; table line 7136, archive line 41657, part of `setup-checks /
  Step 3 — Prefer tools that live inside the project / the first answer,
  install it themselves: the command handed over once more to copy, their
  word awaited, the place read, the class set up in step 4 where the tool
  stands there, the branch cut after their word`; table line 7137, archive
  line 41669, part of `setup-checks / A guard's block is not a decline /
  install block with nobody there on secrets, the command asking: three
  steps said, a second terminal window with what the command asks as the
  reason, the command there, the start input here, the same close`; table
  line 7138, archive line 41686, part of `setup-checks / Step 8 — Offer the
  unattended mode / the form for a start with --auto, a command that asks:
  the no line in form B, the issue open, the second terminal window with the
  reason, the start input here, with one issue fourteen of fourteen and with
  two the question as text at the end of the turn`; table line 7139, archive
  line 41694, part of `shared/install-issues-read.md / whole file / a group
  with a folder line: said that the command from the issue installed into
  the folder, the folder not in their PATH, the issue staying open, and the
  five steps, the run then closing the issue and building the task or
  setting the check up`; table line 7140, archive line 41766, part of
  `setup-project / Step 1 — Explore, change nothing / gh not installed at
  all: the system and GitHub's guide read, the command handed over as it
  stands there, A on a Mac with Homebrew and B for the Linux block under
  sudo, backed or with its source, the sign-in said to follow`; table line
  7141, archive line 41780, part of `shared/skill-name.md / whole file / a
  text saying they have to do something at the computer: how, step by step,
  each step as typed, in the order they can take them, a step the run has no
  sure command for read first in the maker's guide and given with the
  source, else saying what is needed, another program's own guidance not
  described after it`; table line 7142, archive line 41826, part of
  `hooks/pre-tool-use-identity-guard.sh / whole file / block: text 7 on
  stderr with what was read filled in, exit 2, through no function`; table
  line 7274, archive line 42461, part of `shared/install-tool.md / whole
  file / straight path`; table line 7275, archive line 42507, part of
  `bin/devloop-command-reader / whole file / the escapes of $'…' read as the
  manual of bash lists them under ANSI-C Quoting, \xHH with one or two
  digits among them`; table line 7519, archive line 44634, part of
  `.github/workflows/stock-take.yml / whole file / the hooks step: the
  self-test of scripts/devloop-run-workflow run after every self-test under
  bin/ on ubuntu-latest, macos-latest and alpine, the step red where it
  fails`; table line 7520, archive line 44652, part of
  `.github/workflows/stock-take.yml / whole file / the hooks step: the
  self-test of scripts/devloop-run-workflow run after every self-test under
  bin/ on ubuntu-latest, macos-latest and alpine, the step red where it
  fails`.

  **The tool and its self-test, at `d026802` and on the second commit**,
  `PYTHONDONTWRITEBYTECODE=1 scripts/devloop-stock-take`: exit 0 and 0;
  broken records 0 and 0; uncovered lines of the search set 0 of 4437 and 0
  of 4454, the 17 lines more the new lines of the tool, every one covered by
  a thing or a not-a-thing record; units without a straight path 0 and 0;
  lines of the set that can carry no unique anchor 339 and 339; roots of the
  unattended mode 2 and 2, skills it reaches 7 and 7; closed defects 39 and
  39; blocks under `## Not yet sorted` 654 and 654; blocks with `not stated`
  431 and 430, the block below having its should; runs that do not count 942
  and 942; things 1788 and 1799, the eleven new outcomes of the tool;
  not-a-thing records 3303 and 3276, 34 removed by (b) and 7 added for lines
  of the tool; by state and kind: undetermined 24 and 24; recorded and not
  built 292 and 291, the block below built; built and never walked 1460 and
  1474, the eleven new things, three things of the tool that lost their
  counting run, the block below, less the hook outcome that is walked;
  walked 657 and 655, program outcome 250 and 247, hook outcome 133 and 134;
  closed 39 and 39. The blocks held against the branch point: `Should
  changed 6`, the six lines below, nothing else; the archives: `archives
  standing there 0, added by this branch 1`, `docs/roadmap-archive-1.md`.
  Its self-test: 148 cases and 130 messages, every one asserted, at
  `d026802`; 155 cases and 135 messages, every one asserted, since the first
  commit — seven cases for the archives, each red once and green once: a
  `Found` in an archive alone, in both files, in neither, the files named; a
  `Fix` at an archive; a closing decided in an archived entry, its quoting
  line left out, a text twice or gone; an archive changed, removed or
  renamed; one added rightly, under a wrong number, with other content, with
  no roadmap at the branch point; the two notes without a branch point; the
  report. The self-test's repository for them writes a new roadmap without
  the archived heads where it adds an archive, as this branch does: an
  archive copies the heads, and a head in both files is not exactly one.

  **Things that lost their counting run, and the runs of the third commit.**
  By section D of the tool's header, read off "STATES, by file and kind" at
  `d026802` and on the second commit: three things of
  `scripts/devloop-stock-take`, program outcomes all, `a Fix in none of its
  forms, or pointing at docs/roadmap.md or docs/defects.md: rejected`, whose
  site line changed, `a Found naming no head of docs/roadmap.md whole and
  exactly once: rejected, a head read across a line break`, whose lines
  naming the files changed, and `state Closed: a defect whose evidence
  stands on a closing line of docs/roadmap.md whose proof holds, counted
  apart`, one of whose lines takes the archives; their names stay, runs
  hanging on them, and their notes say what holds. No other thing lost a
  counting run: by kind none of skill branch, shared text, output style,
  hook outcome, hook registration or check command, no defect; by source
  none under `skills/`, `shared/`, `output-styles/`, `hooks/`, `bin/`,
  `.github/` or `docs/`. One thing gained one on the second commit, the hook
  outcome above, and lost it again with the fourth. The
  runs of the third commit, fourteen, one on each of the eleven new things
  and the three above:
  the self-test of this day under 0.175.0, recorded in the third commit, every case red once and green once;
  after it the fourteen are walked, measured on the tree of the third commit
  before the second was made: exit 0, broken records 0, uncovered lines 0 of
  4454, walked 669 where 655, program outcome 261 where 247, built and never
  walked 1460 where 1474, program outcome 132 where 146, runs that do not
  count 942, the fourteen rows among the runs that count. No run on any
  other thing, by decision (c) of 1 November 2026.

  **The twenty checks under "Before a handover, run these"**, their commands
  as they stood at `d026802`, in a bash started by `env -i` with
  `--noprofile --norc` and `/usr/bin/grep`, at `d026802` and on the tree of
  the second commit: the nineteen quick checks print what they printed at
  `d026802`, line for line, a `diff` of the two outputs silent for each:
  check 1 the two empty lists; check 2 silent, on the file of the second
  commit too; check 3 twelve counts, `record-lessons` and `start-work` at 1;
  check 4 the two lines on `start-work`; checks 5, 6, 7, 10, 11, 19 and 20
  silent; check 8 the twelve lines on the opening block; check 9 `1375902553
  587` and `12`; checks 12 to 15 `1`, `1`, `1` and `1`, `1`; check 17 the
  fifteen offers; check 18 the seven lines over six sites. Check 16,
  `scripts/devloop-run-workflow .github/workflows/stock-take.yml`: exit 0
  and the line `green: 8 steps run, every one ended with 0; not run by
  design: no run: block (uses: actions/checkout@v7): 2; left out by the
  order of 31 October 2026: 3` at `d026802` and on the tree of the second
  commit, where its title step read no head, this entry not being committed
  when it ran; after the third commit it reads the head of this entry, as
  the report of this order records.

  **Should changed, six blocks**, each by (i) where a Should named a line of
  the roadmap and by 5.5 of the order for the block of the three tasks; the
  old and the new quoted, the rest of a long Should standing word for word,
  as the entry of 3 November 2026 at `docs/roadmap-archive-1.md` line 47294
  on quoted the 26 of that day by their pattern:

  "setup-checks step 3 reads the record on the packages after a fetch and
  says nothing of a fetch that fails": old "the fetch here is tried three
  times by that block, and where the third fails the run says the record
  could not be read, with the command and the message, and does not read it
  as a no or as absent; recorded 6 October 2026, grep -n -i 'fetch'
  docs/roadmap.md | grep -i should printed one line, 1538, the Should hold
  on a command handed to the user that fetches something from outside, not
  this"; new "the fetch here is tried three times by that block, and where
  the third fails the run says the record could not be read, with the
  command and the message, and does not read it as a no or as absent;
  recorded 6 October 2026, grep -n -i 'fetch' docs/roadmap-archive-1.md |
  grep -i should printed one line, 1538, the Should hold on a command handed
  to the user that fetches something from outside, not this".

  "the command of shared/mode-set-up.md that reads the three records shows
  nothing where the fetch fails, so a failed fetch reads as the mode not set
  up": old "the fetch is tried three times by shared/fetch-three-times.md,
  and where the third fails the run says the records could not be read,
  names the command and the message, and reads the mode neither as set up
  nor as not; recorded 6 October 2026, grep -n -i 'fetch' docs/roadmap.md |
  grep -i should printed one line, 1538, the Should hold on a command handed
  to the user that fetches something from outside, not this"; new "the fetch
  is tried three times by shared/fetch-three-times.md, and where the third
  fails the run says the records could not be read, names the command and
  the message, and reads the mode neither as set up nor as not; recorded 6
  October 2026, grep -n -i 'fetch' docs/roadmap-archive-1.md | grep -i
  should printed one line, 1538, the Should hold on a command handed to the
  user that fetches something from outside, not this".

  "the third exit of shared/rule-not-written-down.md is computed on
  origin/main after a fetch and says nothing of a fetch that fails": old
  "the fetch is tried three times by that block, and where the third fails
  nothing comes out by this exit and the fetch that failed is said, as a
  missing query is; recorded 6 October 2026, grep -n -i 'fetch'
  docs/roadmap.md | grep -i should printed one line, 1538, the Should hold
  on a command handed to the user that fetches something from outside, not
  this"; new "the fetch is tried three times by that block, and where the
  third fails nothing comes out by this exit and the fetch that failed is
  said, as a missing query is; recorded 6 October 2026, grep -n -i 'fetch'
  docs/roadmap-archive-1.md | grep -i should printed one line, 1538, the
  Should hold on a command handed to the user that fetches something from
  outside, not this".

  "the question on gitleaks of run 1 said that the run installs nothing and
  gave the command without backticks, and run 4 left out the browser as the
  example under the no of the install question, both holding in their
  statement", 3252 characters, old "…ull request says the output was not
  read whole where it was; point 5, line 1538, since the person sees the
  com…", new "…ull request says the output was not read whole where it was;
  point 5, docs/roadmap-archive-1.md line 1538, since the person sees the
  com…"; old "…wrong, and where a name counts, at `htmlq`, the backing held;
  point 9, line 15579, with defect 3, since the qu…", new "…wrong, and where
  a name counts, at `htmlq`, the backing held; point 9,
  docs/roadmap-archive-1.md line 15579, with defect 3, since the qu…"; the
  rest unchanged.

  "hooks/post-tool-use-install-fact.sh wrote the line of an install after
  the exit of the whole call, so that an install failing behind a pipe,
  before a command after it or before || true got installed into", 1541
  characters, old "…r point 8, the decision on it; no longer required since
  decision (9), lines 1317 and 13635 of "A bench, two po…", new "…r point 8,
  the decision on it; no longer required since decision (9),
  docs/roadmap-archive-1.md lines 1317 and 13635 of "A bench, two po…"; old
  "…ecision (9), lines 1317 and 13635 of "A bench, two points", line 35485,
  defect 1 with calls like those of the …", new "…archive-1.md lines 1317
  and 13635 of "A bench, two points", line 35485 of the same file, defect 1
  with calls like those of the …"; the rest unchanged.

  "the three tasks of the roadmap are not separated, so nothing closed can
  leave it without losing a wording, a reason or a row of the table, and the
  history of the skills' states stands in the loaded texts": old "not
  stated"; new "the three tasks separated, so that what is closed can leave
  the roadmap without a wording, a reason or a row of the table being lost,
  and the history standing not in the loaded texts but where only whoever
  needs it reads it".

  The six lines as the tool reads them:

  Should changed: setup-checks step 3 reads the record on the packages after a fetch and says nothing of a fetch that fails
  Should changed: the command of shared/mode-set-up.md that reads the three records shows nothing where the fetch fails, so a failed fetch reads as the mode not set up
  Should changed: the third exit of shared/rule-not-written-down.md is computed on origin/main after a fetch and says nothing of a fetch that fails
  Should changed: the question on gitleaks of run 1 said that the run installs nothing and gave the command without backticks, and run 4 left out the browser as the example under the no of the install question, both holding in their statement
  Should changed: hooks/post-tool-use-install-fact.sh wrote the line of an install after the exit of the whole call, so that an install failing behind a pipe, before a command after it or before || true got installed into
  Should changed: the three tasks of the roadmap are not separated, so nothing closed can leave it without losing a wording, a reason or a row of the table, and the history of the skills' states stands in the loaded texts

  **The block of 5.5.** `Fix` of the block of the three tasks:
  `scripts/devloop-stock-take` "for rel in head_files(root):", the line at
  which the tool reads the roadmap and its archives for the heads; `Status`
  as the tool computes it, `Built, never walked`, no run recorded on the
  defect; its `Note` says that part 3 is built this day under 0.175.0. The
  block "four status lines of this file stand as part of a thing that
  carries runs, …" keeps its `Fix` on the header's line about such records,
  which stands unchanged in the rewritten paragraph; whether (b) meets its
  should is the person's to read. The report of this order stands on this
  machine as `~/devloop-report-2026-11-04-roadmap-archive.md`.

  **A fourth commit, after the check of the branch before the merge.** The
  outcome `hooks/pre-tool-use-identity-guard.sh / whole file / block: text 7
  on stderr with what was read filled in, exit 2, through no function` had
  its site and its evidence on line 193 of the hook, `exit 2`, last changed
  on 10 October 2026 at `1458419`; text 7 itself stands on line 192, changed
  on 29 October 2026 at `bc69673`, after 0.134.0 and 0.137.0, the versions
  of its three runs (`git blame -L 192,193
  hooks/pre-tool-use-identity-guard.sh`). The record of (b) on the status
  line of that day was what kept those runs from counting; with it gone, the
  second commit counted runs that saw a text 7 the hook no longer prints, an
  overcount, which section D of the tool's header allows nowhere. The
  evidence stands on line 192 now, "this command sets the identity of a
  commit itself", the outcome is `Built, never walked` again, its note says
  why, and the sentence of the tool's header on the 34 records says that no
  state changed. The tool after it: exit 0, broken records 0, uncovered
  lines 0 of 4454; walked 668, hook outcome 133; built and never walked
  1461, hook outcome 39; runs that do not count 945, the three runs of the
  outcome among them; every other count as after the third commit.

- **Three entries held, eleven places mended, two blocks added.**

  4 November 2026, version 0.175.0, unchanged: nothing under `skills/`,
  `shared/`, `hooks/`, `bin/`, `scripts/`, `output-styles/` or `.github/`
  changes, and `README.md` does not. On `task/audit-2026-11-04`, off
  `origin/main` at `b73c029`, in three commits: the mends in
  `docs/rationale.md`, in fields of four blocks of `docs/defects.md` and in
  five rows of `docs/stock-take.tsv`; then this entry with its two blocks;
  then, after the check of the branch before the merge, the paragraph on
  the outcomes of the identity guard that name text 7, below. The first two
  were written by Claude Code from the person's order of this day, the
  consistency audit after part 3 of the separation of this file; no session
  log was read; nothing was installed; GitHub was not read beyond `git
  fetch`; the identity under which git commits here was neither set nor
  read. The report stands on this machine as `~/devloop-audit-2026-11-04.md`,
  in English, and is not in the repository. Every line number of a file in
  this entry holds at `b73c029` unless it says otherwise; a line of this
  file holds at `b73c029` as well, this entry standing after the last line
  of the entry above and no line above it having moved; a line of the
  archive names `docs/roadmap-archive-1.md`.

  **What was read, and how.** Whole, with the text in front of the session:
  this file; `docs/roadmap-archive-1.md` lines 47082 to 47571, the two
  entries of 3 November 2026; `git diff 9cad40f origin/main` over every
  file but the archive, this file and `docs/stock-take.tsv`, whose diff was
  read with grep and counts; the head of `scripts/devloop-stock-take`,
  lines 1 to 870; `docs/skill-conventions.md` lines 1670 to 1908 and 3850 to
  4347; `docs/defects.md` lines 1 to 60 and 4762 to 4768; `README.md`;
  441761 bytes by `wc -c` over those ranges, the figure of the order. The
  branches of #223, #224 and #225 were fetched by their references, three,
  four and four commits, the tree of each head equal to its squash commit
  on main, `git diff --stat` empty for each. No subagent was used. The tool
  ran in a clone under a throwaway directory at `b545927`, `9cad40f`, the
  first three commits of #224's branch, `d026802` and the second and third
  commits of #225's branch, the nineteen quick checks beside it from each
  commit's own text, so that every figure the three entries give could be
  held against the tool's own output.

  **The three entries against the code, the documents, the table and their
  commits.** The entry at `docs/roadmap-archive-1.md` line 47082, the audit
  of 3 November 2026: 44 statements, 41 hold — its three commits and their
  files, the shipped directories unchanged, the two corrections in place,
  45530 and 45451, read at `b545927` and `9cad40f`, the 26 blocks whose
  Should changed and the 36 fields cut, the longest Should of 14,432
  characters, the four Wrong fields, the two benches, the 28th bullet, the
  figures before and after, which the tool gives at `b545927` and `9cad40f`
  line for line, and the nineteen checks printing the same at both. Three
  do not; the archive stays as it stands, said right here:
  - its head and its "Records" say 39 fields of blocks mended; its body
    names 4 + 36 + 3, and `git diff b545927 9cad40f -- docs/defects.md`
    changes 43 fields of 43 blocks, 26 Should and 17 Wrong. 43.
  - "lines 45604 to 45607, says '85 distinct heads cited …'": the sentence
    stands at lines 45625 to 45626 of the archive, in the bullet of lines
    45622 to 45626; 45604 is blank.
  - "two lines opening with 'Built:' …, 45883 and 45884": they stand at
    45882 and 45883; 45884 is blank.
  The entry at line 47394, the follow-up of 3 November 2026: 38 statements,
  every one holds — the two programs and the tool's head alone changed, the
  four commits, the self-test of `scripts/devloop-run-workflow` at 33 cases
  at `9cad40f` and 34 now and red with "the parenthesis carries 3 words, 2
  expected" on a copy carrying the old line, the 39 cases of
  `bin/devloop-auto-mode-question` under Python 3.9.6 and 3.14.7, every
  line number named, the records, the figures at `9cad40f` and on its
  second and third commits, and "STATES, by file and kind" the same line
  for line at `9cad40f` and after its first commit; one slip, no error: the
  lines 1805 to 1811 and 118 to 123 of its point (4) hold at `d026802` for
  the text they describe, not at `9cad40f` as its convention says. The entry
  at line 199 of this file, the archive of 4 November 2026: 61 statements,
  56 hold — its four commits, the archive byte for byte, lines 1 to 192 and
  the tail with its two changed lines, the 34 records with their 26 things,
  triple for triple, the eleven new things, the six Should changed, old
  and new, the fourteen runs, the fourth commit's blame and the three runs
  that count no longer, every line number of its (b) to (j) at `d026802`,
  the seven cases of the self-test and 155 and 135, and the figures at
  `d026802`, on its second and third commits and after the fourth. Five do
  not; said right here, the entry standing as written since no line number
  of it is wrong:
  - "34 not-a-thing records removed, by (b), … (`git diff f6461fc --
    docs/stock-take.tsv | grep '^-not-a-thing' | grep -c
    'docs/roadmap.md'`)": the command prints 35; the 35th, table line 5964
    at `d026802`, stood on a line of `scripts/devloop-stock-take`, part of
    the thing "state Closed: a defect whose evidence stands on a closing
    line of docs/roadmap.md …", which the grep matches by the thing's name;
    it went with its changed line, and a record on the new line came. 34 by
    (b), and one of the tool.
  - "34 removed by (b) and 7 added for lines of the tool": 35 removed and 8
    added, `grep -c '^+not-a-thing'` over the same diff; 3303 − 35 + 8 =
    3276.
  - "every run of the table, since no run points at the four sections":
    true on the second commit, where it was measured; since the third, the
    fourteen runs of that commit point at this file, 2559 of 2573.
  - "the references of (i): … `docs/rationale.md` 4": two citations stayed
    without the file, lines 2596 to 2597 and 2706 to 2707, mended below; and
    (i) was not carried through `docs/defects.md` lines 3043, 3431, 3592 and
    5528, the notes of rows 5914 and 7470 of the table, and line 66 of the
    tool's head, below.
  - "measured on the tree of the third commit before the second was made":
    the third commit's tree exists only after the second; read as before the
    fourth, the figures hold, the tool at that commit giving them.

  **Mended in `docs/rationale.md`.** Lines 2596 to 2597 and 2706 to 2707,
  two citations of entries' heads: "(lines 27387–27412)" and "(lines
  40048–40062)" → "(`docs/roadmap-archive-1.md` lines 27387–27412)" and
  "(`docs/roadmap-archive-1.md` lines 40048–40062)", as the other three
  citations with lines in that file have it since the entry above.

  **Mended in fields of blocks of `docs/defects.md`**, by (i) of the entry
  above, each old text naming an archived line without its file. Line
  3043, the Should of "at the three places that read BEHIND nothing says
  what happens where the rebase meets a conflict or the force-push is
  rejected": `grep -n -i 'rebase'
  docs/roadmap.md | grep -i 'conflict\|should' printed one line, 12128` →
  `grep -n -i 'rebase' docs/roadmap-archive-1.md | grep -i 'conflict\|should'
  printed one line, 12128`, the rest word for word, as the entry above did
  for the three fetch blocks; the line the guard over the blocks asks for:
  Should changed: at the three places that read BEHIND nothing says what happens where the rebase meets a conflict or the force-push is rejected
  Line 3431, the Note of "the rule that environment.md is written with the
  editing tool names the workflow file nowhere, …": "the ground of the entry
  of 6 September 2026 at line 1319" → "… at docs/roadmap-archive-1.md line
  1319". Line 3592, the Note of "text that
  belongs in the message stood in the thinking part at six further places
  of the two closing runs …": "… 18266 to 18268 and 17909 to 17929;" → "…
  18266 to 18268 and 17909 to 17929 of docs/roadmap-archive-1.md;". Line
  5528, the Note of "setup-checks step 8 sends two issues whose commands
  ask to text and says nothing of two in doubt, which pass the bound as
  well": "in the entry at 44909" → "in the entry at
  docs/roadmap-archive-1.md line 44909".

  **Mended in `docs/stock-take.tsv`.** Five rows, no anchor and no run
  changed. Row 5914, the note of a run on "the guards were blind to
  anything after a newline or a quote in a tool call": "lines 20084 to
  20089" → "lines 20084 to 20089 of docs/roadmap-archive-1.md". Row 7470,
  the note of "setup-checks / Step 8 — Offer the unattended mode / a side
  answered with a gate that binds, whatever the other did: the gate
  binds": "status line 44351 of the roadmap entry of 31 October 2026" →
  "status line 44351 of docs/roadmap-archive-1.md, the roadmap entry of 31
  October 2026". Row 1415, the note of "docs/skill-conventions.md / Before
  a handover, run these / locked skills: the green answer, which the
  section does not name", said this file says the check prints one line
  since 13 September 2026, where lines 33 to 36 say two since 31 October
  2026, mended there by the audit of 3 November 2026 → the note says two
  lines since 31 October 2026 (`628d166`), one from 13 September 2026
  (`b90874b`) until then, and that it said one until this day; 21 runs hang
  on the thing, its name stays. Rows 6018 and 6019, the two outcomes of the
  workflow step "README.md names no file or document of devloop's own",
  named "none of its five documents" and "one of its five documents" where
  the step's pattern names seven forms since the entry above → "none of the
  documents its pattern names" and "one of the documents its pattern
  names", renamed as section C of the tool's header has it, no run hanging
  on either and no other row naming them, each note naming the old name and
  this day, the note of the green outcome listing `docs/defects.md` since 2
  November 2026 and the archives since 4 November 2026 beside the five.

  **Recorded as blocks, not built.** Two, under `## Not yet sorted`, each
  with Fix none and the head of this entry as Found, each read Recorded, not
  built by the tool:
  - "a thing Walked on the branch that was not Walked at the branch point
    and has no run the branch adds goes unseen before the merge": the case
    of the last paragraph of the entry above, the outcome of
    `hooks/pre-tool-use-identity-guard.sh` on text 7 that stood Walked after
    the second commit of that branch because a line left its range, found
    by reading before the merge; the Should as the order of this day gives
    it. Looked for first: no block of `docs/defects.md` holds it, by `grep
    -n -i` with `branch point`, `walked on`, `not walked` and `no run` beside
    `branch`, and over the titles naming `branch` or `merge`; the nearest,
    "24 of the 162 runs under 0.137.0 were recorded on the branch before
    later commits changed lines of their things, …", holds a run to its
    lines and no thing to its state.
  - "the head of scripts/devloop-stock-take names docs/roadmap.md for the
    entry of 29 September 2026 on the merge gate, which stands in the
    archive": line 66 of the tool, found by `grep -n 'docs/roadmap.md'` over
    `hooks/`, `bin/`, `scripts/` and `.github/` against (i), where
    `.github/workflows/stock-take.yml` line 5 and `docs/skill-conventions.md`
    line 1416 name the archive for the same entry; a comment in a program,
    so a block and not a mend, since this order changes nothing outside
    `docs/`.

  **The outcomes of the identity guard that name text 7.** Eight things of
  the table carry "text 7" in their names (`awk -F'\t' '$1=="thing" && $2
  ~ /^hooks\/pre-tool-use-identity-guard.sh/ && $2 ~ /text 7/'
  docs/stock-take.tsv | wc -l` gives 8), rows 2922 to 2928 and 2931; the
  first writing of this paragraph read row 2931 alone. Rows 2922 to 2928
  block on a form read and name what is filled into text 7, "text 7 with
  EMAIL", "text 7 with the form read" and the like; each stands on the
  lines that read its form and set what is filled in, lines 118, 119, 120,
  131 to 134 with 141, 144 with 147, 152 with 169, 175, 181 and 182, and
  183 of the hook, every one last changed at `a03a720` on 14 October 2026,
  which introduced 0.137.0, or at `1458419` before it (`git blame
  hooks/pre-tool-use-identity-guard.sh`); the message itself is the record
  of the one exit line, as the hook says at lines 57 to 59, "the block's
  record in docs/stock-take.tsv stands on the one exit line". Their runs
  of 12 October 2026 under 0.137.0 count, and those of 10 October 2026
  under 0.134.0 do not, as section D of the tool's header has it; the
  change of 29 October 2026 lies on no line of theirs, and nothing is to
  correct. Row 2931, the message, has its site `exit 2` on line 193 of the
  hook and its evidence `this command sets the identity of a commit
  itself` on line 192; `thing_range` of the tool, from line 2226, takes
  for a branch its site line, its evidence line and every line recorded as
  part of it: 192 and 193, no part-of record standing since the entry
  above. Text 7 stands on line 192, in the range. Its three runs, rows
  2994, 2996 and 3918, under 0.134.0 and 0.137.0, count no longer: line
  192 last changed at `bc69673` on 29 October 2026, after both versions,
  and the tool lists each under RUNS THAT DO NOT COUNT naming that line.
  By section D none may count, and none does; nothing to correct, and no
  second way to weigh.

  **The block "four status lines of this file stand as part of a thing that
  carries runs, …", a question.** Its Should: "the tool rejects such a
  record, or the header names where such a line goes and why, and the four
  rows go there." At `b73c029` the header's section C, lines 412 to 432,
  says that a line of this file or of an archive counts for no run since 4
  November 2026 and why, and the four rows — on the archive's lines 13639,
  14689, 15534 and 41826 — are among the 34 records that went with the
  entry above, table lines 2689, 2765, 2988 and 7142 at `d026802`; the tool
  rejects no record on a line of this file or of an archive, `find_anchor`
  reading an archive like any file, so a not-a-thing record there would be
  accepted and hold its thing's runs to the archive's commit. The second
  half of the should is met and the first is not; the block reads Built,
  never walked off its Fix, the header's line 414, which stands. The
  question: does the block stay as it is, the header saying where such a
  line goes and the four rows gone, or is the first half to be built, a
  rejection of a not-a-thing record on a line of this file or of an archive
  with a case of the self-test? Proposal: it stays, and the next order on
  the tool adds the rejection as a thing of its own, since a record that
  holds every run of a thing to the archive's commit is the overcount's
  mirror, an undercount nobody sees.

  **Questions to the person.** The one above. README.md was held against
  the programs the two pull requests changed — the question on the rule for
  auto mode, the mark guard, the hook on permission prompts, the identity
  guard and the output style — and deviates nowhere, so no question comes
  from it; `docs/rationale.md` holds against its loaded texts at the two
  points the diff touches, `setup-checks` lines 305 to 311 with `build-work`
  lines 1273 to 1279, and `build-work` lines 1389 to 1395.

  **The tool, its self-test and the twenty checks, at `b73c029` and after
  the second commit.** The tool, `PYTHONDONTWRITEBYTECODE=1
  scripts/devloop-stock-take`, before and on the committed branch: exit 0
  and 0; broken records 0 and 0; uncovered lines of the search set 0 of
  4454 and 0 of 4454; units without a straight path 0 and 0; lines of the
  set that can carry no unique anchor 339 and 339; not-a-thing records
  3276 and 3276; closed defects 39 and 39; blocks under `## Not yet sorted`
  654 and 656; blocks with `not stated` 430 and 430; runs that do not
  count 945 and 945; things 1799 and 1799, none new and none renamed but
  the two outcomes above, which keep their rows; by state and kind:
  undetermined 24 and 24; recorded and not built 291 and 293, the two
  blocks; built and never walked 1461 and 1461; walked 668 and 668; closed
  39 and 39. The blocks held against the branch point: `Should changed 1`,
  the line above, `added 2`; the archives: `archives standing there 1,
  added by this branch 0`, `docs/roadmap-archive-1.md` held. Its self-test:
  155 cases and 135 messages, every one asserted, before and after. The
  twenty checks under "Before a handover, run these", in a bash started by
  `env -i` with `--noprofile --norc` and `/usr/bin/grep`: the nineteen quick
  checks print on the committed branch what they printed at `b73c029`, line
  for line and with the same exit codes, a `diff` of the two outputs silent
  for each, checks 5, 7 and 20 ending with 1 while printing nothing, as
  their sections call green; check 16, `scripts/devloop-run-workflow
  .github/workflows/stock-take.yml`: exit 0 and the line `green: 8 steps
  run, every one ended with 0; not run by design: no run: block (uses:
  actions/checkout@v7): 2; left out by the order of 31 October 2026: 3`,
  before and after, its first line naming the system and its release and
  no node name, its title step reading no head at `b73c029` and the head of
  this entry on the branch. In the clone, the figures of the three entries
  were read off the tool at `b545927`, `9cad40f`, `b16a9f6`, `8d8b35f`,
  `2f65f59`, `d026802`, `6211192` and `e430396`, each in about five
  minutes, and the self-test at `d026802`: 148 cases and 130 messages,
  every one asserted.

  **Records.** In `docs/stock-take.tsv`: the five rows above; no run is
  recorded for this entry. In `docs/defects.md`: the two blocks and the four
  fields above.

- **The rejection of a record on a roadmap line goes with the guard.**

  4 November 2026, version 0.175.0, unchanged: nothing under `skills/`,
  `shared/`, `hooks/`, `bin/`, `scripts/`, `output-styles/` or `.github/`
  changes, and `README.md` does not. On `task/catch-up-2026-11-04`, off
  `origin/main` at `211f924`, in one commit: this entry and the notes of
  three blocks of `docs/defects.md`. The catch-up after the consistency
  audit of that day, the entry above, on the one question it put to the
  person; written from the person's decision of that day; no session log was
  read. Every line number of a file in this entry holds at `211f924`.

  **Decided on 4 November 2026** by the person, on the question of the entry
  above on the block "four status lines of this file stand as part of a
  thing that carries runs, against section C of the tool's header, which
  names no target free of runs since 20 October 2026 and which the tool does
  not check" (`docs/defects.md` line 4762), whose Should is met in its
  second half since the entry at line 199 and not in its first. The block
  stays as it stands. The first half, the tool rejecting a not-a-thing
  record on a line of `docs/roadmap.md` that is in no search set or on a
  line of an archive `docs/roadmap-archive-<n>.md`, is built by the order
  that builds the block "a thing Walked on the branch that was not Walked at
  the branch point and has no run the branch adds goes unseen before the
  merge" (line 5538), and the same order mends line 66 of the head of
  `scripts/devloop-stock-take`, the block "the head of
  scripts/devloop-stock-take names docs/roadmap.md for the entry of 29
  September 2026 on the merge gate, which stands in the archive" (line
  5546): the three stand in the same file and ask for the same kind of case
  in its self-test, and which milestone takes them the sorting of the
  defects into the milestones decides. Reason: the missing half allows an
  undercount only, which section D of the tool's header permits, and built
  apart it would cost an order of its own. Not chosen: building the
  rejection now, in an order of its own. Not in question: a rejection of
  every not-a-thing record off the search set, since the catch-up of 14
  October 2026 kept such records, a part-of record binding the runs of its
  thing to its line (`docs/roadmap-archive-1.md` from line 24004); the
  rejection is of a record on a line of the roadmap, which counts for no run
  since the entry at line 199, section C of the tool's header.

  **Records.** In `docs/defects.md` the note of each of the three blocks
  names this decision; no title, Wrong, Should, Found, Fix or Status
  changes, and no run is recorded. The tool on the branch: exit 0, broken
  records 0, uncovered lines 0 of 4454, blocks under `## Not yet sorted`
  656, walked 668, built and never walked 1461, as at `211f924`.

- **Defects sorted into milestones, 13 to 15 added, the Done check built.**

  5 November 2026, version 0.176.0. On `task/sort-into-milestones`, off
  `origin/main` at `a5891cc`, in four commits: the code of
  `scripts/devloop-stock-take` with the version; this entry with
  `docs/plan.md`, `docs/defects.md`, `docs/skill-conventions.md` and
  `docs/stock-take.tsv`; the runs of the self-test, measured at the second
  commit; three sentences mended before the merge, named at the end of this
  entry. Nothing under `skills/`, `shared/`, `hooks/`, `bin/`,
  `output-styles/` or `.github/` changes, and `README.md` and
  `docs/rationale.md` do not: no loaded text changes, and no place of
  `docs/rationale.md` is touched by the decisions below. Written from the
  person's decisions of this day and from the proposals of 4 November 2026,
  which stand outside the repository; no session log was read. Every line
  number of a file in this entry holds at `a5891cc`.

  **Decided on 5 November 2026** by the person, on the proposals of 4
  November 2026 and their nine questions. (1) The rows of type thing in
  `docs/stock-take.tsv` keep the name thing. Reason: what a row is, its
  column kind says; another collective word would say no more. (2) Three
  new milestones, none of the existing ones widened: 13, the build loop
  with nobody there; 14, the setup and the text with the person there; 15,
  the records of the development, as section 5 of the proposals drafted
  them. Reason: every closing run measures one thing; the run of milestone
  8 would otherwise measure the setup instead of the road to the running
  program, and 103 blocks of the records would hold milestone 12 up. Not
  chosen: milestones 5, 8 and 12 widened and the records under "## Without
  a milestone". (3) The order: 1, 2, 3, 12, 13, 14, 4, 5, 6, 7, 8, 9, 10,
  11, 15. Reason: the runs of 8, 9 and 11 build and merge; they then run on
  a repaired loop with nobody there and each has one open question, as
  `docs/plan.md` grounds it for milestone 11 under "Why last". Not chosen:
  13 and 14 directly before 9. (4) Every block under "## Milestone 3"
  carries no "not stated": Wrong and Should are filled from the entry its
  Found names. Reason: to every defect belongs its should, done or not, and
  the rule of `docs/plan.md` under "Five sentences" asks it of a reached
  milestone. Not chosen: a sentence binding the rule only when the line
  "Done on" is set; the blocks under "## Without a milestone". (5) The 30
  contradictions of the loaded texts stay under "## Without a milestone";
  an order of its own, directly after this one, mends all 30 before the run
  of milestone 12. Reason: some concern the installation, whose cases run
  again in milestone 12 on every system; most follow from earlier decisions
  and are one line. Not chosen: each contradiction in the milestone of its
  subject. (6) `diagnose-bug`: the fourth route holds; the opening names
  four routes, the fourth with its condition. Reason: the aim of the plan is
  a running program the person can look at, `docs/plan.md` under "The aim";
  that no run met the route so far is no reason to drop it. (7) An older yes
  without the five places for test browsers: the refresh of the setup adds
  the places this version names for the kinds the yes covers, without a
  question, and says so in its pull request. Reason: the question names
  kinds, not places, `shared/install-question.md` lines 6 to 12; the case
  returns with every version that adds a place. "not amended" in
  `docs/roadmap-archive-1.md` line 13047 was a ruling of that order, not of
  the person. (8) The guard on the mark, `hooks/pre-tool-use-mark-guard.sh`,
  reads the stored record of the answer to work with nobody there as well
  and blocks where it does not say yes; built in the order of (5). Reason: a
  block is stronger than a rule the run itself keeps; the mark is written
  with the person there, and on the way over `--auto` the record stands on
  main by then, `skills/build-work/SKILL.md` lines 1445 to 1447. Not chosen:
  the text corrected alone. (9) `start-work`: an open issue a person wrote,
  not devloop, counts as work; the run names it and offers to take it up, on
  a yes the planning starts from it, on a no the open question what to build
  follows; the wording of the offer is approved by the person before the
  build. Reason: whoever writes an issue in the project works along and
  wants it taken up; the offer leaves the decision with the person. Not
  chosen: naming it alone. (10) The form "Built, never walked, cannot be
  forced: decided in FILE at TEXT" is given by the order of a milestone
  block by block: where a run of its milestone meets the case, the block
  carries no form; only where no run can meet it, the order puts the form to
  the person. The blocks for which a recorded decision of the person says so
  already carry it since this order. The blocks `docs/defects.md` lines 5138
  and 5146 go to milestone 14. Reason: that a case depends on what the model
  does does not mean it cannot be brought about; every run in German meets
  the case of line 5138; `docs/plan.md` under milestone 3, the decision of
  18 October 2026, holds it so already. Not chosen: a general rule for every
  case that depends on the model. The "no milestone" of the blocks 5138 and
  5146 of 27 October 2026 is from before the rule of 2 November 2026. (11)
  The blocks `docs/defects.md` lines 5154, 5202 and 5210 are built, in
  milestone 12. Reason: decision (9) of 24 October 2026,
  `docs/roadmap-archive-1.md` lines 37776 to 37778: what costs a few lines
  "is built all the same". (12) `build-work` step 2, clause 3 ("With the
  spec closed, take it"): with the person there the run offers a loose
  issue once the spec is closed and takes it on a yes; without the person
  clause 3 stays; the wording of the offer is approved before the build. A
  new block in milestone 13 holds it. Reason: with the spec closed, what the
  person asked for is done; a further issue is new work, as in (9). The
  case: `docs/roadmap-archive-1.md` lines 43061 to 43069. (13) devloop
  writes no fixed line into a pull request. `.claude-plugin/plugin.json`
  gets under userConfig an option whose default is a line naming devloop; it
  stands in /config, and every skill that opens a pull request appends its
  value to the text where it is not empty. `README.md` says that the line
  Claude Code appends comes from its setting attribution.pr, and where the
  line of devloop is switched off. The line, the option's title and
  description and the sentence of the README are approved before the build;
  the order that builds checks the lowest version of Claude Code devloop
  supports against the release that substitutes ${user_config.KEY} in
  skills. A new block in milestone 14 holds it. Reason: the user decides in
  /config what stands at the end of their pull requests; a plugin cannot
  preset attribution.pr, only agent and subagentStatusLine take effect in
  its settings, https://code.claude.com/docs/en/plugins/components, section
  "Default settings". Not chosen: a line the user cannot switch off; naming
  devloop nowhere. (14) The sorting of every block follows the table of the
  proposals, `~/devloop-sort-proposals.tsv` outside the repository, with two
  changes: lines 5138 and 5146 to milestone 14. The block line 5466 stands
  in milestone 13. The groups of that table, each with its section, its
  count and its exceptions, stand below, so that this entry is checked
  without the table. (15) The three blocks on `scripts/devloop-stock-take`,
  `docs/defects.md` lines 4762, 5538 and 5546, are built by this order.
  Reason: it changes the tool in any case, and the reason of the decision of
  4 November 2026, the entry above, "built apart it would cost an order of
  its own", holds.

  **The groups of the table, by section**, 686 blocks, every row of the
  table checked against the section of its group before anything was moved;
  the nine rows that leave their group are the exceptions named here and no
  other. Milestone 3, 64: the install permission walked or closed, 63, and
  line 5394 from the install permission still open. Milestone 12, 90: the
  install permission still open, 62 less lines 5106, 5122, 5394 and 5442,
  and every other operating system and surface, 32. Milestone 13, 170: the
  mode's question and set-up with the start conditions and the mark, 42; the
  merge, 39; the stops, questions, last message and loose issues of the run
  with nobody there, 42; commands that do not answer, refusals and the bound,
  28; the build step and the build subagent, 18; and the new block of (12).
  Milestone 14, 123: the setup with the person there, 28; the check setup
  and the check table, 37; the guards other than the install guard, 14; the
  text the person reads, 27, lines 5138 and 5146 among them by (10);
  planning's record and pick-up, 3; the session start and the routes of
  `start-work`, 9; what devloop writes in the user's name, 4; and the new
  block of (13). Milestone 5, 38: what goes wrong with nobody reading, line
  5370 among them. Milestone 6, 21: planning's end of Stage 1. Milestone 7,
  4: the look. Milestone 8, 4: the road to running, 6 less line 406, to
  "## Without a milestone", and line 5082, to milestone 11. Milestone 9, 9:
  compaction. Milestone 10, 7: Matt Pocock's mechanisms. Milestone 11, 1:
  line 5082. Milestone 15, 103: the stock-take tool with its records and the
  checks, 67, and the documents' statements about the set, 37 less line 413,
  to "## Without a milestone". Without a milestone, 54: the 30
  contradictions of the loaded texts; README.md's statements, 19; lines 406,
  413, 5106, 5122 and 5442. Within a section the blocks keep the order they
  had; the sections stand in the order of (3), "## Without a milestone"
  last; "## Not yet sorted" is gone, empty. 688 blocks in all, with the two
  new ones.

  **Built in the tool**, every behaviour with its case in the self-test, 159
  cases, 148 messages read off the source and every one asserted by a case.
  The heading of the plan reads "## The milestones, in this order", without
  its count, against "A count lives in one place"; the tool reads the new
  heading, head, code and self-test alike, and `docs/defects.md` names it.
  The check of a reached milestone: where a branch adds the line "Done on"
  under a milestone of `docs/plan.md`, read against the plan at git
  merge-base HEAD origin/main, the tool is red, with the block's line and
  title, for every block of that section that is open or carries "not
  stated", and for every open block under the section of a reached
  milestone, under "## Without a milestone" or under "## Not yet sorted";
  open means neither Walked nor Closed nor marked with the form; the report
  names the milestones reached and those the branch reaches under a heading
  of their own. The form as a Status, `Built, never walked, cannot be
  forced: decided in `FILE` at "TEXT".`, taken only where the tool computes
  Built, never walked and FILE carries TEXT exactly once, the lines quoting
  the form left out as for a closing left on purpose; rejected where the
  tool computes another state, where the line is not found or found more
  than once, and where a Status opens like the form and is not it; listed
  under DEFECTS BUILT WHOSE CASE CANNOT BE FORCED and beside the Fix in the
  section's list. The first half of block 4762: a not-a-thing record on a
  line of `docs/roadmap.md` that is in no search set, or on a line of an
  archive, is rejected, since such a line counts for no run and covers
  nothing; the rows of the table under "Named, not built as skills" stand.
  Block 5538: the tool reads the branch point in a worktree of its own with
  the same rules and names, under WALKED ON THIS BRANCH WITHOUT A RUN THE
  BRANCH ADDS, every thing and every block Walked in the working tree, not
  Walked at the branch point and without a run among the run records git
  diff adds to the table; a list, not a red, since such a change can be
  right, as it was on 4 November 2026; where HEAD is the branch point and
  the tree is clean nothing is read. Block 5546: line 66 of the head names
  `docs/roadmap-archive-1.md` for the entry of 29 September 2026 on the
  merge gate. And the version of a run is asked of git once per version, not
  once per run: measured before this order, the tool took 250 seconds for a
  run on this machine, user 72 and sys 168, nearly all of it in `git log -S`
  over `.claude-plugin/plugin.json` for 2573 runs under 63 versions; with
  the cache a run takes 94 seconds, the second analysis of the branch
  point included, so that the reading of the branch point costs less than
  what the cache saves.

  **What changed in the documents.** `docs/plan.md`: the heading above; the
  decisions of this day as dated sentences at the rule under "Five
  sentences" and under milestone 12; milestones 13 and 14 after 12 and 15
  after 11, each in the form of the others, with a "Why here" that fits the
  order of (3); the "Why last" of milestone 11 reads "Why here, the last of
  the runs"; "Beside the twelve" reads "Beside the milestones"; under
  "## Open" the question on attribution.pr, the list for the milestones
  after milestone 3 and the question timeout each carry the dated sentence
  that says what is decided and which milestone takes each point, and the
  two measurements of the arming name milestone 13; the opening and
  milestone 1's text say that the order of this day sorted every block.
  `docs/defects.md`: the introduction names the form, the check and the
  sections as they stand, "## Not yet sorted" gone; every block under its
  section as above; the 46 blocks of milestone 3 that carried "not stated"
  filled from the entry their Found names, in that entry's words, 85 fields
  read at their lines of `docs/roadmap-archive-1.md`, and six Shoulds left
  at "not stated" where the entry carries no should — lines 536, 544, 574,
  1593, 2313 and 3530 at `a5891cc`, their Wrongs filled; seven closings,
  each with the proof the tool confirms: lines 406 at `docs/plan.md` under
  "Where the set ends", 413 at `docs/plan.md` under "Beside the milestones",
  5106 at decision (8) of 24 October 2026, 5122 at the sorting of the same
  day, 5442 at decision (6) of 1 November 2026, 5394 at decision (4) of 31
  October 2026, all five left on purpose, and 5274 corrected in the
  document, `README.md` carrying the five steps; the form on the seven
  blocks the person decided cannot be forced, lines 769, 1689, 2977, 3089,
  3554 and 4450 at the decision of 20 October 2026 and line 4250 at the
  decision of 18 October 2026, each decision read at its line of the archive
  first; the Shoulds of (6), (7), (8), (9) and of the blocks that named a
  milestone against their section changed, each named below with the old
  text quoted; 56 notes that said the person decides the milestone, or
  named milestone 3 or none, gained the clause naming their section since
  this day; the note of block 4338 says that step 1 of `setup-project`
  hands `brew install gh` over at the line that names the backing, where it
  said no line of the skill hands such a command over, the closing's proof
  unchanged; the two new blocks of (12) and (13), Found this entry. Two
  fields mended, named here and given no block: the Should of block 4834
  carried, behind "; no milestone.", the text of decisions (8) and (9) of 24
  October 2026 run on from the status line, which is no should, and reads
  now to "; milestone 12." alone; the note of block 4338 as above.
  `docs/skill-conventions.md`, "A defect is a block in docs/defects.md":
  the form, the check and the comparison with the branch point among what
  makes the tool red or what it lists, the transition marks in the past
  tense; "An archive of the roadmap never changes": the form among what the
  tool reads an archive for. `docs/stock-take.tsv`: 14 things of kind
  program outcome for the new outcomes, each with its case as bench, 31
  not-a-thing records for the lines inside them, and four records
  re-anchored to the lines that moved.

  **The Shoulds changed**, 58, each title here in the form the tool reads,
  the old text of each quoted below or in the report of this order:

  Should changed: diagnose-bug opens with three routes in and names a fourth further down
  Should changed: install-record.md says the five browser places are added with the person there and no text names a run that adds them
  Should changed: mode-set-up.md says the mark guard blocks exactly where the text refuses while the text refuses on five things and the guard reads four of them and start condition 1
  Should changed: three pairs of lines disagree: start-work on a stray open issue, setup-checks on secrets with nobody there, plan-work on the issue number of the spec
  Should changed: the question on gitleaks of run 1 said that the run installs nothing and gave the command without backticks, and run 4 left out the browser as the example under the no of the install question, both holding in their statement
  Should changed: run 1 headed the hard core of the user stories Geschichten where the person's language uses the term as it stands
  Should changed: the last message of the planning of run 3 said allein mit --auto, and the texts of cut-into-tasks, plan-work, build-work and setup-checks tell the person to type --auto without the command
  Should changed: the planning of run 3 read install-tools and dependency-tools off origin/main itself beside its call of bin/devloop-start-conditions
  Should changed: run 2 read the folders for browsers only around the npm install and only ~/.cache/puppeteer, none around brew install htmlq
  Should changed: run 2 ran brew install htmlq on main before cutting the task's branch, so the fact hook wrote no line and the run wrote it through the program, and the pull request says the hook wrote it
  Should changed: the planning of run 1 said to the person nothing of the mode not being set up and of --auto setting it up, where the record of the mode said yes and the install record no
  Should changed: the rounds of runs 1 and 2 said nothing of the tool the work needs and that it is missing, run 1's planning wrote that yq is installed without reading the machine and carried it into the build
  Should changed: run 1 built the task needing yq against a stand-in under the no, put the landing question and handed brew install yq over only after the person said the tool is missing
  Should changed: after the person's no the run answered their ! brew install yq in the same session, read the tool with --installed, ran bin/devloop-install-issues inside step 3, which closed the issue with a comment naming a start that did not happen, and built, so that the next start never walked
  Should changed: bin/devloop-command-reader line 2297 hands the two hex digits of a \x escape in an ANSI-C string to hex, which takes four, so every command carrying $'\xHH' ends the reader with exit 2 and the message meant for JSON, and the six PreToolUse guards block the call, the table guard blocking an experiment of the build subagent at ac4d47c8 #174
  Should changed: at the next start the main run read the tool itself with command -v and sent gh issue close for the install issue with a comment of its own, in start-work before the program, and only Claude Code's classifier refusing it left the closing to bin/devloop-install-issues
  Should changed: run 2 built both tasks and ran both installs in the main run and handed no task to a build subagent
  Should changed: the Stop hook of run 1 ran the chain at the end of the main run's turn while the build subagent renamed in the working copy, counted the red of the half-done rename as attempt 1, and the main run answered it with a text to the person
  Should changed: the failure lens of round 1 overwrote links.config.yaml in the project after a failed cd, restored it with git checkout and ended every process matching links-config.sh with pkill, and the main run said nothing of it to the person

  Should changed: a redirection behind a compound command belonged to no command the reader printed, so a mark written through a group went unseen outside auto mode and a heredoc behind done was read as commands
  Should changed: a browser landing inside the project put the command's beyond back to where it stood before the command, taking a sudo on the same command with it
  Should changed: the reader read as wrappers the two vendors' lists and exec alone, so a program outside them that runs its argument as a command was judged itself and the command behind it went through
  Should changed: the group of the programs that run a command was put together from single programs and was incomplete, so parallel, tmux, screen, entr, watchexec, nodemon, git rebase -x, bisect run and submodule foreach, fd -x, npm exec -c and uv run passed the hooks on the branch where main stopped them
  Should changed: mise exec and x were read as an installation against the decision that a command is one only where it names it, and nix develop was judged itself for the same reason
  Should changed: setpriv was a stop under every answer whatever its options, where only an option that sets another user, a group or the supplementary groups runs the command with other privileges
  Should changed: hyperfine was read with -S taking a value and every benchmarked command as a text for the shell against v2.0.0, which runs them with no shell, refuses a bare operator and takes -S as an alias of --shell=default
  Should changed: the options whose value is a command were read as values, hyperfine --prepare, --setup, --cleanup and --conclude, the script behind nodemon --exec and flock -c before the file, and programs already in the group lost a command where an option that takes a value was missing from their table
  Should changed: the search for the group read the manuals of a few projects and tools found by name, so that programs of every kind outside them, gosu, chpst, tini, retry, foreman, concurrently and pm2 among them, passed the hooks on the branch where main stopped them
  Should changed: sg ran the command as another group and passed under a yes, read as no stop since the group changed and not the user
  Should changed: a change of the group or of the supplementary groups alone was a stop under every answer at the install guard, sg and the group options of setpriv, capsh, s6-applyuidgid and nine more
  Should changed: the reader read a doubt on the blocking side at the 21 points of the third addendum's check, at man -P under man-db, at a text typed into a terminal and at the names ts and dotenv, where the rule says a doubt lets through
  Should changed: a text typed into a terminal that ends a line came past the guards since 6365a96, tmux send-keys with Enter, screen -X stuff and zellij action write-chars and paste with a line's end not read
  Should changed: @puppeteer/browsers install with --path to a place outside the project passes under every answer, the guard taking its default
  Should changed: the install guard reads the first browser download of a line alone, so a help, --dry-run or --list before it passes the download after it
  Should changed: four patterns of the install guard read across a separator into the next command, blocking make build && npm install
  Should changed: the install guard reads a make variable before install and not behind it
  Should changed: the six hooks turn a newline in the command into a space, so two commands on separate lines run together
  Should changed: npm's other spellings of a global install, -g before install, --location=global, an abbreviated option or an alias of install, pass the install guard
  Should changed: a variable before the command that moves the destination, GOBIN= or npm_config_prefix=, is not read by the install guard
  Should changed: eight install routes the install guard does not read, deno, dotnet tool, conda, nix profile, pkgx, gh extension, volta and fnm
  Should changed: the forms of Nix that fetch a package and run it, nix run and nix shell, are read by the install guard nowhere and named by shared/fetch-and-run.md nowhere
  Should changed: after the yes to the install record and to the dependency file, step 8 entered no check tool and filled no class that was off for the first no, checks.md after the run holding format, lint, types and secrets as skipped (user) with the first run's reasons
  Should changed: the rule that environment.md is written with the editing tool names the workflow file nowhere, reached neither build subagent for that file and has no copy in setup-checks step 8, so that the guard blocked two subagents writing the workflow file from the shell and the main run wrote environment.md from the shell twice unblocked
  Should changed: the guard read where a route lands for brew, go and npm alone and blocked every other route under every answer, so on a stack whose routes were among those a yes opened nothing
  Should changed: the install question says which places exactly stand written in the record and says nothing of a bare pip, while a route's place is read on the machine at the moment of the command and a bare pip opens nothing
  Should changed: step 3 of setup-project skipped the whole of step 4 where there is no code, so a project set up empty was never put the install permission and carries no record
  Should changed: question 4 of setup-project came out wrong twice on 29 September 2026 from two texts, its surroundings pulling it toward a question about tools for check classes
  Should changed: three things in the options of question 4 arrived in the run's own words, a declined class left open, the class as an issue, the no as a promise to ask, none of the three stated at point 4 where the run writes them
  Should changed: the repair of point 3 of question 4 made on 30 September 2026 did not hold in either run of that day at 0.120.0, the boundary arriving lifted out of the leak
  Should changed: the form named for question 4 on 30 September 2026 was met in neither run of that day under 0.120.0, the question arriving as one tab of a form beside auto-merge, and nothing in the repository can read whether it was met
  Should changed: question 3 of setup-project step 4 says the guard blocks an install during a first setup, while the guard is silent until step 6 has created docs/agents, so the installs of the yes run met no guard established to have seen them
  Should changed: the session-start line printing the install record arrives in the run's context and not in front of the person, while the conventions and the hook's own comment call it what a second person who cloned the repository meets
  Should changed: body-through-file names no place for the body file, and both runs wrote it inside .git/
  Should changed: the install record does not spell what the conventions decided for a fetch into a language's own cache, and a second question under a record saying no asked a permission that counts for nothing
  Should changed: the install guard blocked a pull request body and a file write for containing the string go install
  Should changed: the narrowing named the file and not how the file gets written, a heredoc put the text back through the shell
  Should changed: the half of the form rule that the widget call carries the install question alone had nothing that checks it, the repository reading no widget call
  Should changed: the head of the reader sends to the three addenda of 13 October 2026 for the sources of the group, where the two of 14 October 2026 read vendors as well

  The 39 lines after the first 19 name the blocks of milestone 3 whose
  Should read "not stated" at `a5891cc` and carries the entry's words since
  this order, decision (4): the old Should of each of them is "not stated".
  The old Shoulds of the first 19: of 76, 108 and 116 "the person decides which holds:" with
  the two places of each contradiction; of 4298 the same two pairs with
  "for `start-work` no convention decides and this entry does not decide
  which"; of 4834 the should with "; no milestone." and the run-on text; of
  5138 and 5146 "; no milestone, built after the decision on milestone 3.";
  of 5154, 5202 and 5210 "; milestone 3, a small matter by decision (9) if
  the person so decides."; of 5170 the same tail, now naming milestone 12
  and the date of decision (9); of 5162, 5186, 5354, 5362 and 5378
  "; milestone 3."; of 5194 and 5218 "; the milestone the person decides
  after milestone 3."; of 5370 "; milestone 3.", now milestone 5.

  **Left open, named.** The blocks `docs/defects.md` lines 2833 and 2841,
  README.md's two sentences for which the proposals drafted wordings, stay
  open under "## Without a milestone", since no decision of this day
  approves a wording and `README.md` does not change in this order: like
  the 30 contradictions they hold the Done line of milestone 12 until an
  order closes them. Lines 536, 544, 574, 1593, 2313 and 3530 keep "not
  stated" in their Should, their entries carrying none.

  **The tool.** Before this order, at `a5891cc`: exit 0, broken records 0,
  uncovered lines 0 of 4454, blocks under "## Without a milestone" 30 and
  under "## Not yet sorted" 656, closed 39, with "not stated" 430, not-a-thing
  records 3276, lines that can carry no unique anchor 339, Undetermined 24,
  Recorded, not built 293, Built, never walked 1461, Walked 668, Closed 39. At
  the second commit: exit 0, broken records 0, uncovered lines 0 of 4498,
  blocks by section as above, "## Not yet sorted" gone, closed 46, with "not
  stated" 390, built whose case cannot be forced 7, not-a-thing records 3307,
  lines that can carry no unique anchor 343, Undetermined 24, Recorded, not
  built 286, Built, never walked 1484, Walked 661, Closed 46; milestones
  reached 1, 2, 3, none reached on this branch; Walked on this branch without
  a run the branch adds: 0. The changes against the run before: closed +7, the
  seven closings of this order; blocks with "not stated" -40, the 46 blocks of
  milestone 3 filled but six Shoulds; Closed +7 and Recorded, not built -7,
  the seven closings, the two new blocks and the two blocks of (15) whose Fix
  points at code now; Built, never walked +23, the 14 new things of the tool,
  the two blocks of (15) and the things whose runs under an earlier version
  stopped counting with the change to their lines, held against the runs of
  the third commit; Walked -7 for the same reason, until the third commit; the
  search set +44 lines, the new code, every one covered; not-a-thing records
  +31, the part-of records of the new lines; lines that can carry no unique
  anchor +4, six new lines of the tool that repeat a line of it, `if base is
  None:` twice, `if got is None:` twice, `if m:` and `if p.returncode != 0:`,
  where the two lines `if wanted(rel) and files.get(rel) is not None:` that
  stood twice are one line now, anchored and covered; Undetermined +0. Runtime
  94 seconds against 250.

  **Records.** In `docs/stock-take.tsv`, by section C of the head of
  `scripts/devloop-stock-take`, in the third commit: a run of the self-test
  of this day under 0.176.0 on every thing the order adds, on the three
  blocks of (15), whose Fix points at the lines that build them, and on
  every thing of the tool whose run under an earlier version stopped
  counting with this order's change to its lines: 24 runs. No run on
  any other block.

  **Mended before the merge**, by the check of the branch against the code,
  in the fourth commit. `docs/plan.md` under milestone 13 named the "Why
  last" of milestone 11, which this order renamed "Why here, the last of
  the runs", and names its "Why here". The introduction of
  `docs/defects.md` and `docs/skill-conventions.md` under "A defect is a
  block in docs/defects.md" said that "not stated" stands in six blocks of
  milestone 3 alone, where six is its count under milestone 3 and the blocks
  of the other sections carry it until the order of their milestone fills
  it; both say so, and the introduction, which said the tool lists them
  without going red, names the Done line that turns them red as the
  conventions do.

- **Decided contradictions mended, the mark guard reads the mode's record.**

  5 November 2026, version 0.177.0. On `task/contradictions-mended`, off
  `origin/main` at `cb5e5e9`, in five commits: the code with the version —
  `hooks/pre-tool-use-mark-guard.sh`, `bin/devloop-install-record`,
  `bin/devloop-start-conditions`, `.github/workflows/stock-take.yml`, the
  loaded texts under `skills/` and `shared/`, `README.md`,
  `docs/rationale.md` and the places of `docs/skill-conventions.md` that say
  what the guard reads; this entry with `docs/plan.md`, `docs/defects.md`,
  `docs/skill-conventions.md` and `docs/stock-take.tsv`; the runs of the
  bench, measured at the first commit, whose code the second leaves as it
  stands, and recorded in the third; two figures of this entry copied from
  the tool's output in the fourth; and the places mended before the merge in
  the fifth, named at the end of this entry. Written
  from the person's decisions of this day and the order that carries them,
  which stands outside the repository; no session log was read; GitHub was
  not asked, a stand-in answering for `gh` wherever a case needs it. Every
  line number of a file in this entry holds at `cb5e5e9` unless it says
  otherwise.

  **Decided on 5 November 2026** by the person. (1) Where a block of the 30
  contradictions is mended, it stands afterwards where its state puts it:
  where the sentence itself was the error and a run does the same before and
  after, it is closed as corrected in the document and stays under
  "## Without a milestone"; where it is walked, it stays where it stands;
  where it is built and never walked, it goes into the section of the
  milestone whose run meets its case, by the groups of the sorting of this
  day, each named here with its milestone and its group; where no
  milestone's run can meet its case, it stays under "## Without a milestone"
  and is put to the person for the form "Built, never walked, cannot be
  forced"; a block not built stays as it is. Where the line between the
  first and the third case is not clear, the third holds and this entry names
  the block. (2) The six blocks under "## Milestone 3" whose Should read
  "not stated", since the entry their Found names carries none, take their
  Should from the text that says what holds: `docs/skill-conventions.md`
  under "The install guard matches the outcome as well as the verb", the head
  of `bin/devloop-command-reader`, the paragraph "Built: the browsers for
  tests" of `docs/roadmap-archive-1.md` from line 13018, the note of the block
  on `~/.claude` as a link; where no text names one, the Should says what the
  repair would have been and the status "Closed, left on purpose" stays, the
  two blocks on the wrapper that downloads on first use and on the stderr of a
  route. Both decisions stand in `docs/plan.md` beside decisions (4) and (5)
  of the entry on the sorting. (3) Decision (9) of the entry on the sorting,
  clarified: all that counts is whether devloop wrote the issue; an open issue
  an app opened gets the offer like one a person wrote, and the person
  decides; Renovate's dashboard, which stays open, so comes back at every
  start at which nothing of devloop's own runs, and whoever uses Renovate
  chose that. The Should of the block "three pairs of lines disagree" reads
  "an open issue devloop did not write" since this day, where it read "an
  open issue a person wrote, not one devloop wrote". (4) The wordings below,
  approved word for word.

  **The block of the guard on the mark**, approved for decision (8), one line
  in the hook as the earlier one was, the line breaks here those of this
  entry: "Blocked by devloop: the mark for a run with nobody there is written
  only where the record of the answer to whether work may run here with
  nobody there says yes and start conditions 1, 2, 5, 6 and 7 of the skill
  hold, read off the main branch as last fetched and off GitHub, and
  <failures>. Do not write the mark another way. The run with nobody there
  does not start: with the user there, tell them which of these failed and
  why, as the skill says, in the next message with which you end your turn
  with text, and carry on with them; with nobody there, stop with the reason
  named, as the skill says for a stop with a reason." Under `<failures>`,
  joined by "; ", first the line of the record where it does not say yes,
  then the lines of the conditions as before. The line of the record,
  approved with it: "the record of the answer to whether work may run here
  with nobody there does not say yes, because <cause>", `<cause>` in the form
  of the causes of `bin/devloop-start-conditions` for conditions 6 and 7.

  **The fields of the offer of `start-work`**, approved for decision (9):
  "Where: the start, nothing of devloop's own in flight, and an open issue
  devloop did not write: one without raised-here, and not the issue devloop
  files for a change set aside, labelled needs-human alone. Header: a name
  for the subject, at most twelve characters. Question field: the issue by
  its title and who opened it; the question line, whether to take it up as
  the next piece of work. With several: the newest three, each by its title
  and who opened it, the question line which of them. Yes, one answer per
  issue where there are several: label "Take it up"; line: the planning
  starts from this issue. No: label "Something else"; line: the issue stays
  open as it is, and they say what they would like to build. No
  recommendation." `docs/rationale.md` holds them under
  `skills/start-work/SKILL.md`, step 2.

  **Two sentences of `README.md`**, approved: property 1, "No question about
  which step comes next, only about the thing and about how you want to be
  worked with. "Which of these three designs?" is a fair question. "What do
  you want to do next?" is a failure. A question about how devloop runs here,
  such as what it may install or whether work may run without you, is put
  only where your answer changes your machine, your repository's settings,
  your project's dependencies or how you are worked with, and it carries no
  recommendation. No skill ever asks you for the name of a skill."; and the
  finish of a run with nobody there, "There is no cap on how many tasks it
  gets through: it picks up work that turns up along the way where it serves
  the same goal, and it runs until no task in scope is ready any more and no
  finding it filed as an issue is left that it would take now. Its last
  message names each such issue still waiting, and why."

  **The guard on the mark, decision (8).** The record `unattended-mode:`
  under `## Unattended mode` is read through `bin/devloop-install-record
  --unattended`, a third reading of that program beside `--dependency`, the
  keys `unattended-mode` and `unattended-answered`, no place and no route
  line, the reason line of a no not printed, the causes formed as under
  `--dependency`; `--line` and `--dependency` beside it are refused with 2.
  Read there and not in `bin/devloop-start-conditions`, since the record is
  no start condition — `shared/mode-set-up.md` lines 6 to 8 name the last
  four of the five as conditions 2, 5, 6 and 7 — and a line of that program
  would have been read by `build-work` and `plan-work` too; and not in the
  guard itself, which would have been a fifth copy of the resolution of the
  default branch the handover check holds to four files. The guard reads it
  first at a write of the mark in auto mode, before the conditions, blocks
  where it does not say yes, its line the first of the block, and fetches
  nothing; outside auto mode nothing is read, as before. Its head, lines 30
  to 85 now, says so; `shared/mode-set-up.md` lines 21 to 33, the step hooks
  on every system of `.github/workflows/stock-take.yml` lines 509 to 523 with
  its comment at lines 334 to 340, `skills/build-work/SKILL.md` lines 1509 to
  1524, `skills/plan-work/SKILL.md` lines 544 to 558, the heads of
  `bin/devloop-start-conditions` and `bin/devloop-install-record`, four places
  of `docs/skill-conventions.md` and the points of `docs/rationale.md` under
  `shared/mode-set-up.md`, `skills/plan-work/SKILL.md` Stage 1 and
  `skills/build-work/SKILL.md` "Unattended mode" say what the guard reads.
  `README.md` names the guard without its conditions, as before, a new
  wording being the person's; the report proposes one. The block "mode-set-up.md says the
  mark guard blocks exactly where the text refuses" asks for cases in the
  guard's self-test; the guard has none, its cases stand in the step of the
  workflow and in the bench below.

  **The bench of the guard**, measured on 5 November 2026 against the
  committed guard and programs of the first commit, `0920743`, in a throwaway
  project under a directory `mktemp -d` made, `gh` a stand-in first on the
  path that answers the repository, the classic protection and the rules so
  that conditions 2 and 5 hold and logs every call, `docs/agents/checks.md`
  with two filled rows and `environment.md` with both install records saying
  yes on `origin/main`, the hook fed its JSON on stdin with
  `CLAUDE_PROJECT_DIR` on the project, the mark command of
  `shared/mark-command.md` and a `Write` of `.claude/unattended.local`;
  twenty-two calls, every one as the order asked, cases 8 to 11 added so
  that the bench meets the outcomes of the guard whose lines this order
  moved:
  Case 1, auto mode, `unattended-mode: yes`, conditions 1, 2, 5, 6 and 7 hold: the write of the mark through, exit 0, nothing printed, three calls of gh, for the Bash command and for the editing tool alike.
  Case 2, auto mode, `unattended-mode: no`: exit 2, the block above, `<failures>` the record's line alone, "because the record says no (unattended-mode: no on origin/main as last fetched, answered 2026-11-05)", Bash and the editing tool alike; `unattended-mode: maybe`: "because unattended-mode reads "maybe" on origin/main, where yes and no are the only values".
  Case 3, auto mode, the section missing: "because docs/agents/environment.md on origin/main has no section "## Unattended mode", so the question was never answered"; the line missing: "because the section "## Unattended mode" on origin/main has no unattended-mode line"; the file missing on main: "because there is no docs/agents/environment.md on origin/main as last fetched", the lines of conditions 6 and 7 with the same cause behind it.
  Case 4, auto mode, `unattended-mode: no` and the class e2e empty on `origin/main`: the record's line first, then "condition 1 does not hold, because the class e2e is empty on origin/main".
  Case 5, auto mode, main never fetched, no `refs/remotes/origin/main`: "because the default branch main has not been fetched, so refs/remotes/origin/main cannot be read", then the lines of conditions 1, 6 and 7 with that cause, 2 and 5 holding off the stand-in.
  Case 6, the modes default and acceptEdits and an input without `permission_mode`, no `environment.md` on main: the block for the mode as before, exit 2, no call of gh, the record not read.
  Case 7, a deletion of the mark in auto mode, a read in default and in auto mode, and the mark command in a project without `docs/agents`: exit 0, nothing printed, no call of gh.
  Case 8, auto mode, `unattended-mode: yes` and `install-tools: no`: exit 2, `<failures>` the line of condition 6 alone, "condition 6 does not hold, because the install record says no (install-tools: no on origin/main as last fetched, answered 2026-11-05)", the record's line absent since the record says yes.
  Case 9, a `permission_mode` of weird: the block for the mode naming weird as its own label, exit 2, no call of gh.
  Case 10, a Bash command calling `bin/devloop-permission-mode`, in auto mode and without `permission_mode`: exit 0 and the statement as additionalContext, "the permission mode of this session is auto, shown in the status bar as auto mode on" and "could not be read: the hook input carried no permission_mode".
  Case 11, `CLAUDE_PROJECT_DIR` on a directory that does not exist, the mark command in auto mode: exit 0, nothing printed, no call of gh.
  The reader's refusals, measured directly: `--unattended --line`, "--line forms the line of the install record alone and does not go with --dependency or --unattended"; `--dependency --unattended`, "--dependency and --unattended each read one section of the record and do not go together"; an unknown option, "unknown option --foo; the options are --dependency, --unattended and --line"; two directories, the line of before; each exit 2.

  **The offer of `start-work`, decision (9).** Step 2 says what nothing of
  devloop's own in flight means — no open pull request of theirs and no open
  issue devloop wrote, the issue of a change set aside counting as devloop's
  — and offers an open issue devloop did not write in the fields above, the
  newest three where there are several, the question ending the turn; on a
  yes step 5 sends it to `plan-work`, which starts from that issue as its
  paragraph on the planning issue says of an issue someone filed; on a no the
  open question follows; the stop rule says which questions this step asks;
  beside work in flight such an issue is still not named, lines 172 to 181.
  The in-flight query of `skills/setup-project/SKILL.md` line 639 carries
  `author{login}` on the issues and the column `by:`, `-` where the author's
  account is gone, and the list of what the fields return says what it is read
  for and what it does not tell, lines 678 to 683 now; a project set up
  before this version is refreshed at its next start, step 1 of `start-work`,
  which rewrites the query before step 2 runs it. Played through before the
  build: nothing in flight and one such issue, the offer; four or more, the
  newest three; a pull request of theirs waiting, its offer first; a draft
  alone, not named and no work of devloop's, the offer; a spec in flight, no
  offer; a `raised-here` issue alone, `build-work`; the issue of a change set
  aside alone, devloop's, the open question; Renovate's dashboard and a yes,
  the planning starting from it; a query that did not answer, no offer and no
  claim that the tracker is clear.

  **The refresh adds the places, decision (7).** `skills/setup-project/
  SKILL.md` under "Refreshing an existing setup": where the record says yes
  and names fewer places than this version writes under a yes, the refresh
  adds the missing `install-place` lines under the ones that stand, without
  a question, the answer, the routes and the date unchanged, and names them
  under what changed; those lines stand in the body of the pull request step
  8 opens as well, which the skill said nowhere expressly until this day, the
  decision asking for it. Lines 130 to 131, 136 to 138 and 740 to 742 name
  the exception, `shared/install-record.md` lines 41 to 46 name the run.

  **The 30 contradictions**, each with what settles it. Built, 25; not built,
  5. The five of 4b of the order: diagnose-bug, decision (6), the opening of
  "When this runs" names four routes, closed as corrected in the document;
  install-record.md, decision (7), built, milestone 14, the group of the
  setup with the person there; mode-set-up.md, decision (8), built,
  milestone 13, the group of the mode's question and set-up with the start
  conditions and the mark; branch-deletion.md, exit 124 for the program's
  line and 128 for git's, closed as corrected; the three pairs, decision (9)
  for `start-work`, built, milestone 14, the group of the session start and
  the routes of `start-work` — its `setup-checks` pair held at `cb5e5e9`
  already, `skills/setup-checks/SKILL.md` lines 244 to 245 reading as the
  bullet at lines 88 to 105 does, the task ending and not the run, where the
  text of 17 October 2026 said the run stops; its `plan-work` pair mended at
  line 728, the spec reported by its title with its number inside. The 20 of
  the 25 that a decision of the person or a rule settles, each with the
  settlement: build-prototype LOGIC.md, the rule of 28 October 2026 under
  "Where the person types a command devloop hands them" in
  `docs/skill-conventions.md`, applied to SKILL.md that day, built, milestone
  6, the group of planning's end of Stage 1, the one block whose milestone is
  this entry's reading and not a group of the sorting, since a logic
  prototype is reached from Stage 1 for a design question and no milestone's
  run names it; body-through-file.md and editing-tool.md, decision 2 of the
  person of 12 October 2026 and the rule "A hook reads its input through one
  program", a quoted text a word to the guards, the reason of the editing
  tool the quoting and the per-file hooks, both closed as corrected;
  install-tool.md, decisions (5) of 27 and (1) of 30 October 2026, the issue
  closed by devloop at once or at the next start, closed as corrected;
  cut-branch.md, the rule of 28 October 2026, the merge proven at the
  platform and never on their word, closed as corrected; `start-work`, the
  offer to land a pull request a question and a stop, the person's decision of
  17 October 2026 on where owed text stands with "End by offering, not by
  naming", closed as corrected, this entry's reading of a decision that does
  not name the pair; `start-work`, the bullet on a ticket or task of a map or
  a spec, the room to object dropped at SW-7 by the person on 17 October
  2026, closed as corrected; `cut-into-tasks`, decision (1) of 17 October
  2026, the number of tasks in the message that names the split, closed as
  corrected; `review-changes` twice, the definition of a lens in
  `docs/skill-conventions.md` counting the lenses in the report's sections
  and decision (1) of 17 October 2026, closed as corrected; `setup-project`
  step 0, the rule of `shared/language-opening.md` for the case that nothing
  shows the language, the question in English gone, built, milestone 14, the
  setup with the person there; `setup-project` "A guard's block is not a
  decline", the person's decision of 20 October 2026 that a refresh asks
  nothing where a record stands, the reason corrected, closed as corrected;
  `setup-project` step 1, "Shared words are defined in one place" with the
  person's decisions of 20 and 28 October 2026, the backing in the skill's own
  words, closed as corrected; `setup-project` on three-questions.md and the
  mark's deletion, the same rule, the references gone, closed as corrected;
  `plan-work` Stage 1, decision (3) of 27 October 2026 and the head of
  `bin/devloop-tool-state`, the record's answer and not its line, closed as
  corrected; `setup-checks` step 3 on the command after a no, the person's
  decision of 21 October 2026, cluster 21, the command in the question's
  field, built, milestone 14, the check setup and the check table;
  `setup-checks` step 7, `shared/checks-owner.md` and "A rule holds only on
  the path it is written on", the four callers, built, milestone 14, the
  check setup and the check table; `setup-checks` step 3 on the last
  questions, the person's decision of 20 October 2026 on the second asking,
  closed as corrected; `setup-checks` step 8 on the 403, the dated sentence of
  `docs/plan.md` under milestone 3 and the person's wording of 8 October 2026,
  the exception named, closed as corrected; `setup-checks` step 8 on the
  thirteen lines, the rule of 17 October 2026 under "Where the text devloop
  owes the person stands", the count qualified, built, milestone 13, the
  mode's question and set-up with the start conditions and the mark, a line
  between the first and the third case this entry did not find clear. Not
  built, no decision of the person and no rule settling which place holds,
  each left as it stands with both ways in the report: `start-work` at `set
  up in part` without an idea; `plan-work` on the record at a blocked mark,
  where the decision of 30 October 2026 on what the planning says of the
  record does not name the block of the mark; `plan-work` on one session;
  `setup-checks` step 3 on a runtime under a yes, where the command to the
  person is settled and how the class is then decided is not; `setup-checks`
  step 8 on the record at a refused protection, where both texts are the
  order's of 9 October 2026 and the person approved text 3 alone, which says
  nothing of a record.

  **The Shoulds changed**, 29, each title here in the form the tool reads;
  of the 20 blocks of the contradictions the old text opened "the person
  decides which holds:" with the two places the block names; of the three
  pairs it read "an open issue a person wrote, not one devloop wrote" where
  it reads "an open issue devloop did not write"; of the two README.md blocks
  and the six of milestone 3 it read "not stated":

  Should changed: build-prototype LOGIC.md hands the file over by sending or opening it where SKILL.md gives one action
  Should changed: body-through-file.md says a heredoc puts the text where the guard reads it and that a quoted string is a word to the guards
  Should changed: editing-tool.md says the guards read text put through the shell and that a quoted argument is a word to them
  Should changed: install-tool.md says no issue holds the task since the issue is written on a no alone, while the way after a no runs the same steps with the issue open
  Should changed: cut-branch.md deletes the branch once they have said it landed where merge-handover.md reads the landing off the platform and never off their word
  Should changed: start-work says something in flight means no question and offers to land an open pull request
  Should changed: start-work says not to ask at all with a map or a spec in flight and in the same case to rank, recommend and offer
  Should changed: cut-into-tasks says the split with its count is said once the first task is built and that the number of tasks is stated after creating
  Should changed: review-changes asks for the record of how many lenses ran and says to say neither number
  Should changed: review-changes says to say what was filed and why where the report is said to nobody
  Should changed: setup-project asks the language first in English where step 4 says never to ask about the user's language
  Should changed: setup-project gives the record not having landed yet as the reason for handing nothing over, which does not hold at a refresh whose record stands
  Should changed: setup-project step 1 names the head of backed-command.md as a rule above, and the skill does not insert that text
  Should changed: setup-project points at three-questions.md and the text on the mark's deletion, neither of which it inserts
  Should changed: plan-work says under --planning the program does not give the record's line and that the spec carries not the program's line on the record
  Should changed: setup-checks hands the command over after a no to a tool in the packages as text and puts the question for the same class at once with the command in its field
  Should changed: setup-checks skips step 7 for the four single-class callers at its opening and for a single class from a build at step 7
  Should changed: setup-checks calls the questions of step 3 the last questions of the skill where step 8 asks more
  Should changed: setup-checks step 8 puts the question where the five things do not all hold and puts none where GitHub offers no protection
  Should changed: setup-checks counts the fields of the mode question at thirteen lines, which assumes the visibility answered and says nothing of the field with the command and the message in it
  Should changed: README.md says no question about the process is asked, and the set puts several
  Should changed: README.md states the finish of an unattended run in the words build-work names as the cause of a halt
  Should changed: three pairs of lines disagree: start-work on a stray open issue, setup-checks on secrets with nobody there, plan-work on the issue number of the spec
  Should changed: the install guard read package-manager verbs only, blind to a build flag aimed at a bin directory, sudo, make install and installer scripts piped from the network
  Should changed: the guards were blind to anything after a newline or a quote in a tool call
  Should changed: the install guard does not see a wrapper that downloads on first use
  Should changed: npx playwright install, a named install command whose download lands outside the repository, passed the guard
  Should changed: the block for a route that does not answer names the query and not what the query said on stderr
  Should changed: ~/.claude itself a link to a directory that does not exist: bin/devloop-auto-mode-rule write makes the directory the link points to, the case decided for a linked file alone and not arising in practice

  **The six Shoulds under milestone 3**, decision (2): the two guard blocks
  from `docs/skill-conventions.md` under "The install guard matches the
  outcome as well as the verb" and from the head of
  `bin/devloop-command-reader`; the browsers from the paragraph "Built: the
  browsers for tests" of `docs/roadmap-archive-1.md`; the link from the
  block's own note; the wrapper and the stderr of a route with what the
  repair would have been, left on purpose as before. The introduction of
  `docs/defects.md` and `docs/skill-conventions.md` under "A defect is a
  block" say that no block under milestone 3 carries "not stated".

  **A new block under milestone 12**, found this day on the platform's run of
  the checks of pull request #228 at `d654a4a`: the job hooks on every system
  on macos-latest red once in the self-test of `bin/devloop-bounded`, in its
  case "does not end", two lines of the shell reporting its sleeps terminated
  standing in the output, green on a second run; recorded and not built, Found
  this entry, the note reading off the code where the two lines come from.

  **What changed in the documents.** `docs/plan.md`: the decisions of this
  day beside decisions (4) and (5) of the entry on the sorting, and under
  milestone 13 that the guard reads the record since this day.
  `docs/defects.md`: the 30 blocks as above, 17 closed as corrected in the
  document under "## Without a milestone", 8 moved into the sections of
  milestones 6, 13 and 14 as built and never walked, 5 unchanged; the two
  README.md blocks closed as corrected; the six Shoulds of milestone 3; the
  new block; the introduction. `docs/skill-conventions.md`: the four places
  on what the guard reads in the first commit, the sentence on "not stated"
  in the second. `docs/rationale.md`: a point for every rule written or
  changed, the approved fields of the offer word for word, in the first
  commit. `docs/stock-take.tsv`: six things for the new outcomes of the
  guard, the reader, the offer's route to the planning and the refresh's
  places, 27 records re-anchored to the lines that moved, four things renamed
  where no run hangs on them and two keeping their name for the runs that
  hang on them, their notes saying what holds, 25 records of lines inside the
  new text.

  **The tool.** Before this order, at `cb5e5e9`: exit 0, broken records 0,
  uncovered lines 0 of 4498, blocks 688, under "## Without a milestone" 54,
  closed 46, with "not stated" 390, not-a-thing records 3307, lines that can
  carry no unique anchor 343, Undetermined 24, Recorded, not built 286,
  Built, never walked 1460, Walked 685, Closed 46. At the second commit: exit
  0, broken records 0, uncovered lines 0 of 4520, blocks 689, under
  "## Without a milestone" 46, closed 65, with "not stated" 382, under
  milestone 3 none, not-a-thing records 3332, lines that can carry no unique
  anchor 344, Undetermined 24, Recorded, not built 260, Built, never walked
  1478, Walked 681, Closed 65; milestones reached 1, 2, 3, none reached on
  this branch; Walked on this branch without a run the branch adds: 0. The
  changes against the run before: Closed +19, the 17 contradictions closed
  as corrected in the document and the two README.md blocks; Recorded, not
  built -26, those 19, the 8 blocks built and never walked, and the new block
  of milestone 12; Built, never walked +18, the 8 blocks, the 6 new things
  and the 4 things whose runs stopped counting with this order's change to
  their lines — the reader's `--dependency`, whose case line gained the
  count of sections; the guard's block under auto where condition 6 or 7
  does not hold on a record saying no, whose message changed; the finding of
  `review-changes` filed as an issue, whose sentence changed; and step 7 of
  `setup-checks` skipped for a single class, whose sentence changed — held
  against the runs of the third commit, which re-walk the first two; Walked
  -4 for the same reason, until the third commit; with "not stated" -8, the
  six Shoulds of milestone 3 and the two README.md blocks; the search set
  +22 lines, the new text, every
  one covered; not-a-thing records +25, the lines inside the new text; lines
  that can carry no unique anchor +1, the `else` of the record's reading in
  the guard, which repeats a line of the hook; Undetermined +0.

  **Records.** In `docs/stock-take.tsv`, by section C of the head of
  `scripts/devloop-stock-take`, in the third commit: the runs of the bench
  above under 0.177.0, measured against the first commit, on the two new
  things of the guard, on the thing of the reader's `--unattended` and of its
  refusal, and on every outcome of the guard whose line this order changed
  and whose case the bench meets, every line of the guard below its head
  having moved — the block under auto where a condition does not hold, by
  the program's line, the block where a record of condition 6 or 7 cannot be
  read and where one says no, the pass under auto, the block in another mode,
  the two forms of text C, the labels of the modes seen, a value none of the
  six, the mode stated beside the reader and stated as not readable, the pass
  of a deletion or a read, the pass in a project not set up and where the
  directory cannot be entered, the write read off the Bash command and off
  the editing tool, the silent pass of the editing tool on another file not
  among them, the bench feeding no such write; no run on any block. 26 runs.
  At the third commit the tool reads Built, never walked 1471 and Walked 688,
  the runs walking seven things: the two new outcomes of the guard, its block
  on a record of condition 6 or 7 saying no and its block on a record of 6 or
  7 that cannot be read, and the reader's `--unattended`, its `--dependency`
  and the refusal of the two together; everything else as at the second
  commit, exit 0, broken records 0, uncovered lines 0 of 4520.

  **Mended before the merge**, by the check of the branch against the code,
  in the fifth commit. `skills/start-work/SKILL.md` under "If nothing of
  devloop's own is in flight": a draft of theirs is nothing of devloop's own
  in flight, being left and not named, as the list of pull requests has it,
  and a map, a spec and the tickets and tasks under them are devloop's, as
  the paragraph on a map or a spec in flight has them; and the open question
  follows wherever no offer comes, and not only where both halves of the
  query are empty, which a draft or a pull request of somebody else's leaves
  untrue. `skills/setup-project/SKILL.md` on the `by:` column, and its point
  in `docs/rationale.md`: devloop's own issues are told apart by what each
  is, a finding by `raised-here`, a map by `untangle:map`, a spec by its
  children, the tickets and tasks under them by their parent, an unfinished
  planning by `being-planned`, the issue of a change set aside by
  `needs-human` alone, and not by `raised-here` alone. `docs/rationale.md`:
  the points this branch wrote or changed said how their texts read until
  this day and since when they read as they do, which the opening of that
  file rules out, "not how they came to read as they do"; each names its
  case and its reason alone now. This entry: five commits, where it said
  three. Three records of `docs/stock-take.tsv` that are no thing moved onto
  the mended lines of the two skills, "offer to take it up" kept on one line,
  where the check on offers under "Before a handover, run these" reads it.

- **Six contradictions settled, the README says what the mark guard reads.**

  5 November 2026, version 0.178.0. On `task/contradictions-decided`, off
  `origin/main` at `9524bb9`, in three commits: the code with the version —
  the loaded texts under `skills/` and `shared/`, `README.md` and
  `docs/rationale.md`; this entry with `docs/defects.md` and
  `docs/stock-take.tsv`; and the place mended before the merge in the
  third. Nothing under `hooks/`, `bin/`, `scripts/`,
  `output-styles/` or `.github/` changes, and no run is recorded. Written
  from the person's decisions of this day and the order that carries them,
  which stands outside the repository, and from the report of the order on
  the contradictions mended, outside the repository as well; no session log
  was read; GitHub was not asked. Every line number of a file in this entry
  holds at `9524bb9` unless it says otherwise.

  **Decided on 5 November 2026 by the person.** (1) The language at the
  setup: where the user typed nothing but the command and nothing before the
  run shows their language — no instructions file of theirs in the context,
  no document of the project —, `setup-project` asks it as the first, single
  question, in English, before the setup begins; where something shows the
  language, it is not asked. Reason: the run never guesses, and the question
  comes only where it otherwise would have to; the first setup of a new user
  is not to run in the wrong language, and whoever answers through buttons
  alone writes nothing their language could show in. Not chosen: never
  asking. `skills/setup-project/SKILL.md` lines 171 to 173 and 470, and
  `shared/language-opening.md` lines 5 to 10, which get this one exception.
  The Should of the block "setup-project asks the language first in English
  where step 4 says never to ask about the user's language" changes to the
  decision. The question is asked as text and names no languages, this
  entry's reading: a widget's answers would have to guess which languages to
  offer. (2) The install record at a blocked mark: both places of
  `skills/plan-work/SKILL.md` hold, each in its moment. Line 312, "says of
  the record only that the build decides", holds for what the planning says
  in its rounds and in the spec, until the mark is written; the refusal at a
  mark the hook blocks, lines 556 to 560, says in the approved sentence of
  `skills/build-work/SKILL.md` lines 1476 to 1485 also that they said no.
  Reason: whoever hears that the run without them does not start hears why;
  that the answer can change before the build touches nothing of whether it
  starts now. Not chosen: at the mark too only "needs their yes". (3) A
  runtime under a yes in `setup-checks` step 3: where under a yes the tool of
  a check class brings a compiler, a runtime or the system's own packages
  along, the class goes into the same question as under a no,
  `skills/setup-checks/SKILL.md` lines 480 to 503, with the same two answers
  and all that follows; it is not left open across a handover, as the text
  says there for the no. The point of the question field, line 494, approved
  word for word: "- **In the question field**: that for this check, in
  ordinary words, the tool is missing, named; under a no, that outside the
  project the run may install nothing; under a yes, that this tool brings
  along a compiler, a runtime or the system's own packages, named, and that
  their yes covers tools and browsers for tests and not these; that they can
  install it themselves, with the command in backticks, backed and as it runs
  from wherever they are — the change into the project's directory before it
  where it needs one, by "A command handed over runs as it stands" above; and
  the question line, how it is to go on." The clause on the change into the
  directory is the point's of today and stays; "under a no" there means, as
  line 480, the case that no record is written as well. Reason for the
  wording under a yes: the user hears why the run does not install the tool
  itself, what their yes covers, without an assurance the guard does not
  hold, `shared/install-question.md` lines 28 to 31 and "Runtimes are not a
  kind the permission may cover" in `docs/skill-conventions.md`. Lines 453 to
  462 say after it that this case goes into the question. (4) The sentence
  of `README.md` on the guard on the mark, lines 263 to 265, approved word
  for word from its start to "; and a hook", the rest of the paragraph as it
  stood: "Two more: a guard that blocks the file marking an unattended run
  from being written in any mode but auto, and in auto mode too wherever
  your answers and this repository's set-up, read off the main branch and
  GitHub, do not allow a run without you; and a hook that answers no to
  every permission prompt while". No block held the finding; a new one
  stands under "## Without a milestone", Found this entry, closed as
  corrected in the document with the new sentence as its proof.

  **What follows from a decision of the person or a rule**, each with its
  basis. (5) `start-work` at `set up in part` without an idea, the block
  "start-work asks what to build only after the introduction, so a setup in
  part with no idea reaches step 3 unasked": the basis is
  `skills/start-work/SKILL.md` lines 99 to 103, where the idea did not come
  with the command the start asks what they would like to build and stops,
  and B6 of the entry "Where each text devloop owes the person stays, goes
  into a pull request, an issue or a file, or drops, built after the
  decisions of the person of 17 October 2026: …", `docs/roadmap-archive-1.md`
  line 26956, the head at line 26919, the introduction staying only where no
  idea came and ending the turn; neither names `set up in part`, where the
  introduction falls away and the question with it, so that the run went
  over step 3 and step 4 into step 5 and `plan-work` with no idea, lines 66
  to 72 and 274 on. Built: at `set up in part`, where no idea came, the
  question without the introduction, as the end of the turn, before the
  setup, as at `not set up here`; where the idea came, as before; lines 68
  to 71 and 99 to 103. Played through before the build at the three states
  of the status line, with and without an idea: `not set up here` without,
  the introduction and the question; with, no introduction, step 3; `set up
  in part` without, the question alone, the turn ended, the setup of step 4
  once the idea stands; with, step 3 and the setup in step 4; `set up`
  without, the in-flight query and, with nothing in flight, the open
  question or the offer of an open issue devloop did not write, as before;
  with, step 3. (6) `plan-work` on one session, the block "plan-work says to
  run the four stages in one session where you can and that planning is one
  session": the basis is two rules of the skill, lines 22 to 24 and 136 to
  140, after which the planning may go over sessions; "where you can" holds,
  and the reason at line 147 is one that holds across sessions too: the part
  without them ends on the mark's deletion at every end it has — a stop of
  this stage, the halt ahead of the build, the end of the build — and
  nothing else writes one there. Closed as corrected in the document: the
  reason itself was the error, and a run deletes the mark and asks before
  and after. (7) `setup-checks` step 8 on the record, the block
  "setup-checks step 8 writes nothing where GitHub offers no protection
  before the question and writes a record saying no where the protection is
  refused when it is set": the two places mean two cases, lines 974 to 976
  the reading before the question, at which no answer is given, lines 1290
  to 1296 the case after a yes, where setting the protection fails and a
  later run would otherwise take for set up a mode that is not; each place
  names its case now, lines 974 to 977 and 1290 to 1296. Closed as corrected
  in the document: a run did the same at each moment before and after. (8)
  The three blocks "start-work says not to ask at all with a map or a spec
  in flight and in the same case to rank, recommend and offer",
  "cut-into-tasks says the split with its count is said once the first task
  is built and that the number of tasks is stated after creating" and
  "review-changes says to say what was filed and why where the report is
  said to nobody", closed as corrected in the document by the entry on the
  contradictions mended, whose report names all three under the line between
  the first and the third case of its order, the second case of decision (1)
  of that entry: at each the repair can change what a run does by which of
  the two places it followed — the start names a ticket and begins it where
  the bullet asked for an offer; the number of tasks stands in the message
  after the first task is built where "After creating" asked for it at once;
  what was filed reaches the person at the close of the step where the
  sentence asked for it on the spot. By that decision the second case holds:
  their status is "Built, never walked", their Fix names the line of the
  repair, and they stand in milestone 14, the first in the group of the
  session start and the routes of `start-work`, the two others in the group
  of the text the person reads. (9) The block "mode-set-up.md says the mark
  guard blocks exactly where the text refuses while the text refuses on five
  things and the guard reads four of them and start condition 1": its Should
  ended on "with cases in its self-test"; the guard has no self-test, its
  cases stand in the step hooks on every system of
  `.github/workflows/stock-take.yml` and in the measurement of the entry that
  built it, and the Should names these two. (10) `shared/fetch-three-times.md`
  line 91, "by the text on the mark's deletion": the text is inserted into
  `build-work`, `plan-work`, `setup-checks` and `setup-project`, the text on
  the mark's deletion into `build-work`, `cut-into-tasks` and `plan-work`, so
  the reference points in two of the four at a text that does not stand
  there, the finding of the block "setup-project points at three-questions.md
  and the text on the mark's deletion, neither of which it inserts"; the
  point says its rule without the reference, as that block was solved, line
  90 kept as it stood. No block held it; a new one stands under "## Without
  a milestone", Found this entry, closed as corrected in the document.

  **The blocks**, each with what is built, where it stands and in which
  state. The language at the setup: `skills/setup-project/SKILL.md` step 0
  takes the language from the instructions file or the project's documents
  and asks it where neither shows it, step 4 says the one question on the
  language is step 0's, `shared/language-opening.md` and `shared/closing.md`
  carry the exception in the same sentence; Fix the line of the question;
  Built, never walked, in milestone 14, the group of the setup with the
  person there, as before. The record at a blocked mark:
  `skills/plan-work/SKILL.md` Stage 1 scopes its rule to the rounds and the
  spec up to the mark and names the refusal at the mark as the one place
  that names today's answer, and the refusal says that they said no; Fix the
  line of the refusal; Built, never walked, moved into milestone 13, the
  group of the mode's question and set-up with the start conditions and the
  mark. A runtime under a yes: `skills/setup-checks/SKILL.md` step 3 says at
  the line that gives them the command and at the question under a no that
  the class goes into that question, the field in the approved wording; Fix
  the line of the field under a yes; Built, never walked, moved into
  milestone 14, the group of the check setup and the check table. `set up in
  part` without an idea: Fix the line of the question in step 2; Built, never
  walked, moved into milestone 14, the group of the session start and the
  routes of `start-work`. One session: closed as corrected in the document,
  `skills/plan-work/SKILL.md` carrying "on the mark's deletion at every end
  it has", under "## Without a milestone". Step 8 on the record: closed as
  corrected in the document, `skills/setup-checks/SKILL.md` carrying
  "written since no answer of theirs was given", under "## Without a
  milestone". The three of (8): Built, never walked, in milestone 14. The
  block of (9): Built, never walked, in milestone 13, as before. The two new
  blocks of (4) and (10): closed as corrected in the document under
  "## Without a milestone".

  **Not built, named.** The same case as (1) meets two other skills that
  begin with questions through the widget where the user typed nothing but
  the command: `start-work`, where nothing of devloop's own is in flight and
  an open issue devloop did not write stands, step 2 offering it through the
  widget as the first thing; and `setup-checks` typed by the person, whose
  step 2 puts its question through the widget. Neither asks the language;
  both meet the case in a project set up, whose documents show it; the
  report names them, as the order asked, and this entry builds nothing
  there. One case the play-through of (1) found lies outside the order and
  gets a block, recorded and not built, Found this entry, in milestone 14,
  the group of the session start and the routes of `start-work`: at `not
  set up here`, the command alone in an empty folder and no instructions
  file, `start-work` step 2 writes the introduction and the question what to
  build in a language nothing shows, and the question of (1) is never
  reached on that route, since the answer on the idea shows the language
  before the setup begins. `docs/plan.md` lines 121 to 147 do not speak of the language at the
  setup or of the record at a blocked mark, so decisions (1) and (2) stand
  here alone. `shared/install-question.md` does not change: the field under
  a yes names one tool and what it brings, and not an assurance over every
  runtime, which that text keeps out of the install question. The closing
  run of milestone 14 as `docs/plan.md` describes it reaches neither the cut
  nor a review, so that the cases of the two blocks of (8) in the group of
  the text the person reads are met by no run named today; the group of the
  sorting puts them there, as it put the block on the texts that tell the
  person to type `--auto` without the command.

  **The Shoulds changed**, 7, each title here in the form the tool reads; the
  old text of the first read "the language is not asked at the setup: where
  the user typed nothing but the command it is taken from what is in front
  of the run, as shared/language-opening.md, inserted into the skill, says
  for that case, and step 4's rule against asking stands"; of the five that
  follow "the person decides which holds:" with the two places each block
  names; of the last, as it reads now up to "so that it blocks exactly where
  the text refuses," followed by "with cases in its self-test":

  Should changed: setup-project asks the language first in English where step 4 says never to ask about the user's language
  Should changed: plan-work says of the install record only that the build decides and names today's record for conditions 6 and 7 at a blocked mark
  Should changed: setup-checks gives them the command where an install under a yes brings a runtime and says nothing of how that class is then decided
  Should changed: start-work asks what to build only after the introduction, so a setup in part with no idea reaches step 3 unasked
  Should changed: plan-work says to run the four stages in one session where you can and that planning is one session
  Should changed: setup-checks step 8 writes nothing where GitHub offers no protection before the question and writes a record saying no where the protection is refused when it is set
  Should changed: mode-set-up.md says the mark guard blocks exactly where the text refuses while the text refuses on five things and the guard reads four of them and start condition 1

  **What changed in the documents.** `docs/defects.md`: the twelve blocks
  as above, six moved into the sections of milestones 13 and 14 as built and
  never walked, two closed as corrected in the document, two with the Should
  changed and the state kept, two new. `docs/rationale.md`: a point for
  every rule written or changed — under `skills/setup-project/SKILL.md` step
  0, `shared/closing.md`, `skills/plan-work/SKILL.md` Stage 1 and the
  pick-up, `skills/start-work/SKILL.md` step 2, `skills/setup-checks/SKILL.md`
  step 3 with the approved field word for word and step 8 —, each naming its
  case and its reason alone. `docs/stock-take.tsv`: five things for the new
  outcomes — the language asked in `setup-project`, the exception in the two
  shared blocks, the class into the question under a yes in `setup-checks`,
  the question at `set up in part` in `start-work` —, the thing of the
  language taken from what is in front of the run renamed and re-anchored,
  no run hanging on it, five records re-anchored to lines that moved, and
  five records of lines inside the new text.

  **The tool.** Before this order, at `9524bb9`: exit 0, broken records 0,
  uncovered lines 0 of 4520, blocks 689, under "## Without a milestone" 46,
  closed 65, with "not stated" 382, built whose case cannot be forced 7,
  not-a-thing records 3332, lines that can carry no unique anchor 344,
  Undetermined 24, Recorded, not built 260, Built, never walked 1471, Walked
  688, Closed 65. At the second commit: exit 0, broken records 0, uncovered
  lines 0 of 4532, blocks 692, under "## Without a milestone" 42, every one
  of them closed, so that no open block stands there any more, closed 66,
  with "not stated" 382, built whose case cannot be forced 7, not-a-thing
  records 3338, lines that can carry no unique anchor 344, Undetermined 24,
  Recorded, not built 256, Built, never walked 1482, Walked 688, Closed 66;
  milestones reached 1, 2, 3, none reached on this branch; Walked on this
  branch without a run the branch adds: 0; blocks held against the branch
  point: removed 0, renamed 0, Should changed 7, added 3, the seven lines
  above. The changes against the run before: Closed +1, the two blocks
  closed as corrected in the document, (6) and (7), and the two new blocks
  of (4) and (10), less the three of (8), built and never walked again;
  Recorded, not built -4, the three blocks built, (2), (3) and (5), the two
  closed, and the new block of `start-work` recorded and not built;
  Built, never walked +11, the three built, the three of (8) and the five
  new things; Walked +0, no line of a walked thing changed, line 90 of
  `shared/fetch-three-times.md` kept as it stood for that; blocks +3, the
  three new; under "## Without a milestone" -4, six moved into milestones 13
  and 14 and two new; milestone 13 +1, milestone 14 +6; the search set +12
  lines, the new text, every one covered; not-a-thing records +6, the lines
  inside the new text; lines that can carry no unique anchor +0; with "not
  stated" +0; Undetermined +0. No run is recorded.

  **Mended before the merge**, by the check of the branch against the code,
  in the third commit. `skills/plan-work/SKILL.md` on the refusal at a mark
  the hook blocks on condition 6 or 7 said "and that the answer can change
  before the build touches nothing of whether it starts now", which reads at
  first as if the build touched something; it says that their answer can
  still change before the build and that this changes nothing about the run
  not starting now, and the point in `docs/rationale.md` says it in the same
  words. The anchor of that line in `docs/stock-take.tsv` moves with it. At
  the third commit the tool gives the counts of the second.

- **The language asked first where nothing shows it, a named one holds.**

  6 November 2026, version 0.179.0. On `task/language-asked-first`, off
  `origin/main` at `1c57fee`, in two commits: the code with the version —
  `skills/start-work/SKILL.md`, `skills/setup-project/SKILL.md`,
  `shared/language-opening.md`, `shared/closing.md` and `docs/rationale.md`;
  and this entry with `docs/defects.md` and `docs/stock-take.tsv`. Nothing
  under `hooks/`, `bin/`, `scripts/`, `output-styles/`, `.github/` or in
  `README.md` or `docs/plan.md` changes, and no run is recorded. Written
  from the person's decisions of 5 and 6 November 2026 and the order that
  carries them, which stands outside the repository, and from the report of
  the order on the six contradictions settled, outside the repository as
  well; no session log was read; GitHub was not asked. Every line number of
  a file in this entry holds at `1c57fee` unless it says otherwise.

  **Decided on 5 and 6 November 2026 by the person.** (1) On 5 November
  2026, the block "start-work writes the introduction and asks what to build
  in a language nothing shows where the user typed only the command in a
  project not set up", `docs/defects.md` line 3793: where nothing shows the
  language — nothing the user has written, no instructions file of theirs in
  the context, no document of the project in a language —, `start-work` at
  `not set up here` asks it first, before the introduction, as the one
  question in the message that ends the turn, in English, as `setup-project`
  step 0 does, `skills/setup-project/SKILL.md` lines 174 to 185; the
  introduction and the question what they would like to build come after
  it, in the language of the answer. Reason: on the route `README.md` lines
  67 to 71 describe as the only command, the run never reaches the question
  of `setup-project`, since the answer on the idea comes before and counts
  as the language signal; a short answer such as "Webshop" shows no
  language, and a setup answered through buttons writes nothing afterwards
  the language could show in. Not chosen: the introduction in English, the
  user's answer setting the language. The Should of the block changes to
  the decision. The sentence of `shared/language-opening.md` lines 9 to 11
  and `shared/closing.md` lines 13 to 15, "One exception: where neither
  shows it, the setup of a project asks it first, in English, as
  `setup-project` says, and no other skill asks.", names both places now;
  `skills/setup-project/SKILL.md` line 482, "the one question on the
  language is step 0's", read with it, stays: inside that skill it is still
  the one question, and step 0 says that `start-work` asks the same one
  before it. (2) The form and the words of the question, for both places.
  Approved on 5 November 2026: as text, not through the choice widget, and
  naming no languages, since a widget would have to guess which to offer —
  the reading of the entry "Six contradictions settled, the README says what
  the mark guard reads." until then, line 1821, and a decision of the person
  now. The question says three things: that nothing in this folder shows
  which language they write in; which one to use; that they can simply
  answer in it. Decided on 6 November 2026: the skills describe these three
  things and dictate no wording, by "Describe what must be said; never
  dictate wording", `docs/skill-conventions.md` line 883, and the decision
  against it, "An approved wording as an example in a skill." under
  "Decisions taken against" below; the closing line of the introduction,
  `skills/start-work/SKILL.md` line 99, stays the one fixed wording. Not
  chosen: the wording fixed in both skills, since a model paraphrases a
  fixed paragraph, line 885. The approved wording stands word for word in
  `docs/rationale.md`, under both skills and the heading of their place:
  "Nothing in this folder shows which language you write in. Which one
  should I use? You can simply answer in it." `skills/setup-project/SKILL.md`
  lines 177 to 179 named two of the three things; the third is added. (3)
  A named language holds, decided on 5 November 2026 for both places: where
  the answer names a language, that one holds, whatever language the word
  naming it stands in; where it names none, the language the answer is
  written in holds. "German" means German, "Deutsch" means German, "hola,
  en español por favor" means Spanish, "hola" means Spanish. Reason:
  `skills/setup-project/SKILL.md` line 179, "the language they answer in,
  or the one they name", did not say which holds where the two differ, and
  `shared/language-opening.md` line 1, "Answer in the language the user
  writes in", would read "German" as English text. Where the user later
  writes in another language, `shared/language-opening.md` line 11, "Switch
  the moment they write in another language", holds as before. (4) The
  block "setup-checks step 8 writes nothing where GitHub offers no
  protection before the question and writes a record saying no where the
  protection is refused when it is set", `docs/defects.md` line 5431,
  decided on 6 November 2026: it is "Built, never walked" and stands in
  milestone 13, the group of the mode's question and set-up with the start
  conditions and the mark, lines 1145 to 1146 above. Reason: that a run did
  the same before and after is not free of doubt; "offers no protection" at
  the reading before the question and "refused the protection" in the
  paragraph on the record describe the same event in ordinary words, and a
  run could write `unattended-mode: no` at the HTTP 403 before the
  question; in doubt the second case of decision (1) of the entry "Decided
  contradictions mended, the mark guard reads the mode's record." holds.
  Not chosen: "Closed, corrected in the document", as until then. Its Fix
  names the line of its repair, the proof of the closing until then,
  `skills/setup-checks/SKILL.md` "written since no answer of theirs was
  given". The case before the question is named in the same group by the
  block "step 8 read the gate, its binding and auto-merge before asking and
  learned that the platform refuses the protection only after the
  question", line 2133, "Built, never walked"; `docs/plan.md` does not
  change for it.

  **What follows from a decision of the person or a rule**, each with its
  basis. (5) The play-through of (1) to (3) before the build, the basis the
  order's rule to play a change through at the situations it meets, with
  the person and without her: the command alone in an empty folder without
  an instructions file, with the answers "German", "Deutsch", "hola" and
  "Webshop"; the command alone with an instructions file in a language;
  the command alone in a folder with documents in a language, not set up;
  the command with an idea in a language; the command with an idea that
  shows none, "Webshop"; `set up in part` and `set up` without an idea
  where the project's only documents are devloop's own; `setup-project`
  out of `start-work`; `setup-project` typed alone. The answers "German",
  "Deutsch" and "hola" and the five situations with a language shown get
  one answer from (1) to (3) and are built; three situations get none and
  are not built, named under "Not built, named" below. Without the person
  none of the places is reached: the mode begins at the end of Stage 1 or
  on the direct route, `skills/start-work/SKILL.md` lines 367 to 386. (6)
  The block "plan-work says to run the four stages in one session where
  you can and that planning is one session", line 5407, stays "Closed,
  corrected in the document": the basis is that only the reason, "since
  planning is one session", was wrong, while the instruction of the same
  paragraph, "Delete it with a shell command and ask", stood at `9524bb9`
  as it stands at `1c57fee`, `skills/plan-work/SKILL.md` line 148 at
  `9524bb9`, so that a run did the same before and after; said here since
  the report of the order of the entry "Six contradictions settled, the
  README says what the mark guard reads." put the line to the person. (7)
  The new branches in `start-work` and `setup-project` are "Built, never
  walked", by section D of the head of `scripts/devloop-stock-take`; the
  block of (1) is "Built, never walked" and stays in milestone 14, the group
  of the session start and the routes of `start-work`, lines 1151 to 1152
  above. Whether the closing run of milestone 14, `docs/plan.md` lines 1057
  to 1060, meets its case — the command alone in an empty folder, no
  instructions file in a language in the context — the plan does not say:
  it names a setup run on a fresh project with the person there through
  every question, and not whether the run begins with the command alone or
  whether the person's own instructions file stands in the context, which
  on the machine of every run so far it does, in German; named under "Not
  built, named" below, and `docs/plan.md` does not change for it.

  **The blocks**, each with what is built, where it stands and in which
  state. The language in `start-work`: `skills/start-work/SKILL.md` step 2
  asks it first at `not set up here` where the idea did not come with the
  command and nothing shows it, before the introduction, as text and in
  English, the three things, a named language holding, the introduction and
  the question in the answer's language in the next turn, and says that
  the question of `setup-project` is never reached on this route;
  `skills/setup-project/SKILL.md` step 0 says the three things, that a
  named language holds and that `start-work` asks the same question before
  its introduction, an answer to it showing the language;
  `shared/language-opening.md` and `shared/closing.md` name both skills in
  the exception and the named language; Fix the line of the question in
  `start-work`; Built, never walked, in milestone 14, the group of the
  session start and the routes of `start-work`, as before. Step 8 on the
  record: nothing built, the Fix the line of the repair of 5 November
  2026; Built, never walked, moved into milestone 13, the group of the
  mode's question and set-up with the start conditions and the mark, at the
  end of that section. One session: as before, "Closed, corrected in the
  document", under "## Without a milestone". The block of the setup's
  language, "setup-project asks the language first in English where step 4
  says never to ask about the user's language", line 3721: its Fix stands,
  its Should holds as it stands, the three things and the named language
  being the form of the question the Should names; Built, never walked, in
  milestone 14, as before.

  **Not built, named.** Three situations of the play-through get no single
  answer from the decisions and go to the person. (a) The answer "Webshop"
  to the question on the language: it names no language and is written in
  none the run could tell, the word standing so in German, English and
  Dutch; (3) gives no answer, and the run never guesses. Two ways: ask
  again, saying that the answer showed none — a second turn, and no guess;
  or hold English until they write in a language that shows, by the
  switch of `shared/language-opening.md` line 11 — no second question, and
  a first turn in a language that may be wrong. (b) The command with an
  idea that shows no language, "Webshop", without an instructions file and
  without documents: `skills/start-work/SKILL.md` line 111 says "ask
  nothing and go on to step 3 in the same reply", for the reason that a run
  with the idea in hand cannot follow a question on what to build, which
  does not meet a question on the language, while the sentence meets every
  question; and `setup-project` step 0 asks only where the user typed
  nothing but the command, line 171. Today the run guesses there. Two ways:
  `start-work` asks the language first there too, before step 3, where
  nothing shows it — one question, the reason of line 111 untouched, the
  sentence changed; or `setup-project` step 0 asks wherever nothing the user
  has written shows it, the idea included — reached at `not set up here`
  and `set up in part` alone, where the setup runs, and later than the
  first reply of `start-work`, which would then be step 3 in a guessed
  language. (c) `set up in part` and `set up` without an idea where the
  project's only documents are the five devloop wrote under `docs/agents/`:
  `shared/project-language.md` has every file the run creates written in
  English, so "this project's documents", `shared/language-opening.md` line
  7, show devloop's English and not the person's language, and the question
  what to build, the open question or the offer of an issue devloop did not
  write come in English where no instructions file stands in the context;
  the language of the setup is recorded nowhere. The sentence of the entry
  "Six contradictions settled, the README says what the mark guard reads."
  that both skills meet the case "in a project set up, whose documents show
  it", lines 1985 to 1986, holds for documents the person wrote and not for
  a project whose documents are devloop's alone. Two ways: a document
  devloop wrote counts as showing no language, and the question comes first
  there as at `not set up here` — no record, a question in every session
  without an instructions file until the person writes a document; or the
  setup records the language, in `docs/agents/environment.md` say, and the
  later sessions read it — one more line of the setup, read by every skill
  that starts a session. (d) Whether the runs "Ends with" of milestone 13
  names, `docs/plan.md` lines 996 to 1001, meet the case of the block of
  (4): the sentence names "the cases the blocks of its section name", which
  takes this block in; but the two runs go on one fresh project through the
  planning under `--auto` and on the direct route, which needs the mode set
  up, and the HTTP 403 before the question comes on a private repository
  under the plan Free, where the mode cannot be set up at all, and the
  record saying no after a yes needs a protection refused once it is set,
  which a repository that offers it does not do; a second project on the
  plan Free, or the form "Built, never walked, cannot be forced" for the
  half after the yes, is the person's to decide. (e) Whether the closing
  run of milestone 14 meets the case of the block of (1), (7) above.

  **The Should changed**, 1, the title in the form the tool reads; the old
  text read "the person decides: the same question, first and in English,
  where nothing shows the language, in `start-work` before the
  introduction, or the introduction as it stands":

  Should changed: start-work writes the introduction and asks what to build in a language nothing shows where the user typed only the command in a project not set up

  **What changed in the documents.** `docs/defects.md`: the block of (1)
  with the Should changed, the Fix and the state, in milestone 14 as
  before; the block of (4) with the Fix and the state, moved to the end of
  the section of milestone 13; the block of (6) as it stood.
  `docs/rationale.md`: a point for every rule written or changed — under
  `skills/start-work/SKILL.md` step 2 new, with the approved wording word
  for word, under `skills/setup-project/SKILL.md` step 0 with the approved
  wording word for word, under `shared/closing.md` —, each naming its case
  and its reason alone. `docs/stock-take.tsv`: eleven things for the new outcomes — in `start-work`
  step 2 the language asked first, a named language holding, none named,
  and something showing it; in `setup-project` step 0 a named language, none
  named, and the question `start-work` asked before it; in each shared block
  a named language and none named —, three records of lines inside the new
  text, and the two things of the exception in the shared blocks renamed,
  no run hanging on them, their anchors as they stood. The pre-handover
  check that holds locked skills against their callers prints three lines
  more, `start-work` named in `skills/setup-project/SKILL.md`,
  `shared/language-opening.md` and `shared/closing.md` as the place that
  asks the language first, not run, as the two lines until then name it;
  the sentence under "Named, not built as skills" above that counted them
  says five now, the one line with a single right answer this entry mends
  outside the order.

  **The tool.** Before this order, at `1c57fee`: exit 0, broken records 0,
  uncovered lines 0 of 4532, blocks 692, under "## Without a milestone" 42,
  every one of them closed, closed 66, with "not stated" 382, built whose
  case cannot be forced 7, not-a-thing records 3338, lines that can carry no
  unique anchor 344, Undetermined 24, Recorded, not built 256, Built, never
  walked 1482, Walked 688, Closed 66; milestone 13 173 blocks, milestone 14
  134. At the second commit: exit 0, broken records 0, uncovered lines 0 of
  4543, blocks 692, under "## Without a milestone" 41, every one of them
  closed, closed 65, with "not stated" 382, built whose case cannot be
  forced 7, not-a-thing records 3341, lines that can carry no unique anchor
  344, Undetermined 24, Recorded, not built 255, Built, never walked 1495,
  Walked 688, Closed 65; milestones reached 1, 2, 3, none reached on this
  branch; Walked on this branch without a run the branch adds: 0; blocks
  held against the branch point: removed 0, renamed 0, Should changed 1,
  added 0, the line above; milestone 13 174 blocks, milestone 14 134. The
  changes against the run before: Closed -1, the block of (4) built and
  never walked again; Recorded, not built -1, the block of (1) built; Built,
  never walked +13, the two blocks and the eleven new things; Walked +0, no
  line of a walked thing changed, the lines of the two shared blocks on the
  singular and the lines of `setup-project` step 0 on the first question
  kept as they stood for that; blocks +0; under "## Without a milestone"
  -1, the block of (4) moved into milestone 13; milestone 13 +1, milestone
  14 +0, one block built there in place of one recorded; the search set +11
  lines, the new text, every one covered; not-a-thing records +3, the lines
  inside the new text; lines that can carry no unique anchor +0; with "not
  stated" +0; Undetermined +0. No run is recorded.

- **The setup records the language, asked first wherever nothing shows it.**

  6 November 2026, version 0.180.0. On `task/language-recorded`, off
  `origin/main` at `8ca843a`, in three commits: the code with the version —
  `bin/devloop-install-record`, `hooks/session-start.sh`, `hooks/hooks.json`,
  `skills/start-work/SKILL.md`, `skills/setup-project/SKILL.md`,
  `shared/language-opening.md`, `shared/closing.md`, `docs/rationale.md` and
  `docs/skill-conventions.md`; this entry with `docs/plan.md`,
  `docs/defects.md` and `docs/stock-take.tsv`; and the runs of the bench,
  measured against the committed program and hook of the second commit,
  whose code is the first's, in a throwaway project under a temporary
  directory, GitHub not reached, and recorded in the third with the figures
  of the tool. Nothing under `scripts/`, `output-styles/` or `.github/` and
  nothing in `README.md` changes. Written from the person's decision of this
  day and the order that carries it, which stands outside the repository,
  and from the report of the order on the language asked first, outside the
  repository as well; no session log was read; GitHub was not asked. Every
  line number of a file in this entry holds at `8ca843a` unless it says
  otherwise.

  **Decided on 6 November 2026 by the person.** (1) The setup records the
  language: situation (c) under "Not built, named" of the entry "The
  language asked first where nothing shows it, a named one holds.", lines
  2240 to 2258 — `set up in part` and `set up` without an idea where the
  project's only documents are the five devloop wrote under `docs/agents/`,
  which `shared/project-language.md` lines 2 to 4 has written in English, so
  that `shared/language-opening.md` line 7 took the language from devloop's
  English. The setup writes the language it ran in with the person into a
  section of its own of `docs/agents/environment.md`, beside `## Install
  permission`, `## Dependency permission` and `## Unattended mode`. Where
  nothing the person has written shows the language, every later session
  takes it from their instructions file where it stands in the context,
  otherwise from this record. A document devloop wrote never counts as a
  sign of the language. In a project without the record, set up before this
  order, where neither an instructions file nor a document the person wrote
  shows the language, the question comes first, as at `not set up here`.
  Reason: the language belongs to the person who set the project up and does
  not change from session to session; a question in every session would be
  the error the question on the language prevents, in another form. Not
  chosen: devloop's documents counting as no sign and, where nothing else
  shows the language, the question first in every session. Left to the order
  and decided here, each with its reason. How the record reaches the
  session: through `bin/devloop-install-record --language` and a line
  `hooks/session-start.sh` gives as context, as the install record's line,
  by "The install guard reads a record", `docs/skill-conventions.md` lines
  2565 to 2574 — one program reads, the hook prints through it, and the line
  reaches the run before its first word, which `start-work` step 1, one
  command and no file read, lines 21 to 26, and every skill typed directly
  need, where a reading in the loaded texts would stand in twelve skills; the
  hook on `SubagentStart` gives nothing of it, since a subagent does not
  speak to the person. Who writes it where it is missing: step 6 of
  `setup-project` at a first setup, in the template of `environment.md`, and
  the refresh where none stands on the main branch, read there through the
  program after its fetch and written in the working tree on `devloop-setup`
  after the last question and before the first write, as the install record
  at a refresh, `skills/setup-project/SKILL.md` lines 82 to 100 and 783 to
  788; the refresh puts the question on the language first where nothing
  shows it, in the form of step 0, so that a project set up before this order
  gets the record at its next start, the version being newer and `start-work`
  step 1 running the refresh before step 2, lines 45 to 57. Its form:
  `## Language`, `language:` the English name of the language,
  `language-recorded:` the date, ASCII, the shape of the three records,
  `shared/install-record.md` lines 1 to 4, the English name since every file
  devloop writes is English. Its place in the chain of the opening block —
  what the person has written, their instructions file, the record, a
  document of the project the person wrote, the question —, the record
  before a document of theirs since the decision names the instructions file
  and then the record, and a document in a project can be English by
  convention. What marks a document devloop wrote, set where the texts give
  it: a file under `docs/agents/`, the marker line `<!-- devloop:` of step 6,
  line 535, and the block `## Control documents` of step 7, lines 794 to
  800; what the texts give no mark for stands under "Not built, named"
  below.

  **What follows from a decision of the person or a rule**, each with its
  basis. (2) The answer "Webshop" to the question on the language, situation
  (a), lines 2220 to 2227: the same question is put again, in the same form,
  and nothing else is said. Basis: "The run never guesses",
  `skills/start-work/SKILL.md` lines 92 to 93 and
  `skills/setup-project/SKILL.md` lines 183 to 184; holding English until
  they write in a language that shows would be a guess. (3) The command with
  an idea that shows no language, situation (b), lines 2227 to 2240:
  `start-work` asks the language first there too, before step 3, where
  nothing shows it; line 127, "ask nothing and go on to step 3 in the same
  reply", now asks nothing on what to build, its reason — a run with the
  idea in hand cannot follow a question on what to build — untouched. Basis:
  decision (1) of the entry of 6 November 2026, lines 2081 to 2090, "where
  nothing shows the language — nothing the user has written, …": an idea
  that shows no language shows none; the other way, the question in step 0
  of `setup-project`, would run step 3 in a guessed language. (4) One block
  each for (1), (2) and (3) in `docs/defects.md`, with Wrong, Should, Found
  the head of the entry of 6 November 2026, Fix the line of the repair,
  Built, never walked, and a Note; in milestone 14 by the rule of 5 November
  2026, `docs/plan.md` lines 135 to 147, in the group of the session start
  and the routes of `start-work`, lines 1153 to 1154 above, since the
  closing run of that milestone meets their cases, (6) below. (5) Milestone
  13, `docs/plan.md` lines 996 to 1003, "Ends with": the two runs on the
  fresh project cannot meet the case of the blocks of lines 2133 and 2724 of
  `docs/defects.md`, the reading before the question with HTTP 403, since
  the mode is set up there, and the 403 comes on a private repository under
  the plan Free of GitHub, where the mode cannot be set up, the report of
  the order of 6 November 2026, section 6 point 4; "Ends with" names a third
  run on such a repository, through `setup-checks` up to its step 8. Basis:
  "each meeting the cases the blocks of its section name" in "Ends with"
  itself. The second case of the block of line 2724, a record saying no with
  the reason that the platform refused the protection after a yes of theirs:
  `skills/setup-checks/SKILL.md` step 8 sets the protection in its third
  step, lines 1370 to 1376, after auto-merge read back `true`, on a
  repository that answered `[]` or a list to the rules query before the
  question, lines 970 to 976; a protection refused once set, "a private
  repository on a plan that does not allow it is the usual reason", lines
  1388 to 1390, needs a repository that offers the protection at the reading
  and refuses it at the write, which none of the person's own repositories
  does on purpose, the plan not changing between the two and the account
  holding admin rights; nothing is built for it, the block stays in
  milestone 13, and the report puts the form of this one case to the person.
  (6) Milestone 14, lines 1058 to 1062, "Ends with": the closing run meets
  the case of the block of line 3800 and of the three blocks of (4) only in
  a session in whose context no instructions file of the person in a
  language stands, the same report, section 6 point 5; "Ends with" names the
  setup run as beginning with the command alone in an empty folder in such a
  session, meeting the four cases, and a later session in the same project,
  likewise without such a file, taking the language from the record. How
  the person begins a session without their instructions file in the context
  no text of the repository says — `docs/roadmap-archive-1.md` lines 15559
  to 15563 quote the settings page of Claude Code on `CLAUDE_CONFIG_DIR` for
  "settings, session history, and plugins", not for the instructions file —,
  so the plan names the condition alone. Basis: the same. (7) The
  play-through before the build, the order's rule, at every situation it
  names, stands in the report; the situations with one answer are built, two
  get none and stand under "Not built, named". Without the person none of
  the places is reached, the mode beginning at the end of Stage 1 or on the
  direct route, `skills/start-work/SKILL.md` lines 379 to 412; the hook runs
  at the start of every session, with `--auto` typed as without, and prints
  nothing of the language where the project is not set up. On every system
  the hook and the program run on — macOS, Linux, Windows with Git Bash,
  Alpine with BusyBox — the new lines use what the file used before, `sed -n
  's/^key: //p'`, `grep -qxF`, `grep -m1`, `awk -v`, `printf`, `head -1`;
  the step "hooks on every system" of the workflow runs the hook on all four
  with a harmless input in a project not set up, where the new line is not
  reached and the hook ends with 0 as before.

  **The blocks**, each with what is built, where it stands and in which
  state. The language recorded, block "the language the setup ran in is
  recorded nowhere, so a later session without an instructions file takes it
  from devloop's English documents": `skills/setup-project/SKILL.md` writes
  the section in the template of `environment.md` and at the refresh where
  none stands on the main branch, asking first where nothing shows the
  language, and names it under what changed; `bin/devloop-install-record
  --language` reads it off the default branch as last fetched, `ref:`,
  `language:` and `recorded:` on exit 0, its own cause where the section is
  missing or carries no language line, the shared causes before them, and
  `--language --line` forms the one line `[Language]` with the language and
  the date, or the none line with the cause; `--language` beside
  `--dependency` or `--unattended` is refused with 2; `hooks/session-start.sh`
  prints that line after the install record's, through the same program,
  where the project is set up or set up in part; `shared/language-opening.md`
  and `shared/closing.md` put the record after the instructions file and
  before a document the person wrote, say that a document devloop wrote —
  under `docs/agents/`, carrying `<!-- devloop:`, the block `## Control
  documents` of `CLAUDE.md` — shows nothing, and name `start-work` and
  `setup-project` as the two that ask where none of these shows it;
  `skills/start-work/SKILL.md` step 2 asks it first whatever the status line
  reads, the record among what shows it, and says that at `set up` the
  refresh of step 1 asked already; `hooks/hooks.json` names the line in its
  description; `docs/skill-conventions.md` says under "The install guard
  reads a record" that the language is a fourth section read the same way,
  and `docs/rationale.md` carries the points under `start-work` step 2,
  `setup-project`'s refresh, step 0 and `environment.md`, and
  `shared/closing.md`. Fix the line `language-recorded: YYYY-MM-DD` of the
  template; Built, never walked, in milestone 14, the group of the session
  start and the routes of `start-work`. The answer that shows none, block
  "the answer Webshop to the question on the language names none and is
  written in none the run can tell, and no text says what follows":
  `skills/start-work/SKILL.md` step 2 and `skills/setup-project/SKILL.md`
  step 0 put the same question again, in the same form, and the two shared
  blocks say that an answer showing neither is asked again; Fix the line of
  the sentence in `start-work`; Built, never walked, in milestone 14, the
  same group. The idea that shows none, block "start-work asks nothing where
  the idea came with the command and shows no language, so step 3 runs in a
  guessed language": `skills/start-work/SKILL.md` step 2 asks nothing on
  what to build and puts the question on the language first where nothing
  shows it, the idea included, step 3 following in the next turn in the
  answer's language; Fix the line of that sentence; Built, never walked, in
  milestone 14, the same group. The two blocks on step 8, lines 2133 and
  2724: nothing built, Built, never walked, in milestone 13 as before;
  `docs/plan.md` names the third run. The block of line 3800: nothing built,
  its Should holding for its case, `not set up here`, where no document of
  devloop's exists; Built, never walked, in milestone 14 as before.

  **Not built, named.** (a) A skill the person types directly in a project
  without the record — `setup-checks` say, set up before this order, no
  instructions file in the context, the project's documents devloop's alone:
  nothing shows the language, the record is not there yet, and "no other
  skill asks", `shared/language-opening.md` line 11, which the decisions of
  5 and 6 November 2026 left standing; the run would guess, which it never
  does. Two ways: every skill that begins with a question asks the language
  first where the record is missing and nothing shows it, as `start-work`
  does — one question more in the shared block, until the next start of
  `start-work` has landed the record; or such a skill holds English until the
  person writes, the record coming with that next start. (b) What marks a
  document devloop wrote beyond the five, the marker line and the pointer
  block: decision records under `docs/adr/`, `CONTEXT.md`,
  `docs/adr/README.md`, tests, configuration and workflow files, notes —
  `shared/project-language.md` has them written in English and no text gives
  them a mark, so a run cannot tell them from the person's; a mark, or the
  rule that only the marked ones are devloop's, is the person's to decide.
  (c) The second case of the block of line 2724, (5) above, the form "Built,
  never walked, cannot be forced" for it being the person's. All three are
  the report's section 6.

  **What changed in the documents.** `docs/defects.md`: the three blocks of
  (4) at the end of the section of milestone 14, and one block outside the
  order, found by the reading of the places that name the records, in
  milestone 15, the group of the documents' statements about the set:
  `docs/skill-conventions.md` lines 1211 to 1212 say that no reader under
  `bin/` is built for the dependency record, while lines 2479 to 2481 and the
  head of `bin/devloop-install-record` name `--dependency` as its one
  reading; Recorded, not built, Found this entry. No block is removed,
  renamed or changes its Should. `docs/plan.md`: "Ends with" of milestones
  13 and 14 as (5) and (6) say. `docs/rationale.md`: the points named above,
  each with its case and reason alone. `docs/skill-conventions.md`: the
  paragraph under "The install guard reads a record". `docs/stock-take.tsv`:
  20 things for the new outcomes — in the two shared blocks a document
  devloop wrote showing nothing and the answer asked again; in
  `setup-project` the refresh writing the record and leaving a standing one,
  step 0's answer asked again, and under `environment.md` the section
  written and every later session reading it; in `start-work` the answer
  asked again, the refresh having asked at `set up`, and the idea that shows
  none; in the program the reading, its two causes, the two forms of the line
  and the refusal; in the hook the line and its none form —, twelve records
  of lines inside the new text, and 15 rows re-anchored or renamed, no run
  hanging on them: in each shared block the things on the instructions file,
  on the exception and on the named and the unnamed language; in
  `setup-project` step 0 the thing on the language taken from what is in
  front of the run, the one on neither showing it and the one on `start-work`
  having asked, with their two records of lines; in `start-work` the thing
  on the question asked first and the one on something showing the language,
  renamed. The runs of the bench, in the third commit, each on the row of its
  thing, as below.

  **The bench**, run against the committed program and hook of the second commit, in a throwaway project under a temporary directory with a bare repository as `origin`, `docs/agents/` with the five files on `origin/main` and fetched, the hook fed a SessionStart input through the reader with `CLAUDE_PROJECT_DIR` on the project; one line per case, each with what came out:
  Case P1, `--language` with the record `language: German` and `language-recorded: 2026-11-06` on `origin/main`: `ref: origin/main`, `language: German`, `recorded: 2026-11-06`, exit 0.
  Case P7, `--language --line` with that record: `[Language] German | recorded: 2026-11-06 | the language the setup of this project ran in with the person, read off origin/main as last fetched, not off the working tree`, exit 0.
  Case P11, `--line` with the install record under a no beside it: the install line as before, `[InstallRecord] tools: no | places: none | routes: none | answered: 2026-11-06 | read off origin/main as last fetched, not off the working tree`, exit 0.
  Case H1, the hook in that project, set up: three lines, `[ProjectStatus] branch: main | uncommitted changes: 0 | devloop: set up`, the install line, and the `[Language]` line of case P7, exit 0.
  Case P9, the section with `language: Spanish` and no date line: `recorded: none`, exit 0.
  Case P3, the section with the date line and no `language:` line: `cause: the section "## Language" on origin/main carries no language line`, exit 1.
  Case P4, a `language:` line with an empty value: the cause of case P3, exit 1.
  Case P2, `environment.md` without the section: `cause: docs/agents/environment.md on origin/main carries no section "## Language", so the setup recorded no language`, exit 1.
  Case P8, `--language --line` without the section: `[Language] none: ` with the cause of case P2 ` | no language is recorded for this project`, exit 0.
  Case H2, the hook, set up, without the section: the status line, the install line, and the none line of case P8, exit 0.
  Case P6, `--language --dependency`, and case P10, `--unattended --language`: `devloop-install-record: --language reads the record of the language alone and goes with neither --dependency nor --unattended` on stderr, exit 2.
  Case P10b, `--line --dependency`: `devloop-install-record: --line forms the line of the install record or of the language record and does not go with --dependency or --unattended` on stderr, exit 2; the same for `--language --line --unattended`.
  Case P5, every file of the setup taken off `origin/main` and `docs/agents/environment.md` in the working tree alone, `--language`: `cause: there is no docs/agents/environment.md on origin/main as last fetched`, exit 1.
  Case H4, the hook there, set up in part: the status line with the five files missing, `[InstallRecord] none: there is no docs/agents/environment.md on origin/main as last fetched | every install outside the repository is blocked and handed to the person until a record has landed on the default branch`, and `[Language] none: there is no docs/agents/environment.md on origin/main as last fetched | no language is recorded for this project`, exit 0.
  Case H3, the hook with `docs/agents/` gone, not set up here: `[ProjectStatus] devloop: not set up here` alone, nothing of the install record and nothing of the language, exit 0.
  Case P12, the record written into `environment.md` in the working tree with nothing on `origin/main`, `--language`: the cause of case P5, exit 1, the working tree not read.

  **The tool.** Before this order, at `8ca843a`: exit 0, broken records 0,
  uncovered lines 0 of 4543, blocks 692, under "## Without a milestone" 41,
  every one of them closed, Undetermined 24, Recorded, not built 255, Built,
  never walked 1495, Walked 688, Closed 65; milestone 13 174 blocks,
  milestone 14 134, milestone 15 103; with "not stated" 382, built whose
  case cannot be forced 7, not-a-thing records 3341, lines that can carry
  no unique anchor 344. At the third commit: exit 0, broken records 0,
  uncovered lines 0 of 4563, blocks 696, under "## Without a milestone" 41,
  every one of them closed, closed 65, with "not stated" 382, built whose
  case cannot be forced 7, not-a-thing records 3353, lines that can carry
  no unique anchor 349, Undetermined 24, Recorded, not built 256, Built,
  never walked 1507, Walked 699, Closed 65; milestones reached 1, 2, 3, none
  reached on this branch; Walked on this branch without a run the branch
  adds: 0; blocks held against the branch point: removed 0, renamed 0,
  Should changed 0, added 4; milestone 13 174 blocks, milestone 14 137,
  milestone 15 104. The changes against the run before: Recorded, not built
  +1, the block outside the order; Built, never walked +12, the three
  blocks of (4) and the 20 things less the eleven walked; Walked +11, the
  eight things of the program and the hook with a run of the bench, and
  `--line` under a no, the line printed and the refusal of `--line` beside
  `--dependency`, which the bench met as well; Closed +0; blocks +4; under
  "## Without a milestone" +0; milestone 13 +0, milestone 14 +3, milestone
  15 +1; the search set +20 lines, the new text, every one covered;
  not-a-thing records +12, the records of lines inside the new text; lines
  that can carry no unique anchor +5, repeated lines of the program — `else`,
  twice `exit 0`, twice the test on the key —; with "not stated" +0;
  Undetermined +0. No run of a walked thing stopped counting: the lines the
  runs stand on were not changed, the hook's install line and the program's
  shared causes among them.

- **No document counts for the language, the record's value a name of one.**

  6 November 2026, version 0.181.0. On `task/language-signals`, off
  `origin/main` at `5865430`, in three commits: the code with the version —
  `shared/language-opening.md`, `shared/closing.md`,
  `skills/start-work/SKILL.md`, `skills/setup-project/SKILL.md`,
  `bin/devloop-install-record`, `hooks/session-start.sh`,
  `docs/rationale.md` and `docs/skill-conventions.md`; this entry with
  `docs/plan.md`, `docs/defects.md` and `docs/stock-take.tsv`; and the runs
  of the bench, measured against the committed program and hook of the
  second commit, whose code is the first's, in a throwaway project under a
  temporary directory, GitHub not reached, and recorded in the third with
  the figures of the tool, which also corrects a count of this entry and
  two sentences of `docs/rationale.md` that credited the person with what
  follows from a rule. Nothing under `scripts/`, `output-styles/` or
  `.github/` and nothing in `README.md` changes. Written from the person's
  decisions of this day and the order that carries them, which stands
  outside the repository, and from the report of the order on the language
  recorded, outside the repository as well; no session log was read; GitHub
  was not asked. Every line number of a file in this entry holds at
  `5865430` unless it says otherwise.

  **Decided on 6 November 2026 by the person.** (1) No document shows the
  language: situation (b) under "Not built, named" of the entry "The setup
  records the language, asked first wherever nothing shows it.", lines 2528
  to 2534. The language comes from what the person writes, from their
  instructions file where it stands in the context, and from the record of
  the language, in this order; no document of the project counts as a sign
  of it, whether devloop wrote it or the person; where none of the three
  shows it, the question comes as `start-work` and `setup-project` put it.
  Reason: devloop writes decision records, notes, tests and configuration
  files in English and without a mark, `shared/project-language.md` lines
  2 to 4, the only mark, `<!-- devloop:`, standing in the template of the
  five files under `docs/agents/`, `skills/setup-project/SKILL.md` line 559,
  so a run cannot tell them from the person's; in a project set up before
  0.180.0, without an instructions file, the refresh would otherwise write
  `language: English` from devloop's English decision records without a
  question, and nothing writes the record over, `skills/setup-project/SKILL.md`
  lines 135 to 137. Not chosen: a mark in every file devloop writes — rules
  in several skills, files without a comment line, and every file from
  before the change without a mark. Affected: `shared/language-opening.md`
  lines 5 to 19 and `shared/closing.md` at the same place, which name the
  three signs and say that no document counts, whoever wrote it, in place
  of the document the person wrote and the marks of devloop's;
  `skills/start-work/SKILL.md` lines 80 to 85; `skills/setup-project/SKILL.md`
  lines 186 to 196 and 802 to 806; the points of `docs/rationale.md` under
  `start-work` step 2, `setup-project`'s refresh, step 0 and
  `environment.md`, and `shared/closing.md`; the paragraph under "The
  install guard reads a record" of `docs/skill-conventions.md`; and the
  Should of every block that named a document as a sign, three, below.
  (2) A skill the person types directly in a project without the record,
  situation (a), lines 2518 to 2528: nothing is built, and "no other skill
  asks", `shared/language-opening.md` line 16, stays. Reason: the case
  arises only in a project set up before 0.180.0, without an instructions
  file in the context, where the person types another skill than
  `start-work` before the refresh of the next `start-work` has landed the
  record; a first question in the block every skill loads would act in
  every skill and could ask where the record shows the language, a risk out
  of proportion to the case. Not chosen: every skill asking the language
  first where the record is missing and nothing shows it. (3) The second
  case of the block of `docs/defects.md` line 2724, situation (c), lines
  2535 to 2537: a yes of the person to the mode with nobody there, after
  which GitHub refuses the switch of auto-merge or the protection, and the
  record `unattended-mode: no` with that refusal as its reason,
  `skills/setup-checks/SKILL.md` lines 1370 to 1376 and 1388 to 1394. The
  closing run of milestone 13 brings it about: a second GitHub account,
  invited as a collaborator with write access and without admin rights to a
  public repository of the person's personal account — public, since a
  private one under the plan Free answers the reading before the question
  with 403 already —, runs `setup-checks` to the end of step 8 and answers
  yes. Reason: a repository of a personal account has two levels, owner and
  collaborator; a collaborator may push and merge pull requests, and
  allowing auto-merge for the repository is the owner's, GitHub's page
  "Permission levels for a personal account repository", "Allow or disallow
  auto-merge for pull requests" under owner access and "Create, merge, and
  close pull requests" under collaborator access; the reading before the
  question needs no special rights, line 973, so the question comes, line
  961 to 963, and on the yes the switch of auto-merge is refused or reads
  back `false`, lines 1370 to 1376 or, where the person set the gate
  before, lines 1378 to 1382, the record saying no with that reading as its
  reason. Which sentence of step 8 the run meets, the run shows; this order
  does not measure it. `docs/plan.md`, "Ends with" of milestone 13, lines
  996 to 1008, names this fourth run, the second account a condition the
  person establishes; the block stays "Built, never walked" in milestone
  13, its Note naming the run. Not chosen: the block split in two with the
  form "Built, never walked, cannot be forced" on the second half, which
  would claim a case that can be brought about cannot.

  **What follows from a decision of the person or a rule**, each with its
  basis. (4) The value of the record of the language is checked.
  `bin/devloop-install-record` took under `--language` any non-empty
  value, lines 188 to 196, "any non-empty value", and under `--language
  --line` put it word for word into the line `[Language]` that
  `hooks/session-start.sh` gives the context of every session. It takes
  now only a value that can be the name of a language: ASCII letters,
  spaces and hyphens, opening with a letter, at most 40 characters; any
  other value ends with 1 and a cause of its own, which does not quote the
  value, since the hook's line would carry it into the context otherwise,
  and the hook's line is then the none line with that cause. Basis:
  `shared/install-record.md` lines 1 to 4, "ASCII only, since a script
  reads the start of each line"; the template of `environment.md`,
  `skills/setup-project/SKILL.md` lines 802 to 806, "ASCII only: the English
  name of the language"; the three other records taking `yes` and `no`
  alone, lines 198 to 202 of the program. 40, since every multi-word
  English name of a language in use is under 30 characters and the line is
  to stay bounded. `LC_ALL=C` on the test, so that the ranges are the ASCII
  letters on every system, the length read after the form. What step 6 and
  the refresh write holds the form, and the template says it, lines 802 to
  806. What a run does with a none line the loaded texts said already,
  `start-work` step 2 asking where the line at the session start records no
  language; what changes: a refresh that meets a record whose value is no
  name asks nothing, writes nothing over it and says that the record cannot
  be read, with the program's cause, as it meets the install record with a
  value the program cannot read, `skills/setup-project/SKILL.md` lines 108
  to 113, a paragraph of the same form after line 138; the template says
  that such a record reads as none on the line and the session then asks
  as where none stands. (5) One block each for (1) and (4) in
  `docs/defects.md`, with Wrong, Should, Found this entry, Fix the line of
  the repair, Built, never walked, in milestone 14 by the rule of 5
  November 2026, `docs/plan.md` lines 135 to 147, the group of the session
  start and the routes of `start-work`, lines 1153 to 1154 above, since the
  closing run of that milestone meets their cases once (7) holds. (6) The
  play-through before the build, the order's rule, at every situation it
  names, stands in the report; every situation got one answer. Without the
  person none of the places is reached, the mode beginning at the end of
  Stage 1 or on the direct route; the hook runs at the start of every
  session, with `--auto` typed as without, and prints nothing of the
  language where the project is not set up. On every system the hook and
  the program run on — macOS, Linux, Windows with Git Bash, Alpine with
  BusyBox — the new test uses `printf`, `grep -Eq` under `LC_ALL=C` with a
  bracket expression of ASCII ranges and the hyphen first, and `${#TOOLS}`
  of bash; the step "hooks on every system" of the workflow runs the hook
  on all four in a project not set up, where the line is not reached. (7)
  Milestone 14, `docs/plan.md` lines 1066 to 1081, "Ends with": the setup
  run began with the command alone in an empty folder, (6) of the entry of
  6 November 2026 on the language recorded, so that nothing shows the
  language; under (1) a document shows it no more than an empty folder
  does, and a run in an empty folder cannot meet the case of the block of
  (1), a document present and the question coming all the same. "Ends with"
  names now a folder that holds one document the person wrote in a language
  and nothing devloop wrote, and the bench of the reader of the record with
  a value that is no name of a language beside the benches of the guards
  and hooks. Basis: "each meeting the cases the blocks of its section name"
  in "Ends with" of milestone 13, which milestone 14 shares.

  **The blocks**, each with what is built, where it stands and in which
  state. No document counting, block "a document of the project counts as a
  sign of the language, which a run cannot tell from one devloop wrote in
  English": the two shared language blocks name the three signs and say
  that no document of the project is a sign, whoever wrote it, every file
  devloop creates there being English and no mark telling them all from the
  person's; `skills/start-work/SKILL.md` step 2 names the three and says
  that no document counts; `skills/setup-project/SKILL.md` step 0 takes the
  language from the instructions file alone and asks where that does not
  show it, and its template of `environment.md` names the sources without a
  document and says that no document counts, this file among them; Fix the
  line of the shared block; Built, never walked, in milestone 14, the group
  of the session start and the routes of `start-work`. The value checked,
  block "the install record's reader takes any non-empty value as the
  language, so a record's value lands verbatim in the context line of every
  session": the program's test and cause, the template's form, the refresh's
  paragraph; Fix the cause line of the program; Built, never walked, in
  milestone 14, the same group. The block of line 2724: nothing built,
  Built, never walked, in milestone 13 as before, its Note naming the
  fourth run. The three blocks whose Should named a document as a sign,
  their Should changed by (1), each Built, never walked where it stood, the
  Note of each naming the change: lines 3728, 3800 and 3808 of
  `docs/defects.md`.
  Should changed: setup-project asks the language first in English where step 4 says never to ask about the user's language
  Should changed: start-work writes the introduction and asks what to build in a language nothing shows where the user typed only the command in a project not set up
  Should changed: the language the setup ran in is recorded nowhere, so a later session without an instructions file takes it from devloop's English documents
  The old Should of line 3728 read "no instructions file of theirs in the
  context, no document of the project"; of line 3800 "no document of the
  project in a language"; of line 3808 "a document devloop wrote never
  counts; in a project without the record where neither an instructions
  file nor a document the person wrote shows it, the question comes first".

  **Not built, named.** (a) A refresh meeting a record of the language
  whose value is no name of a language: built as the install record with an
  unreadable value, nothing asked, nothing written over it, the cause said;
  the other way, the record treated as missing and written anew from the
  answer, stands against the rule that a record is never overwritten and is
  not built. (b) The cause on such a value does not quote it, where the
  cause on the install record's value does; the other way would carry the
  value into the context through the none line. (c) The bench runs of (4)
  stand on the things of the program and the hook and on no block, as the
  runs of the entry of 6 November 2026 on the language recorded do, so the
  block of (4) is Built, never walked until the closing run of milestone
  14; a run recorded on the block's title would make it Walked today.

  **What changed in the documents.** `docs/defects.md`: the two blocks of
  (5) at the end of the section of milestone 14; the Should of three blocks
  as above; the Note of the block of line 2724 and of the three. No block is
  removed or renamed. `docs/plan.md`: "Ends with" of milestones 13 and 14 as
  (3) and (7) say. `docs/rationale.md`: the points named in (1), each with
  its case and reason alone, and a point under `setup-project`'s refresh for
  the unreadable record. `docs/skill-conventions.md`: the paragraph on the
  language under "The install guard reads a record". `docs/stock-take.tsv`:
  two things for the new outcomes — in the program the refusal of a value
  that is no name, in `setup-project` the refresh meeting such a record —,
  five records of lines inside the new text, and thirteen rows renamed or
  re-anchored, no run hanging on them but the two of the program's reading
  under `--language`, renamed with it: in each shared block the thing on the
  chain after the instructions file, the one on devloop's documents, now on
  no document counting, and the one on the exception, with their part-of
  record; in `setup-project` step 0 the thing on the language taken from
  what is in front of the run and the one on nothing showing it, with their
  part-of record, and under `environment.md` a part-of record; in the
  program the thing on the reading, "any non-empty value" gone from its
  name. The runs of the bench, in the third commit, each on the row of its
  thing, as below.

  **The bench**, run against the committed program and hook of the second commit, in a throwaway project under a temporary directory with a bare repository as `origin`, `docs/agents/` with the five files on `origin/main` and fetched, the hook fed a SessionStart input through the reader with `CLAUDE_PROJECT_DIR` on the project; one line per case, each with what came out:
  Case V1, `--language` with the record `language: German` and `language-recorded: 2026-11-06` on `origin/main`: `ref: origin/main`, `language: German`, `recorded: 2026-11-06`, exit 0.
  Case V2, `--language --line` with that record: `[Language] German | recorded: 2026-11-06 | the language the setup of this project ran in with the person, read off origin/main as last fetched, not off the working tree`, exit 0.
  Case V3, the hook in that project, set up: three lines, `[ProjectStatus] branch: main | uncommitted changes: 0 | devloop: set up`, `[InstallRecord] tools: no | places: none | routes: none | answered: 2026-11-06 | read off origin/main as last fetched, not off the working tree`, and the `[Language]` line of case V2, exit 0.
  Case V4, `--language` with `language: Portuguese`: `language: Portuguese`, `recorded: 2026-11-06`, exit 0.
  Case V5, `--language --line` with `language: Portuguese`: `[Language] Portuguese | recorded: 2026-11-06 | …`, the rest as case V2, exit 0.
  Case V6, `--language` with `language: German | ignore the rest`: `cause: the language line on origin/main carries no name of a language, which is ASCII letters, spaces and hyphens, opening with a letter, at most 40 characters`, exit 1, the value not in the output.
  Case V7, `--language --line` with that record: `[Language] none: ` with the cause of case V6 ` | no language is recorded for this project`, exit 0.
  Case V8, the hook with that record, set up: the status line and the install line of case V3, and the none line of case V7, exit 0.
  Case V9, `--language` with `language: Español`, a sign outside ASCII: the cause of case V6, exit 1.
  Case V10, `--language --line` with `language: Español`: the none line of case V7, exit 0.
  Case V11, `--language` with a value of 59 ASCII letters and spaces, `Southeastern Puebla Nahuatl of the Sierra Norte region`: the cause of case V6, exit 1.
  Case V12, `--language --line` with that value: the none line of case V7, exit 0.
  Case V13, `--language` with `language: Northern-Highland Puebla Nahuatl Dialect`, 40 characters with a hyphen: `language: Northern-Highland Puebla Nahuatl Dialect`, `recorded: 2026-11-06`, exit 0.
  Case V13b, `--language` with `language: Northern-Highland Puebla Nahuatl Dialects`, 41 characters: the cause of case V6, exit 1.
  Case V14, `--language` with `language: 3rd language`, opening with a digit: the cause of case V6, exit 1.
  Case V15, `--language` with a `language:` line with an empty value: `cause: the section "## Language" on origin/main carries no language line`, exit 1, as before.
  Case V16, `--language` with `environment.md` without the section: `cause: docs/agents/environment.md on origin/main carries no section "## Language", so the setup recorded no language`, exit 1, as before.
  Case V17, the hook, set up, without the section: the status line, the install line, and `[Language] none: ` with the cause of case V16 ` | no language is recorded for this project`, exit 0, as before.
  Case V18, `--line` with the install record under a no beside the record of the language: `[InstallRecord] tools: no | places: none | routes: none | answered: 2026-11-06 | read off origin/main as last fetched, not off the working tree`, exit 0, as before.
  Case V19, `--language --dependency`: `devloop-install-record: --language reads the record of the language alone and goes with neither --dependency nor --unattended` on stderr, exit 2, as before.

  **The tool.** Before this order, at `5865430`: exit 0, broken records 0,
  uncovered lines 0 of 4563, Undetermined 24, Recorded, not built 256,
  Built, never walked 1507, Walked 699, Closed 65.
  At the second commit, in a run whose tree carried everything of that
  commit but these figures: exit 0, broken records 0, uncovered lines 0 of
  4568, blocks 698, under "## Without a milestone" 41, every one of them
  closed, Undetermined 24, Recorded, not built 256, Built, never walked
  1511, Walked 699, Closed 65; milestones reached 1, 2, 3, none reached on
  this branch; Walked on this branch without a run the branch adds: 0;
  blocks held against the branch point: removed 0, renamed 0, Should
  changed 3, added 2, lines of the fixed forms 3; milestone 13 174 blocks,
  milestone 14 139, milestone 15 104; with "not stated" 382, built whose
  case cannot be forced 7, not-a-thing records 3358, lines that can carry
  no unique anchor 349. The changes against the run before: Built, never
  walked +4, the two blocks of (5) and the two things; Walked +0, the two
  runs of the program's reading under `--language` counting on under the
  renamed thing, whose line, the option, did not change; blocks +2;
  milestone 14 +2; the search set +5 lines, twelve lines of the new text in
  the set — eight of `setup-project`, one of each shared block, two of the
  program — less seven that left it with the old text, every one covered;
  not-a-thing records +5, the records of lines inside the new text. No run
  of a walked thing stopped counting: the lines the runs stand on — the
  option line of the program and its causes, the hook's lines, "Number is
  a fact" of the shared blocks — were not changed.
  At the third commit, in a run whose tree carried everything of that
  commit but these figures: exit 0, broken records 0, uncovered lines 0 of
  4568, blocks 698, under "## Without a milestone" 41, every one of them
  closed, Undetermined 24, Recorded, not built 256, Built, never walked
  1510, Walked 700, Closed 65; milestones reached 1, 2, 3, none reached on
  this branch; Walked on this branch without a run the branch adds: 0;
  blocks held against the branch point: removed 0, renamed 0, Should
  changed 3, added 2, lines of the fixed forms 3; milestone 13 174 blocks,
  milestone 14 139, milestone 15 104; with "not stated" 382, built whose
  case cannot be forced 7, not-a-thing records 3358, lines that can carry
  no unique anchor 349. Against the second commit: Walked +1 and Built,
  never walked -1, the thing of the program's refusal with the runs of
  cases V6, V9, V11, V13b and V14; the 23 runs of the bench stand on
  things that were Walked already otherwise, the renamed reading, the two
  forms of the line, the two causes, the refusal of `--language` beside
  `--dependency`, `--line` under a no and five things of the hook. Against
  `5865430`: Undetermined +0, Recorded, not built +0, Built, never walked
  +3, Walked +1, Closed +0, blocks +2, milestone 14 +2.

- **Stale counts and drifted references mended in the control documents.**

  6 November 2026, version 0.181.0, unchanged: nothing under `skills/`,
  `shared/`, `hooks/`, `bin/`, `scripts/` or `output-styles/` changes. On
  `task/consistency-audit`, off `origin/main` at `37c61d0`, in two commits:
  `docs/plan.md`, `docs/roadmap.md`, `docs/skill-conventions.md`,
  `docs/defects.md` and this entry; and what the person decided and the
  review of the branch mended before the merge in the second, `README.md`
  among it. The order: the statements of the control
  documents about the set, read before a handover, the findings with one
  right answer mended and the rest put to the person — the work milestone 15
  of `docs/plan.md` names under "Covers".

  Mended, each with what stood and what stands. (1) `docs/plan.md`, the heads
  of milestones 13, 14 and 15: "170 blocks of `docs/defects.md` stand in its
  section since that day", 123 and 103 likewise, where the tool counts 174,
  139 and 104 today and counted 170, 123 and 103 at `cb5e5e9`, the commit of
  the sorting → "170 blocks of `docs/defects.md` stood in its section on that
  day, and what stands there today the tool counts on every run", 123 and
  103 likewise: a count that ages with every branch that adds or moves a
  block is not written as today's, for the reason the opening of the plan
  gives against line numbers. (2) `docs/plan.md`, milestone 15 under
  "Covers": "its self-test, which produces 36 of its outcomes by no case" →
  "its self-test, with the blocks of its section on outcomes the stock-take
  found produced by no case, each with its case and the run on it owed". The
  36 are the 36 blocks of the section titled "no case of the self-test
  produces '…'" and the two on exit 1 and exit 2, every one with its case
  line of the self-test as its Fix, 35 of them built at `1edc955` on 23
  September 2026 and one at `9b40c07` on 15 October 2026, all Built, never
  walked; the self-test's last line, 148 messages asserted by a case and 0 by
  none, counts message templates and not these outcomes, as the LIMITS of
  the tool's head say, and already the entry of 23 September 2026 carried
  "73 are asserted by a case and 0 by none" beside the list. (3)
  `docs/plan.md`, milestone 15: "the archive named in line 66 of the head" →
  "the archive named in the head for the entry of 29 September 2026 on the
  merge gate"; the block's Fix text stands in line 72 of
  `scripts/devloop-stock-take` today, and a line of a file that changes
  drifts. (4) `docs/roadmap.md` under "Named, not built as skills": "prints
  five lines since 6 November 2026, two from 31 October 2026 (`628d166`)
  until then and one from 13 September 2026 (`b90874b`) until that day —
  `start-work`, named in … — and nothing else" → "every line the
  pre-handover check that holds locked skills against their callers prints
  names `start-work`, a built skill, at a place that sends a run to it and
  does not call it — `build-work` step 6 for an armed pull request among
  them — and no name of this table; what the check prints is read off the
  check each time and not counted here". The chain was right, measured by
  running the check in a worktree at each commit and its parent: 0 lines at
  `b90874b^`, 1 at `b90874b`, 1 at `628d166^`, 2 at `628d166`, 5 at
  `37c61d0`; a count in a section without a date went stale on 31 October
  2026 and on 6 November 2026 and was mended by the entries of 3 and 6
  November 2026, so the count goes and its history stays in those entries.
  (5) `docs/skill-conventions.md` under "Who may invoke a skill": "the check
  under "Before a handover, run these" that holds locked skills against
  their callers prints exactly that line and nothing else", one line, where
  it prints five → "every line the check under "Before a handover, run
  these" that holds locked skills against their callers prints names it at a
  place that sends a run to it and does not call it — `build-work` step 6,
  which names it as where an armed pull request goes, among them". (6)
  `docs/skill-conventions.md`, the rule on the dependency file: "no reader
  under `bin/` and no line at the session start are built for it" → "and the
  guard on the mark through `bin/devloop-install-record --dependency`, by way
  of `bin/devloop-start-conditions`; no line at the session start is built
  for it", as the head of `bin/devloop-install-record` and "The install guard
  reads a record" in the same file say, and `hooks/session-start.sh` reads no
  dependency record; the block "skill-conventions says no reader under bin/
  is built for the dependency record while the same file names
  bin/devloop-install-record --dependency as its one reading" of milestone 15
  is closed, corrected in the document, on the anchor "no line at the
  session start is built for it". (7) `docs/skill-conventions.md` under
  "Environment constraints, measured": "stand under "What a yes passes that
  the question does not mean" above" named a head that does not exist, the
  text being a sentence of a paragraph without a head in the same section
  since `433bdc1` → "stand with the sentence "What a yes passes that the
  question does not mean" above, in this section".

  Read and left. The line numbers of `docs/plan.md` into
  `docs/roadmap-archive-1.md`, status lines 44351, 43116 and the others,
  each read and pointing where its sentence says: the archive never changes,
  the entry of 4 November 2026 on the archive set them so, and whether the
  plan's sentence "never a line" names that exception is the person's.
  Every heading of `docs/rationale.md` names a file that exists and a
  section that file has. Every statement of `docs/skill-conventions.md` on a
  program under `bin/` or a hook under `hooks/` holds against the head of
  that program and `hooks/hooks.json`, 78 lines read. Every section named in
  `docs/plan.md` and `docs/skill-conventions.md` stands, apart from (7); the
  names that are quoted history or another vendor's page are listed in the
  report. `README.md` carries no date and names no document of devloop's;
  one sentence of its "What is missing", "Tried in projects in Python,
  TypeScript, Kotlin, Go and Rust, with GitHub Issues as the tracker. Other
  stacks, other trackers and monorepos are untested.", is a history of its
  tests, which the rule on the README excludes; a user's text, put to the
  person with its wording and not changed. The note of row 1415 of
  `docs/stock-take.tsv` describes the roadmap sentence of (4) as it stood
  until 6 November 2026; the table is not this order's subject and stays.

  The tool, before, on `37c61d0`: broken records 0, uncovered lines 0 of
  4568; Undetermined 24, Recorded, not built 256, Built, never walked 1510,
  Walked 700, Closed 65; milestone 15 104 blocks, Recorded, not built 36,
  Closed 5. After: Undetermined 24, Recorded, not built 255, Built, never
  walked 1510, Walked 700, Closed 66; milestone 15 104, Recorded, not built
  35, Closed 6 — the one block closed under (6), every other figure as
  before; blocks held against the branch point: removed 0, renamed 0, Should
  changed 0, added 0; Walked on this branch without a run the branch adds:
  0. The self-test: 159 cases, 148 of 148 messages asserted by a case,
  before and after. The twenty checks before a handover and
  `scripts/devloop-run-workflow` print after what they printed on `37c61d0`.
  No run is recorded. Two commits.

  **Decided on 7 November 2026 by the person, and mended before the merge**,
  in the second commit. `README.md` under "What is missing" said "Tried in
  projects in Python, TypeScript, Kotlin, Go and Rust, with GitHub Issues as
  the tracker. Other stacks, other trackers and monorepos are untested." —
  the history of its tests that the rule on the README rules out, and other
  trackers called untested where the setup works through `gh` alone, creating
  its labels with `gh label create`. Approved wording, now: "GitHub Issues is
  the only tracker it works with. Monorepos and stacks other than Python,
  TypeScript, Kotlin, Go and Rust are untested." Not chosen: the line struck,
  which would leave a user without the two limits before an install.
  `docs/plan.md` said at its opening, and again above the decisions of
  5 November 2026, that a reference names never a line, while its references
  into `docs/roadmap-archive-1.md` name lines, set so by the entry of
  4 November 2026; both places now name a line of an archive as the one
  exception, since an archive never changes (the head of
  `scripts/devloop-stock-take`, section F). The note of `docs/stock-take.tsv`
  on the green answer of the check that holds locked skills against their
  callers described the sentence under the table of names that this branch
  rewrote; it describes that sentence as it stands. The sentence of
  `docs/skill-conventions.md` on the places that speak of tools for check
  classes, dated 28 September 2026, stays as it reads. At the second commit
  the tool gives the figures above.

- **Blocks on systems and surfaces held to the code, eight Shoulds filled.**

  9 November 2026, version 0.181.0, unchanged: nothing under `skills/`,
  `shared/`, `hooks/`, `bin/`, `scripts/`, `output-styles/` or `.github/`
  changes. On `task/milestone-12-systems-read`, off `origin/main` at
  `e252c10`: `docs/defects.md`, `docs/roadmap.md` and this entry. The order:
  34 of the 91 blocks under "## Milestone 12" of `docs/defects.md`, the
  install permission left to an order of its own, read against the code
  before milestone 12 builds, as `docs/plan.md` says under "Five sentences"
  of the order that works on a milestone; every "not stated" in their Wrong
  and Should filled; and the vendor's pages read raw for what the decision
  rests on which systems and which surfaces of Claude Code count. No code is
  built, no run is recorded, no session log was read.

  **The 34 blocks, by their lines at `e252c10`**, read each at the place its
  Fix names, or searched over `skills/`, `shared/`, `hooks/`, `bin/`,
  `scripts/` and `.github/` where Fix is none. The five Walked blocks hold:
  lines 796, 804 and 820, the three on `bin/devloop-command-reader`, stand
  on its line 918 (the program a here-document on descriptor 3), line 456
  (`j()` doubling a backslash with `&&`) and line 454 (`fail()` counting
  on); line 812 on the job `hooks-on-every-system` of
  `.github/workflows/stock-take.yml`, line 376, four systems in its matrix;
  line 1044 on its loop over every self-test under `bin/`, line 429. The
  two Built, never walked, lines 828 and 1012, are comments of the workflow,
  lines 255 to 271, and carry what their Should asks: both halves of the
  Alpine step and why the second, and that a handler under a new pair of
  event and matcher needs its input. The 27 with Fix none are not built: the
  fourteen places that read a file of the project, lines 844 to 948, carry
  no handling of a carriage return - `bin/devloop-install-record` line 185
  reads the record with `git show` and lines 190 and 192 compare the heading
  with `grep -qxF`, `bin/devloop-setup-state` line 206, `hooks/stop-checks.sh`
  lines 12, 16 and 48, `hooks/post-tool-use-checks.sh` lines 19 and 23,
  `bin/devloop-check-table` lines 43 and 44, `hooks/permission-request-unattended.sh`
  line 30, `hooks/pre-tool-use-install-guard.sh` lines 1076 and 1084, the
  shared texts and the skill as before -, and `grep -rn -E "tr -d '\\r'|CRLF|carriage"`
  over the six directories finds none outside two comments; read and not
  measured, the trimming with `[[:space:]]` in the two check hooks and in
  `bin/devloop-check-table` would strip a carriage return from a cell, the
  `grep -o` of the setup state would leave it outside its match, and the
  runner line of the two check hooks would keep it at the end of the runner;
  the three awk calls of lines 956, 964 and 972 stand at
  `hooks/pre-tool-use-table-guard.sh` line 64, `hooks/post-tool-use-table-guard.sh`
  line 27 and `bin/devloop-install-record` line 194, and the job still does
  not reach them, `ls` leaving the first guard at its line 56, the Edit of
  the README the second at its line 20, and no record standing in the
  throwaway project for the third; `bin/devloop-bounded` lines 38 and 108 to
  121 know no Windows and keep the window between `sleep "$secs" &` and
  `s=$!` that the block of line 1300 names and the `sh` reports the block of
  line 1324 names, so lines 1052, 1292, 1300 and 1324 stand; nothing reads
  `respondToBashCommands`, the chat panel or Use Terminal, so lines 1220,
  1228 and 1236 stand, and nothing names the version of Claude Code devloop
  needs, line 780, nor examines the sandbox, line 731, nor reads the subset
  of the extension, line 739. No Fix, no Status and no title changed; no
  block moved. The run that meets each case, and the two whose case no run
  meets, stand in the report outside the repository, with the decision on
  the systems and the surfaces put to the person there.

  **The eight "not stated" filled**, each from the entry its Found names,
  with that entry's words, the lines read in `docs/roadmap-archive-1.md` and
  each line's entry read off the last head above it. Line 796, Wrong and
  Should, from the fourth addendum of 14 October 2026, finding 1, lines
  22936 to 22954: the program as one argument of 204 937 bytes, Linux
  refusing 131 072 and more, every Bash call blocked under `onFailure:
  block`; "the reader runs under macOS, under Linux and under Windows with
  Git Bash, with the awk each system brings, and no limit the command line
  sets on the size of its program". Line 804, Wrong and Should, from the
  fifth addendum, finding 3, lines 23378 to 23411: the encoder `j()` and
  `gsub(/\\/, "\\\\")` under busybox awk, fourteen cases red; "the
  self-test green under busybox awk, the defect built; the workflow runs the
  self-test and the hooks under Alpine with busybox awk as well, in a
  container on `ubuntu-latest`". Line 812, Wrong and Should, from the fourth
  addendum, finding 2, lines 22993 to 23006: the self-test under
  `ubuntu-latest` alone and no `.gitattributes`; "devloop runs on every
  system ... on every pull request into `main` the reader's self-test and
  every hook of `hooks/hooks.json` run once with a harmless input of its
  event in a throwaway project under `ubuntu-latest`, `macos-latest` and
  `windows-latest`, there under Git Bash ... every file a shell or awk reads
  arrives on every system with the line endings it runs with". Line 820,
  Wrong and Should, from the fifth addendum, finding 1, lines 23296 to
  23318: the check red at `6365a96`, four cases expecting the reading of
  macOS and Linux, the step ending at the red self-test; "the self-test
  green on every system; every case whose reading depends on the system
  names it, `runw`, `runm` and `runl`, and where Windows reads otherwise it
  has a case of its own; every red case reported, not the first alone, and
  exit 1 where any is red; the job starts the hooks after a red self-test
  and is red where either is". Line 731, Should, from question 2 of the
  entry of 9 October 2026, lines 14118 to 14119: "examined whether the
  sandbox touches installs and the guard, and recorded". Line 739, Should,
  from question 4, lines 14157 to 14158: "read for the milestone on every
  operating system and every surface, decision 3". Line 828, Should, from
  the audit of 14 October 2026, lines 23781 to 23786: "the comment names
  both halves and why the second, git refusing in a container a repository
  owned by another user unless the directory is marked safe". Line 1012,
  Should, from the audit of 18 October 2026, lines 29239 to 29241: "the
  comment says a handler added under a known event and matcher runs
  untouched and one under a new pair needs its input". Every old text read
  "not stated". The Wrong of lines 731 and 739, the status-line texts of
  their entry, stays as it stands.

  **Read at the vendor on 9 November 2026**, every page raw as Markdown from
  code.claude.com/docs/en/<page>.md with `curl`, held under the report's
  working directory and read with `grep` and `sed`, the CHANGELOG from
  raw.githubusercontent.com/anthropics/claude-code at the tag `v2.1.319`,
  the highest `git ls-remote --tags` showed. What the decision on the
  systems and the surfaces rests on, each with its page. The hooks
  reference, "Command hook fields": the `shell` field "Defaults to "bash", or
  to "powershell" on Windows when Git Bash isn't installed"; "Shell form
  ... `sh -c` on macOS and Linux, Git Bash on Windows, or PowerShell when
  Git Bash isn't installed"; under the PreToolUse input for PowerShell: "On
  Windows, wherever the PowerShell tool is enabled, Claude treats PowerShell
  as the primary shell and routes shell commands through it. On Windows
  without Git Bash, the tool is enabled automatically and Claude Code
  doesn't register the Bash tool at all. A hook that matches only `Bash`
  never fires there." The tools reference, "PowerShell tool": "Windows with
  Git Bash installed: the tool is on by default for claude.ai and Console
  accounts; set `CLAUDE_CODE_USE_POWERSHELL_TOOL=1` to enable it in Amazon
  Bedrock, Google Cloud's Agent Platform, and Microsoft Foundry sessions, or
  `0` to turn it off"; "Linux, macOS, and WSL: the tool is opt-in"; "When
  the tool is enabled, Claude treats PowerShell as the primary shell. The
  Bash tool remains available for POSIX scripts when Git Bash is installed."
  So the sentence `docs/plan.md` reads under milestone 12 for Windows
  without Git Bash holds for every Windows on which the PowerShell tool is
  on, which it is with Git Bash for claude.ai and Console accounts; a block
  below holds it. The setup page, "System requirements": "macOS 13.0+",
  "Windows 10 1809+ or Windows Server 2019+", "Ubuntu 20.04+", "Debian 10+",
  "Alpine Linux 3.19+", "Shell: Bash, Zsh, PowerShell, or CMD"; "Alpine
  Linux and musl-based distributions": "requires `bash` and `curl` for the
  install command, and `libgcc`, `libstdc++`, and `ripgrep` at runtime.
  Alpine doesn't include `bash` or `curl` by default", `apk add bash curl
  libgcc libstdc++ ripgrep`; "Install on native Windows": "Without Git for
  Windows, Claude Code runs shell commands via the PowerShell tool", "With
  Git for Windows, Claude Code uses Git Bash for the Bash tool". The skills
  page, "How injected commands run": "`shell: bash` when bash isn't
  available: the invocation fails before any command runs. This happens on
  Windows without Git Bash"; "Any other combination: the commands run
  through the Bash tool when bash is available. When it isn't, they run
  through the PowerShell tool"; "When an injected command fails": "A failed
  command aborts the entire skill invocation, not just its own placeholder.
  Claude never sees the skill content for that invocation. The abort shows
  `Shell command failed for pattern "..."`." The VS Code page, "VS Code
  extension vs. Claude Code CLI": "Commands and skills | All | Subset (type
  `/` to see available)", "`!` Bash shortcut | Yes | No"; "Switch to
  terminal mode": "By default, the extension opens a graphical chat panel.
  If you prefer the CLI-style interface, open the Use Terminal setting and
  check the box"; "Run CLI in VS Code": "Installing the extension does not
  put `claude` on your shell PATH. The extension bundles a private copy of
  the CLI for its chat panel"; under the command menu: "Typing `/skills`
  also opens this dialog. Each skill row shows its visibility ... except on
  rows marked **locked**, such as plugin skills", "Select **Hooks** in the
  Customize section to view the hooks loaded in the session, grouped by
  event ... Hooks from other sources, such as managed settings or plugins,
  are read-only"; how Use Terminal starts the CLI and under which PATH, the
  page does not say. The plugins page: "A plugin you install at user scope
  in the terminal, the desktop app's local sessions, or the VS Code
  extension is available in the other two on that computer, because all
  three read the same settings files". The JetBrains page, "Installation":
  "The plugin runs the `claude` command in your IDE's integrated terminal
  and connects to it. It does not bundle its own copy of the CLI". The
  desktop page, "Install plugins": "You can install plugins from the desktop
  app without using the terminal", "The plugin browser is not available in
  cloud sessions, and plugins you install from the desktop app aren't
  available for cloud sessions. A cloud session also doesn't install plugins
  that the repository's `.claude/settings.json` declares ... Plugins aren't
  available in WSL sessions"; "Shared configuration": "Hooks and skills
  defined in settings apply to both"; the table of settings that behave
  differently in the Code tab: "`respondToBashCommands` | Claude responds to
  the output of commands that users run with `!`, whatever the value",
  "`defaultShell` | commands that users type after `!` run in a shell that
  the app chooses: their login shell on macOS and Linux, PowerShell on
  Windows". The cloud environments page, "What carries over from your
  setup": "Your repo's `.claude/settings.json` hooks and permission rules |
  Yes, in a session with one repository"; "Your repo's `.claude/skills/`
  ... | Yes"; "Plugins and marketplaces declared in your repo's
  `.claude/settings.json` | No"; "Plugins enabled only in your user settings
  | No"; the plugin install page: "A cloud session, including the browser at
  claude.ai/code, has no plugin browser and doesn't load the plugins you
  installed on your own machine or the ones your repository's
  `.claude/settings.json` turns on". The sandbox page: "The sandbox covers
  shell commands only. Claude's file tools, MCP servers, and hooks run
  outside it"; "The sandbox is off by default"; command hooks "run with your
  full access"; "a command you enter at the `!` shell-mode prompt runs
  unsandboxed in most sessions"; by default "sandboxed commands can write to
  the current working directory, the per-user temp directory, and any
  directories you've added" - so the install guard, a hook, sees a command
  before the sandbox and unchanged by it, and an install the model runs
  with the sandbox on may not write where `brew`, `pipx` or `go install`
  write, which the page answers with the unsandboxed retry; measured
  nowhere. The interactive mode page, "Shell mode with `!` prefix": "Claude
  responds to the command output automatically once it lands in the
  transcript ... set `respondToBashCommands` to `false` in `settings.json`";
  the settings reference: `respondToBashCommands`, "Default: `true`";
  `defaultShell`, "Default: "bash", or "powershell" on Windows when Bash
  isn't available". The CHANGELOG at `v2.1.319`, section `## 2.1.295`:
  "Added `onFailure: "block"` for command and HTTP hooks: a hook that can't
  start, times out, or exits with an unexpected code blocks the action
  instead of letting it through"; the hooks reference, "Block the action
  when a hook fails": "Requires Claude Code v2.1.295 or later"; the plugin
  manifest reference knows no field for a lowest version of Claude Code.
  Whether a hook event fires on one surface and not another, no page says;
  the pages speak of systems.

  **Two defects found, no block holding them**, written under
  "## Milestone 12", the group every other operating system and surface,
  both Recorded, not built: every command guard of `hooks/hooks.json`
  matches the tool `Bash` alone, while on Windows with Git Bash the
  PowerShell tool is on by default for claude.ai accounts and takes the
  shell commands, so that no guard sees them there; and no skill declares
  `shell: bash` in its frontmatter, so that on Windows without Git Bash the
  insert lines run through the PowerShell tool and the load fails on the
  program instead of on the vendor's message that bash is missing. Whether
  Windows without Git Bash counts is the person's decision of this
  milestone; the report puts it to them with the surfaces and the cloud.

  The tool, before, on `e252c10`: broken records 0, uncovered lines 0 of
  4568; Undetermined 24, Recorded, not built 255, Built, never walked 1510,
  Walked 700, Closed 66; milestone 12 91 blocks, Recorded, not built 37,
  Built, never walked 49, Walked 5; blocks with "not stated" 382. After:
  Recorded, not built 257 and milestone 12 93 blocks, Recorded, not built
  39 - the two new blocks -, "not stated" 374 - the eight filled -, every
  other figure as before; blocks held against the branch point: removed 0,
  renamed 0, Should changed 8, added 2; Walked on this branch without a run
  the branch adds: 0. The self-test: 159 cases, 148 of 148 messages
  asserted by a case, before and after. The twenty checks before a handover
  and `scripts/devloop-run-workflow` print after what they printed on
  `e252c10`. Two commits: the first with all of this; the second from the
  check at the code before the merge, which corrects two fields of the first
  new block. Its Wrong said every command guard stood "under `PreToolUse`
  and `PermissionRequest` with the matcher `Bash` alone", where the one
  handler under `PermissionRequest` carries no matcher, the guards with the
  matcher `Bash` stand under `PreToolUse` and the install guard under
  `PermissionDenied` as well; its Should said "on Windows, with Git Bash or
  without", where whether Windows without Git Bash counts is the person's
  decision of this milestone, as the second new block and this entry say.
  The eight lines of the fixed form:

  Should changed: under Linux the reader did not run, awk refusing its program as one argument of 204 937 bytes, so that every hook blocked every Bash call there
  Should changed: the sandbox of Claude Code is not examined for whether it touches installs and the install guard
  Should changed: whether the VS Code extension runs the skills of devloop is not read, the extension running a subset of the commands and skills
  Should changed: the self-test's encoder of a command into the JSON of a hook doubled no backslash under busybox awk, fourteen cases red under Alpine, which the fourth addendum had recorded as the reader reading a backslash before a newline otherwise
  Should changed: nothing showed that the reader and the hooks run under macOS and under Windows with Git Bash, the self-test running on ubuntu-latest alone and no .gitattributes fixing the line endings
  Should changed: the reader's self-test depended on the system it ran on and stopped at the first red case: red under Windows with Git Bash, where four cases expected the reading of macOS and Linux, and the hooks never started after it
  Should changed: the workflow's comment and the fifth addendum name the installation of the Alpine step and not its marking the checkout a safe directory for git
  Should changed: the workflow's comment says every handler added later runs without the hooks step being touched, where a new event and matcher needs its input

- **Install blocks held to the code, systems and surfaces decided.**

  9 November 2026, version 0.181.0, unchanged: nothing under `skills/`,
  `shared/`, `hooks/`, `bin/`, `scripts/`, `output-styles/` or `.github/`
  changes, and `README.md` does not. On `task/milestone-12-install-read`,
  off `origin/main` at `c5a773c`, in one commit: `docs/defects.md`,
  `docs/plan.md`, `docs/roadmap.md` and this entry. The order: the 57
  remaining blocks under "## Milestone 12" of `docs/defects.md`, the install
  permission, read against the code before milestone 12 builds, as
  `docs/plan.md` says under "Five sentences" of the order that works on a
  milestone; every "not stated" in their Wrong and Should filled, 29 blocks;
  three decisions of the person on the systems, the surfaces and the cloud
  recorded in `docs/plan.md` under milestone 12 and here, their consequences
  carried into three blocks and three new ones; two blocks closed whose
  defect was a corrected comment. No code is built, no run is recorded, no
  session log was read. Every line number of a file in this entry holds at
  `c5a773c` unless it says otherwise; a line of `docs/roadmap-archive-1.md`
  is read with the last head above it, `grep -n '^- \*\*'`.

  **The 57 blocks, by the lines of their headings at `c5a773c`**: 603, 611,
  619, 627, 635, 643, 651, 659, 667, 675, 683, 691, 699, 707, 715, 723, 747,
  755, 763, 772, 788, 836, 980, 988, 996, 1004, 1020, 1028, 1036, 1060,
  1068, 1076, 1084, 1092, 1100, 1108, 1116, 1124, 1132, 1140, 1148, 1156,
  1164, 1172, 1180, 1188, 1196, 1204, 1212, 1244, 1252, 1260, 1268, 1276,
  1284, 1308 and 1316, each read at the place its Fix names with the lines
  around it, or searched over `skills/`, `shared/`, `hooks/`, `bin/`,
  `scripts/` and `.github/` with several patterns where Fix is none. The 47
  with a Fix stand once each and carry what their Should asks:
  `shared/body-through-file.md` line 3 (603) and line 33 (747);
  `shared/backed-command.md` line 13 (627) and line 2 (1092);
  `shared/install-tool.md` line 163 (635), line 12 (667), line 9 (691) and
  line 15 (1060); `shared/install-question.md` line 31 (699);
  `shared/install-not-through.md` line 30 (1004); `shared/install-record.md`
  line 52 (1100); `hooks/pre-tool-use-install-guard.sh` line 1273, the block
  message, for 619, 643, 980 and 1212, line 649 (723) and line 516 (788);
  `bin/devloop-install-record` line 158 (659) and line 161 (1036);
  `bin/devloop-install-note` line 339 (1028); `bin/devloop-tool-state` line
  519 (1172); `bin/devloop-install-issues` line 295 (1204);
  `bin/devloop-command-reader` line 2345 (1260); `skills/setup-checks/SKILL.md`
  line 130 (611), 483 (707), 1222 (715), 1120 (763), 455 (772), 1132 (1068),
  533 (1196), 125 (1244) and 1158 (1308); `skills/setup-project/SKILL.md`
  line 357 (651), 86 (675), 51 (683 and 996) and 92 (1116);
  `skills/build-work/SKILL.md` line 535 (1076), 439 (1148), 564 (1252) and
  580 (1316); `skills/plan-work/SKILL.md` line 298 (1108), 311 (1132), 426
  (1140), 335 (1180) and 329 (1188); `skills/start-work/SKILL.md` line 149
  (1268). The four with the form "Built, never walked, cannot be forced",
  611, 715, 772 and 1004, name a line that stands once,
  `docs/roadmap-archive-1.md` line 32366, under the head of line 32312, and
  it still carries their case. Of the ten with Fix none, eight stay as they
  are, the code showing the Wrong or the repair standing nowhere: 755, no
  text reads a tool's existence off what ships it, while
  `skills/plan-work/SKILL.md` lines 298 to 320 have the planning run
  `bin/devloop-tool-state --planning` before anything is said of a tool, the
  first half of its Should; 836, `grep -rn -i -E "vendor's newest|newest
  release|goes stale|named release"` over the six directories finds the head
  of `bin/devloop-command-reader` line 92 alone, the rule and no check; 988,
  `shared/editing-tool.md` lines 1 to 4 carry the rule as they did when the
  run of 16 October 2026 broke it, and no mechanism holds it; 1084,
  `skills/setup-checks/SKILL.md` lines 501 to 505 and
  `shared/install-question.md` lines 15 to 18 carry the wordings approved on
  20 and 21 October 2026 as they stood when the runs of 23 October 2026
  departed from them; 1124, `skills/plan-work/SKILL.md` lines 492 to 495 say
  of the two records that "there the file on the main branch is the state
  itself, and it is read as the paragraph above reads it", beside the one
  call of `bin/devloop-start-conditions` at line 496, which is the Wrong;
  1156, `shared/install-alone.md` lines 15 to 19, inserted into `build-work`
  at line 498, say that before the install and after it the run reads the
  folders for browsers and the report names what came into them, standing
  so since `e9deec2` of 24 October 2026, before run 2 of 26 October 2026
  departed from it; 1164, `skills/build-work/SKILL.md` step 3 says nowhere
  that an install of a task runs on the task's branch after the cut; 1276,
  `bin/devloop-tool-state` line 565 names ten installers and no `pip`; 1284,
  `skills/setup-checks/SKILL.md` lines 628 to 630, "the command ran in their
  terminal and in no call of this run", the terminal alone. For 988, 1084
  and 1156 the texts said what the Should asks before the runs that did not
  hold them, and whether such a text counts as the repair standing, or a
  run's departure from it needs a mechanism before the block counts as
  built, is put to the person in the report; the Fix of these three stays
  none, as the order of 24 October 2026 left it for 1084, decision (7) of
  the entry on how an install is recorded. One Fix changed, 1020: the
  repair stands since `f0eaae7` of 22 October 2026, after the run of 19
  October 2026 that found the defect, `skills/setup-checks/SKILL.md` lines
  1093 to 1095, "Which form the question takes is decided first, by
  `bin/devloop-auto-mode-question`, run once", and lines 1189 to 1191,
  `bin/devloop-auto-mode-rule read` "says so with exit 0 and writes nothing,
  and the program above reads it first"; Fix from none to
  `skills/setup-checks/SKILL.md` "says so with exit 0 and writes nothing, and
  the program above reads it", Status from Recorded, not built to Built,
  never walked. No title changed, no block moved. Three Wrong fields carry
  the entry's built or recorded line, the should-state, and not the wrong:
  667 (`docs/roadmap-archive-1.md` lines 8155 to 8156), 707 (lines 11275 to
  11277) and 723 (line 14009); the wrong stands at lines 8147 to 8150, in the
  Note of 707, and at lines 13995 to 13999; they stand as they are, the Wrong
  of a block with a Fix staying as it stands, and the report names them.

  **The 29 "not stated" filled**, each from the entry its Found names with
  that entry's words where it carries them, the lines in
  `docs/roadmap-archive-1.md` and each line's entry read off the last head
  above it; every old text read "not stated". From the entry of 6 September
  2026 on the two guard false positives, head line 1169: 603, Wrong lines
  1270 to 1275 and 1280 to 1282, Should lines 1283 to 1286 and 1299 to 1301;
  611, Wrong lines 1307 to 1314 as the counter-image of what is built,
  Should lines 1308 to 1315; 619, Wrong lines 1317 to 1321, Should lines
  1321 to 1325. 627 from the entry on the unbacked command, head 1538, Wrong
  lines 1539 to 1545 and 1573 to 1575, Should lines 1546 to 1549. 635 from
  the stock-take of 23 September 2026, head 5101, Wrong and the half-should
  "a sentence for the unattended case" lines 5213 to 5217, what the sentence
  says from `shared/install-tool.md` lines 163 to 166, which the Note names.
  643 from the entry on the block message, head 6489, Wrong lines 6569 to
  6576, the entry carrying no should; the Should from the Note, from the
  entry of 21 October 2026 on milestone 3, part 3, lines 33786 to 33788 under
  the head 33759, and from line 6568, "so every join … reads". 651 from the
  entry on the widget, head 7048, Wrong lines 7053 to 7057, 7061 to 7064 and
  7076 to 7081; its should at lines 7125 to 7128, question 4 put in prose
  and the widget carrying its two answers alone, was superseded on 3 October
  2026, version 0.126.0, by the widget's own fields, which the Fix line
  names, so the Should says today's form and names the entry's as what held
  until then. 659 from the entry on the two runs of 30 September 2026, head
  7502, Wrong lines 7783 to 7789, Should lines 7789 to 7791. 667 from the
  audit of 30 September 2026, head 8034, Should lines 8155 to 8156 with the
  Fix line's words. 683 from the entry on milestone 3, part 1, head 32873,
  Should line 33172, finding 11 quoted there. 691 and 699 from the audit of 4
  October 2026, head 10147, Should lines 10327 to 10331 and 10360 to 10363.
  707 and 715 from the entry of 5 October 2026 on the four forms, head 10798:
  707 Should lines 10871 to 10873 and 11275 to 11277; 715 Wrong lines 11326
  to 11329, Should lines 11450 to 11453. 723 from the entry of 9 October 2026
  on the open findings, head 13812, Should lines 14006 to 14007. 763 from the
  entry of 9 October 2026 on step 8, head 15435, Wrong lines 15575 to 15579;
  the entry carries no should, the Should from the block's Note, "a project
  whose mode was set up before 0.134.0 is asked the rule question on some
  path". 788 from the entry on the command reader, head 19556, its addendum
  of 13 October 2026, Wrong lines 20439 to 20444, Should lines 20444 to 20448
  and 21086 to 21092. 836 from the catch-up of 14 October 2026, head 23961,
  Should lines 24102 to 24109, "this file" there being the roadmap. 1004 from
  the audit of 18 October 2026, head 28846, whose should at lines 29209 to
  29211 is two ways, decided by the catch-up of 19 October 2026, head 29317,
  lines 29396 to 29401 and 29407 to 29411, which the Should carries. 1036
  from the entry on milestone 3, part 2, head 33283, Wrong and Should line
  33491. 1172, 1180 and 1188 from the entry on the tool state, head 40175,
  its addendum of 28 October 2026: 1172 Wrong lines 40604 to 40616, Should
  40617 to 40632; 1180 Wrong 40652 to 40654, Should 40654 to 40661; 1188
  Wrong 40661 to 40663, Should 40663 to 40665. 1196, 1204, 1212 and 1244
  from the entry on the handovers, head 41228: 1196 lines 41505 to 41507,
  41536 to 41543 and 41633; 1204 lines 41546 to 41555 and 41634; 1212 lines
  41575 to 41579 and 41635; 1244 lines 41563 to 41568, 41648 to 41651 and
  41695 to 41700. 1276 and 1284 from the audit of 31 October 2026, head
  43585, which carries no should for either, lines 44200 to 44207 and 44238
  to 44245: 1276 from the text the audit holds the program against, the
  entry of 27 October 2026, head 40175, lines 40266 to 40267, "`pip` is not
  read, its folder depending on `--user` and the interpreter, and the line
  says so"; 1284 from the entry of 28 October 2026, head 41228, lines 41283
  to 41286, the three texts saying both forms. The same audit says at lines
  44372 to 44375 that the sentence of step 4 "is not wrong under form B and
  says nothing of form A" and "stands", against its own status line at
  44245; the report puts that to the person.

  **Three sentences of `docs/plan.md` under milestone 12 said right.** Lines
  898 to 900 said that this milestone "fixes which operating systems and
  which surfaces of Claude Code count — the terminal, the desktop app, the
  IDE extensions, the web" and lines 908 to 909 that it "decides how devloop
  reaches cloud sessions, or that it does not"; they say now what was
  decided, the three dated sentences below them. Lines 902 to 908 read the
  hooks reference's sentence "a hook that matches only `Bash` never fires
  there" for Windows "where Git Bash is not installed" alone; the tools
  reference, read in the entry above this one, says the PowerShell tool is
  on by default on Windows with Git Bash for claude.ai and Console accounts,
  so the paragraph says now that the sentence holds for every Windows on
  which the tool is on, and names the hooks reference's place, the
  PowerShell input of PreToolUse, where it said "its PowerShell section".
  Lines 919 to 921, "Ends with one run per system, the cases of milestone 3
  included: the guards read, the mark written, the install under a yes, each
  on that system's surface", name now the four systems, the run in the panel
  and the run in the desktop app on the person's Mac, the run on Windows
  without Git Bash in which the skills refuse to load, and that the person
  provides the machines for Linux, Windows and Alpine before the milestone
  ends. No block for these: a finding in `docs/plan.md` gets none.

  **Decided by the person on 9 November 2026**, three decisions on what
  `docs/plan.md` left open under milestone 12, each recorded there as a
  dated sentence. (1) The systems: macOS, Linux, Alpine and Windows with Git
  Bash count; Windows without Git Bash does not. Every skill carries `shell:
  bash` in its frontmatter, so that without bash it does not load, with the
  vendor's message that names bash as what is missing, instead of failing in
  PowerShell; `README.md` says that under Windows devloop needs Git for
  Windows. The guard for the PowerShell tool stays part of milestone 12,
  since on Windows with Git Bash the tool is on by default for claude.ai and
  Console accounts, the tools reference under "PowerShell tool" as the entry
  above this one read it. Reason: on the other way every guard would exist
  twice, for bash and for PowerShell, and where one version came to differ
  from the other the protection would be missing on one system without
  anybody noticing; a plain message that bash is missing is better than a
  devloop that runs without its guards. Not chosen: Windows without Git Bash
  as a fifth system. The person's decision of 14 October 2026, "devloop runs
  on every system", `docs/roadmap-archive-1.md` lines 22922 to 22923, meant
  macOS, Linux and Windows under Git Bash, lines 22999 to 23003, where the
  job runs "under `ubuntu-latest`, `macos-latest` and `windows-latest`,
  there under Git Bash"; the sentence in `docs/plan.md` names both. (2) The
  surfaces: the CLI counts — in the terminal, in JetBrains, in the extension
  for VS Code with "Use Terminal" and with `claude` in its built-in terminal
  —, the graphical panel of the extension for VS Code and the local sessions
  of the desktop app. In the panel and in the desktop app devloop hands every
  command over in form B, as `shared/install-tool.md` lines 139 to 141
  describe it: "in a second terminal window, not the one Claude Code runs
  in, where it asks something, a password for `sudo` say, form B, the text
  naming what it asks and asking them to say here once it is through". How
  devloop reads which surface it runs on is measured first in milestone 12;
  where no way is found, the question goes to the person before anything
  builds on it. The closing runs gain a run in the panel and one in the
  desktop app on the person's Mac. Reason: the plugin loads in the panel and
  in the desktop app already, since the terminal, the desktop app and the
  extension read the same settings files, the plugins page as the entry
  above read it; the only known gap is one form of the handover, the `!`
  shortcut missing in the panel, and devloop has the other; whoever shuts
  devloop out there shuts out whoever uses VS Code as it opens. Not chosen:
  the CLI alone. Read beside it: the desktop page says under "Claude Code
  settings that behave differently in the Code tab" that commands the person
  types after `!` run in a shell the app chooses, so the shortcut is there in
  the desktop app; the decision takes form B there all the same, and the
  report names it. (3) The cloud: devloop does not reach cloud sessions, the
  cloud threads of a project included; `README.md` says that devloop runs
  where Claude Code runs on the person's own computer — the terminal, the
  extension for VS Code, the desktop app — and not in cloud sessions.
  Reason: a cloud session does not load the plugins installed locally and
  does not read `~/.claude/settings.json`, where the rule for the run without
  the person stands, `bin/devloop-auto-mode-rule` line 7; in the threads of a
  project a plugin entered in the project's settings loads, but whether its
  hooks run there the pages do not say; a protection that is only partly
  there and whose missing parts do not show is worse than a plain boundary.
  Not chosen: bringing devloop into the threads of a project through the
  plugins in the project's settings. Where the vendor changes what cloud
  sessions load, the question is put again. Read raw at the vendor on 9
  November 2026, every page as Markdown from code.claude.com/docs/en/<page>.md
  with `curl` into the report's working directory and read there with `grep`
  and `sed`: the projects page, claude-projects.md, "What threads pick up
  from your repositories": "Cloud threads load each repository's `CLAUDE.md`
  instructions but not its skills, `.mcp.json` servers, or
  `.claude/settings.json`", and in its table "Plugins enabled in
  `.claude/settings.json` | Not loaded. Add the plugin in **Project settings
  > Plugins** instead" and "Hooks in `.claude/settings.json` | Not run. To
  use your hooks, run the thread on your own computer"; "Get skills,
  plugins, connectors, and tools into threads": "Cloud threads don't have
  the skills, MCP servers, plugins, and tools installed only on your machine.
  A thread that Claude runs on your machine through Remote Control uses
  what's installed there", "Plugins: add them in **Project settings >
  Plugins**; they load into each new cloud thread. Plugins that a repository
  declares in its `.claude/settings.json` don't load in cloud threads"; "Run
  a thread on your own computer": such a thread "Works with the files,
  tools, MCP servers, and Claude Code settings on that machine, including
  its hooks and permission rules", so a thread run on the person's own
  computer is a local session, which the sentence for the README covers.
  The plugins page, plugins/overview.md, "Understand install scopes": "A
  plugin you install at user scope in the terminal, the desktop app's local
  sessions, or the VS Code extension is available in the other two on that
  computer, because all three read the same settings files" and "A cloud
  session, including one in the browser at claude.ai/code, doesn't load the
  plugins in your local settings"; the plugin install page, plugins/install.md,
  the tab "Cloud session": a cloud session "has no plugin browser and doesn't
  load the plugins you installed on your own machine or the ones your
  repository's `.claude/settings.json` turns on". The hooks reference,
  hooks.md, "Hook locations": "Cloud sessions don't read your local
  `~/.claude/settings.json`", and in its table "Plugin `hooks/hooks.json` |
  When plugin is enabled"; its opening says that "Claude Code fires the same
  hook events wherever it runs: sessions in the terminal, IDE extensions,
  the Desktop app, and cloud sessions", and no sentence of it says whether a
  plugin added in a project's settings runs its hooks in the project's
  threads, where the projects page says the repository's hooks are not run.
  The cloud environments page, cloud-environments.md, "What carries over
  from your setup": "Plugins enabled only in your user settings | No |
  User-scoped `enabledPlugins` lives in `~/.claude/settings.json` on your
  machine". The skills page, skills.md, "Use skills in Cowork and cloud
  sessions": cloud sessions "don't read `~/.claude/skills/` on your machine".
  No page says anything other than the reasons above.

  **Two blocks closed as corrected in the document**, lines 828 and 1012,
  both comments of `.github/workflows/stock-take.yml` that were wrong and
  were corrected on 14 and 19 October 2026: the sentence itself was the
  defect, a run does the same before and after, and no run can meet a
  comment; the same case as the head of `bin/devloop-command-reader`, the
  block at `docs/defects.md` line 473. Their Status, from Built, never
  walked: Closed, corrected in the document: `.github/workflows/stock-take.yml`
  carries "since git refuses in a container a repository owned by another
  user", the comment at its line 264; and Closed, corrected in the document:
  `.github/workflows/stock-take.yml` carries "matcher this step has an input
  for runs without this step being touched;", the comment at its line 269;
  each text standing once in the file.

  **Three Shoulds changed by the decisions**, the old text quoted. Line
  1332, the guards on the PowerShell tool, by decision (1): "every shell
  command the model runs on Windows with Git Bash, and on Windows without
  Git Bash where that system counts, passes the command guards as a Bash
  command does on macOS, and what they read of it is measured in milestone
  12 on Windows with Git Bash under a claude.ai account" names Windows
  without Git Bash no more. Line 1340, `shell: bash`, by decision (1): "on a
  system without bash a skill of devloop fails to load with the vendor's
  message that names bash as what is missing, or loads through a program
  that runs there; measured in milestone 12 on Windows without Git Bash,
  where that system counts" asks now that every skill carry `shell: bash`,
  that the refusal be walked once on Windows without Git Bash, the unwanted
  side included, and drops the program that runs there. Line 1228, the
  panel, by decision (2): "read for milestone 12 which surface the session
  runs on, and in the chat panel hand every command over as form B, or say
  that devloop runs in the terminal; with Use Terminal and with claude in the
  built-in terminal the CLI's surface runs, which is how the person works"
  asks now form B in the panel and the reading of the surface first, the
  question to the person where no way is found, and drops the second way.
  **Three blocks written**, under "## Milestone 12", the group every other
  operating system and surface, each Recorded, not built, this entry their
  Found: form B in the local sessions of the desktop app and the reading of
  that surface, by decision (2); the sentence of `README.md` that devloop
  needs Git for Windows under Windows, by decision (1); the sentence of
  `README.md` on where devloop runs and that it does not run in cloud
  sessions, by decision (3) — the wording of both the person approves before
  the build, and `README.md` is not changed here.

  **Which run meets each case stands in the report outside the repository**,
  block by block, against the runs `docs/plan.md` names since this day: the
  job hooks on every system meets 1036, 1172, 1204 and 1260 through the
  session-start handler without a record and the self-tests of
  `bin/devloop-tool-state`, `bin/devloop-install-issues` and
  `bin/devloop-command-reader` on four systems; the per-system run under a
  yes meets the blocks of the install under a yes; the blocks of the handover
  under a no — among them 627, 659, 707, 1076, 1148, 1196, 1244, 1252, 1268,
  1276, 1284 and 1316 — need a run under a no, which the three cases of the
  closing runs do not name, and the report puts that to the person; two
  blocks, 683 and 996, whose case is a guard's block inside `setup-project`
  that a run reaches only by mistake, stand in the report as candidates for
  the form "Built, never walked, cannot be forced", the form not set.

  The tool, before, on `c5a773c`: broken records 0, uncovered lines 0 of
  4568; Undetermined 24, Recorded, not built 257, Built, never walked 1510,
  Walked 700, Closed 66; milestone 12 93 blocks, Recorded, not built 39,
  Built, never walked 49, Walked 5; blocks with "not stated" 374. After:
  Recorded, not built 259, the three new blocks less 1020; Built, never
  walked 1509, 1020 less the two closed; Closed 68; "not stated" 345, the 29
  filled; milestone 12 96 blocks, Recorded, not built 41, Built, never walked
  48, Walked 5, Closed 2; blocks held against the branch point: removed 0,
  renamed 0, Should changed 32, added 3; Walked on this branch without a run
  the branch adds: 0; every other figure as before. The self-test: 159 cases
  before and after. The twenty checks before a handover and
  `scripts/devloop-run-workflow` print after what they printed on `c5a773c`,
  the title step reading this head. The 32 lines of the fixed form:

  Should changed: the normal path of build-work runs through the install guard, a body on the command line and an append to environment.md
  Should changed: the two setup stages did not tell a real install block from a text match, recording a skip that is not true
  Should changed: the install guard's message offers two ways out that assume check classes or tasks, nothing for research, build-prototype and record-lessons
  Should changed: an install command was handed to the user without being backed and its success read off the user's word
  Should changed: the install in build-work is handed to the user and nothing says what a run with nobody there does
  Should changed: the block message chains two colons into one sentence behind does not open it where the cause opens with a label and a colon of its own, seven causes
  Should changed: the install question was put through the harness's choice widget on its first asking and none of its thirteen points arrived whole, nothing in the skill naming the form
  Should changed: under install-tools no the record and the session-start line list six places and a route with nothing saying they are closed, so the line reads as though something were open
  Should changed: build-work step 3 point 7 and setup-checks step 3 described the guard's pass by places alone, the routes of 29 September 2026 missing
  Should changed: the guard-block bullet of setup-project wrote the case with nobody there, an issue and a report, in a skill the unattended mode does not reach
  Should changed: the table holds no thing for an install with nobody there under a yes that succeeds, so the open half of milestone 3 was invisible in the tool
  Should changed: the rule keeping runtimes out of the install question was delivered as an assurance a fifth time in five runs, and a rewording is spent
  Should changed: setup-checks step 3 said never install system-wide without asking under a no and under no record, an asking with no yes the run could act on, against the no of the install question
  Should changed: the line of prose before a second question in setup-checks step 8 was approved in one wording ending on their having said no, where the question is put for every record not saying yes
  Should changed: the install guard reads the destination of the first make, cargo or gem command of a line alone
  Should changed: a project whose mode was set up before 0.134.0 meets the question on the rule for auto mode on no path, step 8 skipping where all five stand and plan-work asking nothing where the mode is set up and --auto was typed
  Should changed: subcommands the vendors document as placing a program were not read: nix-env, nix-shell -p, cargo binstall and the updates of brew, pipx, uv tool, npm and gem
  Should changed: the group of programs the reader reads over goes stale with new tools and options and nothing holds each program's named release against the vendor's newest
  Should changed: shared/install-not-through.md names every failed installer attempt on the model of the fetch text, which names none followed by an answer since 17 October 2026
  Should changed: the session-start line without a record says the blocked install is handed to you, where the line reaches the run and the guard hands it to the person
  Should changed: a package outside the project answered for the project: npx --no-install fell back to a global Playwright on the search path, and node resolved puppeteer-core from the directories above the project, NODE_PATH and its global folders
  Should changed: plan-work had the assumptions of a round say a line not read in the program's words, an English sentence to a person reading in their language
  Should changed: plan-work listed what the planning says of a tool without the browser that does not stand in the version the project's test tool needs
  Should changed: after their word setup-checks read a class's tool in the installer's folder alone, so that a tool in a folder the search path does not reach was set up and the chain could not call it, with no word to the person, D4
  Should changed: an issue on a no carried the command alone and the next start, reading the search path, left it open with no word on the folder the command installed into, D5
  Should changed: the install guard's message said the path the command writes to is what decides and the run picks up once the tool stands there, while the build since 28 October 2026 reads the search path as well, D6
  Should changed: for (6) to (10) the person approved form A alone and for (11) the case of a task alone, so a command that asks something there and a check class's issue in a folder outside the PATH have no approved wording
  Should changed: bin/devloop-tool-state says of pip that it is none of the ten installers it reads, and nothing of --user or the interpreter
  Should changed: setup-checks step 4 names the terminal alone for an install the person made, where step 3 and build-work say both forms
  Should changed: in the graphical chat panel the extension for VS Code opens with, the ! shortcut is not there, so form A has no place there
  Should changed: every command guard matches the tool Bash alone, while on Windows with Git Bash the PowerShell tool is on by default for claude.ai accounts and takes the shell commands
  Should changed: no skill declares shell bash in its frontmatter, so on Windows without Git Bash the insert lines run through the PowerShell tool and the load fails on the program instead of on the vendor's message that bash is missing

- **Two entries held, the desktop handover decided, two blocks closed.**

  9 November 2026, version 0.181.0, unchanged: nothing under `skills/`,
  `shared/`, `hooks/`, `bin/`, `scripts/`, `output-styles/` or `.github/`
  changes, and `README.md` does not. On `task/audit-2026-11-09`, off
  `origin/main` at `0c3eb24`, in one commit: `docs/roadmap.md`,
  `docs/plan.md`, `docs/defects.md`, `docs/skill-conventions.md` and this
  entry. The order: the consistency audit before the handover, in the form
  of the audits of 4 and 6 November 2026 — the two entries since the last
  audit held statement by statement against the code, the documents, the
  table and their commits; the control documents searched for sentences
  against the decisions of 9 November 2026; `docs/rationale.md` held against
  the loaded texts; what has one right answer mended here and the rest put
  to the person in the report; and the four things the order names carried
  in. Written by Claude Code from the person's order of this day; no session
  log was read; nothing was installed; GitHub was read with `gh pr view` for
  the branch names and commits of the two pull requests and not beyond; the
  identity under which git commits here was neither set nor read. The report
  stands on this machine as `~/devloop-audit-2026-11-09.md`, in German, and
  is not in the repository. Every line number of a file in this entry holds
  at `0c3eb24` unless it says otherwise; a line of the archive names
  `docs/roadmap-archive-1.md`, read with the last head above it, `grep -n
  '^- \*\*'`. The two lines of the fixed form for the block renamed below:

  Block renamed: in the local sessions of the desktop app the texts hand a command that asks nothing over as form A and nothing reads that the session runs there, where the person decided on form B for that surface / in the local sessions of the desktop app under Windows, where ! runs in PowerShell, the texts hand a command that asks nothing over as form A and nothing reads that the session runs there, where form B holds for every command
  Should changed: in the local sessions of the desktop app under Windows, where ! runs in PowerShell, the texts hand a command that asks nothing over as form A and nothing reads that the session runs there, where form B holds for every command

  **What was read, and how.** Whole, with the text in front of the session:
  the two entries, lines 3027 to 3645; the audits at lines 714 to 985 and
  2896 to 3026 as the form; `docs/plan.md` lines 83 to 148 and 888 to 1027;
  `docs/defects.md` lines 1 to 86; `docs/skill-conventions.md` lines 1783 to
  1934 and 3924 to 4421; the head of `scripts/devloop-stock-take`, lines 458
  to 587, 676 to 933 and 955 to 970; `README.md`; `git diff c5a773c 0c3eb24
  -- docs/plan.md`; every place a statement names, with the lines around it;
  the headings of `docs/rationale.md` by a script. The branches of #235 and
  #236 were fetched by their references, two commits and one, the tree of
  each head equal to its squash commit on main, `git diff --stat` empty for
  both; their branch names and commits read with `gh pr view`. No subagent
  was used. The tool ran in a clone under a throwaway directory at
  `e252c10`, `85dc3bc`, `ded762b`, `c5a773c` and `3d485b2`, `origin/main`
  set to the branch point for the three commits of the branches, and check 2
  of "Before a handover, run these" ran at four of them, silent at each. The
  vendor's pages were fetched raw with `curl` from
  code.claude.com/docs/en/<page>.md into that directory, the CHANGELOG at
  `v2.1.319`, and the 68 quotations of the two entries held against them
  with apostrophes and quotation marks normalised: every one stands on its
  page, sixteen with markup around the words — bold, a link, backticks —
  which the entries give as text; the settings reference is the page
  settings-reference.md, since settings.md is "Settings files and
  precedence" and carries neither key.

  **The two entries against the code, the documents, the table and their
  commits.** The entry at line 3027, the blocks on systems and surfaces: 41
  statements, 38 hold — its two commits and their files, the second
  correcting the two fields it names with the old texts as quoted, the 34
  blocks at their lines at `e252c10` and their Fix lines, no Fix, Status,
  title or section changed, the fourteen places that read a file and the
  three awk calls at the lines named, `bin/devloop-bounded` lines 38 and
  111, nothing reading `respondToBashCommands`, the chat panel, Use Terminal
  or a version of Claude Code, the eight fields filled with the archive's
  words under the heads named, and the figures before and after, which the
  tool gives at `e252c10`, `85dc3bc` and `ded762b` line for line, Should
  changed 8 and added 2 among them. Three do not:
  - "finding 1, lines 22937 to 22950": the finding's head stands at line
    22936 and the should quoted, "the reader runs under macOS, under Linux
    and under Windows with Git Bash, …", at lines 22952 to 22954; corrected
    in place to 22936 to 22954.
  - "finding 2, lines 22989 to 23003": lines 22989 to 22992 end finding 1,
    the measurement in milliseconds, the head of finding 2 stands at 22993
    and "every file a shell or awk reads arrives on every system with the
    line endings it runs with" at 23005 to 23006; corrected in place to
    22993 to 23006.
  - "`grep -rn -E "tr -d '\\r'|CRLF|carriage"` over the six directories
    finds none outside two comments": the command as written prints five
    comment lines in three files, `bin/devloop-command-reader` 2504,
    `bin/devloop-install-issues` 83 and `.github/workflows/stock-take.yml`
    130, 172 and 504, and its pattern cannot meet `tr -d '\r'`, the
    backslash going in the double quotes; a pattern that keeps it adds lines
    506, 507 and 509 of the workflow, where the job hooks on every system
    reads the record of the counted refusal with `tr -d '\r'`. The fourteen
    places read a file of the project and handle no carriage return, as the
    entry says; the sentence on the command's output does not hold. Said
    right here, the entry standing as written.
  The entry at line 3271, the install blocks: 63 statements, 62 hold — its
  one commit, the 57 blocks at their lines at `c5a773c`, the 47 Fix lines,
  the ten with Fix none and what the code shows for each, the anchor of the
  four blocks that cannot be forced at archive line 32366 under the head of
  32312, the one Fix changed, the three Wrong fields and where the wrong
  stands, the 29 fields filled under the 21 heads named, the three sentences
  of `docs/plan.md` as the diff shows them, the decisions' sources at
  archive lines 22922 to 22923 and 22999 to 23003, `shared/install-tool.md`
  lines 139 to 141 and `bin/devloop-auto-mode-rule` line 7, the two closings
  on workflow lines 264 and 269, the three Shoulds changed with their old
  texts, the three blocks written, and the figures before and after, which
  the tool gives at `c5a773c` and `3d485b2`, Should changed 32 and added 3.
  One does not:
  - "`grep -rn -i -E "vendor's newest|newest release|goes stale|named
    release"` over the six directories finds the head of
    `bin/devloop-command-reader` line 92 alone": it finds three lines,
    `skills/setup-project/SKILL.md` 795 and `skills/build-work/SKILL.md` 212
    carrying "goes stale" beside it, neither on the subject; the rule and no
    check, as the entry says. Said right here.
  One slip, no error: "the one call of `bin/devloop-start-conditions` at
  line 496" of `skills/plan-work/SKILL.md` — the sentence opens at 496 and
  the program's name stands at 497.

  **Decided by the person on 9 November 2026**, after the entry above, an
  addition to its decision (2): in the local sessions of the desktop app
  under macOS and under Linux devloop hands a command over as in the
  terminal, form A where the command asks nothing and form B where it asks;
  form B for every command holds in the desktop app under Windows, where `!`
  runs in PowerShell, and in the graphical panel of the extension for VS
  Code, where `!` is not there. Reason: in the desktop app a command after
  `!` runs under macOS and Linux in the login shell, and Claude answers its
  output whatever `respondToBashCommands` says — the desktop page, "Claude
  Code settings that behave differently in the Code tab", read in the entry
  above; where `!` works as in the terminal, devloop uses it so, and the run
  reads the result itself instead of the person's word. Not chosen: form B
  for every command everywhere in the desktop app. Recorded in `docs/plan.md`
  under milestone 12 as a dated sentence after the three of that day; the
  sentence on the closing runs there said "the command handed over in form B
  on each" for the panel and the desktop app and says now form B in the
  panel and, in the desktop app, as in the terminal, form A where it asks
  nothing. The block of the desktop app, line 1348, Recorded, not built, no
  run naming it, is renamed, the two lines above, since its title said the
  person decided on form B for that surface, and its Should says the
  addition; its Wrong names every text that hands a command over with `!`,
  found with `grep -rn` over `skills/` and `shared/`, and its Note keeps the
  old title. The old Should, quoted: "in the local sessions of the desktop
  app devloop hands every command over in form B, as `shared/install-tool.md`
  describes it under the way of the yes, the surface read first by the way
  milestone 12 measures, and where no way to read it is found the question
  goes to the person before anything builds on it; decided by the person on
  9 November 2026, decision 2; measured in milestone 12 in a run in the
  desktop app on the person's Mac."

  **Two blocks closed as corrected in the document**, lines 683 and 996,
  "the guard-block bullet of setup-project wrote the case with nobody there,
  an issue and a report, in a skill the unattended mode does not reach" and
  "setup-project says what the run does with nobody there at an install the
  guard blocked, and no way of the unattended mode reaches setup-project by
  the computed set": both held a sentence of `skills/setup-project/SKILL.md`
  that described a case the run does not reach there; the sentence is
  corrected, a run does the same before and after, and the sentence itself
  was the defect — the case of section D of the tool's head and of the two
  blocks the entry above closed. Their Status, from Built, never walked:
  Closed, corrected in the document: `skills/setup-project/SKILL.md` carries
  "check setup decides. The case with nobody there cannot arise here", the
  text standing once in the file, line 51.

  **Four Wrong fields said right**, each from the place that says what was
  wrong; no Should, Fix or title changed. Line 668, the block "build-work
  step 3 point 7 and setup-checks step 3 described the guard's pass by places
  alone, …": "both sentences in both skills name the answer of a route the
  record names, since 30 September 2026", the Built line of the audit of 30
  September 2026 → the wrong from archive lines 8147 to 8154 under the head
  of 8034, "`build-work` step 3 point 7 and `setup-checks` step 3 said the
  guard passes a command only where every place it lands is one the record
  names, and that anything landing outside the places the record names stays
  the user's under every answer, while since 29 September 2026 a route the
  record names opens whatever that route answers on the machine, …, and pull
  request #141 touched neither skill; a run reading either would hand over a
  `cargo install` the guard lets through". Line 708, "setup-checks step 3
  said never install system-wide without asking …": "step 3 of
  `setup-checks` says under a no and under no record what the no of the
  install question says, in one form — the finding of 2 October 2026 on step
  3", the Built line → from the block's own Note, "step 3 of `setup-checks`
  said that where the record says no or was never written the run never
  installs system-wide without asking, while the no of the install question,
  `setup-project` step 4 question 3, says the run hands them the command and
  they decide, and the guard blocks the run's own install under
  `install-tools: no` and under no record whatever they answer, so the asking
  step 3 named had no yes the run could act on — …". Line 724, "the install
  guard reads the destination of the first make, cargo or gem command of a
  line alone": "every destination on a line held against the places", the
  Recorded line → from archive lines 13995 to 13999 under the head of 13812,
  "of `make`, `cargo` and `gem` the guard read the destination of the first
  command of its kind on a line alone, `head -1` on the reading of the make
  variables, line 404, of `--root` behind `cargo`, line 298, and of
  `--bindir` behind `gem`, line 336 at `2460bb7`, so that a second command of
  the same kind on the line went to a place the record does not name unseen".
  And line 684, the Wrong of the first block closed above, which opened with
  the Built line of the entry of 20 October 2026, "the bullet of
  `setup-project` for a blocked install says the case with nobody there
  cannot arise here, …", and carried after it, 2,800 characters in all, that
  entry's other points, from "Line 27167 of docs/roadmap-archive-1.md, …" to
  "(h) Everything else above is recorded only.", in this form since
  `b73c029` → the wrong from archive lines 33164 to 33171 under the head of
  32873, "until 20 October 2026 the bullet of `setup-project` for a blocked
  install said what the run does with nobody there, that the command becomes
  an issue and a report, in a skill the run without the person reaches on no
  way, …".

  **The closing runs of milestone 12**, `docs/plan.md`: the third of the
  five sentences asks for runs the sentence on the closing runs did not
  name. It names now, beside the runs per system and surface: under a no, a
  run on the person's Mac with a command that asks nothing handed over in
  form A, a run under Linux with `sudo apt install` handed over in form B,
  and the next start after an install the person made under a no; once each
  on the person's Mac the cases a test project can produce that no run
  named — the refresh of `setup-project` without an install record on the
  main branch, a planning with the record of the mode saying yes and
  auto-merge off, a planning in German with a browser the program does not
  read and with one in the wrong version, a start with `--auto` after a
  refused install and one after two refused installs whose commands ask;
  and the inputs the job hooks on every system gives the install guard, a
  line with two destinations of one install and the updates of `brew` and
  `pipx`. Sections 8.3 and 8.10 of the report of the entry above name no
  further case.

  **The control documents against the decisions of 9 November 2026.**
  Searched with `grep -n -E` for `Windows|Git Bash|PowerShell|Alpine|Linux|
  macOS|every system|operating system` and for `cloud|desktop|VS Code|
  extension for|JetBrains|surface|the web|claude\.ai|Cowork|shell mode|
  Use Terminal|chat panel` and the backticked `!` over `docs/plan.md` (37
  and 33 lines), `docs/skill-conventions.md` (41 and 16), `docs/rationale.md`
  (4 and 24), `README.md` (none), the head of the tool (1 and 0) and this
  file's sections without a date (0 and 3); every line read. One place
  mended: `docs/skill-conventions.md`, the paragraph "Where the person types
  a command devloop hands them while Claude Code runs, the text says, and
  which of two forms holds follows from what the command does" named the
  panel as a limit not built and said nothing of the desktop app or of which
  surfaces count, while by decision (2) and the addition above the form
  follows from the surface as well; its head reads now "… follows from what
  the command does and, since 9 November 2026, from the surface it runs on",
  and after "the person works one of these two ways; milestone 12" it
  carries the decisions in two sentences, naming `docs/plan.md` and the
  blocks of milestone 12. `README.md` says nothing of systems, surfaces or
  the cloud; what decisions (1) and (3) ask of it the two blocks of the
  entry above hold, and no sentence of it deviates. `docs/rationale.md`
  describes the loaded texts as they stand, form A with `!`, and holds
  against them: each of its 59 headings of the second level names a file
  that exists and each of its 68 of the third a section that file has. The
  texts under `skills/` and `shared/` that hand a command over with `!`,
  named in the Wrong of the renamed block, say form A on every surface; the
  block of the panel and the renamed block hold them, and no sentence needs
  a block of its own; `shared/body-through-file.md` lines 18 to 19 and
  `bin/devloop-arm` line 68 name the four systems of decision (1).

  The tool, before, on `0c3eb24`: broken records 0, uncovered lines 0 of
  4568; Undetermined 24, Recorded, not built 259, Built, never walked 1509,
  Walked 700, Closed 68; milestone 12 96 blocks, Recorded, not built 41,
  Built, never walked 48, Walked 5, Closed 2; blocks with "not stated" 345.
  After: Built, never walked 1507 and Closed 70, the two closings; milestone
  12 Built, never walked 46, Closed 4; every other figure as before; blocks
  held against the branch point: removed 0, renamed 1, Should changed 1,
  added 0; Walked on this branch without a run the branch adds: 0. The
  self-test: 159 cases, 148 of 148 messages asserted by a case, before and
  after. The twenty checks before a handover and `scripts/devloop-run-workflow`
  print after what they printed on `0c3eb24`, the title step reading this
  head. No run is recorded. Two commits: the first with all of this; the
  second from the check at the code before the merge, which corrects the
  first in two places. In `docs/skill-conventions.md`, after the two new
  sentences, "The wordings the person approved for the handovers stand in
  that roadmap entry" and "Until that day the rule on a command handed over
  read" meant the entry of 28 October 2026 and read, after them, as 9
  November 2026; they say now "in the roadmap entry of 28 October 2026 on
  the handover steps" and "Until 28 October 2026". This entry said the
  place mended carried the decisions in four sentences; they are two.

- **Surface reading measured, machines for the closing runs decided.**

  9 November 2026, version 0.181.0, unchanged: nothing under `skills/`,
  `shared/`, `hooks/`, `bin/`, `scripts/`, `output-styles/` or `.github/`
  changes, and `README.md` does not. On `task/surface-reading`, off
  `origin/main` at `ac8cb77`, in two commits: `docs/plan.md`,
  `docs/defects.md`, `docs/roadmap.md` and this entry. The order: the first
  measurement of milestone 12, how devloop reads which surface of Claude
  Code it runs on, `docs/plan.md` under milestone 12, "How devloop reads
  which surface it runs on is measured first in this milestone"; a decision
  of the person on the machines of the closing runs under Linux, Alpine and
  Windows, recorded there and here; and the consequence of the third of the
  five sentences for the closing runs. Written by Claude Code from the
  person's order of this day; no session log was read; nothing was
  installed outside a throwaway directory; the identity under which git
  commits here was neither set nor read; no subagent was used. The report
  stands on this machine as `~/devloop-surface-reading.md`, in German, and
  is not in the repository. Every line number of a file in this entry holds
  at `ac8cb77` unless it says otherwise.

  **What was read, and how.** The vendor's pages raw with `curl` as Markdown
  from code.claude.com/docs/en/<page>.md into a throwaway directory and read
  there with `grep`: env-vars.md, vs-code.md, desktop.md, hooks.md,
  interactive-mode.md, jetbrains.md, settings.md, skills.md, statusline.md,
  setup.md, cli-reference.md. None of the eleven names
  `CLAUDE_CODE_ENTRYPOINT`. What they say of the surfaces: hooks.md, "Claude
  Code fires the same hook events wherever it runs: sessions in the
  terminal, IDE extensions, the Desktop app, and cloud sessions" and
  "Handlers run in the current directory with Claude Code's environment";
  env-vars.md on `CLAUDECODE`, "Set to `1` in subprocesses Claude Code
  spawns … IDE extensions also set this in their integrated terminals", and
  on `CLAUDE_CODE_CHILD_SESSION`, "only set by Claude Code itself when it
  launches a subprocess and not by IDE extensions"; vs-code.md, "The
  extension bundles its own copy of the CLI … for the chat panel" and, in
  the table "VS Code extension vs. Claude Code CLI", "Commands and skills |
  All | Subset (type `/` to see available)" and "`!` Bash shortcut | Yes |
  No"; desktop.md, "In a local session, the **Code** tab runs its own copy
  of Claude Code, which has its own version number", and under "Environment
  variables Desktop sets itself" that Desktop sets `API_TIMEOUT_MS` and
  `ANTHROPIC_BASE_URL` "among others"; jetbrains.md, "The plugin runs the
  `claude` command in your IDE's integrated terminal and connects to it. It
  does not bundle its own copy of the CLI"; skills.md, "Claude Code
  substitutes `${CLAUDE_SKILL_DIR}` and `${CLAUDE_PROJECT_DIR}` in two
  places: the skill's markdown content, and Bash rules in the
  `allowed-tools` frontmatter". The program of Claude Code on this machine,
  the one `command -v claude` names, read with `grep -a` for the string
  `CLAUDE_CODE_ENTRYPOINT`: at 2.1.319 and again at 2.1.321, after the
  program updated itself during the measurement, it compares the variable
  with `claude-desktop`, `process.env.CLAUDE_CODE_ENTRYPOINT==="claude-desktop"`,
  and with `claude-vscode`, `new Set(["claude-vscode"])`, sets `cli` where
  nothing stands, `set("CLAUDE_CODE_ENTRYPOINT",e?"sdk-cli":"cli")`, and
  carries the list `["cli","remote","github-action","sdk-typescript",
  "sdk-python","sdk-cli","claude-vscode","local-agent","claude-desktop"]`.
  The variable is the vendor's and undocumented; where the vendor changes
  it, this measurement is to be made again.

  **The probe.** A throwaway directory without a git repository, with three
  ways by which devloop gives the model text, each writing one line into a
  file of the probe: a hook on SessionStart in the directory's
  `.claude/settings.json`; a skill under `.claude/skills/` with an insert
  line, `` !`${CLAUDE_PROJECT_DIR}/probe.sh insert` ``, granted with
  `allowed-tools: Bash(${CLAUDE_PROJECT_DIR}/probe.sh *)`, as the insert
  lines of devloop are built, `skills/start-work/SKILL.md` lines 5 and 35
  with `${CLAUDE_PLUGIN_ROOT}`; and in the same skill the instruction to
  run the probe's program once with the tool `Bash`. Each line names the
  date and time with the timezone, the way, `uname -s`, the names of every
  environment variable, the values for the names beginning with `CLAUDE` and
  for `TERM_PROGRAM`, `TERM_PROGRAM_VERSION`, `TERMINAL_EMULATOR` and
  `__CFBundleIdentifier`, a value only where it consists of letters, digits,
  dot, hyphen and underscore and names no token, else the word "set"; the
  hook's line names the fields of its input, never their values; and since
  the counter-check the version the program `CLAUDE_CODE_EXECPATH` names
  prints with `--version`. The counter-check before the person's sessions,
  the program run with `Bash` and as the hook runs it with an invented input
  carrying paths: no value carried `/`, `~` or `@`, no field value of the
  input stood in the file; the token of `CLAUDE_CODE_MESSAGING_TOKEN` stood
  there after the first check and is masked since. devloop's hooks ran in
  the probe, installed for every project: each guard leaves a directory
  without `docs/agents` at once, `hooks/pre-tool-use-branch-guard.sh` line
  8, and none blocked a way. The lines carried two identifiers of the
  person's account, `CLAUDE_CODE_ACCOUNT_UUID` and
  `CLAUDE_CODE_ORGANIZATION_UUID`, set by the desktop app; the file is
  deleted with the probe, and the next probe masks `UUID` as it masks a
  token.

  **Measured on 9 November 2026** on the person's Mac, macOS, `uname -s`
  Darwin, the person opening the probe on each surface, starting a
  session, calling the probe's skill, letting the model run the `Bash`
  call and ending the session, the date and time of every line read off
  the probe's file: (1) `claude` in the Terminal of macOS, 20:40 +0100,
  Claude Code 2.1.321: `CLAUDE_CODE_ENTRYPOINT=cli` on the hook, on the
  insert line and in `Bash`, `TERM_PROGRAM=Apple_Terminal`,
  `__CFBundleIdentifier=com.apple.Terminal`, 41 variable names. (2) `claude`
  in the built-in terminal of VS Code 1.135.0, 20:32 +0100, 2.1.321: `cli`
  on all three ways, `TERM_PROGRAM=vscode`,
  `__CFBundleIdentifier=com.microsoft.VSCode`, `CLAUDE_CODE_SSE_PORT` set,
  61 names. (3) the extension for VS Code 2.1.319 with "Use Terminal",
  started with "Claude Code: Open in Terminal", 21:02 +0100, 2.1.321: `cli`
  on all three ways, the names of (2) but one, `CLAUDE_CODE_SSE_PORT` set
  anew; (2) and (3) are one surface to the environment. (4) the graphical
  panel of the extension, started with "Claude Code: Open in New Tab",
  21:11 +0100, the extension's own copy 2.1.319:
  `CLAUDE_CODE_ENTRYPOINT=claude-vscode` on all three ways,
  `CLAUDE_AGENT_SDK_VERSION=0.3.319`, `TERM_PROGRAM=vscode`,
  `__CFBundleIdentifier=com.microsoft.VSCode`, 83 names, the hook's input
  without `model`. (5) a local session of the desktop app 4.23118.0, the
  Code tab, 21:21 +0100, the app's own copy 2.1.317:
  `CLAUDE_CODE_ENTRYPOINT=claude-desktop` on all three ways,
  `CLAUDE_CODE_DESKTOP_APP_VERSION=4.23118.0`,
  `CLAUDE_AGENT_SDK_VERSION=0.3.317`, `CLAUDE_CODE_HOST_SESSION_ID` beginning
  with `local_`, no `TERM_PROGRAM`,
  `__CFBundleIdentifier=com.anthropic.claudefordesktop`, 71 names, the
  hook's input without `model`. (6) JetBrains: no IDE of JetBrains stands
  on this Mac, so there was none; jetbrains.md says the plugin runs
  `claude` in the IDE's terminal, the CLI. On every surface the version was
  read from the insert line and from `Bash`, through `CLAUDE_CODE_EXECPATH`;
  the hook does not carry that variable on any surface and read no version,
  carrying `CLAUDE_ENV_FILE` and `CLAUDE_PROJECT_DIR` instead. The hook's
  input carried `cwd`, `hook_event_name`, `scratchpad_dir`, `session_id`,
  `source` and `transcript_path` everywhere, and `model` in the three CLI
  sessions alone. In the panel the person read the list under `/`: all
  twelve skills of devloop stand in it — untangle-idea, cut-into-tasks,
  diagnose-bug, research, setup-checks, setup-project, build-work,
  build-prototype, review-changes, start-work, plan-work, record-lessons —,
  the list showing ten at a time, the last three on typing `/devloop:st`
  and `/devloop:pl`; none was called. That reads what the block at
  `docs/defects.md` line 739 asks, "whether the skills of devloop are in
  that subset": they are; whether the block closes on it the person
  decides, since its Fix is `none` and no closing form of the tool fits a
  reading.

  **The result.** The reading that separates the panel and the desktop app
  from the surfaces of the CLI is the value of `CLAUDE_CODE_ENTRYPOINT`:
  `claude-vscode` in the panel, `claude-desktop` in the desktop app, `cli`
  on each of the three surfaces of the CLI. It arrives on all three ways,
  the hook, the insert line and `Bash`, with the same value; no way carries
  it in part. Beside it, weaker: `CLAUDE_AGENT_SDK_VERSION` stands in the
  panel and in the desktop app alone; `CLAUDE_CODE_DESKTOP_APP_VERSION` in
  the desktop app alone; `TERM_PROGRAM` is missing in the desktop app and
  reads `vscode` in the panel as in the terminal of VS Code;
  `__CFBundleIdentifier` is macOS's and does not separate the panel from
  that terminal. The stop rule of `docs/plan.md`, "where no way is found,
  the question goes to the person before anything builds on it", does not
  fire. For the build: whatever chooses the form of a handover by the
  surface reads `CLAUDE_CODE_ENTRYPOINT`, in a hook, in an insert line or
  in a program the run calls with `Bash`, and holds `claude-vscode` for
  form B for every command and `claude-desktop` for the desktop app, where
  the entry of this day on the two entries held gives under macOS and Linux
  the forms of the terminal, form A where a command asks nothing and form B
  where it asks, and under Windows form B for every command, the system read
  beside it with `uname -s`; a value outside the three measured is not
  measured, and what holds there the person decides. Nothing is built on it
  in this entry. Recorded in `docs/plan.md` under milestone 12 as a dated
  measurement after the decision on the surfaces, and in the notes of the
  blocks of milestone 12 at `docs/defects.md` lines 739, 1228 and 1348,
  their titles, Should, Fix and Status unchanged.

  **The desktop app under Windows** this order did not measure. desktop.md
  says "For Windows ARM64, download the ARM64 installer" and, under "Claude
  Code settings that behave differently in the Code tab", that commands
  after `!` run in "their login shell on macOS and Linux, PowerShell on
  Windows"; of `/desktop`, moving a CLI session into the app, it says "This
  command is available on macOS and x64 Windows"; whether a local session
  of the Code tab runs on Windows ARM64 the page does not say. Open: the
  value of `CLAUDE_CODE_ENTRYPOINT` in a local session under Windows, the
  shell the hooks and the probe run in there, and whether the app on
  Windows 11 ARM runs local sessions at all, to be measured on the machine
  of the decision below.

  **Decided on 9 November 2026** by the person, on the machines for the
  closing runs of milestone 12, which `docs/plan.md` said "the person
  provides before the milestone ends": the runs under Linux, under Alpine
  and under Windows, with and without Git Bash, run in virtual machines on
  the person's Mac under Parallels Desktop, in the ARM versions of the
  systems, Windows as Windows 11 Pro. Reason: the hooks and the programs of
  devloop run on both processor architectures, since the job hooks on every
  system runs them on every pull request on `macos-latest`, arm64, and on
  `ubuntu-latest` and `windows-latest`, x64, so the x64 side of the hooks
  is covered; a snapshot gives every closing run the same clean start, the
  Windows before Git for Windows for the run without Git Bash and after it
  for the run with; nobody waits for machines until the milestone ends; and
  Parallels Desktop is the solution Microsoft authorizes for Windows 11 Pro
  on Apple silicon. Not chosen: machines of the person's own with an Intel
  or AMD processor, bought or rented: they would have the processor
  architecture most users have, but cost money and time to procure and have
  no snapshot. Read raw on 9 November 2026 before writing it, the deciding
  line of each output: (a) `npm view @anthropic-ai/claude-code
  optionalDependencies` lists `'@anthropic-ai/claude-code-linux-arm64':
  '2.1.319'`, `'@anthropic-ai/claude-code-win32-arm64': '2.1.319'` and
  `'@anthropic-ai/claude-code-linux-arm64-musl': '2.1.319'`, lines 5, 6 and
  9 of its output; (b) `gh release view --repo git-for-windows/git` lists
  `title: Git for Windows v2.56.0.windows.4` and the asset
  `Git-2.56.0.4-arm64.exe`, lines 1 and 12; (c) the page
  parallels.com/products/desktop/microsoft-authorized-solution-windows-11-arm/
  says "Parallels Desktop is a Microsoft-authorized solution for running Arm
  versions of Windows 11 Pro and Windows 11 Enterprise in a virtual
  environment on supported Apple silicon Macs", and beside it that
  Microsoft's "current published guidance" names "M1, M2 and M3 Macs"; (d)
  the page docs.github.com/en/actions/how-tos/write-workflows/choose-where-workflows-run/choose-the-runner-for-a-job
  gives in its table of standard runners for public repositories `x64` for
  `ubuntu-latest` and for `windows-latest` and `arm64` for `macos-latest`,
  the three systems the job names, `.github/workflows/stock-take.yml` lines
  377 to 392, and lists `ubuntu-24.04-arm` and `windows-11-arm` as arm64
  runners beside them; (e) this Mac: `uname -m` arm64, `sysctl -n
  hw.memsize` 17179869184, `df -g /` 228 blocks of 1 GB with 92 available;
  no Parallels Desktop is installed yet. Recorded in `docs/plan.md` under
  milestone 12 as a dated sentence after "The machines for the runs under
  Linux, under Windows and under Alpine the person provides before the
  milestone ends."

  **The closing runs of milestone 12**, `docs/plan.md`: the third of the
  five sentences, lines 90 to 91, "Every branch that can be produced on a
  bench is walked once on purpose, the unwanted side included", asks with
  the virtual machine under Windows for a run in a local session of the
  desktop app under Windows with Git Bash, the case of the block at
  `docs/defects.md` line 1348, form B for every command since `!` runs in
  PowerShell there: the bench can produce it since the decision above, the
  vendor ships the app for Windows ARM64. One right answer, built: the
  sentence on the closing runs, lines 987 to 1009, names that run after the
  run in the desktop app on the person's Mac, and where the app runs no
  local session on that machine, the roadmap says why, by the first of the
  five sentences; lines 998 to 999 became nine lines. The entry of this day
  on the two entries held said the block's case is "measured in milestone
  12 in a run in the desktop app on the person's Mac"; that run measures
  form A under macOS, and the Windows side of the block measures in the
  virtual machine.

  **The control documents, searched** with `grep -n -E` for 'machines
  for|virtual machine|provides before the milestone' and for 'which
  surface|surface it runs|surface the session' over `docs/plan.md`,
  `docs/roadmap.md`, `docs/defects.md`, `docs/skill-conventions.md` and
  `docs/rationale.md`: `docs/plan.md` lines 950 and 1008 to 1009, written
  to above; `docs/roadmap.md` lines 3038, 3429, 3445, 3476, 3570, 3777 and
  3870, all in dated entries that report sentences of the plan and the
  blocks as they stood, true as written; `docs/defects.md` lines 1230, 1234
  and 1350, the Should and notes of the two blocks, which ask for the
  reading first and stand, the measurement added to the notes;
  `docs/skill-conventions.md` line 148, the head of the rule on the two
  forms, which names the surface and holds; `docs/rationale.md` nothing.
  No sentence stopped holding.

  Two commits: the first with all of this; the second from the check at the
  code before the merge, which says right in the paragraph on the result
  what the entry of this day on the two entries held gives the desktop app
  under macOS and Linux: the forms of the terminal, where the first said
  form A.

- **The bound ends a process group, its self-tests run under Windows too**

  10 November 2026, version 0.182.0: `bin/devloop-bounded`,
  `bin/devloop-setup-state` and `.github/workflows/stock-take.yml` change;
  nothing under `skills/`, `shared/`, `hooks/`, `scripts/` or `output-styles/`
  changes, and `README.md` does not. On `task/bounded-every-system`, off
  `origin/main` at `b6970e1`, in fourteen commits: the code with the version;
  `docs/plan.md`, `docs/defects.md`, `docs/stock-take.tsv` and this entry;
  after the job hooks on every system (windows-latest) of pull request #239
  was stopped at fifteen minutes, the code again, the version not raised
  again; the documents again, this entry corrected in place; the heads and, in
  a commit of their own, the documents a third time, for two blocks and a
  sentence in each head; the documents a fourth time, for the should of the
  block at line 1052, changed by the second decision recorded below, these
  three before the second push; after the checks on the seventh commit were
  red on ubuntu-latest and windows-latest in the fetch case of both
  self-tests, the self-tests of the two programs with their heads, the version
  not raised, and the documents a fifth time; after the checks on the ninth
  commit were green on all five, the heads of the two programs and the line
  with which each self-test leaves a case out under Windows, the version not
  raised, and the documents a sixth time; after the decision on the limit
  under Git Bash recorded below, the heads and those two lines once more, the
  version not raised, and the documents a seventh time; and, after the five
  checks on GitHub were green on that state, the runs at the last commit. The
  order: the first of the seven orders of milestone 12 in the order the person
  decided on this day, recorded below and in `docs/plan.md` under milestone
  12; the four blocks of `docs/defects.md` on `bin/devloop-bounded` under "##
  Milestone 12", lines 1052, 1292, 1300 and 1324, built, and with them the
  block at line 2117 under "## Milestone 13", whose should the same change
  meets. Written by Claude Code from the person's orders of this day. Through
  the sixth commit no session log was read. The sitting of the seventh, begun
  after a restart with the order not before it, read in the log of this day's
  earlier sitting the opening of each message and the opening of the order,
  its first two sections and part of the third, and in its own log the heads
  of the records, until it met the order's sentence that the order reads no
  session log; it read no further and deleted its extract, and nothing read
  there stands in the repository. The sitting of the eighth and the ninth, a
  new one again with the order before it, read no session log, and neither did
  the sitting of the tenth and the eleventh, a new one again with the order
  before it, which went on with the twelfth and the thirteenth. Nothing was
  installed outside throwaway directories and throwaway containers; the
  identity under which git commits here was not set and was not read from
  git's configuration, one `git log` of that same sitting having printed the
  author's name on the six commits and no address; no subagent was used. The
  report stands on this machine as `~/devloop-bounded-every-system.md`, in
  German, and is not in the repository. Every line number of a file in this
  entry holds at `b6970e1` unless it says otherwise. From the fourth commit to
  the sixth this entry carried its last two paragraphs twice, one copy cut
  into the middle of the paragraph on the blocks and the table, a slip of the
  correction in place; it carries them once since. At the sixth commit the
  count of the commits above read "five", the count of the fourth left
  standing, where it was seven; it read eight with the seventh, ten with the
  ninth, which counted the eighth and itself, twelve with the eleventh, which
  counted the tenth and itself, and reads fourteen with the thirteenth, which
  counts the twelfth and itself.

  **The causes, measured where this machine can and read where it cannot.**
  Windows, the block at line 1052: the log of the job hooks on every system
  (windows-latest) of run 42775649860, pull request #238, read with `gh run
  view --log --job 129693425402`, prints in the step "what the checkout holds"
  `MINGW64_NT-10.0-26100 … 3.6.10-5a1665c8.x86_64`, `GNU bash, version
  5.3.15(2)-release (x86_64-pc-cygwin)`, `git version 2.56.0.windows.4` and
  `pgrep: not on PATH`, the deciding line. `bin/devloop-bounded` line 38 found
  the children of the command with `pgrep -P`; without pgrep the loop was
  empty and `kill "$1"` ended the command alone, so that in the case "does not
  end", line 81, the two sleeps of the sh lived on, holding the pipe of
  `out=$(…)` at line 45 for 7333 seconds, which is the hang of pull request
  #200. `bin/devloop-setup-state` line 73 the same. How Git Bash ends a native
  Windows program, read raw in git-for-windows/msys2-runtime at `5a1665c8`,
  the commit the runner's `uname -a` names, resolved with `gh api` to
  `5a1665c8a0fb24930e55f1621441dfd98a798c15` of 2026-09-28, `git ls-remote` of
  this day giving `81d9bd3d1c3680aa611ff2e5d1950787ffc95c6a` as `main`: a
  Cygwin process that executes a native program stays as the process for it
  with the flag `PID_NOTCYGWIN`, keeping its pid and pgid,
  `winsup/cygwin/spawn.cc` lines 610 to 616 and 818 to 823; a signal to it
  reaches its signal thread through `exec_sendsig`, `winsup/cygwin/sigproc.cc`
  lines 649 to 664; there every signal but USR1, USR2, CONT, STOP, TSTP, TTIN
  and TTOU runs `exit_process_tree (ch_spawn, 128 + signo)`, "terminating
  captive process", `winsup/cygwin/exceptions.cc` lines 1673 to 1692;
  `exit_process_tree` collects the descendants of the native process from a
  snapshot of the Windows process table by `th32ParentProcessID`, sends an
  MSYS2 descendant that leads a process group `kill (cyg_pid, signo)` and ends
  the native ones deepest first by `ExitProcess` injected for SIGTERM or
  `TerminateProcess`, `winsup/cygwin/include/cygwin/exit_process.h` lines 231
  to 258 and 268 to 362; a kill of a negative number runs over every Cygwin
  process with that pgid, the process for a native program included,
  `winsup/cygwin/signal.cc` lines 350 to 390; and a signal to a stopped
  process is dropped, "Don't send signals when stopped",
  `winsup/cygwin/exceptions.cc` lines 1562 to 1568, which is why the build
  sends no SIGSTOP. macOS, the blocks at lines 1292 and 1324: 120 runs of the
  self-test in a row on the person's Mac, each under an outer limit of 60
  seconds, all green in 2 to 3 seconds each, so that a fault of one in 25
  would have shown with 99.2 per cent; then three probes under CPU load,
  twenty busy loops on ten cores, one per race: 2000 runs of `devloop-bounded
  7339 sh -c 'exit 3'` left nine `sleep 7339` with parent 1, the watchdog's
  sleep orphaned, the mechanism of the block at line 1300 measured on macOS;
  200 runs of the case "does not end", the output of each read, printed no
  "Terminated"; 200 fetches over `sh -c "sleep 7337" --` under a bound of one
  second left twice a `sleep 7337` with parent 1 after the program had
  returned with 124, git printing `sh -c "sleep 7337" -- died of signal 15`,
  the mechanism of the hang of the block at line 1292 measured, which in the
  self-test holds the pipe of `out=$(…)` until the job is stopped. Alpine, the
  block at line 1300: a container runtime stands on this Mac, `docker` 29.9.3
  answering, the image `alpine:3.22` already local, nothing installed on the
  Mac; 120 runs of the self-test in `alpine:3.22` on this Mac, arm64, bash
  5.2.37 and git 2.49.1 after `apk add --no-cache bash git` as the job
  installs them, all green; the three probes under the same load there: 500
  commands that end at once left sixteen `sleep 7339` with parent 1, the
  mechanism of the block at line 1300 measured on Alpine too; 50 runs of "does
  not end" printed no "Terminated"; 50 fetches left nothing. The causes of the
  three, read off the code as the notes of the blocks read them and not
  reproduced here: a child born between the listing with pgrep and the kill
  ran on, holding the output open, line 38, the hang of 1 November 2026; a
  shell whose child was ended before itself printed "Terminated" for it, lines
  38 and 111, the red run of 5 November 2026; and a SIGTERM between `sleep
  "$secs" &` and `s=$!` on line 111 ran the watchdog's trap before the number
  was noted, bash running a trap between two commands, so that `kill ""`
  failed and the sleep ran on, the red run on alpine of 1 November 2026, the
  same line's trap ending its sleep without waiting for it beside it.

  **The counter-check before the build**, what the heads and the shoulds ask
  of the two programs in each situation and whether the design holds it. (1)
  The four cases of the self-test the blocks name: "does not end" must end the
  sh and its two sleeps and print no "Terminated"; the fetch must end git and
  its transport within the bound and release the pipe; "ends in time with 3"
  must leave no sleep of the watchdog; all four at every run on every system.
  The group kill holds the first two, the watchdog's trap over its job table
  the third. (2) A signal to the program between the start of the watchdog's
  sleep and the noting of its number: the head said nothing of it; the design
  has no noted number, the trap reads the job table, which bash fills as the
  sleep starts, and either runs before the start, with nothing to end, or
  after it, with the sleep listed. (3) A fetch whose transport is a native
  Windows program: the head of neither program said anything of Windows;
  `docs/plan.md` under milestone 12 names Windows with Git Bash as a system
  that counts; the design relies on the runtime's process for the native
  program standing in the group and ending its tree, read above and measured
  first by the job. (4) A command that ends in time and lets a child run on:
  the head says the program ends with the command at once and that the
  watchdog and its sleep are ended; of a child of the command it said nothing,
  and the design changes nothing there: the child runs on, as under GNU
  timeout, and holds the output open where it inherited it, as before; the
  head says so now. (5) A command that does not end and has grandchildren: the
  head says "ended with everything it started"; the group kill reaches every
  process that stayed in the group, grandchildren included, and the head says
  now that a process which leaves the group on purpose is beyond the bound, as
  under GNU timeout. (6) A hook that runs past its limit: Claude Code ends it
  with SIGTERM to the hook's process group and SIGKILL to that group five
  seconds later, read in its program at 2.1.321 on this machine with `grep -a
  -c`, which finds the message "hook process did not exit after SIGTERM and
  then SIGKILL" and the kill of a negative number followed by SIGKILL after
  5000 ms; the heads said nothing of it. Measured on this Mac with the code of
  the second commit, a hook stood in for by a script started in a group of its
  own with `perl -e 'setpgrp(0,0); exec'`, SIGTERM to the group after one
  second and SIGKILL five seconds later: with a command that takes SIGTERM,
  `sleep 7349`, nothing stood half a second after the SIGTERM, the program's
  trap having ended the command's group and the watchdog; with a command that
  ignores it, `bash -c 'trap "" TERM; sleep 7351'`, the program and the
  watchdog were gone and the command and its sleep stood, with parent 1 in a
  group of their own, and stood on after the SIGKILL, which reaches the hook's
  group alone, where the program of the first commit, one group, would have
  lost them to it. So the design did not hold it, and the build of the third
  commit does: ended itself, the program ends the command's group by SIGTERM,
  starts a helper that ends what of the group stands two seconds later by
  SIGKILL, ends the watchdog and exits once the command is reaped; measured
  the same way, the command that ignores SIGTERM was gone with its sleep
  before the fifth second. The race stands as a block of its own under
  milestone 12 since the order of this day, by the rule that a finding in the
  code gets a block in every case, found by the code of the second commit and
  built in the third, its Fix on the helper of `ended`.

  **The build.** `bin/devloop-bounded`: the command starts under job control,
  `set -m` for that one start and the watchdog's, so that bash puts each into
  a process group of its own named by its number; the bound, `end_group`,
  sends SIGTERM to the command and then to its whole group, the command first
  so that a shell among them has the signal before any of its children ends;
  the watchdog's trap on TERM ends its sleep by `jobs -p` and waits for it
  before exiting 143; the traps on TERM, INT and HUP end the group, the
  watchdog, and wait for the watchdog; `kill_tree` and pgrep went. The
  self-test reads that nothing of the bound runs on off a pipe: every run gets
  the write end of one on file descriptor 3, which everything the bound starts
  inherits, a reader `cat` in a process substitution ends when the last holder
  is gone and leaves a mark, and `released` is red where the mark is not there
  two seconds after the program returned; `gone` and its `pgrep -f` went, so
  that the self-test needs bash, sh, sleep, cat and git and no pgrep; the
  twelve cases stood as they stood, thirteen on three of the four systems
  since the eighth commit. The head says all of it, with the reading of the
  runtime of Git Bash. `bin/devloop-setup-state`: `bounded` and `kill_tree`
  went, the fetch runs under `"$HERE/devloop-bounded"`, the program beside it,
  and the no-answer line reads its exit 124 where it read 143; its head says
  so; its eighteen cases stood, nineteen on three of the four systems since
  the eighth commit. From the third commit to the seventh the transport that
  never answers was `tail -f /dev/null` in both self-tests, where it had been
  `sh -c "sleep 7337" --` and `sh -c "sleep 60" --`: git runs a command with a
  space through one shell, which execs into tail, one process under git as ssh
  is; tail reads /dev/null to its end and follows it, naming the two arguments
  git appends as files it cannot open, measured on macOS and in alpine:3.22 to
  stand past three seconds under an outer limit, its exit read there and not
  what it printed, and the eighth commit replaces it, the paragraphs on the
  checks of the seventh commit below; and since the third commit the traps on
  TERM, INT and HUP call `ended`, which ends the command's group by SIGTERM,
  starts the helper of SIGKILL after two seconds, ends the watchdog and exits
  once the command is reaped. Both heads say so.
  `.github/workflows/stock-take.yml`: the two exceptions under Windows at
  lines 430 to 433 went with the comment at line 427 and the words "two of
  them left out under Windows" in the step's name at line 419; the comments at
  lines 319 to 333 and 350 to 355 say what stood until this day and what
  stands since. `scripts/devloop-run-workflow --self-test` is green on the
  changed file, 34 cases. The build, measured the same way: on the person's
  Mac the self-test three times, 12 cases, green; the three probes under the
  same load, 2000, 200 and 200 runs, left nothing and printed no "Terminated",
  every exit as the head says; in alpine:3.22 the self-test three times green,
  2000 commands that end at once left no sleep, 200 runs of "does not end"
  printed no "Terminated" with every exit 124, and of 200 fetches none left a
  transport, a probe that looks a second time one second after a leftover; an
  earlier run of the probe without the second look had counted three of 200 in
  which `pgrep` saw a `sleep 7337` at the instant after the return and `ps` a
  moment later none, a sleep with the signal not yet gone under twofold
  oversubscription, which the self-test reads off the pipe and does not count.
  A first draft of the watchdog without `trap '' TERM` before the group kill
  was red in alpine under load, 16 of 200 fetches and 7 of 200 runs of "does
  not end" ending with 143 and a transport left: the command's end woke this
  program, which ended the watchdog before it had ended the rest of the group;
  the old program carried that `trap '' TERM` at line 111, and the build
  carries it again.

  **Decided on 10 November 2026** by the person, on the order in which the
  orders of milestone 12 build, recorded in `docs/plan.md` under milestone 12
  as a dated paragraph after the decision on the machines: (1)
  `bin/devloop-bounded` and its self-test, the blocks at lines 1052, 1292,
  1300 and 1324; (2) the programs that read files under Windows and Alpine,
  the blocks at lines 844 to 948 on the line endings under Windows and at 956
  to 972 on awk under Alpine; (3) the guard for the PowerShell tool and
  `shell: bash` in every skill, the blocks at lines 1332 and 1340; (4) the
  handover by surface, the blocks at lines 1228, 1348, 1220, 1236 and 1284;
  (5) the remaining questions of the installation, the blocks at lines 731,
  755, 836, 988, 1084, 1124, 1156, 1164 and 1276, before them the question to
  the person whether a text that says what the should asks counts as a repair;
  (6) the texts users read: the README on Windows, on the places devloop runs
  and on the version of Claude Code it needs, the blocks at lines 1356, 1364
  and 780, and the commands that keep a machine awake under Linux and Windows
  that `docs/plan.md` names under milestone 12, after the person has approved
  the wordings; (7) the virtual machines and the closing runs, the list in the
  panel under Linux and Windows for the block at line 739 among them. Reason:
  the self-test of `bin/devloop-bounded` hung on macos-latest until the job's
  limit and was red on alpine and macos-latest, so that every later pull
  request runs through reliably only after (1); (2) GitHub measures, and it
  needs no decision; the reading of the surface does not go stale while Claude
  Code sets the variable the same way, measured at 2.1.317, 2.1.319 and
  2.1.321. Not chosen: the handover by surface first, while the measurement is
  fresh; it would have brought the first change visible to users earlier, but
  exposed every pull request until then to the hang of the self-test.

  **The blocks and the table.** The four blocks of milestone 12 and the block
  at line 2117 carry their Fix on the line of the repair and the state the
  tool computes, their Should unchanged but for the block at line 1052, whose
  Should the decision on it below narrows, the block at line 2117 kept filled
  by the person's word of this day, since its should asks for the call of
  `bin/devloop-bounded` and the call stands; two blocks come under milestone
  12 with the order of this day, the limit under Git Bash and the race of the
  sixth situation, as said above; their notes saying what was measured and
  what was read. `docs/stock-take.tsv`: the rows anchored on lines that
  changed were re-anchored on the lines of the build, their names and notes
  kept: the thing at line 2574, ended itself by a signal, on the TERM trap,
  site and evidence; the part-of records at lines 2578, 2579, 2580, 3357,
  3359, 3361, 3365 and 3367 on the watchdog, the INT and HUP traps, `released`
  and four of its calls; the record at line 3368, on the second `gone` of the
  fetch case until now, on the `released` of the case "input through"; the
  thing at line 1982 of `bin/devloop-setup-state`, the fetch not answering, on
  `elif [ "$RC" -eq 124 ]`, its note saying so. Three rows went with their
  lines, each a thing or record of the Windows exceptions: the thing at line
  6601, "`.github/workflows/stock-take.yml` / whole file / the hooks step
  under Windows: the self-test of bin/devloop-bounded left out, a line printed
  that says so and why, the step going on", the part-of record at line 6602 on
  the `case` line, and the thing at line 6603, the same for
  `bin/devloop-setup-state`; none carried a run. The runs of three things stop
  counting under 0.182.0, since that version contains the last change to a
  line of theirs: the bound firing, with runs of 7 and 11 October and 25
  October 2026; the self-test passing, with runs of 7 October 2026; and the
  fetch not answering in `bin/devloop-setup-state`, with the run of 3 October
  2026; the last commit records a run of each at the final state, in a
  paragraph added with it, and sets the Status of the five blocks to the state
  the tool computes then. With the ninth commit the table gains eight rows for
  the lines of the eighth: in each program a thing for the line its self-test
  prints under Windows with Git Bash where it leaves the fetch over a
  transport of several processes out, sited on the `echo`, the `case` on
  `uname -s` a part of it, and part-of records for the calls of the new case,
  `expect`, `within` and `released` in `bin/devloop-bounded` and `expect` in
  `bin/devloop-setup-state`; the notes of the two things on the self-tests
  passing say the counts that hold now; no row was re-anchored and none went.
  The notes of the blocks at lines 1052 and 1292 and of the block on the limit
  under Git Bash say what the eighth commit changed, and the Wrong of the last
  lost its closing words, as the paragraphs on the checks of the seventh
  commit say. With the eleventh commit the Wrong of the block on the limit
  under Git Bash says both cases behind a second shell where it named one, its
  note and the note of the block at line 1052 say what the run on the ninth
  commit measured and what was read after it, and the notes of the two things
  on the line each self-test prints under Windows say that the line names the
  place in the runtime's source; no row was added, re-anchored or removed, the
  anchors of those two standing on the opening of the line, which did not
  change. With the thirteenth commit the block on the limit carries the title
  and the Wrong of the decision on the limit below, the should of the block at
  line 1052 its last clause in the words of that decision, the notes of both
  say so, and the notes of the same two things say the limit as the block says
  it; again no row was added, re-anchored or removed.

  **What GitHub measured, and measures next.** The checks of pull request
  #239, run 42786895842, on the second commit: stock-take, ubuntu-latest,
  macos-latest and alpine green; windows-latest stopped at fifteen minutes,
  its log, read with `gh run view --log --job 129730286339`, printing the
  eleven `ok` lines of the self-test of `bin/devloop-bounded` up to "does not
  end: ended with what it started, the line, exit 124" at 09:01:09 UTC, 1.15
  seconds after the case before it, and then nothing until "The operation was
  canceled" at 09:14:15: the case of a fetch over a transport that never
  answers did not come back. The cause, read in the runtime at `5a1665c8` and
  not measured here: git ran the transport `sh -c "sleep 7337" --` as `sh -c
  'sh -c "sleep 7337" -- "$@"'`, two shells under the native git; a Cygwin
  process started by a native program has no Cygwin parent and waits on its
  exec for the program it exec'd, `winsup/cygwin/spawn.cc` lines 906 to 908,
  while a process with a Cygwin parent exits at its exec, line 929, handing
  its Cygwin pid on; so the second shell was gone when the bound fired, the
  walk of `exit_process_tree` over the Windows parent numbers found the first
  shell as a child of git, took it for a native process since its Windows pid
  belongs to no Cygwin pid any more, and never reached the sleep, whose
  Windows parent had exited, `exit_process.h` lines 305 to 322. Until the
  ninth commit this paragraph said here "the sleep held the pipe"; what held
  it is not read, the paragraphs on the checks of the seventh commit below.
  The case "does not end", sh and two sleeps all Cygwin processes in the
  command's group, passed there in 1.15 seconds, the group kill reaching each
  directly. What the third commit changes for it stands under the build; the
  limit itself, read then as a process behind a chain of two shells under a
  native program and widened by the decision on the limit below to every
  process that a process of Git Bash under a native program started and that
  the runtime's walk does not look for, stands as a block of its own under
  milestone 12 since the order of this day, Fix none, with nothing built for
  it, the person deciding later whether a repair is built or the case is left
  on purpose, and the heads of both programs state it in one sentence. The
  should of the block at line 1052, "everything it started", covered that case
  too as it was written; the decision in the next paragraph narrows it to what
  the group kill and the runtime's walk reach, the block at line 1052 being
  built for that, and the new block alone asks for what they do not reach. To
  be measured next as the seventh commit stood, since this machine runs macOS
  and no Windows stands here: that under Git Bash the fetch over `tail -f
  /dev/null`, one shell exec'd into tail under git, ends and releases the
  pipe, and that both self-tests are green on windows-latest; and on alpine
  and macos-latest that the races stay closed under the runners' load. The run
  on the seventh commit measured the first of these not at all, red before the
  bound, the paragraphs on it below. No run under Windows on the platform
  counts here as passed until the person reports the checks green.

  **Decided on 10 November 2026**, after the sixth commit, on the should of
  the block at line 1052, "under Windows with Git Bash bin/devloop-bounded
  does not end a command that does not end together with what it started, and
  bin/devloop-setup-state ends the same way, untested there": the should is
  narrowed to what the ending of the process group and of the process tree
  reaches under Windows with Git Bash, and the case beyond it stays with the
  block this branch adds on it. The old should read "in milestone 12 both end
  a command and everything it started at the bound under Windows with Git Bash
  as well, and their self-tests run in the job hooks on every system on
  windows-latest."; the new one, in the field Should of the block from the
  seventh commit to the twelfth, reads "in milestone 12 both end a command at
  the bound under Windows with Git Bash as well, with everything it started
  that the ending of its process group reaches or that the runtime of Git Bash
  reaches when it ends the process tree of a native Windows program standing
  in that group, and their self-tests run in the job hooks on every system on
  windows-latest; a process that runs on after the exec of a second shell
  under a native Windows program is no part of this should, the block of this
  milestone on it asks for it." That process, which a native program started
  through a shell exec'd into a second shell, is held by the block on the
  limit under Git Bash, whose should asks for it unchanged, "in milestone 12
  such a process ends at the bound under Windows with Git Bash as well, as
  everything else the command started does.", its Fix none and nothing built
  for it; the decision on the limit below widens that block and changes this
  last clause once more. Reason, the person's: a block the tool lists as
  Walked is to meet its should without the entry being read for it. Not
  chosen: leaving the should as it stood and explaining in this entry how the
  two blocks divide it, which the sixth commit had built and this entry said
  until the seventh. No code changes with the decision and the version stays
  0.182.0; no run is touched, a run on a defect counting by the last change to
  its `Fix` line alone; the note of the block at line 1052 names the change,
  and the note of the new block, which said that the block of 23 October 2026
  "keeps its should, which as written covers this case too, the entry saying
  how the two share it", says the narrowing in its place. The line of the
  fixed form, the title as the tool reads it:

  Should changed: under Windows with Git Bash bin/devloop-bounded does not end a command that does not end together with what it started, and bin/devloop-setup-state ends the same way, untested there

  **The checks on the seventh commit, red on two systems.** Run 42805995483 of
  pull request #239, at `c6c7ab8`: stock-take, alpine and macos-latest green;
  ubuntu-latest and windows-latest red, no job stopped, both in the step of
  the self-tests, their logs read with `gh run view --log --job 129795129874`
  and `129795129841`. On ubuntu-latest the self-test of `bin/devloop-bounded`
  prints at 11:15:52 UTC "FAIL a fetch over a transport that never answers:
  the line, exit 124: exit 128, expected 124" and under it "fatal: protocol
  error: bad line length character: ==> " between two lines of tail, "cannot
  open 'git@localhost' for reading" and the same for the command; that of
  `bin/devloop-setup-state` prints at 11:16:09 "FAIL the fetch not answering
  within the bound, said, the last fetched state read: nothing holds 'fetch:
  no answer within 1 seconds, reading origin/main as last fetched'" over
  "fetch: failed (tail: cannot open 'git@localhost' for reading: No such file
  or directory)". On windows-latest the same two stand at 11:17:26 and
  11:20:24, the first 1.3 seconds after the case before it and nothing
  hanging, the job seven minutes long because every self-test runs slower
  there. So that run measured nothing of the bound under Git Bash: git ended
  by itself before the bound of one second.

  The cause, measured on this Mac with git 2.50.1 and in `alpine:3.22` there
  with git 2.49.1, once with busybox 1.37.0 and once with GNU coreutils 9.7
  added in the container by `apk add coreutils`, each fetch run with
  `GIT_TRACE=1` under an outer limit of three seconds and the processes under
  git listed one second in, and read in git-for-windows/git at
  `v2.56.0.windows.4`, the git of the Windows runner: git asks a transport it
  does not know by name with `-G` first, input and output on /dev/null, and
  waits for it, `connect.c` lines 1412 to 1425, and only then starts it for
  the fetch, the host and the command appended. GNU tail and the tail of
  busybox refuse `-G` and end, so that the second call comes; there GNU tail,
  given three files, prints the header "==> /dev/null <==", 18 bytes on its
  output, which git reads as the answer and ends on with 128, and the tail of
  busybox prints no header beside a file it cannot open and stands. The tail
  of macOS takes `-G` for a file and stands in the first call already; with
  `GIT_SSH_VARIANT=simple`, which leaves that call out, it prints a header too
  and git ends with 128 on the Mac as well. So the transport of the third
  commit was green on macos-latest and on alpine for two different reasons and
  red wherever GNU coreutils stand, Git Bash among them, and the measurement
  of the third commit had read tail's exit under an outer limit and not what
  it printed. The self-tests of `c6c7ab8`, run in the container with GNU
  coreutils, are red with the lines of the log.

  Three more things the measurement and the reading showed. (1) The transport
  before tail, `sh -c "sleep 7337" --`, which the order behind the eighth
  commit named as a transport of several processes, ran as one `sleep 7337`
  with git as its parent on the Mac and in alpine:3.22, bash 3.2 and the ash
  of busybox each exec'ing into the one command of `-c`, so that until the
  eighth commit the self-test tested no transport of several processes on
  those two systems; ubuntu-latest, whose sh is dash, is not measured here.
  (2) Under Windows git hands a child its three standard handles and no other,
  `compat/mingw.c` lines 2234 to 2292 and 2355 to 2373, and in the call with
  `-G` these are three handles of NUL, `run-command.c` lines 917 to 932: a
  transport standing in that call holds neither the pipe of the self-test's
  `out=$(…)` nor the one on file descriptor 3, so that the self-test could not
  see there whether it was ended. (3) So the sleep of run 42786895842, which
  took no argument and stood in the call with `-G`, held no pipe of the
  self-test, where the paragraph above said "the sleep held the pipe" and the
  Wrong of the block on the limit under Git Bash "the sleep holding the pipe":
  the run measured that the case did not come back, and what held the pipe is
  not read. Both places say so since the ninth commit, the Wrong ending on
  "never coming back", and the head of `bin/devloop-bounded`, which said of
  the limit "which is how the self-test hung", says since the eighth that what
  held the pipe is not read. One reading, not measured: the walk ends the
  descendants before git itself, `exit_process.h` lines 332 to 360, and git,
  its first call ended, starts the transport again for the fetch, with its
  stderr, the self-test's pipe, after the walk has listed the processes.
  Whether the block on the limit describes its case rightly a measurement
  under Windows decides; its Should, its Fix none and its Status stand.

  The build of the eighth commit, in the self-tests alone, the bound itself
  unchanged and the version 0.182.0: the fetch runs over two transports that
  take no argument and print nothing. On every system, one process under git:
  `exec sleep 7341 #` in `bin/devloop-bounded` and `exec sleep 7343 #` in
  `bin/devloop-setup-state`, the `#` keeping the host and the command git
  appends out of the command and the shell exec'ing into the sleep, under
  `GIT_SSH_VARIANT=simple`, so that git starts it once, for the fetch itself,
  on its pipes and with its stderr, as it starts an ssh that does not answer,
  and so that under Windows it holds the self-test's pipe. On macOS, Linux and
  Alpine a second case over a transport of several processes, `sh -c "sleep
  7337 & wait" --` and `sh -c "sleep 7347 & wait" --`, a shell that waits for
  its sleep and that no shell can exec away, without the variable, so that git
  asks it with `-G` first, as it asked the transport of `b6970e1`: measured as
  a shell and its sleep under git on the Mac and in alpine:3.22. Under Windows
  with Git Bash, read off `uname -s` as `bin/devloop-tool-state` reads it,
  that case is left out with a line that says why and names the block on the
  limit by its title, since git would start that transport there through a
  shell exec'd into a second shell. The self-test of `bin/devloop-bounded`
  passes with 13 cases on three systems and with 12 under Windows, that of
  `bin/devloop-setup-state` with 19 and with 18; the first needs uname and no
  tail. Both heads say so. Not chosen: the transport of `b6970e1` word for
  word, which would have named a case for several processes that runs one
  process on two systems of three; and the first case without the variable,
  under which a green run under Windows would not show that the transport was
  ended.

  The counter-check before the eighth commit, measured here: both self-tests
  on the Mac three times, once more with `GIT_SSH_VARIANT=simple` in the
  environment and once with a `uname` first on PATH that answers
  MINGW64_NT-10.0-26100, which prints the line and passes with 12 and 18
  cases; in alpine:3.22 with busybox and with GNU coreutils three times each
  and once more with the variable; every run exit 0 and nothing left that
  `pgrep -f '^sleep 73[0-9][0-9]'` finds. Under CPU load, twenty busy loops
  and every run under an outer limit of 60 seconds so that a hang would count,
  40 runs of each self-test on the Mac, in alpine:3.22 with GNU coreutils and
  in alpine:3.22 with busybox: none red and nothing left. Measured first by
  the platform: ubuntu-latest, and everything under Windows, that the one
  process under git ends at the bound there and releases the pipe, that the
  line is printed and that both self-tests are green; a transport that
  outlived the bound there would hold the pipe and stop the job at fifteen
  minutes. The run on the ninth commit measured it, the paragraphs on it
  below. No run under Windows on the platform counts here as passed until the
  person reports the checks green.

  **The checks on the ninth commit, green on all five.** Run 42876247351 of
  pull request #239, on the ninth commit: stock-take, alpine, ubuntu-latest,
  macos-latest and windows-latest green, the last after 7 minutes 34 seconds,
  the logs read with `gh run view --log --job`, `130040203690` for
  windows-latest and `130040203521` for ubuntu-latest. On windows-latest the
  self-test of `bin/devloop-bounded` prints its ok for the case "a fetch over
  a transport that never answers: the line, exit 124" at 18:34:32 UTC, line
  439 of the log and 1.29 seconds after the case before it, then the line that
  leaves the case over several processes out, line 440, and "SELF-TEST PASSED:
  12 cases", line 441; that of `bin/devloop-setup-state` prints its ok for
  "the fetch not answering within the bound, said, the last fetched state
  read" at 18:37:38, line 746, the line that leaves its other case out, line
  747, and "SELF-TEST PASSED: 18 cases", line 757. On ubuntu-latest both cases
  of each self-test print their ok, lines 453 and 454 at 18:32:54 and 18:32:55
  and lines 750 and 751 at 18:33:11 and 18:33:12, with 13 and 19 cases, lines
  455 and 757, and no case is left out; alpine and macos-latest pass with 13
  and 19 as well. So that run measured under Git Bash what the paragraphs
  above left to the platform: the fetch over the one process under git comes
  back at the bound with exit 124, and the pipe of its output, which the
  transport holds there through git's stderr, is released. It did not measure
  the case over several processes there, which was left out, nor whether a
  process that holds no pipe was left, pgrep not standing on PATH there; and
  the probe's pipe on file descriptor 3 does not reach a transport under
  Windows, git handing a child its three standard handles alone.

  The limit under Git Bash was said twice and differently, and the sources
  were read for which holds. The head of `bin/devloop-bounded` said, since the
  third commit, "a transport that is a shell exec'd into a shell exec'd into a
  program is beyond it" and, since the fifth, as the one sentence, "under
  Windows with Git Bash a process that a native program started through a
  shell exec'd into a second shell is not ended at the bound"; the Wrong of
  the block on the limit said the first, and its title, its note, the line of
  each self-test and the two things of the table the second. The transport the
  self-tests leave out under Windows, `sh -c "sleep 7337 & wait" --`, is a
  second shell that starts its sleep as a child and waits for it, which the
  first sentence does not name. Read for it on this day in
  git-for-windows/msys2-runtime at `5a1665c8`, fetched with `gh api`, and not
  measured: the loop of `exit_process_tree`,
  `winsup/cygwin/include/cygwin/exit_process.h` lines 305 to 322, lists a
  process under a listed one only where it has no Cygwin pid; one that has a
  Cygwin pid it sends the signal where it leads its process group, `kill
  (cyg_pid, signo)` at line 317, and leaves the loop at line 318, before the
  listing at line 320; `kill` of a positive number reaches that process alone,
  `winsup/cygwin/signal.cc` lines 327 to 337. The first shell, started by the
  native git, leads a group of its own, `winsup/cygwin/pinfo.cc` line 99,
  moves its Cygwin pid to the second shell at its exec and closes its own link
  from the Windows pid, `winsup/cygwin/spawn.cc` lines 798 to 812, so that
  `cygwin_winpid_to_pid`, `pinfo.cc` lines 1426 to 1435, answers -1 for it and
  the walk lists it, and it waits, lines 906 to 908; the second shell, found
  under it with a Cygwin pid, is sent SIGTERM alone and is not listed, and its
  sleep is looked for under no process. So the sources hold the second
  sentence for that transport: the case stays left out under Windows, and its
  line names lines 313 to 319 since the tenth commit. The first sentence names
  the other case behind a second shell, one that exec's into the program and
  exits at that exec, `spawn.cc` line 929, the transport of the hang; since
  the tenth commit the head says the limit once, with both cases, and since
  the eleventh the Wrong of the block says both. Had the sources held the
  first sentence alone for that transport, or left it open, the case would
  have run under Windows as well and the job would have measured it. Two more
  things the reading showed. git puts one shell before a command with a quote
  or a space in it, `run-command.c` lines 293 to 304 of git-for-windows/git at
  `v2.56.0.windows.4`, so that the words "a GIT_SSH_COMMAND with quotes in
  it", with which the head of `bin/devloop-setup-state` named such a transport
  since the fifth commit, were wrong: a second shell comes of a command that
  is itself a call of a shell, as that head says since the tenth. And by the
  same lines 313 to 319 the walk goes below no process with a Cygwin pid, so
  that what one shell under a native program starts as a child of its own,
  without an exec, is not looked for either: read and not measured, named
  until the thirteenth commit by neither the title nor the should of the block
  on the limit, said until then in the head of `bin/devloop-bounded` and in
  the note of that block alone, and whether that block takes it in or a block
  of its own does was the person's to decide; the decision stands in the next
  paragraph but one.

  The counter-check before the tenth commit, measured here, the bound itself
  unchanged and the version 0.182.0: both self-tests on the Mac three times,
  once more with `GIT_SSH_VARIANT=simple` in the environment and once with a
  `uname` first on PATH that answers MINGW64_NT-10.0-26100, which prints the
  line with the place in the source and passes with 12 and 18 cases; in
  alpine:3.22 with busybox and with GNU coreutils 9.7 three times each and
  once more with the variable; every run exit 0, each of the others with 13
  and 19 cases, and nothing left that `pgrep -f '^sleep 73[0-9][0-9]'` finds.
  Measured first by the platform: that the two lines are printed under Windows
  as they stand now and that both self-tests pass there with 12 and 18 cases.
  No run under Windows on the platform at that state counts here as passed
  until the person reports the checks green.

  **Decided on 10 November 2026**, after the eleventh commit, on the limit
  under Git Bash, two things, on the reading of the paragraphs above. First,
  the block on the limit is widened to the whole limit that lines 313 to 319
  of `exit_process.h` hold: the runtime's walk looks under no process that
  holds a Cygwin pid, so that a process which a process of Git Bash under a
  native Windows program started, and which the walk does not look for, is not
  ended at the bound. The block is renamed with it. Its title read "under
  Windows with Git Bash the bound does not end a process that a native program
  started through a shell exec'd into a second shell, the self-test's fetch
  case hung so on windows-latest" and reads "under Windows with Git Bash the
  bound does not end a process that a process of Git Bash under a native
  Windows program started and that the runtime's walk does not look for, the
  self-test's fetch case hung so on windows-latest". It is a block this branch
  adds, so that no line of the fixed form stands for the renaming:
  `scripts/devloop-stock-take` is red on such a line where the old title stood
  in no block at the branch point, its head at lines 796 to 800. The title
  carries the words "and that the runtime's walk does not look for" since one
  thing a process of Git Bash started is ended at the bound, the program that
  a shell started by the native program exec'd into, the shell listed by the
  walk and the program sent the signal, which run 42876247351 measured on
  windows-latest, lines 439 and 746 of its log; without those words the title
  would say of that program what the run refutes. The Wrong of the block says
  the one limit and its cases, the shell that starts its program as a child
  and the shell exec'd into a second shell, and parts what is read from what
  is measured: measured under Git Bash are that program of a first exec,
  ended, and the fetch of run 42786895842 that never came back; measured
  outside Git Bash, under Linux with bash 5.2.21 and dash 0.5.12, outside this
  machine, is that a shell which waits for its sleep with `-c 'sleep 7399 &
  wait'` and alone is sent SIGTERM ends while its sleep runs on, and the same
  was measured on this Mac with bash 3.2.57 and dash and in alpine:3.22 with
  bash 5.2.37 and the ash of busybox 1.37.0, the shell ended with 143 and the
  sleep left with parent 1; not measured is that such a sleep runs on under
  Git Bash. The Should of the block stands word for word, "in milestone 12
  such a process ends at the bound under Windows with Git Bash as well, as
  everything else the command started does.", such a process being the one of
  the new title; its Fix none and its Status stand, and nothing is built for
  it. Not chosen, of the ways laid before the person: leaving the block as it
  stood, with the wider reading in its note and in the head of
  `bin/devloop-bounded` alone, a limit read in the program then standing in no
  should; a block of its own beside it, two blocks on the same lines of the
  source; and measuring under Windows first. Second, the last clause of the
  should of the block at line 1052, "under Windows with Git Bash
  bin/devloop-bounded does not end a command that does not end together with
  what it started, and bin/devloop-setup-state ends the same way, untested
  there", is changed once more, to name that limit. The should read, from the
  seventh commit to the twelfth, "in milestone 12 both end a command at the
  bound under Windows with Git Bash as well, with everything it started that
  the ending of its process group reaches or that the runtime of Git Bash
  reaches when it ends the process tree of a native Windows program standing
  in that group, and their self-tests run in the job hooks on every system on
  windows-latest; a process that runs on after the exec of a second shell
  under a native Windows program is no part of this should, the block of this
  milestone on it asks for it."; it reads, in the field Should of the block
  since the thirteenth commit, "in milestone 12 both end a command at the
  bound under Windows with Git Bash as well, with everything it started that
  the ending of its process group reaches or that the runtime of Git Bash
  reaches when it ends the process tree of a native Windows program standing
  in that group, and their self-tests run in the job hooks on every system on
  windows-latest; a process that a process of Git Bash under a native Windows
  program started, which the runtime's walk does not look for, is no part of
  this should, the block of this milestone on it asks for it." The line of the
  fixed form for that block stands above, once, the tool holding a should
  against the branch point alone. No code of the bound changes with the
  decision and the version stays 0.182.0; no run is touched, the block on the
  limit carrying none and a run on the block at line 1052 counting by the last
  change to its `Fix` line alone.

  The build of the twelfth commit, comments and two printed lines alone: the
  head of `bin/devloop-bounded` says the limit in the one sentence of the
  decision, with its cases and the one thing the walk does look for, and says
  what the sentence was until then; the head of `bin/devloop-setup-state` says
  the same limit, with two transports that fall under it, read and not
  measured, the ssh that a `GIT_SSH` which is a shell script calls without an
  exec, git starting a script through its interpreter, `compat/mingw.c` lines
  2437 to 2470 of git-for-windows/git at `v2.56.0.windows.4`, and the program
  of a `GIT_SSH_COMMAND` that is itself a call of `sh -c`; and the line with
  which each self-test leaves its case over several processes out under
  Windows says that limit, names lines 313 to 319 and names the block by its
  new title. The case stays left out there. The counter-check before that
  commit, measured here: both self-tests on the Mac three times and once with
  a `uname` first on PATH that answers MINGW64_NT-10.0-26100, which prints the
  line as it stands now and passes with 12 and 18 cases; in alpine:3.22 with
  busybox and with GNU coreutils 9.7 three times each; every run exit 0, each
  of the others with 13 and 19 cases, and nothing left that `pgrep -f '^sleep
  73[0-9][0-9]'` finds. Measured first by the platform: that the two lines are
  printed under Windows as they stand now and that both self-tests pass there
  with 12 and 18 cases. No run under Windows on the platform at that state
  counts here as passed until the person reports the checks green.

  **The runs at the last commit**, the fourteenth, which changes no code and
  is of 11 November 2026: every run below ran the code of the twelfth commit,
  the thirteenth and the fourteenth changing documents alone, under 0.182.0.
  The checks of pull request #239 on the thirteenth commit, run 42895836799 of
  10 November 2026, were green on all five, their logs read with `gh run view
  --log --job`. On windows-latest, job 130108626271, the self-test of
  `bin/devloop-bounded` prints its ok for the case "does not end: ended with
  what it started, the line, exit 124" at 20:31:22 UTC, line 438 of the log,
  and for the fetch over a transport that never answers 1.22 seconds later,
  line 439; then the line that leaves the case over several processes out,
  line 440, character for character the line of that commit, and "SELF-TEST
  PASSED: 12 cases", line 441. That of `bin/devloop-setup-state` prints its ok
  for the fetch not answering within the bound at 20:33:52, line 746, the line
  that leaves its case out, line 747, the line of that commit as well, and
  "SELF-TEST PASSED: 18 cases", line 757. On ubuntu-latest, alpine and
  macos-latest the two self-tests pass with 13 and 19 cases, lines 455 and
  757, 532 and 834, 439 and 741 of their logs, the case "does not end" and
  both fetches among them, and no case is left out there.

  Measured on the person's Mac at the thirteenth commit, the tree clean, in a
  bash started with `--noprofile --norc`, on 10 November 2026:
  `bin/devloop-bounded 1 sh -c 'sleep 7331 & sleep 7333'` at 20:43:50 UTC,
  exit 124 after one second, "no answer within 1 seconds: sh -c sleep 7331 &
  sleep 7333" on its stderr, nothing on its output and no sleep left; the
  self-test of `bin/devloop-bounded` at 20:43:52, "SELF-TEST PASSED: 13
  cases", exit 0, in four seconds; the self-test of `bin/devloop-setup-state`
  at 20:43:56, "SELF-TEST PASSED: 19 cases", exit 0, in four seconds, its case
  "the fetch not answering within the bound, said, the last fetched state
  read" among them, the fetch bounded through `bin/devloop-bounded` and that
  program's exit 124 read. The three probes of the causes once more under CPU
  load, twenty busy loops, begun at 20:44:16 UTC on the Mac and in alpine:3.22
  there with bash 5.2.37, git 2.49.1 and busybox 1.37.0, the Mac asleep in
  between, so that the clock says nothing of how long they ran: 2000 commands
  that end at once with 3 left no `sleep 7339` behind on either; of 200 runs
  of "does not end" on the Mac and 100 in the container every one ended with
  124 and the line and none printed "Terminated"; of 200 fetches over a shell
  that waits for its sleep and 200 over one process under git on the Mac, and
  100 of each in the container, every one ended with 124 and the line and none
  left a transport standing a second after the return, two in the container
  seen at the instant of the return and gone a second later. And the end of a
  hook as Claude Code brings it about, measured on the Mac on 11 November 2026
  at 01:25 UTC as the counter-check before the build measured it, a script in
  a process group of its own, SIGTERM to the group after one second and
  SIGKILL five seconds later: with `sleep 7349` nothing stood half a second
  after the SIGTERM; with `bash -c 'trap "" TERM; sleep 7351'` the program,
  its helper, the command and its sleep stood half a second after it and
  nothing four and a half seconds after it, before the SIGKILL, which found no
  group left.

  The rows of these runs stand in `docs/stock-take.tsv` since this commit,
  thirteen of them, each under 0.182.0: on the four things whose runs stopped
  counting with this branch, the bound firing, the self-test of each program
  passing, from this Mac and from the platform, and the fetch not answering in
  `bin/devloop-setup-state`; on the two things on the line each self-test
  prints under Windows; and on five blocks, the four of milestone 12 at lines
  1052, 1292, 1300 and 1324 and the one of milestone 13 at line 2117. What the
  tool counts of them on this branch follows its rule, the head of
  `scripts/devloop-stock-take` at lines 548 to 568: a run under a version
  counts where the commit that introduced the version contains the last change
  to every line of the thing, and 0.182.0 came with the first commit. So it
  lists as Walked here the bound firing, the fetch not answering and the five
  blocks, whose lines the first commit changed last, and the Status of those
  five blocks reads Walked since this commit, which the tool asks for, a block
  that names another state than the computed one being a broken record. The
  self-test of each program passing and the two lines printed under Windows it
  lists as Built, never walked, the reason beside each run, "version 0.182.0
  (introduced at 9c606ae) predates the last change to" a line of theirs, of
  the eighth commit and of the twelfth; after a squash merge one commit
  carries the version and every one of those lines, so that those runs count
  on main, which is read off that rule and not measured here. The block on the
  race of the sixth situation gets no row with this commit, though its run is
  measured above: its Fix line is of the third commit, so that the tool
  computes Built, never walked for it on this branch, as a trial with the row
  showed, and would compute Walked on main after the squash, and a Status
  names one state; a row beside a Status of Built, never walked would be green
  here and a broken record on main, and one beside a Status of Walked a broken
  record here. The block keeps its Status and no row, its note says so, and
  the row with the Status of Walked is for a later order, on main. The block
  on the limit under Git Bash carries Fix none and no run.

- **The bound ends what ignores SIGTERM, a step ends with all it started**

  11 November 2026, version 0.183.0: `bin/devloop-bounded` and
  `scripts/devloop-run-workflow` change; nothing under `skills/`, `shared/`,
  `hooks/` or `output-styles/` changes, and `.github/workflows/stock-take.yml`
  and `README.md` do not. On `task/kill-at-the-bound`, off `origin/main` at
  `46030ab`, in five commits: the code of both programs with the version,
  raised once; the documents in three commits, `docs/defects.md`,
  `docs/stock-take.tsv` and this entry; and, after the five checks on GitHub
  were green, the runs at the last commit, with two blocks more and this entry
  corrected in place. The order, of this day: two findings
  measured at `46030ab` outside the person's Mac, under Linux with bash
  5.2.21, dash 0.5.12, GNU coreutils 9.4, git 2.43 and python3, each to get a
  block under "## Milestone 12" of `docs/defects.md` and each to be built.
  Decided on this day, with these shoulds: "the bound returns at most two
  seconds after SECONDS with exit 124 and its line, also where the command
  ignores SIGTERM, its process group then sent SIGKILL", and "a step that
  runs past the job's timeout is ended with everything it started, as GitHub
  ends the job, and nothing of it runs on once this program has returned".
  Written by Claude Code from the person's order of this day. No session log
  was read. Nothing was installed outside throwaway containers of
  `alpine:3.22`, which got bash, git and python3 with apk, as the job's
  container gets them. What is measured under Windows is measured by the job
  hooks on every system and by nothing here, this machine running macOS.

  The bound. The finding: `bin/devloop-bounded 1 sh -c 'trap "" TERM; sleep
  6'` printed its line and ended with 124 after 6.00 seconds under Linux, and
  after 6.019 seconds on the person's Mac with bash 3.2.57, measured there on
  this day at `46030ab`. The cause, read at that commit: the watchdog ended
  the command's process group by SIGTERM alone, line 267, `end_group` at line
  173 sending nothing else, and the program waited for the command without a
  limit, line 280, so that a command which ignores SIGTERM held it for as
  long as it ran. Built: at the bound the watchdog sends the group SIGTERM,
  looks every tenth of a second whether anything of it stands, and sends
  what stands one second after the SIGTERM SIGKILL, through a function of
  its own, `kill_group_after`; the program waits for the watchdog as before
  and so returns with the group ended, with its line and 124 after the
  SIGKILL as well, where GNU timeout under -k exits 137. The second is timed
  by a sleep of its own and not by counting the looks, since a process start
  under Git Bash costs many times what it costs elsewhere and ten looks would
  run past the second there. Where the program is ended itself, the same
  function sends SIGKILL after half a second, where it waited two seconds
  since 10 November 2026: a bound inside a bound stands in the outer one's
  group with its helper, and its command in a group of its own, so that with
  two seconds the outer one's SIGKILL, a second after its SIGTERM, would have
  ended the inner program before the inner command, which would have outlived
  both where it ignores SIGTERM, a case that ended whole before this change.
  Measured on this day on the person's Mac, bash 3.2.57, and in `alpine:3.22`,
  bash 5.2.37, the whole call timed at a bound of one second: with `sh -c
  'trap "" TERM; sleep 7357'`, five times each, back after 2.112 to 2.130 and
  after 2.061 to 2.068 seconds, 1.06 to 1.13 seconds after the bound; with a
  command that takes SIGTERM, after 1.013 to 1.020 and 1.013 to 1.122
  seconds, the watchdog's look costing up to a tenth where the group needs a
  moment to go, which holds where process 1 reaps what lost its parent and,
  this sentence corrected in place with the last commit of this branch, not in
  a container whose process 1 does not: there a process of the command that
  lost its parent and ended on the SIGTERM stands as a zombie in the command's
  group, `kill -0` to the group finds it, line 246 of `bin/devloop-bounded`,
  and the watchdog looks out its whole second, so that `bin/devloop-bounded 1
  sh -c 'sleep 7331 & sleep 7333'` was back after 2.061 seconds in a container
  of `alpine:3.22` kept by `tail -f /dev/null`, as GitHub keeps the container
  of a job, where it took 1.014 on the Mac and 1.009 in the same image started
  with `docker run --init`, and a command of one process 1.009 to 1.013
  seconds in that container; the logs of the checks show the same on alpine,
  the self-test's cases in which the bound fires on a command that takes
  SIGTERM 1.007 to 1.014 seconds after the line before them in run 42983323027
  of pull request #239, before this branch, and 2.016 to 2.027 seconds in run
  43017830242 at the fourth commit of this one, 1.056 to 1.117 seconds on
  ubuntu-latest and macos-latest there; what process 1 the container had in
  which the 1.013 to 1.122 seconds were measured is not noted, and the
  paragraphs on the runs at the last commit below have the measurement; with
  `bin/devloop-bounded 1 bin/devloop-bounded 60 sh -c
  'trap "" TERM; sleep 7357 & sleep 7359'`, 124 after 1.678 to 1.681 and
  after 1.637 to 1.642 seconds and neither sleep left; and a second after all
  of it no sleep of a command and none of the bound found by pgrep. The
  self-test gains the case on all four systems, fourteen cases where it had
  thirteen and thirteen under Windows: a shell that ignores SIGTERM and two
  sleeps it starts, the line, 124, the probe's pipe released, and the whole
  call back within 3000 milliseconds. That time is bash's own, the reserved
  word time under TIMEFORMAT=%3R, to the millisecond; it holds the program's
  start before the bound begins to run and the wait for whatever holds the
  output, so that a green case has measured less than the two seconds, the
  error on the strict side and as large as the program's start, some twenty
  milliseconds on the Mac. What SIGKILL to a group reaches under Windows with
  Git Bash is read in git-for-windows/msys2-runtime at 5a1665c8, the sources
  the program's head names, fetched with gh api and read alone: kill with a
  negative number sends every process of Git Bash of that group the signal,
  `winsup/cygwin/signal.cc` lines 327 to 337 and 350 to 390; no handler can
  be set for SIGKILL, lines 41 and 441 to 445, and it goes through to a
  stopped process, `exceptions.cc` lines 1556 to 1569; a process of Git Bash
  exits on it, lines 1626 to 1627 and 1666 to 1667; the runtime's process for
  a native program runs the walk it runs on SIGTERM, lines 1673 to 1692, and
  ends what it lists by TerminateProcess at once,
  `include/cygwin/exit_process.h` lines 232 to 258 and 313 to 319. So SIGKILL
  reaches there the processes SIGTERM reaches and no other, and the block on
  the limit of that walk stands as it stood. The bounds the skills and the
  programs set hold with the two seconds: a program that gives its calls of
  gh ten seconds each and starts none with fewer than ten of its ninety-five
  left ends by 97 of the 100 it has; three fetches of thirty with two waits
  of ten, by 116 of the 120 of a call; the wait on the checks, by 102 of
  them. No loaded text and no other program changes for it.

  The steps of a workflow. The finding: after `python3
  scripts/devloop-run-workflow --self-test` had passed with 34 cases, the
  sleep 30 of its step past the timeout stood a second later with parent 1,
  under Linux and, measured on this day at `46030ab`, on the person's Mac.
  The cause, read at that commit: the step ran through `subprocess.run` with
  the job's timeout-minutes as the timeout, line 447, which at the timeout
  ends the one process it started, the step's shell, and waits for that one
  alone, `Lib/subprocess.py` lines 558 to 570 of CPython 3.14.7; and the step
  ran in the program's own process group, so that nothing told its processes
  from the program's. How GitHub ends a job, read in actions/runner at
  v2.338.2: the step's one process, after SIGINT and SIGTERM, ten seconds in
  all, `src/Runner.Sdk/ProcessInvoker.cs` lines 32 to 33, 443 to 465 and 855
  to 869, and at the job's end every process that carries the job's
  RUNNER_TRACKING_ID in its environment, `src/Runner.Worker/JobExtension.cs`
  lines 588 to 603 and 891 to 929. Built, on macOS, Linux and Alpine: a step
  starts as the leader of a session of its own; at the timeout the program
  sends SIGKILL, listing after listing of ps -A -o pid,ppid,stat, to every
  process whose parent, session or process group is a process already known
  as the step's, and with the first of them to the step's process group at
  once, until a listing shows none that is no zombie, five seconds at most,
  and then reads the step's output to its end. Parent, session and group and
  not the environment, since the environment of another process is not to be
  read on every system: the ps of macOS 26.6.2 printed none under -E for a
  sleep of the same user, measured on this day. A step in a session of its
  own is reached by no signal sent to the program's process group, Ctrl-C at
  a terminal and the SIGTERM of `bin/devloop-bounded` among them, so the
  program takes SIGINT, SIGTERM and SIGHUP in hand, ends the step that runs
  the same way and exits with 130, 143 or 129; a signal ignored when it
  started stays ignored. Under Windows nothing of this is built, by the
  order: a step runs through the call of before, and the self-test's step
  past the timeout is the sleep 30 of before there. The self-test gains three
  cases, 37 where it had 34: the step past the timeout starts a sleep that
  loses its parent, one in a process group of its own and one its shell
  waits for, none of them found by pgrep once the program has returned, under
  a pattern bound at the start of the command line, which a zombie does not
  match; the program ended by SIGTERM while a step runs, exit 143 and the
  step's sleeps gone; and a step past the timeout that runs the program one
  level down, the sleep of that one's step gone as well. At its end the
  self-test sends SIGKILL to whatever pgrep finds of its six sleeps, so that
  a red case leaves none. Measured on this day on the person's Mac and in
  `alpine:3.22`: the self-test passing with 37 cases and no sleep of it found
  afterwards; three copies broken on purpose red in the new cases, one that
  ends the step's process group alone, one that runs the step as before, one
  that takes no signal in hand; a step that runs `bin/devloop-bounded 7339 sh
  -c 'sleep 7331 & sleep 7333'` past a timeout of 0.03 minutes ended after
  1.965 and 1.919 seconds with no sleep found, the command and the watchdog
  of the bound standing in groups of their own; a step that runs the program
  over a workflow whose step never ends, ended after 2.555 and 2.521 seconds
  with no sleep found, where the first build, which ended the step's group
  before it listed, had left both sleeps of the inner step, a process one
  level down hanging on the step by its parent alone, so that the first
  listing now comes before the first signal; the program ended by SIGINT,
  SIGTERM and SIGHUP while a step runs, 130, 143 and 129, two sleeps found
  before and none after; and, in a container kept by tail -f /dev/null as its
  process 1 and entered with docker exec, as GitHub runs a job in a
  container, the three self-tests passing with 44 zombies left standing,
  which nothing reaps there.

  What the build of the steps does not reach, each a block of this day with
  Fix none. A process that left the step's session and its parent on
  purpose, a daemon, runs on: measured with a step that starts sleep 7379
  after a fork, a new session and a second fork, that sleep standing with
  parent 1 afterwards on the Mac and found in the container; where it still
  holds the step's output, the line of the step says so, after 6.963 and
  6.930 seconds. GitHub ends such a process by the variable in its
  environment. And Windows, left as it was by the order. A step that ends in
  time and leaves a process behind is not touched, now as before, measured
  with a step that starts sleep 7381 and ends, green and the sleep found
  afterwards; GitHub ends that one at the job's end, and no block stands for
  it, the should speaking of a step past the timeout.

  The other places that end a command at a time limit, searched with git grep
  over `bin`, `scripts`, `hooks`, `skills`, `shared`, `output-styles` and
  `.github` for a timeout given to subprocess, for kill, for alarm and for
  the bound. `bin/devloop-auto-mode-question` line 226 and
  `bin/devloop-install-issues` line 180 bound a command through
  `subprocess.run` with sixty seconds: measured on this day on the Mac and in
  `alpine:3.22`, each function called with a stand-in for gh first on PATH, a
  shell script that starts sleep 7383 and waits in sleep 7385, and the limit
  set to one second, back after 1.00 to 1.01 seconds with "no answer within
  1 seconds" and both sleeps still found. So of the two findings one stands
  there on macOS, Linux and Alpine, what the command started running on, and
  the other, the wait past the limit, does not, SIGKILL not being one a
  command ignores; under Windows both stand by the reading of
  `Lib/subprocess.py` lines 566 and 1701 to 1716, TerminateProcess and then
  the output read to its end without a limit. Each place has a block of this
  day with Fix none, and nothing is built there, by the order. The self-test
  of `scripts/devloop-run-workflow` bounds seven runs of the program the same
  way, six of them at `46030ab`: where such a limit fires on macOS, Linux and
  Alpine, the sweep at the self-test's end ends what the step left, measured
  with two copies whose first limit was 0.9 seconds, nothing found with the
  sweep and three sleeps and the step's shell found without it; under Windows
  there is no sweep, which the block on Windows holds. The calls of ps and of
  pgrep in that program carry a limit too and start nothing, so that nothing
  is left where it fires. Every other bounded command of the set runs under
  `bin/devloop-bounded`.

  The blocks. Two for the findings, Built, never walked until their runs: the
  bound waiting past it, Fix on the watchdog's line, and what a step had
  started, Fix on the line that ends the step's family. Four with Fix none,
  Recorded, not built: the process that left the step's session, the two
  programs that bound gh, and Windows; a fifth and a sixth came with the last
  commit, on the bound in a container whose process 1 does not reap and on a
  line of bash in a command's stderr on macOS, the paragraphs on the runs at
  the last commit below. The block on a hook's end has its Fix
  on the helper's line, which this change rewrote: the field names the new
  text, and the note says what the old one was and that the helper waits half
  a second where it waited two. The watchdog's line is the Fix line of two
  more blocks, the one on the fetch that hung on macos-latest and the one on
  the watchdog's sleep on alpine; their runs of 10 November 2026 count no
  more, and their Status reads Built, never walked, which the tool computes,
  until the runs at the last commit of this branch. In the table: seven
  things for what is new, the command that ignores SIGTERM under the bound
  and six outcomes of the step's end, and the lines of both programs that
  entered the search set recorded as part of their things.

  **The runs at the last commit**, the fifth, which changes no code: every run
  below ran the code of the first commit, `707d228`, the three after it and
  this one changing documents alone, under 0.183.0, and is of 11 November
  2026. The checks of pull request #240 on the fourth commit, `c5657cb`, run
  43017830242, were green on all five, their logs read with `gh run view --log
  --job`. On windows-latest, job 130513239539, the self-test of
  `bin/devloop-bounded` prints its ok for the case "does not end: ended with
  what it started, the line, exit 124" at 12:10:56 UTC, line 438 of the log,
  and for the case this branch adds, "ignores SIGTERM: ended all the same, the
  line, exit 124", 2.343 seconds later, line 439: the first measurement of
  SIGKILL to a process group under Git Bash, a shell of Git Bash that ignores
  SIGTERM and its two sleeps ended and the probe's pipe released. The 2.343
  seconds are the most the whole call took at a bound of one second, the end
  of the case before it and this case's own check lying in them; the self-test
  prints the time it holds to 3000 milliseconds for a red case alone. Then the
  fetch over a transport that never answers, line 440, the line that leaves
  the case over several processes out, line 441, and "SELF-TEST PASSED: 13
  cases", line 442; `bin/devloop-setup-state` passes there with 18 cases, line
  756, and the self-test of `scripts/devloop-run-workflow` is left out there,
  line 891. On ubuntu-latest, macos-latest and alpine the three self-tests
  pass with 14, 19 and 37 cases, lines 456, 758 and 898, lines 440, 742 and
  882 and lines 533, 835 and 975 of their logs, the case this branch adds
  2.027, 2.197 and 2.017 seconds after the line before it, lines 453, 437 and
  530. No log of the five carries a line "Terminate orphan process" at the end
  of its job: in run 42983323027, the last of pull request #239, GitHub ended
  a sleep there on ubuntu-latest, line 935 of that log, and on macos-latest,
  line 920, and that run carried no such line on alpine either, so that its
  absence on alpine says nothing.

  Measured on the person's Mac at the fourth commit, the tree clean, in a bash
  started with `--noprofile --norc`, bash 3.2.57 and Python 3.14.7, from 12:56
  to 13:15 UTC, a whole call timed by bash's own time. `bin/devloop-bounded 1
  sh -c 'sleep 7331 & sleep 7333'` at 12:56:35, exit 124 after 1.014 seconds,
  "no answer within 1 seconds: sh -c sleep 7331 & sleep 7333" on its stderr,
  nothing on its output and no sleep left. With `sh -c 'trap "" TERM; sleep
  7357'`, five times from 12:56:39, exit 124 and the line after 2.032 to 2.141
  seconds, 1.03 to 1.14 seconds after the bound; with the command of the
  self-test's case, a shell that ignores SIGTERM and two sleeps, after 2.140
  seconds; with `sh -c 'trap "" TERM; sleep 6'`, the command of the finding,
  after 2.135 seconds where it took 6.019 at `46030ab`; a bound inside a bound
  whose inner command ignores SIGTERM, three times, 124 after 1.678 to 1.686
  seconds and neither sleep left; and a second after all of it no sleep of a
  command and none of the bound found by pgrep. The self-test of
  `bin/devloop-bounded` at 12:57:01, "SELF-TEST PASSED: 14 cases", exit 0, in
  six seconds; that of `bin/devloop-setup-state` at 12:57:08, 19 cases; that
  of `scripts/devloop-run-workflow` at 12:57:14, "SELF-TEST PASSED: 37 cases",
  exit 0, in five seconds, and a second after it pgrep found no sleep 30 and
  no sleep of its steps, where a sleep 30 stood with parent 1 at `46030ab`.

  The end of a step, measured there with workflows of one job and one step. A
  step that runs `bin/devloop-bounded 7339 sh -c 'sleep 7331 & sleep 7333'`
  under a timeout of 0.03 minutes, at 12:57:30: the program back with 1 after
  1.967 seconds, the step's line "-- not finished: stopped at the job's
  timeout of 0.03 minutes, as GitHub stops the job", the last line opening
  with "red:" and naming the step with its job, and no sleep found afterwards,
  the command and the watchdog of the bound standing in groups of their own. A
  step that runs the program over a workflow whose step never ends, twice:
  back with 1 after 1.967 and 1.975 seconds, both sleeps of that inner step
  found 1.2 seconds into the second run and neither found afterwards. The
  program ended by SIGINT, SIGTERM and SIGHUP while a step runs that holds one
  sleep in a process group of its own and waits for another, at 12:57:34: both
  sleeps found before, exit 130, 143 and 129, neither found afterwards;
  started with SIGINT ignored, in the background of a shell without job
  control, it stood a second after SIGINT with both sleeps and ended on
  SIGTERM with 143, neither left. A stand-in for ps first on PATH that ends
  with 1, at 12:57:56: the step's line reads on behind "as GitHub stops the
  job" with "ps did not answer with pid, ppid and stat, so that the step's own
  process group alone was ended", the program back after 7.061 seconds, the
  sleep of the step's own group gone and the one in a group of its own
  standing, ended by hand. And a process that left the step's session and its
  parent and holds the step's output, a sleep 7379 started after a fork, a new
  session and a second fork, at 12:57:42: the line reads on with "a process it
  started that this program did not find still holds its output", the program
  back after 6.969 seconds, that sleep standing with parent 1, ended by hand.

  The end of a hook as Claude Code brings it about, measured there at 13:09:30
  as the entry of 10 November 2026 on the bound on every system measured it, a
  script in a process group of its own, SIGTERM to the group after one second
  and SIGKILL five seconds later: with `sleep 7349` nothing stood a quarter of
  a second after the SIGTERM; with `bash -c 'trap "" TERM; sleep 7351'` the
  program, its helper with its two sleeps, the command and its sleep stood a
  quarter of a second after it and nothing a second after it, four seconds
  before the SIGKILL, which found no group left. Under CPU load there, twenty
  busy loops on ten cores, from 13:10:01: 400 commands that end at once with 3
  left no `sleep 7339` behind; of 40 fetches over one process under git and 40
  over a shell that waits for its sleep every one ended with 124 and the line,
  and none left a transport standing at the instant of the return or a second
  after it; the call of the case this branch adds, 20 times under twenty loops
  and 12 times under sixty, was back after 2.028 to 2.138 seconds, and the
  self-test passed eight times under that load.

  The same measurements in a throwaway container of `alpine:3.22` on that Mac,
  from 13:15:26 UTC, bash 5.2.37, Python 3.12.16, git 2.49.1 and busybox
  1.37.0, the repository mounted read-only: started with docker run --rm and
  kept by `tail -f /dev/null` as its process 1, as GitHub keeps the container
  of a job, line 59 of the log of the job on alpine, and entered with docker
  exec. Every exit code, every line and every count came out as on the Mac:
  the command that ignores SIGTERM back after 2.064 to 2.074 seconds, five
  times, the bound inside a bound after 1.639 to 1.645, the three self-tests
  with 14, 19 and 37 cases, the step under the bound ended after 1.926 seconds
  and the one that runs the program after 1.917 and 1.915 with no sleep found,
  the three signals with 130, 143 and 129, the ps that does not answer after
  6.879 and the output held after 6.946 seconds, the hook's end with nothing
  standing before the SIGKILL, the 400 commands and the 80 fetches under
  twenty busy loops with nothing left, the call of the new case back after
  2.046 to 2.167 seconds under load and the self-test passing eight times; 374
  zombies stood in the container at its end, which nothing reaps there.

  One time came out other than this entry had it. In that container
  `bin/devloop-bounded 1 sh -c 'sleep 7331 & sleep 7333'`, a command that
  takes SIGTERM, was back with its line and 124 after 2.061 seconds, a second
  after the bound, where it took 1.014 on the Mac, and a bound inside a bound
  whose inner command takes SIGTERM after 2.068 seconds, 1.130 on the Mac; `sh
  -c 'sleep 7357'`, one process, after 1.009 to 1.013 seconds. The cause,
  measured with a listing 0.3 seconds after the bound: the command's leader
  ended and reaped by the program, the program and its watchdog standing, and
  the other sleep, ended, standing as a zombie with parent 1 in the command's
  group, since `tail` reaps nothing; `kill -0` to a group succeeds while a
  zombie stands in it, line 246 of `bin/devloop-bounded`, so that the watchdog
  looks out its whole second and sends SIGKILL to nothing alive. The same
  image started with `docker run --init`, whose process 1 reaps: 1.009 seconds
  and no zombie. The logs of the checks show it on alpine and nowhere else:
  the self-test's three cases in which the bound fires on a command that takes
  SIGTERM stand 1.007 to 1.014 seconds after the line before them in run
  42983323027 and 2.016 to 2.027 seconds in run 43017830242, 1.056 to 1.117
  seconds on ubuntu-latest and macos-latest there, the job green, those cases
  held to three whole seconds. The should of the block on the bound waiting
  past it holds there, the call back 1.06 seconds after the bound where two
  are allowed, and nothing of the command runs on. Decided on this day: the
  finding gets a block of its own with this commit, Fix none, Recorded, not
  built, with the should "where the command and everything it started have
  ended on the SIGTERM, the bound returns without waiting out the second, also
  in a container whose process 1 does not reap what lost its parent", and the
  runs are recorded at this commit; nothing is built for it, and the head of
  `bin/devloop-bounded` stays as it stands, a change there being a change to
  the code these runs ran. The sentence of this entry on a command that takes
  SIGTERM is corrected in place with this commit, above.

  Before this commit the twenty checks under "Before a handover, run these"
  were run with its documents in the tree, the code that of the fourth commit,
  and the run of the workflow's steps here, the twentieth, was red once, at
  14:10 UTC, where it had been green at 12:54 on the same code: in the hooks
  step the self-test of `bin/devloop-tool-state` failed its case "playwright:
  the project's command finds no node, not read with its message", 1 of 63
  cases, the message it read being "bin/devloop-bounded: child setpgid (56038
  to 56038): Operation not permitted" behind the program's path, a line of
  bash's own in the command's stderr before the command's "env: node: No such
  file or directory". Measured on the Mac without load after it, bash 3.2.57:
  of 2000 runs each of `bin/devloop-bounded 60 sh -c 'exit 3'` and of the
  bound over a script whose interpreter is missing, 1 and 3 carried that line
  in the command's stderr, every exit code as it should be; of 4000 runs each
  of two such commands, 0 and 1 with the program of this branch, 0 and 1 with
  that of `46030ab`, 0 and 0 with that of `b6970e1`, which started the command
  without job control, and 0 and 0 in a container of `alpine:3.22` with bash
  5.2.37. So the line comes with the start of the command under `set -m`,
  lines 340 and 341 of `bin/devloop-bounded`, stands on main since the entry
  of 10 November 2026 on the bound on every system and is no change of this
  branch, and the runs above are untouched by it; whether the command stood in
  a process group of its own in such a run is not measured, no run of 4000
  that looked having carried the line. It gets a block with this commit by the
  rule that a finding in a program gets one in every case, Fix none, Recorded,
  not built, nothing built for it, the code of this branch staying as its runs
  ran it; its should is worded with the block and put to the person by the
  report of this day. The same check alone, run again from 14:25 UTC, was
  green.

  The rows of these runs stand in `docs/stock-take.tsv` since this commit,
  fifteen of them, each under 0.183.0: on the two things of
  `bin/devloop-bounded` whose runs stopped counting with this branch, the
  bound firing and the self-test passing, from here and from the platform; on
  five of the seven things this branch added, the command that ignores
  SIGTERM, from here and from the platform, the step past the timeout ended
  with everything it started, the ps that does not answer, the output held by
  a process the program did not find, and the program ended by a signal; on
  one thing of `scripts/devloop-run-workflow` that stood before this branch
  without a run, a step stopped at the job's timeout-minutes, red and said,
  decided on this day; and on five blocks of milestone 12, at lines 1292,
  1300, 1379, 1387 and 1395 of `docs/defects.md`. What the tool counts of them
  follows its rule, the head of `scripts/devloop-stock-take` at lines 548 to
  568: a run under a version counts where the commit that introduced the
  version contains the last change to every line of the thing, and for a block
  to its Fix line. 0.183.0 came with the first commit, which changed every one
  of those lines last, so that the tool lists all of them as Walked on this
  branch, and after a squash merge one commit carries the version and the
  lines alike. The Status of the five blocks reads Walked since this commit,
  which the tool asks for, a block that names another state than the computed
  one being a broken record. The block on a hook's end has its row and its
  Status here and not on main, where the entry of 10 November 2026 on the
  bound on every system left them: its Fix line is of this branch's first
  commit now, and its note says so since this commit. Two of the seven new
  things get no run and stay Built, never walked: the processes of a step
  still standing after five seconds of SIGKILL, a case nothing here could
  bring about, SIGKILL ending every process; and the step past the timeout
  under Windows, which runs there as before and which nothing here measures.
  The self-test of `scripts/devloop-run-workflow` gets no row either, though
  it passed in every run above: its thing names both of its ends, "SELF-TEST
  PASSED with the count or SELF-TEST FAILED", and no run of this day showed
  the second.

- **Three entries held, two orders put first, a step's end recorded**

  12 November 2026, version 0.183.0, unchanged: nothing under `skills/`,
  `shared/`, `hooks/`, `bin/`, `scripts/`, `output-styles/` or `.github/`
  changes, and `README.md` does not. On `task/audit-2026-11-12`, off
  `origin/main` at `8f9a973`, in one commit: `docs/roadmap.md`,
  `docs/plan.md`, `docs/defects.md`, `docs/skill-conventions.md` and this
  entry. The order: the consistency audit before the handover, in the form
  of the audits of 4, 6 and 9 November 2026 — the three entries since the
  last audit held statement by statement against the code, the documents,
  the table and their commits; the control documents searched for sentences
  against the decisions since then and against what the three entries
  built; `docs/rationale.md` held against the loaded texts where one
  changed; what has one right answer mended here and the rest put to the
  person in the report; and the three things the order names carried in.
  Written by Claude Code from the person's order of this day; no session
  log was read; nothing was installed; GitHub was read with `gh pr view`
  for pull requests #238, #239 and #240, their branches fetched by their
  references into a clone under a throwaway directory, and three files of
  actions/runner fetched with `gh api`, and not beyond; the identity under
  which git commits here was neither set nor read; no subagent was used.
  The report stands on this machine as `~/devloop-audit-2026-11-12.md`, in
  German, and is not in the repository. Every line number of a file in this
  entry holds at `8f9a973` unless it says otherwise.

  **What was read, and how.** Whole, with the text in front of the session:
  the three entries, lines 3906 to 5323, and the audit at lines 3646 to 3905
  as the form; `docs/plan.md` lines 888 to 1123; `docs/defects.md` lines 1
  to 86; `docs/skill-conventions.md` lines 1759 to 1948, 3938 to 3958 and
  4030 to 4435; the head of `scripts/devloop-stock-take`, lines 41 to 59,
  238 to 457, 485 to 513 and 546 to 569; the report of 11 November 2026 on
  this machine at its places on a step that ends in time; every place a
  statement names, with the lines around it. The branches of #238, #239 and
  #240 were fetched by their references, two commits, fourteen and six, the
  tree of each head equal to its squash commit on main, `git diff --stat`
  empty for all three. The tool ran in the clone at `b6970e1` and at
  `46030ab` as well. What an entry measured on a surface, in a container or
  under load, and what it read in a log of the platform, on a page of the
  vendor or in the sources of another project, was not measured or read
  again, the order naming the code, the documents, the table and the
  commits: samples of it were held against the three reports on this
  machine, and every sample stands there.

  **The three entries against the code, the documents, the table and their
  commits.** Held at the commit the entry gives for its lines: what an
  entry says of its commits and their files, of a line of a file of this
  repository, of a row of the table or a count of rows, and of the title,
  the Should, the Fix or the Status of a block, the report naming each; and
  the counts of cases the three self-tests print at the final state, 14, 19
  and 37, off the run of the workflow's steps here. Not run again: a
  self-test at a commit inside a branch. The entry at line 3906, on the
  surface reading, holds in what was held but for one sentence:
  - "searched with `grep -n -E` for 'machines for|virtual machine|provides
    before the milestone' and for 'which surface|surface it runs|surface the
    session'", lines 4133 to 4135: the two patterns find the lines the entry
    names but two, line 3777 of this file and line 1350 of
    `docs/defects.md`, which a third pattern found that the report of that
    order names and the entry does not, `reads? the surface|way to
    read|surface is read|surface and the system are read|measured first`.
    Said right here, the entry standing as written.
  The entry at line 4153, on the bound on every system, but for two:
  - "the two exceptions under Windows at lines 428 to 432 went with the
    comment at line 427": the diff of the workflow takes out lines 430 to
    433 at `b6970e1`, the `case` on the runner's system, the two lines for
    Windows and `esac`, lines 428 and 429 standing; corrected in place to
    430 to 433. The comment at line 427 did not go: it was rewritten and
    says since that day what stood there until then. Said right here.
  - "The runs of three things stop counting under 0.182.0", lines 4427 to
    4432: four by the end of that branch, as the last paragraph of that
    entry has it, the self-test of `bin/devloop-setup-state` with its run of
    21 October 2026 the fourth since the eighth commit; and the fetch not
    answering carried two runs that counted at `b6970e1`, of 3 and of 16
    October 2026, where the sentence names the first. Read off the tool at
    `b6970e1` and at `46030ab`. Said right here.
  The entry at line 4907, on the bound and SIGKILL, but for three, two of a
  sixth commit the entry does not know and one of an addendum of its report
  the entry does not carry:
  - "in five commits", line 4913, and "**The runs at the last commit**, the
    fifth", line 5125: the branch of #240 has six. The sixth, `baa68e4`,
    changes one word of `docs/defects.md` and not that entry; the runs
    stand at the fifth, `8946dff`, which is not the last. Said right here.
  - "the run of the workflow's steps here, the twentieth", line 5265: the
    sixth commit made it "the sixteenth check" in the block on the line of
    bash, `docs/defects.md` line 1444, as the block at line 4658 has it,
    and the command stands sixteenth of the twenty command blocks of the
    section. Said right here; the same word in `docs/skill-conventions.md`
    is mended below.
  - "A step that ends in time and leaves a process behind is not touched,
    now as before", lines 5074 to 5078: so where the process holds nothing
    of the step's output; where it holds it, the step counts as stopped at
    the job's timeout, the second situation of the block below. Said right
    there.

  **Decided on 12 November 2026**, on what builds before order (2) of
  milestone 12, recorded in `docs/plan.md` under milestone 12 as a dated
  sentence after the decision of 10 November 2026 on the order of the
  orders: before (2) come two orders. First the two blocks on
  `bin/devloop-bounded` from the branch of 11 November 2026, the second the
  bound waits in a container for an ended process of the command's group,
  line 1435 of `docs/defects.md`, and the line of bash in the command's
  stderr, line 1443. Then the remaining time limits: gh in
  `bin/devloop-auto-mode-question` and in `bin/devloop-install-issues`,
  lines 1411 and 1419, and the three open blocks of
  `scripts/devloop-run-workflow`, the process that leaves the step's
  session, line 1403, Windows, line 1427, and the block of this entry; the
  block on Windows that order puts to the person as a question of its own.
  After them (2) to (7) as decided. Reason: as with (1), every later pull
  request is to run through reliably; the line of bash stood in a command's
  stderr in 6 of 20000 runs on the person's Mac and made a self-test red
  once, the second in the container brings the self-test on alpine nearer
  its limit, and the remaining time limits carry the fault of the two
  findings of 11 November 2026, with measurements and readings in the
  blocks. Not chosen: both orders at the end of the milestone; the pull
  requests of (2) to (7) would then run with the self-test that goes red at
  random. The plan did not name the order of 11 November 2026: a dated
  sentence before this one says it now, in the same form, with the two
  shoulds of that entry and what was built.

  **A block on a step that ends in time**, decided on 12 November 2026 and
  written here with Fix none, Recorded, not built, the last block under "##
  Milestone 12": "scripts/devloop-run-workflow counts a step that ended in
  time as stopped at the job's timeout where a process it left holds its
  output, and leaves a process that holds none running". Its Should, in the
  words of the decision: "a step that ends in time counts with its own exit
  code, as GitHub counts it, waiting no more than five seconds for output a
  process it left still holds, and what it left behind is ended when this
  program returns, as GitHub ends it at the job's end". Its Wrong says the
  two situations the report of 11 November 2026 measured, on the person's
  Mac and in a container of `alpine:3.22`: a step that starts `sleep 7381 >
  /dev/null 2>&1 &` and ends is green and the sleep stands after the
  program has returned; the same step with `sleep 7381 &`, the sleep
  holding the step's output, does not come back with the step's end, the
  program reading the output to its end, `scripts/devloop-run-workflow`
  line 605, until the job's timeout fires, the step counted red as stopped
  there after 3.094 and 3.134 seconds at a timeout of 0.05 minutes and the
  sleep ended with it. And what GitHub's runner does, read by this audit in
  actions/runner at `8cfa104`, main on 11 November 2026, and not measured
  on GitHub: `src/Runner.Sdk/ProcessInvoker.cs` waits five seconds where
  the step's process has exited and a reader of its output is still open,
  lines 485 to 505 with the delay at line 494, going on at once where the
  output closes sooner, lines 523 to 527; then calls `KillProcessTree`,
  line 495, which under Linux and macOS ends the step's own process alone
  and only where that has not exited, lines 855 to 869, so that nothing is
  ended there; counts the exit code of the step's own process, line 377;
  and what the step left is ended at the job's end, by the variable in its
  environment, `src/Runner.Worker/JobExtension.cs` lines 891 to 939. The
  head of the program says at its lines 136 to 138 "A step that ends in
  time and leaves a process behind is not touched, now as before", which
  holds in the first situation alone; the sentence stands, this audit
  changing no code, and the block names it.

  **The control documents against the decisions and against what was
  built.** Searched with `grep -n -E` for `devloop-bounded|kill_tree|pgrep|
  \b143\b|\b124\b|SIGTERM|SIGKILL|process group|left out under Windows|
  run-workflow|timeout-minutes|Nothing of this is built|not built yet|is
  built yet|measured first|ENTRYPOINT|Parallels|virtual machine|the person
  provides|bounds? (its|the|every)|a bound|the bound\b|time limit` over
  `docs/plan.md` (17 lines), `docs/skill-conventions.md` (24) and
  `README.md` (2, neither on the subject), every line read, and for the
  names of the two programs, of what they dropped and of the surface
  reading over `docs/defects.md`, 78 lines in 33 blocks: the title, the Fix
  and the Status of each read, four blocks whole, lines 1044, 1435, 1443
  and 2196, and of the four older blocks that name the bound, lines 2180,
  2204, 2276 and 2740, the Wrong and the Note; the long fields of the
  blocks the two branches on the bound wrote were not held sentence by
  sentence. Mended:
  - `docs/plan.md` line 1092, "Nothing of this is built yet.", the end of
    the paragraph on the first piece of milestone 12: it held until 10
    November 2026. The paragraph says now what stands since 10 and 11
    November 2026, the bound with its process group and SIGKILL, the two
    self-tests on all four systems and the end of a step past the timeout,
    and that of the rest nothing is built.
  - `docs/skill-conventions.md` lines 1436 to 1437, the job hooks on every
    system running every self-test under `bin/` "under Windows without
    those of `bin/devloop-bounded` and `bin/devloop-setup-state`": so until
    10 November 2026, and with them since; the sentence says both.
  - `docs/skill-conventions.md` lines 2199 to 2202, a command "runs under
    `bin/devloop-bounded`, which ends it after a fixed number of seconds,
    with everything it started", the bound "chosen so that the whole call
    stays under the 120 seconds": it stands, and two sentences after it
    say the process group, the SIGKILL a second after the SIGTERM, the two
    seconds with the 116 and the 102 seconds of the entry of 11 November
    2026, and what the program's head names as beyond the bound.
  - `docs/skill-conventions.md` line 1784, "though the twentieth, since 31
    October 2026, runs it here": the sixteenth, as the two blocks say and
    as the section counts.
  - `docs/defects.md` line 1050, the Note of the block "the job hooks on
    every system runs three of the seven self-tests under bin, four on no
    system", Walked: it ended on "built for every self-test under bin/ but
    those of bin/devloop-bounded and bin/devloop-setup-state under Windows,
    the gap carried by the defect of milestone 12 that addendum records"
    and says after it that since 10 November 2026 those two run there as
    well; no title, Should, Fix or Status changed.
  `README.md` says nothing of the bound, of systems or of surfaces, and no
  sentence of it deviates. No other sentence read stopped holding.

  **`docs/rationale.md` against the loaded texts.** `git diff --stat
  ac8cb77 8f9a973 -- skills shared output-styles` prints nothing: no text
  the set loads changed since the last audit, and nothing was held.

  **Green runs on things whose name names both ends, put to the person and
  not changed.** The entry of 11 November 2026 gave the self-test of
  `scripts/devloop-run-workflow` no run, its thing naming "SELF-TEST PASSED
  with the count or SELF-TEST FAILED" and no run having shown the second.
  The table carries ten runs made the other way, each a green run on a
  thing that names a red end beside the green: lines 6266 and 6271 of
  `docs/stock-take.tsv` on the self-tests of `bin/devloop-missing-tool` and
  `bin/devloop-install-note`, lines 6501 and 6608 on that of
  `bin/devloop-auto-mode-question`, lines 4605, 4630, 4677 and 6279 on that
  of `bin/devloop-command-reader`, and lines 4614 and 6607 on two things of
  the hooks step of the workflow; four of the six things read Walked by
  them on this day. The head of the tool makes every outcome a thing, "an
  outcome is what the program produces", line 90, and says its rule "can
  undercount and must never overcount", line 566, and `docs/plan.md` asks
  that every branch be walked once "the unwanted side included", line 91:
  by them a green run counts for no red end. What follows for the ten rows
  has no one answer, a thing with runs keeping its name, lines 379 to 381
  of the head, and the green ends having been walked: no row and no thing
  is changed, and the report lays the ways before the person.

  The tool, before, on `8f9a973`: broken records 0, uncovered lines 0 of
  4597; Undetermined 24, Recorded, not built 261, Built, never walked 1506,
  Walked 716, Closed 70; milestone 12 106 blocks, Recorded, not built 44,
  Built, never walked 46, Walked 12, Closed 4; blocks with "not stated" 345.
  After: Recorded, not built 262 and milestone 12 107 blocks, Recorded, not
  built 45, the block written here; every other figure as before; blocks
  held against the branch point: removed 0, renamed 0, Should changed 0,
  added 1; Walked on this branch without a run the branch adds: 0. The
  self-test: 159 cases, 148 of 148 messages asserted by a case, before and
  after. Nineteen of the twenty checks before a handover print after what
  they printed on `8f9a973`, line for line, and the sixteenth, the run of
  the workflow's steps, what it printed there but for the tool's lines
  above and the time in one record, green before and after, 8 steps run.
  Its title step reads the head of a new entry off `git diff
  origin/main...HEAD`, the commits of the branch, and so read none before
  the one commit of this branch; the head was held to the step's three
  rules by hand before it, 63 characters and no find, and the report says
  what the step printed after it. No run is recorded.

- **The bound waits for no zombie, bash's line stays out of stderr**

  13 November 2026, version 0.184.0: `bin/devloop-bounded` changes; nothing
  under `skills/`, `shared/`, `hooks/`, `scripts/` or `output-styles/`
  changes, and `.github/workflows/stock-take.yml` and `README.md` do not. On
  `task/bound-zombie-setpgid`, off `origin/main` at `f06f34c`, in four
  commits: the code with the version, raised once; the documents,
  `docs/defects.md`, `docs/stock-take.tsv`, `docs/plan.md` and this entry;
  the runs, measured at the second commit with the tree clean; and, after the
  checks, words of this entry and of five notes set right. The order, of
  this day: the first of the two orders that the decision of 12 November 2026
  puts before order (2) of milestone 12, the two blocks on
  `bin/devloop-bounded` from the branch of 11 November 2026, at lines 1435 and
  1443 of `docs/defects.md` at `f06f34c`, each measured before it is built and
  built with its should as it stands: "where the command and everything it
  started have ended on the SIGTERM, the bound returns without waiting out the
  second, also in a container whose process 1 does not reap what lost its
  parent", and "nothing but what the command itself writes reaches its stderr
  through `bin/devloop-bounded`, no line of the shell that starts it, at every
  run on every system, and the self-test of `bin/devloop-tool-state` passes
  its case of a command that finds no node at every run on every system on
  which the step hooks on every system runs it". Written by Claude Code from
  the person's order of this day. No session log was read. Nothing was
  installed outside throwaway containers of `alpine:3.22`, which got bash, git
  and python3 with apk and, one started with --privileged and removed again,
  the unshare of util-linux. Read from outside, each fetched without a
  sign-in: the release bash-3.2.57 from ftp.gnu.org, seven files of
  apple-oss-distributions/xnu at xnu-12377.121.6 and three of
  git-for-windows/msys2-runtime at 5a1665c8; and the log of one job, with gh
  run view. What is measured under Windows is measured by the job hooks on
  every system and by nothing here, this machine running macOS. The identity
  under which git commits here was neither set nor read; no subagent was used.
  The report stands on this machine as `~/devloop-bound-zombie-setpgid.md`.

  **Measured before the build, at `f06f34c`.** The second in the container, on
  the person's Mac in two throwaway containers of `alpine:3.22`, bash 5.2.37
  and busybox 1.37.0, the repository mounted read-only, entered with docker
  exec, the whole call timed by bash's own time, five times each: in the one
  kept by `tail -f /dev/null`, `bin/devloop-bounded 1 sh -c 'sleep 7331 &
  sleep 7333'` back after 2.056 to 2.075 seconds, `bin/devloop-bounded 1 sh -c
  'sleep 7357'` after 1.008 to 1.013, and `bin/devloop-bounded 1
  bin/devloop-bounded 60 sh -c 'sleep 7357 & sleep 7359'` after 2.052 to
  2.063; in the one started with `docker run --init`, after 1.009 to 1.013,
  1.010 to 1.013 and 1.115 to 1.120; every call with its line and 124, fifteen
  zombies standing in the first container afterwards and none in the second.
  The line of bash, on that Mac without load, macOS 26.6.2 with
  xnu-12377.161.14 and bash 3.2.57, in a bash started with `--noprofile
  --norc`, the stderr of every run read for a line the command does not write:
  in 10 of 20000 runs of `bin/devloop-bounded 60 sh -c 'exit 3'` and in 11 of
  20000 runs of the bound over a script whose interpreter is missing,
  `#!/usr/bin/env` with a name that stands nowhere, every exit code 3 and 127,
  each of the 21 lines of the form "bin/devloop-bounded: child setpgid (N to
  N): Operation not permitted". Which of the two starts under job control
  prints it, measured with 20000 runs more in which the command looks with ps
  once its stderr holds something, a look that costs a run without the line
  one built-in test: both, 4 of 14 lines naming the command itself, the start
  of line 341, and 10 the process after it, the watchdog, the start of line
  352. Whether the command stood in a process group of its own in a run with
  the line, not measured on 11 November 2026: in every one of the 14, and the
  process the line names as well. Where bash prints it: `jobs.c` lines 1746 to
  1747 of bash 3.2.57, in `make_child`, in the child after the fork and before
  the command's redirections, the parent making the same call for the child at
  line 1817 and not reading its result; Apple's own build of that bash is not
  read. Why the call fails, measured: both calls made at once after each of
  40000 forks, the child's failed with EPERM twice and the parent's twice, the
  parent's with ESRCH nine times, and the child led its group after every one,
  so that the call that loses the race fails though the group is made. Not
  read: `bsd/kern/kern_prot.c` lines 608 to 610 and `bsd/kern/kern_proc.c`
  lines 2982 to 3062 of xnu-12377.121.6, the nearest published source, give a
  process that calls for itself EPERM only where it leads a session, and the
  kernel of that Mac is not published. Under Windows with Git Bash, off the
  log of job 130513239539 of run 43017830242: the self-test's cases "does not
  end", "ignores SIGTERM" and the fetch stand 1.155, 2.343 and 1.293 seconds
  after the line before them, so that the bound does not wait the second there
  where a command takes SIGTERM; read for it in `winsup/cygwin/signal.cc`
  lines 363 to 364 and `pinfo.cc` lines 597 to 599 of the runtime at 5a1665c8:
  kill to a group passes over every process that has exited. The same on
  macOS, measured with a zombie alone in its group, kill with the signal 0 to
  the group failing, and read in `bsd/kern/kern_sig.c` line 1715 of
  xnu-12377.121.6; under Linux that kill succeeds, measured in the container.
  So Linux alone counts a process that has ended.

  **The zombie.** Built: the look of the watchdog and of the helper is a
  function of its own, `stands`, where it was kill with the signal 0 to the
  group. Where that kill fails nothing stands, as before. Where it succeeds,
  under Linux, read off `$OSTYPE`, and only where `/proc/self/stat` names the
  shell by the number bash knows it by, `$BASHPID`, the function reads
  `/proc/<number>/stat` with read, no process started: of the process found
  running at the last look or of the group's leader first, then of every
  process, a line that does not hold the group's number as a field passed over
  before it is taken apart; and the group stands where a process of it is in
  no state Z or X, or is a zombie with more than one entry under `task`, a
  process whose first thread has ended while another runs. Not through ps,
  which the note of the block named as the way, "not tried": a process start
  for every look, and no ps on a Linux image that carries no procps. On macOS
  and under Windows with Git Bash the look is that kill as before. Tried in
  the container before the build: a zombie alone, kill succeeds and the
  function says nothing stands; a zombie beside a process that ignores
  SIGTERM, it stands; a python3 whose first thread ended by pthread_exit while
  a second sleeps, state Z and two entries under `task`, it stands. What a
  look costs there: 8 milliseconds over 613 processes with none of the group
  running and 41 over 2613, and with one found, which the next look reads
  first, ten looks 6 and 20 milliseconds; a first form that took every line
  apart from its end cost 193 milliseconds over 2028 processes and brought the
  call of the self-test's new case to 1735 milliseconds under sixty busy loops
  with 600 zombies in the container, which is why the line is passed over
  first. The check of the number is needed: in a namespace of process numbers
  of its own with the container's `/proc`, a copy of the program without it
  sent a command that ignores SIGTERM SIGKILL at once, back after 1.008
  seconds, where the program waited the second, 2.099.

  **The line.** Built: at each of the two starts under job control the shell's
  stderr points to `/dev/null` while it forks, so that what bash writes there
  itself reaches nobody. The command starts inside a group that carries its
  caller's stderr on a descriptor that stands free, the first of 9 down to 3,
  found with a built-in redirection, and has it back as its stderr before it
  starts, the descriptor closed again for it; the watchdog, whose output goes
  nowhere, needs none. Tried before the build under bash 3.2.57 and 5.2.37:
  the search gives 8 with 9 and 7 held and 9 with none, the command sees the
  descriptors it saw before, and the shell's line on a command it cannot start
  reads as before but for the number of the line. The program prints no line
  it did not print.

  **The self-test**, nineteen cases where it had fourteen, eighteen under
  Windows with Git Bash. The command that ends on the SIGTERM with all it
  started, `sh -c 'sleep 7373 & sleep 7375'`, the whole call back within 1900
  milliseconds by bash's own time: a watchdog that waits out its second is not
  back before 2000, and a copy of the program with the look of before failed
  the case with 2056 in the container kept by `tail -f /dev/null`, as the job
  hooks on every system (alpine) runs it, and passed in the one started with
  --init; 1900 leaves six tenths over the 1.155 and 1.293 seconds of the cases
  under Windows above, the end of the case before and the case's own checks
  lying in those. Under CPU load, with the code of the first commit in the
  tree, the self-test passed eight times each under twenty and under sixty
  busy loops on the Mac, ten cores, and in that container, 1100 zombies
  standing in it, the call of the new case taking 1018 to 1032 milliseconds on
  the Mac and 1066 to 1416 in the container, 1098 to 1216 in the one started
  with --init under sixty loops, and 2048 to 2161 for the copy with the look
  of before. Four cases on the descriptors: 9 free and closed for the command,
  9 held and reaching the command, 3 to 9 all held, and the caller's stderr
  closed. No case brings the line of bash about, the race being none to force;
  that it stays away is measured by the runs.

  **What the build does not reach**, two blocks of this day with Fix none, the
  last two under "## Milestone 12", their shoulds put to the person. The look
  rests on `/proc`: where it is not there, or names the shell by another
  number, the look is kill with 0 and the second is waited as before, measured
  in a privileged container with `/proc` covered by an empty file system,
  2.118 seconds with the line and 124; and a process `/proc` does not show the
  shell, another user's under hidepid, or one born after the look listed the
  group while its parent ended before the look read it, counts as ended and is
  sent SIGKILL at once, read and not measured. And the starts: with the
  descriptors 3 to 9 all held by the caller, or the caller's stderr closed,
  the command starts as before this day, the line possible on macOS in the
  first case, no caller in this set holding a descriptor from 4 to 9 where it
  calls the bound, searched with git grep; and a line of bash on a fork that
  fails at one of the two starts goes to `/dev/null` with the line on setpgid.
  Under Windows with Git Bash nothing of this change is measured before the
  job has run there: the two starts and the four cases on the descriptors run
  there as everywhere, the look is the kill of before, and the report says
  what the log has to show.

  **Where the order and the repository part.** The should on the stderr rules
  out, read word for word, the one line the shell writes for a command it
  cannot start, "command not found" with 127 or "bad interpreter" with 126,
  measured at `f06f34c` as `bin/devloop-bounded: line 341: nosuchcmd-xyz:
  command not found`: the shell writes it once the command's stderr is set,
  nothing in bash parts it from what the command writes, and it alone says why
  nothing ran, so that it stays, the head and the note say so, and the report
  puts the wording of the should to the person. And the order asked which of
  the two starts prints the line: both.

  **The blocks and the table.** The two blocks carry their Fix, the line of
  the look, `while stands "$1" && kill -0 "$t" 2>/dev/null; do sleep 0.1;
  done`, and the line of the command's start, and a note on what is built,
  measured and not reached. The watchdog's line is the Fix line of three more
  blocks, the fetch that hung on macos-latest, the watchdog's sleep on alpine
  and the bound waiting past it: it changed, the watchdog starting on it
  inside the group whose stderr points to `/dev/null`, so that their runs of
  11 November 2026 count no more. All five read Built, never walked, which the
  tool computes, until the runs at the third commit of this branch. In the
  table: four things for what is new, the bound back without the watchdog's
  second, the look where `/proc` cannot be trusted, the two starts, and the
  start with the stderr the shell has; eleven lines that entered the search
  set recorded as part of their things, nine of them lines of the self-test;
  and the notes of four records of the program brought to this day.

  **The other documents**, searched for sentences on the bound that this build
  makes false, with git grep over `docs/plan.md`, `docs/skill-conventions.md`
  and `README.md` for the program's name, for SIGKILL, SIGTERM, watchdog,
  zombie, setpgid, process group, job control, kill -0, the counts of the
  self-test's cases and the stderr of a bounded command, and over `bin`,
  `scripts`, `hooks`, `skills`, `shared`, `output-styles` and `.github` for
  the program's name. `docs/skill-conventions.md`, the paragraph on the time
  limit of a call, lines 2198 to 2212: "by SIGKILL a second after the SIGTERM
  where something of the group still stands, back at most two seconds after
  its seconds" holds, a zombie standing for nothing now, and what the bound
  does not end is left to the program's head there; nothing changed.
  `README.md` carries no sentence on the program. `docs/plan.md` under
  milestone 12: the paragraph on the second piece said "Of the rest nothing is
  built yet: the orders before (2) of 12 November 2026 and (2) to (7)", which
  this build makes false for the first of the two orders; it says since this
  entry what stands and that the second order before (2) and (2) to (7) are
  not built. The heads of `bin/devloop-setup-state`, `bin/devloop-arm`,
  `bin/devloop-start-conditions` and `bin/devloop-tool-state`, the text of
  `scripts/devloop-run-workflow` on the groups of the command and the
  watchdog, `shared/fetch-three-times.md`, `shared/branch-deletion.md`,
  `skills/build-work/SKILL.md` and the comments of the workflow say of the
  bound what holds as before.

  **The runs at the third commit**, which changes no code: every run
  below ran the code of the first commit, `c38594d`, at the second, `4e830f2`,
  the tree clean, under 0.184.0, on 13 November 2026 from 08:28 to 08:59 UTC,
  on the person's Mac, macOS 26.6.2 with bash 3.2.57, in a bash started with
  `--noprofile --norc`, and in throwaway containers of `alpine:3.22` there,
  bash 5.2.37, started anew for these runs, the one kept by `tail -f
  /dev/null` as its process 1 and the other started with `docker run --init`,
  a whole call timed by bash's own time.

  The three commands of the block on the zombie, five times each, from
  08:28:12: in the container kept by tail back after 1.012 to 1.015, after
  1.010 to 1.014 and after 1.115 to 1.124 seconds, where they took 2.056 to
  2.075, 1.008 to 1.013 and 2.052 to 2.063 at `f06f34c`; in the one started
  with --init after 1.009 to 1.019, 1.010 to 1.019 and 1.124 to 1.131; every
  call with its line and 124, no process of a command living afterwards,
  fifteen zombies standing in the first container, which nothing reaps there,
  and none in the second.

  The line of bash, on the Mac without load from 08:30:18: in none of 20000
  runs of `bin/devloop-bounded 60 sh -c 'exit 3'` and in none of 20000 runs of
  the bound over the script whose interpreter is missing, every exit code 3
  and 127, where the line stood in 10 and in 11 at `f06f34c`; under twenty
  busy loops from 08:34:16, in none of 4000 runs of each. The self-test of
  `bin/devloop-tool-state` a hundred times running, from 08:39:01 to 08:49:14:
  "SELF-TEST PASSED: 63 cases" and exit 0 every time. And the start with the
  stderr the shell has, the descriptors 3 to 9 all held by the caller, from
  08:36:38: exit 3 in every one of 20000 runs and the line of bash in 1 of
  them, so that what the block on the two starts read off the code is
  measured: the line is possible there as before.

  The situations of the counter-check, each brought about once, on the Mac
  from 08:28:52 and in the two containers from 08:29:15, the three times in
  that order. The command ends before the bound: "out" and "err" through with
  0, the 3 through, "in" fed to cat through, back after 0.006 to 0.007 seconds
  on the Mac, no `sleep 7339` of the bound standing afterwards on any of the
  three. The command takes SIGTERM and a sleep of it loses its parent: the
  line and 124 after 1.019, 1.123 and 1.016 seconds, no sleep living
  afterwards. The command ignores SIGTERM, a shell and two sleeps: the line
  and 124 after 2.043, 2.110 and 2.118 seconds, neither sleep living
  afterwards. A sleep that ends and loses its parent beside one that ignores
  SIGTERM, `sh -c 'sleep 7361 & (trap "" TERM; exec sleep 7363) & sleep
  7365'`: half a second after the bound sleep 7363 stood with parent 1, in the
  container kept by tail beside the zombie of sleep 7361 in its group, and the
  call was back with the line and 124 after 2.033, 2.097 and 2.092 seconds,
  nothing of it living afterwards, SIGKILL a second after the bound. A bound
  inside a bound: the inner command taking SIGTERM, back after 1.128, 1.130
  and 1.127 seconds, and the inner command ignoring it after 1.695, 1.646 and
  1.649, no sleep and nothing of the inner bound left. The program ended by
  SIGTERM, SIGINT and SIGHUP 0.7 seconds into a shell with two sleeps: exit
  143, 130 and 129 on each of the three, and 0.15 seconds after the signal no
  sleep of the command, no sleep 0.5 of the helper and no sleep of the
  watchdog living; a copy with the look of before had the helper's sleep 0.5
  standing at that moment in the container kept by tail. The fetch over a
  transport that never answers, over the one process and over the shell that
  waits for its sleep: the line and 124 after 1.023 and 1.028 seconds on the
  Mac, after 1.017 and 1.013 in the container kept by tail and after 1.012 and
  1.019 in the other, no transport living afterwards; in the log of the job on
  alpine of run 43017830242, job 130513239646, those two cases of the
  self-test stand 2.027 and 2.017 seconds after the line before them.

  The self-test of `bin/devloop-bounded` on the Mac at 08:49:23, "SELF-TEST
  PASSED: 19 cases" and exit 0, and in both containers at 08:51:49, 19 cases;
  under CPU load from 08:49:29 on the Mac, ten cores, and from 08:52:02 in the
  container kept by tail, eight times under twenty and eight times under sixty
  busy loops, passed every time, the call of the new case twelve times under
  each load back after 1015 to 1032 milliseconds on the Mac and after 1060 to
  1356 in the container, 565 zombies standing in it at the end. Under twenty
  busy loops, from 08:54:46 on the Mac and from 08:56:21 in that container:
  400 runs of `bin/devloop-bounded 7339 sh -c 'exit 3'`, every exit 3, nothing
  on stderr and no `sleep 7339` standing afterwards; and 40 fetches over the
  one process and 40 over the shell that waits for its sleep, every one with
  124 and the line alone, no transport standing at any return or a second
  after the last. The command of the finding of 11 November 2026, `sh -c 'trap
  "" TERM; sleep 6'`, at 08:58:16 on the Mac: the line and 124 after 2.142
  seconds, and `sh -c 'trap "" TERM; sleep 7357'` five times after 2.038 to
  2.140; in the container kept by tail after 2.114 and after 2.013 to 2.124,
  no sleep living afterwards.

  Where `/proc` cannot be trusted, in a container started with --privileged at
  08:58:42 and removed again, as before the build: with `/proc` covered by an
  empty file system the first command of the block back after 2.101 seconds
  with the line and 124, the watchdog waiting for the zombie as before this
  day, and a command that ignores SIGTERM after 2.108; in a namespace of
  process numbers of its own with the container's `/proc`, the shell number 1
  there and 70 in `/proc/self/stat`, the command that ignores SIGTERM back
  after 2.088 seconds, sent SIGKILL a second after the bound and not at once,
  no sleep left.

  The rows of these runs stand in `docs/stock-take.tsv` since this commit,
  thirteen of them, each under 0.184.0: on the four things this branch added;
  on four things of the program, the bound firing and the self-test passing,
  whose runs stopped counting with the lines this branch changed, and the
  command ending before the bound and the command that ignores SIGTERM, each
  tied with this commit to a line of this branch it runs through, the search
  for the descriptor and the line of the look, so that no run of before counts
  for the start and the look of this day; on the two blocks; and on the three
  blocks whose Fix line changed. 0.184.0 came with the first commit, which
  changed every one of those lines last, so that the tool lists all of them as
  Walked on this branch, and after a squash merge one commit carries the
  version and the lines alike. The Status of the five blocks reads Walked
  since this commit, which the tool asks for. The block on the two starts says
  since this commit that the line stood in 1 of 20000 runs with the seven
  descriptors held. No row stands for what a job of the checks on GitHub alone
  brings about: the self-test with its nineteen cases on ubuntu-latest and
  macos-latest and its eighteen under Windows with Git Bash, and the self-test
  in the container of the job on alpine, whose process 1 GitHub's own
  `tail -f /dev/null` is. Every thing and block whose run this branch needs
  has it from here, so that no order records those runs; the checks of pull
  request #242 on the third commit, run 43401195658, were green on all five.

  The tool, before, on `f06f34c`: broken records 0, uncovered lines 0 of 4597;
  Undetermined 24, Recorded, not built 262, Built, never walked 1506, Walked
  716, Closed 70; milestone 12 107 blocks, Recorded, not built 45, Built,
  never walked 46, Walked 12, Closed 4; blocks with "not stated" 345. After
  the second commit: uncovered lines 0 of 4610, thirteen lines of the program
  having entered the search set; Built, never walked 1517 and Walked 711, two
  things and three blocks having lost their counting run, read off the two
  reports with the command of the order, and the four new things and the two
  blocks built standing without one; milestone 12 109 blocks, Recorded, not
  built 45, Built, never walked 51, Walked 9. After this commit: Built, never
  walked 1506 and Walked 722, the four new things and the two blocks more than
  before; Recorded, not built 262, two blocks built and two written; milestone
  12 109 blocks, Recorded, not built 45, Built, never walked 46, Walked 14,
  Closed 4; every other figure as before; blocks held against the branch
  point: removed 0, renamed 0, Should changed 0, added 2; Walked on this
  branch without a run the branch adds: 0. The self-test of the tool: 159
  cases, 148 of 148 messages asserted by a case, before and after. Before this
  commit, with its documents in the tree, nineteen of the twenty checks before
  a handover printed what they printed on `f06f34c`, line for line, and the
  sixteenth, the run of the workflow's steps, was green as there, 8 steps run,
  the self-test of `bin/devloop-bounded` passing in it with 19 cases where it
  had 14, that of `bin/devloop-tool-state` with 63, and its title step passing
  the head of this entry, 62 characters.

- **One entry held, a should reworded, a block closed, two rules decided**

  13 November 2026, version 0.184.0, unchanged: nothing under `skills/`,
  `shared/`, `hooks/`, `bin/`, `scripts/`, `output-styles/` or `.github/`
  changes, and `README.md` and `docs/stock-take.tsv` do not. On
  `task/audit-2026-11-13`, off `origin/main` at `e2d6374`, in one commit:
  `docs/defects.md`, `docs/plan.md` and this entry, with the entry it adds
  under "## Decisions taken against". The order: the consistency audit
  before the handover, in the form of the audits of 4, 6, 9 and 12 November
  2026 — the one entry since the last audit, on the bound and the zombie,
  held statement by statement against `bin/devloop-bounded`, the documents,
  the table and the four commits of pull request #242; the control
  documents searched for sentences that build made false;
  `docs/rationale.md` held against the loaded texts where one changed; the
  logs of the checks of that pull request read for three things the order
  names; what has one right answer mended here and the rest put to the
  person in the report; and four decisions of this day carried in. Written
  by Claude Code from the person's order of this day; no session log was
  read; nothing was installed; GitHub was read with `gh pr view` for pull
  request #242 and with `gh run view` for runs 43401195658, 43405794553 and
  43017830242, the branch fetched by its reference, here and into a clone
  under a throwaway directory; three sources the entry cites were fetched
  without a sign-in, the release bash-3.2.57 from ftp.gnu.org and one file
  each of apple-oss-distributions/xnu at xnu-12377.121.6 and of
  git-for-windows/msys2-runtime at 5a1665c8, and nothing beyond; the
  identity under which git commits here was not set, its name read with
  `git config` and its address not shown; no subagent was used. The report
  stands on this machine as `~/devloop-audit-2026-11-13.md`, in German, and
  is not in the repository. Every line number of a file in this entry holds
  at `e2d6374` unless it says otherwise.

  **What was read, and how.** Whole, with the text in front of the session:
  the entry, lines 5563 to 5905, and the audit of 12 November 2026, lines
  5324 to 5562, as the form; `bin/devloop-bounded`; the seven blocks of
  `docs/defects.md` at lines 1292, 1300, 1387, 1435, 1443, 1459 and 1467;
  `docs/plan.md` lines 1043 to 1143; `docs/skill-conventions.md` lines 1761
  to 1960, 2165 to 2237 and 3940 to 4446; the head of
  `scripts/devloop-stock-take`, lines 1 to 100, 238 to 385, 458 to 587 and
  676 to 934; the change of the table by pull request #242; the report of
  that build on this machine at the places a statement rests on; every
  place a statement names, with the lines around it. The branch of #242 was
  fetched by its reference, four commits, the tree of its head equal to the
  squash commit on main, `git diff --stat` empty. The tool ran in the clone
  at `f06f34c` and at the second, the third and the fourth commit,
  `origin/main` standing at `f06f34c` there. What the entry measured on the
  Mac, in a container or under load was not measured again: samples were
  held against the report of the build, and three of the sources it cites
  were read at the lines named, `jobs.c` lines 1695, 1746 to 1747 and 1817
  of bash 3.2.57, `bsd/kern/kern_sig.c` line 1715 of xnu-12377.121.6 and
  `winsup/cygwin/signal.cc` lines 363 to 364 of the runtime at 5a1665c8.
  Every sample stands but one the report does not carry, "ten looks 6 and
  20 milliseconds", line 5665, which is neither confirmed nor refuted here.

  **The entry against the code, the documents, the table and its commits.**
  Held: what the entry says of its four commits and their files, of the
  version, of a line of a file of this repository, of the rows of the table
  and their counts at each commit, of the Fix, the Status and the notes of
  the blocks, of the function `stands` and the two starts as the program
  carries them, of the cases of the self-test, and every figure of the tool
  at `f06f34c`, after the second commit and after the third, which the tool
  printed again in the clone, figure for figure. The entry holds in what
  was held but for one sentence:
  - "and the log of one job, with gh run view", lines 5591 to 5592: the
    logs of two jobs of run 43017830242, 130513239539 on windows-latest,
    which the entry cites at line 5634, and 130513239646 on alpine, cited
    at line 5830, both named by the report of the build. Said right here,
    the entry standing as written.
  No line number of the entry is wrong, and nothing in it is corrected in
  place. One figure of the program's head differs from the entry, the block
  below.

  **The checks on GitHub**, read off the logs of run 43401195658 at the
  third commit, `4718bcd`, and of run 43405794553 at the fourth, `7d2b943`,
  five jobs each and every one green. The self-test of `bin/devloop-bounded`
  passes with 19 cases on alpine, macos-latest and ubuntu-latest and with 18
  on windows-latest in both runs, as the entry has it at lines 5686 to 5687
  and 5876 to 5877. Its case "does not end, all of it ended on the SIGTERM"
  stands after the line before it, in the job on alpine, 1.007 seconds in
  the first run, job 131804163902 at 09:25:52 UTC, and 1.011 in the second,
  job 131819709362 at 10:01:11, where the three cases in which the bound
  fires on a command that takes SIGTERM stood 2.016 to 2.027 seconds after
  theirs in run 43017830242; and in the job on windows-latest 1.169
  seconds, job 131804165381 at 09:27:22, and 1.188, job 131819709305 at
  10:02:43, seven tenths short of the 1900 milliseconds the case allows.
  The characters "child setpgid" stand in no job of either run. So what the
  program's head calls not measured under Windows with Git Bash, lines 181
  to 183 and 217 to 218, the job has measured there first, as those
  sentences say it would, as far as the self-test asks: its eighteen cases,
  the four on the descriptors and the new one among them. The head stands,
  this audit changing no code.

  **Decided on 13 November 2026**, on the should of the block at line 1443
  of `docs/defects.md`, on the line of bash in a command's stderr: the
  should names the one line the shell writes for a command it cannot start
  as what reaches the command's stderr beside what the command writes. The
  old should read "nothing but what the command itself writes reaches its
  stderr through `bin/devloop-bounded`, no line of the shell that starts it,
  at every run on every system, and the self-test of
  `bin/devloop-tool-state` passes its case of a command that finds no node
  at every run on every system on which the step hooks on every system runs
  it"; the new one, in the wording the person approved and in the field
  Should of the block since this commit, reads "nothing but what the command
  itself writes reaches its stderr through `bin/devloop-bounded`, no line of
  the shell that starts it but the one it writes for a command it cannot
  start, at every run on every system, and the self-test of
  `bin/devloop-tool-state` passes its case of a command that finds no node
  at every run on every system on which the step hooks on every system runs
  it". Reason: the line the shell writes for a command it cannot start is
  the one account of why nothing ran, and the build leaves it, line 5725.
  The order names nothing that was not chosen; what the decision leaves
  behind is the should as it stood, which that line breaks wherever a
  command cannot be started. No code changes with the decision and no run
  is touched, a run on a defect counting by the last change to its `Fix`
  line alone; the note of the block names the change. What the should asks
  "at every run on every system" the start with the stderr the shell has
  does not meet, measured in 1 of 20000 runs with the seven descriptors
  held, the block closed below; whether the should is to say so, as the
  decision of 10 November 2026 narrowed one for a block that reads Walked,
  lines 4525 to 4526, is put to the person by the report. The line of the
  fixed form, the title as the tool reads it:

  Should changed: on macOS bin/devloop-bounded passed a line of bash on setpgid into the stderr of a command that ended at once, the self-test of bin/devloop-tool-state red once by it in the run of the workflow's steps

  **Decided on 13 November 2026**, on the two blocks of what the build of
  this day does not reach, lines 1459 and 1467 of `docs/defects.md`: each is
  closed as left on purpose where its reasons hold, each reason held
  against the code and the text of the block before the closing. For the
  block at line 1467 they hold, and
  both halves of the block on the two starts are left on purpose: the
  start with the stderr the shell has, and a line of bash on a fork that
  fails reaching nobody. Reason: that start stands only where the caller
  holds every descriptor from 3 to 9 or has closed its stderr, and no
  caller in the repository does; and for the line of bash on a fork that
  fails there is no way that shows it and keeps the line on setpgid out,
  both written at the same fork to the same stderr. Not chosen: a
  descriptor above 9, which bash may use itself by the note of the block.
  Held: the program takes that start at its line 484 exactly where the
  search of line 480 finds 9 down to 3 all open or `: >&2` fails at line
  481; the callers, searched for by this audit, run the program at
  `bin/devloop-setup-state` line 209, `bin/devloop-tool-state` line 482,
  `bin/devloop-start-conditions` line 341 and `bin/devloop-arm` line 328,
  in `shared/fetch-three-times.md`, `shared/branch-deletion.md` and
  `skills/build-work/SKILL.md`, and in the hooks step of the workflow
  through the self-tests, none with a descriptor from 3 to 9 or a closed
  stderr on its line; over `bin`, `hooks`, `scripts`, `skills`, `shared`
  and `.github` no program opens a descriptor above 2 that a later call of
  the bound would inherit, the one holder being awk's own descriptor 3 at
  line 918 of `bin/devloop-command-reader`; a Bash call of Claude Code
  holds none of 3 to 9 and has its stderr open, looked at in the session of
  this audit; and `jobs.c` of bash 3.2.57 writes the line on the fork in
  the parent at line 1695 and the line on setpgid in the child at lines
  1746 to 1747, each to the stderr the shell has at that fork. The Status
  of the block carries the closing with the line above as its proof; its
  Fix stays none and its Should stands.
  The block at line 1459, on the look that rests on `/proc`, is not closed
  here. The decision: left on purpose as well. Its reasons: where `/proc`
  is not there or shows the shell under another number the watchdog waits
  the second as before 0.184.0, no worse than before; and a process the
  look does not see is sent SIGKILL at once and not a second later, where
  one born after the look listed the group was born after the SIGTERM and
  never got it, and one of another user under hidepid is not reached by a
  SIGKILL of the bound's user. Not chosen: ps as a second way, a process
  start for every look and missing on slim Linux images. Held against the
  code, the three statements stand: `stands` answers as kill does at its
  lines 340 to 343 where `/proc/self/stat` is not there or names another
  number, and it is called at line 364 alone, in the watchdog and in the
  helper after `end_group`, lines 496 and 502, so that every look comes
  after the SIGTERM. What the reasons do not name: whether hidepid hides
  from the shell a process of its own user as well, one that runs a
  set-user-ID or set-group-ID program or is not dumpable, which a SIGKILL
  of that user reaches and which would then lose the second it had before
  0.184.0. That is read in no source and not measured by this audit, the
  order allowing neither; the question is put to the person by the report
  with both ways, and the block stands as it stood, Recorded, not built.

  **Decided on 13 November 2026**, on the names of the things in
  `docs/stock-take.tsv`: they keep their three parts, source, unit and
  outcome, and speaking names are rejected. The decision stands with its
  reason in the entry this branch adds under "## Decisions taken against",
  on speaking names for the things of the stock-take. Counted at `e2d6374`:
  1868 things and 2462 runs keyed to a thing by its name, 4330 rows, the
  figure of the order; and 3226 records that name a thing after "part of:"
  beside them, which the order does not count and the tool holds against
  the names as well, line 2912 of `scripts/devloop-stock-take`.

  **Decided on 13 November 2026**, on a thing whose name names a green and a
  red end at once: it is split in two, one for each outcome, as the
  self-test of `bin/devloop-bounded` stands at lines 2577 and 2578 of the
  table. Such a thing that carries runs is renamed to its green end,
  together with all its runs in the same commit, and its note names the old
  name; the sentence of the head of `scripts/devloop-stock-take` at lines
  379 to 381 says then that a thing with runs keeps its name unless it is
  renamed with all its runs in the same commit; and the red end stands as a
  new thing, Built, never walked, until a run brings it about on purpose.
  Reason: every outcome is a thing, line 90 of that head, the tool must
  never overcount, line 566, and every branch is walked once on purpose,
  the unwanted side included, line 91 of `docs/plan.md`. Not chosen: the old
  name kept with the note alone saying what it means; the green runs taken
  out; and one red run alone added to the thing that names both. Not built
  here: the sentence stands under `scripts/`, a shipped directory; the
  second of the two orders before (2) builds it and brings about on purpose
  the red end of the programs it changes, and `docs/plan.md` says so under
  milestone 12 since this commit, in a dated sentence after the decision of
  12 November 2026. Held against the table at `e2d6374`, with the ten rows
  the audit of 12 November 2026 names at lines 5524 to 5542: ten green runs
  stand on six such things, four of the runs count, one each on four things
  that read Walked by them, and two of the six read Built, never walked,
  where the order has ten runs counting for six; and 402 records name one
  of the six after "part of:", which a renaming carries with the runs, the
  tool rejecting a record that names no thing, so that the sentence in the
  plan names them.

  **The control documents against the build.** Searched from the subject,
  the program and what the build changed in it, with `/usr/bin/grep -rn -E`
  for fourteen short patterns, `devloop-bounded`, `zombie|reap`,
  `setpgid|job control`, `watchdog`, `kill -0|signal 0`, `SIGKILL`,
  `descriptor`, the counts of cases, `first line of`, `/proc`, `two
  seconds|second later|a second after|one second|its second`, `process
  group`, the output passing through unchanged, and what is not measured
  under Windows, over the roadmap and its archive, `docs/defects.md`,
  `docs/plan.md`, `docs/rationale.md`, `docs/skill-conventions.md`,
  `README.md`, `scripts/devloop-stock-take`, `skills`, `shared`, `bin`,
  `hooks`, `output-styles` and `.github`: 751 lines at `e2d6374`, every one
  decided in the report. Of them 185 stand in the archive and 273 in dated
  entries of this file, 79 in the entry held; 95 in 35 blocks of
  `docs/defects.md`, the title, the Should, the Fix and the Status of each
  read; 12 in `docs/plan.md`, 13 in `docs/skill-conventions.md`, 7 in
  `docs/rationale.md`, none in `README.md`. Mended:
  - `docs/plan.md` lines 1137 to 1139, the paragraph on the second piece of
    milestone 12, "what that build does not reach stands in two blocks of
    this milestone with Fix none, and under Windows with Git Bash it is
    measured by the job first": a sentence after it says what the job
    measured, the two runs above, and that the block on the two starts is
    closed as left on purpose.
  No other sentence read stopped holding: `docs/skill-conventions.md` lines
  2198 to 2212 hold as the entry says, the heads of `bin/devloop-arm`,
  `bin/devloop-setup-state`, `bin/devloop-start-conditions` and
  `bin/devloop-tool-state` say of the bound what holds, the last reading
  the first line of a bounded command's stderr as its message at its line
  479, and `README.md` says nothing of the program.

  **`docs/rationale.md` against the loaded texts.** `git diff --stat
  f06f34c e2d6374 -- skills shared output-styles` prints nothing: no text
  the set loads changed since the last audit, and nothing was held.

  **A block on a figure of the program's head**, written here with Fix
  none, Recorded, not built, the last block under "## Milestone 12": "the
  head of bin/devloop-bounded gives the self-test's call under CPU load on
  macOS as 1017 to 1032 milliseconds, where the build's report and the
  entry of that day give 1018 to 1032". The head says at its lines 257 to
  258 "under CPU load the call took 1017 to 1032 milliseconds on macOS";
  the entry says 1018 to 1032 at line 5698, and the report of the build
  1018 to 1030 under twenty busy loops and 1021 to 1032 under sixty. Its
  Should: the head gives the figure the report and the entry give. The
  sentence stands, this audit changing no code. Under milestone 12 with the
  seven blocks the entries of 10, 11 and 13 November 2026 wrote on the
  bound; the groups of the sorting, lines 1146 to 1151, name the bound
  under milestone 13 as well, which the report puts to the person.

  The tool, before, on `e2d6374`: broken records 0, uncovered lines 0 of
  4610; Undetermined 24, Recorded, not built 262, Built, never walked 1506,
  Walked 722, Closed 70; milestone 12 109 blocks, Recorded, not built 45,
  Built, never walked 46, Walked 14, Closed 4; blocks with "not stated"
  345. After: Closed 71 and Recorded, not built 262, one block closed and
  one written; milestone 12 110 blocks, Recorded, not built 45, Closed 5;
  every other figure as before; blocks held against the branch point:
  removed 0, renamed 0, Should changed 1, added 1, with one line of the
  fixed forms; Walked on this branch without a run the branch adds: 0. The
  order measured a trial build of the four decisions alone at Recorded, not
  built 260 and Closed 72, milestone 12 109 blocks with 43 and 6: this
  commit differs from it by the block at line 1459, not closed, and by the
  block written here. The self-test of the tool: 159 cases, 148 of 148
  messages asserted by a case, before and after. Nineteen of the twenty
  checks before a handover print after what they printed on `e2d6374`, line
  for line, and the sixteenth, the run of the workflow's steps, what it
  printed there but for the tool's lines above and the time in one record,
  green before and after, 8 steps run. Its title step reads the head of a
  new entry off `git diff origin/main...HEAD`, the commits of the branch,
  and so read none before the one commit of this branch; the two heads this
  branch adds were held to the step's three rules by hand before it, 68 and
  48 characters and no find, and the report says what the step printed
  after it. No run is recorded.

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
  Read again on 11 October 2026 by the entry on the second closing run of
  milestone 3: the window size and a percentage now reach the status line,
  `context_window.context_window_size` and `used_percentage` on the Claude
  Code page on the status line, and reach no hook, the hooks reference
  carrying token figures only on `SessionStart` for a resumed or forked
  session, on `PreModelSwitch` and in the result of a foreground `Agent`
  call; the sum of `input_tokens`, `cache_creation_input_tokens` and
  `cache_read_input_tokens` is the vendor's own formula for that percentage;
  neither condition for reopening is met, the window size reaching no hook
  and both closing runs having ended by themselves; not reopened.
- **A readiness check before clearing a session.** Verify the artifacts are
  current before the context goes away. Rejected: it answers a question this
  workflow does not have. The state is the tracker and git — a task is merged or
  it is not, an issue is open or it is not — so the check would report "current"
  every time. The one place it applied was planning, fixed as above.
- **Letting the branch guard pass writes to gitignored files.** Rejected: an
  exception would soften the signal for more than it is worth. The reason first
  written here was a second one — that no real case exists, the two local-state
  files being produced on a branch or by a hook the guard never sees — and **that
  half stopped holding and has since come back.** Measured on 6 September 2026 in
  `devloop-test-o` at 20:14 UTC: the unattended run wrote
  `.claude/autorun.local.md`, gitignored local state the step prescribed at the
  time, while still standing on the main branch, and the guard blocked it. What
  the run did next is why this was not reopened then: it cut the task branch and
  wrote the file there, which is what the guard's message asks for and what the
  step needed anyway. That write is gone — the step no longer writes any such
  file. The local state left is `check-attempts.local`, produced by a hook the
  guard never sees, and since 14 September 2026 the mode mark `unattended.local`,
  written with a shell command — which the guard reads only for `git commit` and
  `git push` — so the second reason holds again for both. The verdict rests on
  both once more. Reopen on a case where such a file cannot wait for a
  branch.
- **A router for when you are lost, `which-skill`.** Pocock's `ask-matt`,
  renamed: a skill that says which skill to run next. Rejected on 25 September
  2026: the skills of this set are invoked by the model from their
  descriptions, and only `start-work` and `record-lessons` are typed. A router
  beside that would mean the descriptions do not work, and then the
  descriptions get repaired, not a router built next to them. Reopen if a
  measured run shows a description failing to route and a repair of it not
  holding.
- **A handover between sessions, `write-handover`.** Pocock's `handoff`,
  verbatim: a skill that writes down where a piece of work stands for the next
  session. Rejected on 25 September 2026: the state of a piece of work stands
  in the tracker and in the repository, not in the session. `start-work` opens
  by reading it, and `untangle-idea` already says at the end of a mapping
  session what the next one picks up. A skill for it would write down a second
  time what is written down once. Reopen if a piece of state is found that
  lives in neither the tracker nor the repository and a next session needed
  it.
  Read again on 11 October 2026 by the entry on the second closing run of
  milestone 3: the reason holds, the state of both closing runs standing in
  the tracker and in git, and Pocock's own page on `handoff`,
  `docs/productivity/handoff.md` at `49dd158`, now confines it to work that
  moves to another harness, directory or person, or to a side task forked
  off, sending the ordinary phase boundary to `/compact`, `/clear` or a
  subagent; not reopened.

- **Setting the project up, then sharpening the idea, then setting the checks
  up.** Examined on 16 October 2026 against project 1 of the runs of that day
  in `devloop-test-x`, the roadmap entry of that date on those runs: before
  the first question on the idea came the questions of the setup and four
  merges by hand, while the sharpening needs only the tracker `setup-project`
  creates, `skills/plan-work/SKILL.md` lines 40 to 43, and no check. Rejected
  the same day, by the person: the checks come before the planning only while
  a row of `checks.md` is `empty` and there is code, since that is the one
  place `skills/start-work/SKILL.md` step 4 sends there, lines 240 to 246;
  once every class is decided every further idea goes into the planning
  without them, and a project without code gets its checks after the first
  merge with code, lines 249 to 251. The one rule of step 4 would become four
  cases — a new idea sharpened first; a planning taken up again after Stage 1
  that needs the checks first, where `skills/plan-work/SKILL.md` asks at once
  how the work runs, lines 142 to 145; a planning taken up again in Stage 1;
  and the build of a planned task. `plan-work` would have to call
  `setup-checks` whole in the middle of a planning, with merges by hand, and
  go on at the right place afterwards, where today it calls step 8 alone with
  `--auto`, lines 382 to 386; the paragraph at lines 361 to 374 and the
  approved introduction, lines 19203 to 19215 of `docs/roadmap-archive-1.md`, would change; and
  such a hand-over between two skills is the place defect 1 of the first
  closing run lay at, lines 17161 to 17184 of `docs/roadmap-archive-1.md`. Reopen if the setup
  of the checks comes before the planning of an idea in a project whose checks
  are all decided already.

- **Text owed before a tool call as a text block, held there by the output
  style.** From 15 to 17 October 2026 the style told the run that text a
  skill owes before a tool call or a question stands as a text block of the
  message before that call. Rejected on 17 October 2026: with
  `claude-sonnet-5-5` at medium under that style the five parts before the
  mode question went into a progress update and into no text block in five
  runs of five, six of six and one of one, and again in five of five after a
  denial of the question with the reason,
  `~/devloop-report-2026-10-16-progress-update-bench.md` lines 836 to 843;
  the runs of 16 October 2026 met the same, defect 14 of the entry of that
  date. Owed text goes into the question or into the message that ends the
  turn instead, the entry of 17 October 2026. Reopen if a model or a setting
  of Claude Code keeps text before a tool call as a block of the message on
  such a bench, or the session shows progress updates whole.
- **A hook that denies the question where the text before it stands in a
  progress update.** A PreToolUse hook on the choice widget that reads the
  current message and denies the call where the owed text went into a
  progress update. Rejected on 17 October 2026: the hook does not see the
  blocks of the message that holds the question, which are written to the
  transcript after it returns, and after a denial with the reason the model
  wrote the text into a progress update again in five runs of five,
  `~/devloop-report-2026-10-16-progress-update-bench.md` lines 812 to 843.
  Reopen if Claude Code hands a PreToolUse hook the blocks of the current
  message, and a model then puts the text where the denial asks.
- **A tool of the plugin that carries the text as its input, with a hook
  that shows it as a system message.** Measured on 17 October 2026: the call
  alone shows as one collapsed line, its input and result only after Ctrl+O,
  while the hook's system message stands whole with the hook's name before
  it, and ten runs of ten called the tool with all five parts,
  `~/devloop-report-2026-10-17-message-tool-bench.md` lines 1050 to 1066 and
  1086 to 1089. Rejected the same day, not on the display but because the
  person decided that they need no text in the middle of a turn: what a
  decision needs stands in the question and everything else in the message
  that ends the turn, the entry of 17 October 2026. Reopen if text the
  person has to read in the middle of a turn comes back as a need, a long
  run with nobody there reporting as it goes, say.
- **A permission for a single tool under a no.** The question on a tool
  missing under a record saying no would offer a third answer beside the
  person installing it and the check switched off: that the run installs
  this one tool. Asked for by the person at the question on `gitleaks` in
  the first closing run of 23 October 2026, and rejected by them the same
  day, „nein, passt“, once told that the install guard reads for an
  install the one answer of the project off the main branch,
  `hooks/pre-tool-use-install-guard.sh` line 928, and that a permission
  for a single tool stands nowhere: it would need a second kind of record
  and a guard reading it, beside an answer the project gives once. The
  roadmap entry of 24 October 2026 on the six closing runs, decision (a).
  Reopen if a no to installing keeps meeting single tools the person would
  let in.
- **The question line at the start of the question field.** The text a
  decision needs would follow the question line instead of standing before
  it, as the person found the mode question of the first closing run of 23
  October 2026 „etwas eigenartig aufgebaut. zuerst müsste die frage kommen
  und dann die Erklärung“. Rejected by them the same day, „nein passt.“,
  once told of the rule that the question field carries prose with the
  question line at its end, `docs/skill-conventions.md` line 742 and
  `output-styles/devloop.md` lines 17 to 20, and of their own approval of
  that question's wording on 17 and 19 October 2026. The roadmap entry of
  24 October 2026 on the six closing runs, decision (b). Reopen if a person
  reading the widget misses what is asked because the question comes last.
- **A hook on `SubagentStart` that gives every subagent the install rule.**
  A hook beside `hooks/session-start.sh` would hand every subagent of a set
  up project the install record as the session start prints it and the
  rule of `build-work` step 3 point 7 as its context, since a build
  subagent of run 2a and one of run 3a installed or left out a tool on what
  the main run wrote into their prompt, defects 7 and 2 of the roadmap
  entry of 24 October 2026 on the six closing runs. Rejected on 24 October
  2026, in the roadmap entry of that date on how an install is recorded,
  decision (1): the subagent never got the rule because `build-work` step 3
  hands it none, and the text gives it there; such a hook would give the
  rule to every subagent, every reviewer too, and can contradict what the
  main run writes into the prompt. Reopen if a build subagent handed point
  7 by the text still installs or leaves out a tool against the record.
  Reopened on 27 October 2026, on new ground, decision (2) of the roadmap
  entry of that date on the tool state read by one program: the condition
  is not met word for word, since the build subagents of run 1 of 26
  October 2026 did not get point 7 at all, their prompts carrying "Do not
  install anything" and a false claim about the machine, #446 and #772,
  new defect 6 of the roadmap entry of 27 October 2026 on the three
  closing runs; and the premise has fallen, since the text alone did not
  reach those subagents. A hook on `SubagentStart` carrying the
  `[InstallRecord]` line as `hooks/session-start.sh` prints it and a short
  rule that outranks the prompt on installing — a tool outside the
  repository installed under a yes alone, under a no or no record neither
  installed nor replaced by a stand-in, the subagent reporting the tool
  and the command — is built in the part on the build, after a bench of
  whether `additionalContext` of a plugin hook on `SubagentStart` reaches
  the subagent; the fifth rule of step 3 stays beside it. Built on 28
  October 2026, version 0.164.0, the roadmap entry of that date on the hook
  on SubagentStart: `hooks/subagent-start-install.sh`, registered under
  `SubagentStart` without a matcher, after the bench of that day showed on
  this Mac under Claude Code 2.1.312 that its context reaches the subagent.
- **A hook on `AskUserQuestion` holding the form of the install questions.**
  A `PreToolUse` hook on the choice widget would deny a question that
  names an install command outside backticks, or a command auto mode
  refused without its issue's number, defects 6 and 3 of the roadmap entry
  of 24 October 2026 on the six closing runs. Rejected on 24
  October 2026, in the roadmap entry of that date on how an install is
  recorded, decision (4): it would hold only the form of the same
  questions, the backticks and the number, not what they say, and for an
  install command in prose it would need a second list of commands beside
  the install guard's. Reopen if the form alone keeps failing in runs where
  the statement holds.
- **An approved wording as an example in a skill.** The wordings the
  person approves would stand in the skill that has them said, as the text
  a run copies, since at run 4 the line under the no of the install
  question and at run 1 the question on `gitleaks` left out what their
  approved wordings carry, point 12 and defect 6 of the roadmap entry of
  24 October 2026 on the six closing runs. Rejected on 24 October 2026, in
  the roadmap entry of that date on how an install is recorded, decision
  (7): "Describe what must be said; never dictate wording",
  `docs/skill-conventions.md`, stays, and what counts is the statement, as
  decided on 19 October 2026; both runs held in their statement, and
  devloop speaks the person's language, so a fixed German text would be
  wrong for anyone else. Reopen if runs under a complete text keep
  dropping what the statement needs.
- **A command reader that marks a command sent to the background or
  negated.** `bin/devloop-command-reader` would print that a command stands
  behind `&` or `!`, so that the install guard counts such an install as not
  alone and the fact hook writes no line on the call's exit, the defect of
  `&` and `!` that part A found, in the roadmap entry of 24 October 2026 on
  how an install is recorded. Rejected on 24 October 2026, in that entry,
  decision (8): no run wrote these forms, and the fix would change the
  program through which every hook reads a command, shortly before the pass
  that is to close milestone 3; the reader stays as it is, and the defect
  stays recorded, without a milestone. Reopen if a run writes one of these
  forms, or once that pass is made — a condition derived from the reason,
  the decision naming none.
- **A guard on `gh issue close` for an issue of a missing install.** A
  `PreToolUse` hook would block `gh issue close` for an issue carrying
  `install-tool` and `install-command`, so that only
  `bin/devloop-install-issues` closes such an issue, after new defect 1 of
  the roadmap entry of 30 October 2026 on the short run, where the second
  session sent `gh issue close` with a comment of its own in `start-work`
  and Claude Code's classifier refused it. Rejected on 30 October 2026, in
  the roadmap entry of that date on the start reading the install issues,
  the decision of the person: at every closing of an issue it would first
  have to read GitHub for what the issue holds, it would block every
  closing while GitHub does not answer, and it would have to know the
  other forms of closing an issue, `gh api` with `state=closed` among
  them; that is far more than the harm it prevents, and the program that
  removes the cause closes through `gh` itself, outside the Bash tool of
  the run. Reopen if a run closes an install issue by hand after the
  program ran before every read of an issue.
- **Speaking names for the things of the stock-take.** The things of
  `docs/stock-take.tsv` would be named by a phrase that says what each is,
  in place of the three parts every name has, source, unit and outcome,
  "<source> / <unit> / <outcome>". Rejected on 13 November 2026, in the
  roadmap entry of that date on the one entry held, the decision of the
  person: the tool holds the first two parts of a name against the site of
  its thing, rejecting a source that matches the site of no thing and a
  unit that does not match the site's file, lines 367 to 370 of the head of
  `scripts/devloop-stock-take`; and on the names hang 1868 things and the
  2462 runs keyed to one by its name, 4330 rows of the table counted at
  `e2d6374`, with 3226 records beside them that name a thing after "part
  of:". Speaking names would have rewritten those rows, changed the tool
  and its self-test, and taken that check away or asked for it to be built
  anew, for readability alone. The names stay as they are. Reopen if the
  tool comes to hold a thing against its site by something other than its
  name — a condition derived from the reason, the decision naming none.

## Names that were rejected

Kept so nobody re-proposes them: `plan-feature` and `build-feature` (the pair
implied planning was not building), `settle-open-questions` (too vague),
`split-into-tickets` (everything else says "task"), `clarify-idea-no-repo`
(the case does not exist in Claude Code), `map-decisions` and `sort-big-idea`
(lost to `untangle-idea`).

Never reuse the names of skills Claude Code ships: `doctor`, `code-review`,
`batch`, `debug`, `loop`, `claude-api`. The list is what the harness shipped when
each name was added, not a query: on 14 September 2026 `debug` was not in the
harness's list, as the entry on the first planning run records.
