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

- **Arming was measured on 25 August 2026, in `devloop-test-l` on pull request
  15, and it separates into four findings.**
  - devloop's own merge guard let the `enablePullRequestAutoMerge` mutation
    through while it blocks `gh pr merge`. The distinction works as intended.
    First proof of that since the guards decode the tool's JSON before matching.
  - Claude Code's permission classifier did not refuse the mutation; it ran. An
    explicit confirmation by the user came immediately before it, so whether the
    classifier refuses without that confirmation is **not** decided. What is
    established is only that it does not block the command outright. This
    replaces the earlier record here, which said the classifier had refused the
    arming command twice in one session.
  - The run stopped itself before executing, citing a rule in its own memory:
    never merge directly, always hand the merge command to the user. It sorted
    arming under the same pattern. That rule sits outside this repository's
    skills and thereby closes the one route the skills expressly allow.
  - GitHub accepts arming only while the pull request is still waiting on
    something. Measured inside the same minute: directly after the push
    `mergeStateStatus` read `CLEAN`, and the mutation was refused with
    `UNPROCESSABLE` and the message "Pull request is in clean status"; five
    seconds later it read `BLOCKED`, and the same mutation was accepted. GitHub
    then merged the pull request itself once the required check went green, with
    nobody involved.

    What follows from it: a run that arms immediately after opening a pull
    request can fall into the window where the required check has not started
    yet, and is refused there.

- **The stages that arm know two reasons for a refusal, and the one measured is
  a third.** Three places arm auto-merge — `skills/build-work/SKILL.md:367`,
  `skills/setup-checks/SKILL.md:311`, `skills/setup-project/SKILL.md:579` — and
  the message in `hooks/pre-tool-use-merge-guard.sh:19` says the same. All four
  name exactly two reasons: auto-merge is switched off at the repository, or
  there is no gate for it to wait on at all. All four tell the two apart by
  reading `gh api repos/OWNER/REPO -q .allow_auto_merge`.

  The refusal measured on 25 August 2026 — the fourth finding above — is
  neither. In the window after the push `allow_auto_merge` is true, so the run
  lands in the second branch, reports "no platform gate here at all", which is
  false in a repository with a required check, and hands the merge to the user.
  None of the places reads `mergeStateStatus`, none waits for the check to
  start, none tries again.

  The cause is not a missing retry. It is a field that cannot answer the
  question being asked: `allow_auto_merge` says whether auto-merge is permitted
  on the repository, not whether a gate to wait on exists at this moment. In the
  measured case the field was true, a gate was there, and the run concluded
  there was none.

  Attended, the damage is the false statement, and the merge goes to the user
  either way. Unattended it bites harder. `skills/build-work/SKILL.md:386` says
  a refusal there is a stop with the reason named, which start condition 6
  (line 448) exists to make unreachable. The window makes the refusal reachable
  with condition 6 satisfied, and an unattended run stops there.

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
- **`build-work` step 2 named the loose issues nowhere.** Measured on 30 August
  2026 in `devloop-test-m`: a spec with one open task, whose work already sat
  built on an unpushed branch, and five loose issues beside it, every one of them
  labelled `raised-here`. The entry point did its half — it named the newest,
  said how many others there were, and read the label as where they came from.
  Step 2 then never mentioned them again. Both sentences it asks for there
  stayed out: that the loose work is waiting and why, and that a loose issue
  whose subject belongs to a task still open under the spec waits for that task
  in particular. Same shape as the bullet above — a step that asks for a
  sentence, and a run that reaches the right decision without ever saying it.

  What this did **not** measure is the ordering itself. The readiness query came
  back with exactly one ready task, so nothing was being chosen between, and the
  three numbered clauses at `skills/build-work/SKILL.md:215-227` never came into
  play: the run took the one ready task, which is what the rule says to do. A
  measurement of the ordering needs a spec whose last task is closed, or merged
  work that is wrong, with the loose issues still lying there.
- **A finding announced as filed is not always filed.** One run said it would
  record a point as an issue and the issue list did not grow. Nothing checks that
  a promised issue exists.
- **Refreshing the control documents opens a pull request for a five-character
  change.** Seen: a version marker on five files produced a branch, a commit, a
  pull request and a merge. Correct by the rules — never merge directly — and
  out of proportion, and it now happens without being asked for. Worth
  revisiting only with a rule that does not carve an exception into that one.
- **Not everything is exercised yet.** `diagnose-bug` has run once, reached
  through the turn-end gate, and found its cause correctly — with two of its six
  steps skipped silently, which is what the rule about naming a skipped step
  came from. A Go project set up from nothing has since exercised three more: the
  install guard fired and handed the command back, the permission wording
  arrived, and the re-review of what changed after a review ran on the fix
  commit. That left three. Two of them — reading who a branch rule actually
  binds, and arming auto-merge on a pull request that really has something to
  wait for — were exercised on 25 August 2026 in `devloop-test-l`, and are
  recorded above and below. The third, the loose-issue rule, was reached on 30
  August 2026 in `devloop-test-m`, and only half of it held: the enumeration
  did, the two sentences step 2 asks for did not, and the ordering itself was
  never put to a choice. That is the bullet above.

  Exercised on 25 August 2026 across a Go project and a fresh Rust one: a class
  reasoned away now records as `skipped`; arming is attempted and its refusal
  reported rather than the agent merging; the check suite lands through a pull
  request of its own; the unattended mode is offered with its costs and a no;
  the shortened opening reads without a stage list; and an install was declined
  for the first time, leaving `code-security` skipped with that reason while the
  other four classes were still wired up.

  Seen for the first time on 30 August 2026, all in `devloop-test-m`: a build
  taken back up from an unpushed branch an earlier run had abandoned, its four
  commits rebased onto the refreshed main; a branch failing a check class that
  did not exist when it was built — `code-security`, wired up after those commits
  were written, so it had never run over them — found red after the rebase and
  put right before the review; five review lenses running at once as background
  agents, with the sixth left out and the reason for leaving it out given;
  German held from the greeting through to the last finding of the last lens;
  and the stop before the merge. That last one is the second sighting rather than
  the first: the same project's entry below already records the 25 August run
  stopping at that same question, which is how the branch came to be lying there.
  The merge command for the refresh pull request was handed over in the form that
  waits for a word back: it said it would take the next task as soon as the user
  said the pull request was in, not that it would carry on once the command had
  run. That is **Nothing resumes on its own** in `docs/skill-conventions.md` seen
  holding for the first time — the rule was written from the failure of 25 August
  2026 and has stood since as wording nothing had yet run against. What it does
  not settle is the second half of that rule, that nothing moves until the user
  says so: the run left it implied in the condition rather than saying it. The run also
  declined to read its own session transcript back into its context.

  The install guard's reach was widened the same day, from package-manager verbs
  to the outcome: a build flag or a copy aimed at a bin directory, `sudo`, `make
  install`, and installer scripts piped from the network. None of that has been
  seen fire in a session yet.

  Every guard result recorded before 25 August 2026 holds only for a tool call
  carrying a single command: until that day the guards were blind to anything
  after a newline or a quote, so a pass proves nothing about a call shaped
  differently.


  Reading who a branch rule binds cannot be reached from a fresh repository at
  all. There is nothing to read: a new repository has no protection, and no skill
  creates one. It needs a repository prepared by hand, with protection on,
  `enforce_admins` off and the account holding admin — the shape the defect lived
  in. That shape was set up in `devloop-test-l` on 25 August 2026, and the run
  reported it correctly: main branch protected, the protection does not bind this
  account, unattended operation therefore not available. It named on its own that
  an account without admin rights would serve the purpose as well. The defect
  pull request 73 was built against is thereby shown fixed in the field.

  The session-end handover naming the next question has still never been seen.
  That rule fires only once a ticket resolves, so it needs an idea large enough
  to be mapped and an interview carried through — not a small tool that goes
  straight to planning. An attempt with a Go duplicate-file finder failed on
  exactly that: two undecided parameters do not make an idea unclear, and step 3
  of `start-work` sent it to planning, correctly. A second attempt on 25 August
  failed the same way and is the more useful data point, because the idea was
  deliberately vaguer — "something that shows me where my time at the computer
  goes". The run asked three questions with sensible defaults (menu bar or
  command line, per application or per window title, autostart or not) and went
  to planning, again correctly. Both attempts were foggy, and fog was not what was
  missing — what matters is what the fog lies over. The routing test is written
  in two places and both halves have to hold. `start-work` step 3 sends an idea
  for mapping when it is too large to see the end of *and* the open questions
  are what to build rather than how; `untangle-idea` describes what arrives as
  too big for one session with the way to the destination not yet visible, and
  works questions whose resolution is a decision rather than a slice of a build.
  In both attempts the fog lay over the parameters — which interface, how fine,
  started how — while what the thing was stayed clear throughout, and parameters
  are exactly what the planning interview exists to settle. What is still needed
  is an idea where the destination itself is the unknown.

  On planting a fault to exercise the diagnosis: a single unreviewed commit on
  the main branch is worthless, because the history names the suspect and there
  is nothing left to work out. It has to sit inside a change with several
  plausible candidates, and it must not break a case that is directly tested, or
  the failing test points straight at it.

- **Throwaway projects that exist, and what each is good for.** `devloop-test-i`
  holds a map with open tickets and no code — the only one where an interview
  could be carried through. `devloop-test-j` is a Python command-line tool with
  a filled, blocking unit class, which makes it the standing bench for a planted
  fault. `devloop-test-l` is Kotlin with Gradle and is the only one with a
  real platform gate: a required check called `checks` run by a workflow on
  every pull request, with `enforce_admins` on, so it binds the account this
  workflow runs as. That makes it the only place an unattended run can be
  tried at all. `enforce_admins` was switched off there by hand on 25 August
  2026 for the branch-rule measurement above and stands at true again. A
  `PROBE.md` on its main branch is a leftover of the same measurement — of no
  consequence, and not project content. `devloop-test-m` is Go, set up from
  nothing on 24 August, worked through on 25 August and taken up again on 30
  August: all nine classes decided — seven filled and blocking, `types` and
  `dependencies` skipped with reasons — and no platform gate. Its three specced
  tasks are done except the last, which the 25 August run left built and
  committed on `dedup-clean-quarantine` with no pull request when it stopped at
  the approval question and the answer never came. On 30 August a run brought
  the setup files up to the current templates through a pull request of its own,
  then took that branch back up: rebased onto the refreshed main, `code-security`
  put right, five review lenses over the diff, and a stop before the merge again.
  Issues 6, 9, 10, 12 and 13 were the five loose issues that run started with,
  all raised by review rather than by a person. It is the bench for anything
  wanting a fresh Go project. `devloop-test-n` is Rust, set up from nothing on
  25 August through the greeting and the permission step: four classes filled and
  blocking, five skipped, and the only project where an install has been
  declined — `cargo-geiger` was chosen and refused, so `code-security` carries
  that as its reason.

  The base check, the rewritten questions at four stage boundaries, and the
  control documents finally getting a writer came out of a single run merged
  after 0.46.0, and have only been reasoned about since.
- **devloop's own repository is not set up with devloop.** There is no
  `docs/agents/` here, so the hooks this plugin ships stay inert while you work
  on the plugin itself — including the main-branch guard.
- **End-to-end testing has one worked-out approach and no second.** Running the
  compiled program as a subprocess and asserting on output and exit code, which
  has now been done. Anything that stays up — a service, an interface — still
  has none.
- **Five stacks have been exercised**: a small Python project with `make`, a
  TypeScript command-line tool with npm and `make`, Kotlin with Gradle, Go with
  `make`, and Rust with `make` over `cargo`, all on GitHub Issues. Go was the
  first whose checks needed a system install rather than a package, which is how
  the install guard finally got exercised at all. Other trackers and monorepos
  are still untested.

  What is on the machine these runs happen on decides what a run can still be
  made to do, so it is worth knowing: Go, Java, Python, TypeScript and now Rust
  are installed, as are `gitleaks` and `gosec`. A project in any of those will
  not ask for an install, and cannot be used to exercise one. .NET, PHP and
  Elixir are the ones still absent, and Ruby and Swift exist only as the system
  versions under `/usr/bin`.
- **The install guard does not see a wrapper that downloads on first use.** It
  reads the command, so `brew install` and its relatives are caught and a
  project-local dependency is not. `./gradlew` or `mvnw` fetching a toolchain
  into the user's home on first run looks like an ordinary build command and
  goes through. Named when the guard was built rather than discovered later, and
  left as it is: catching it would mean guessing at what a build command does.
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
