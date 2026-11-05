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
  `origin/main` at `cb5e5e9`, in three commits: the code with the version —
  `hooks/pre-tool-use-mark-guard.sh`, `bin/devloop-install-record`,
  `bin/devloop-start-conditions`, `.github/workflows/stock-take.yml`, the
  loaded texts under `skills/` and `shared/`, `README.md`,
  `docs/rationale.md` and the places of `docs/skill-conventions.md` that say
  what the guard reads; this entry with `docs/plan.md`, `docs/defects.md`,
  `docs/skill-conventions.md` and `docs/stock-take.tsv`; the runs of the
  bench, measured at the first commit and recorded at the second. Written
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
  "## Without a milestone" 46, closed 65, with "not stated" 384, under
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
  -4 for the same reason, until the third commit; with "not stated" -6, the
  six Shoulds of milestone 3; the search set +22 lines, the new text, every
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
  among them, the bench feeding no such write; no run on any block.

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
