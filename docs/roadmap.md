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

**This is a supply of names, not a backlog.** Nothing here is missing: the
pre-handover check that holds locked skills against their callers prints two
lines since 31 October 2026 (`628d166`), one from 13 September 2026 (`b90874b`) until then — `start-work`, named in `build-work`
step 6 as the place that sends an armed pull request there and in `shared/install-issues-read.md` as the place of the in-flight query and as the start a build or a planning followed, not run — and
nothing else, so no built skill reaches for anything on this list. A name leaves
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
