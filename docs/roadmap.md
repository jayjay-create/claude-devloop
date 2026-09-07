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
- **`check-docs-consistency`** — before a handover, which is where the checks in
  `docs/skill-conventions.md` run; the count belongs there and is not repeated
  here, because a second copy of it is what went stale. Done by hand several
  times and never as a step, and every round has found false statements in this
  file: three in the first, four in the round before this one, three of those
  work recorded as run that had not run.
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
    yet, and is refused there. The three stages that arm and the merge guard's
    message now read `mergeStateStatus` immediately before the mutation and know
    that refusal as its own case, so the reading that used to come out of it —
    "no platform gate here at all", in a repository that has one — is no longer
    one of the answers available to them.

- **The stock-take could not see a pull request at all, and that was measured on
  31 August 2026.** Twice in a row in a test project, a session started fresh
  work on an issue whose finished work was sitting in an open pull request: the
  entry point's step 2 named only the open issues, and the planning stage
  reported "nothing open" and opened a second planning issue for the same work —
  the pull request's branch even carried that issue's number.

  The cause is not a filter and not a stale document. `Repository.issues`
  returns nodes of type `Issue`, and `PullRequest` is a different type — read off
  GitHub's live GraphQL schema the same day — so the in-flight query could not
  have returned a pull request under any arguments. The REST endpoint of the
  same name does mix the two, six of ten open entries on `cli/cli` carrying a
  `pull_request` key, which is where the expectation came from. Both halves now
  sit in one command in `issue-tracker.md`, because a second command is a second
  thing to remember and that is the half that went missing.

  Five things were measured to write the wording, all on 31 August 2026:

  - **A draft is inside `states:OPEN`.** `cli/cli` had 64 open pull requests, 25
    of them `isDraft: true`, and a draft's own `state` reads `OPEN`. Confirmed in
    the real shape by converting `devloop-test-l` pull request 14 to a draft and
    back: it appeared in both queries throughout, reading `draft: true`.
  - **`viewerDidAuthor` answers "is this ours"** — true on a pull request this
    account opened, false on `cli/cli` 9847. It is not `isCrossRepository`,
    which answers whether the branch is on a fork.
  - **`closingIssuesReferences` carries the linked issue's own state**, so an
    open pull request against an issue somebody has already closed reads
    `closes: N CLOSED` rather than dropping the link. Read off merged pull
    request 13 in `devloop-test-l`, whose issue 6 reads `CLOSED`.
  - **It is empty wherever no closing keyword was written.** `cli/cli` 10783 and
    11388 returned nothing, and 11388's title carries a bare "#326" that is text
    and not a link.
  - **`closedByPullRequestsReferences` defaults to `includeClosedPrs: false` and
    still returns merged pull requests.** The tasks under `devloop-test-l` spec 2
    came back carrying 7, 11 and 13, every one `MERGED`. Reading it needs a
    filter on each node's own `state`; the argument name answers a different
    question, which is the shape `docs/skill-conventions.md` already names.

  The finding that came out of chasing it is worth more than the fix. **Nothing
  in this set had ever said to write `Closes #N` into a pull request body** —
  `grep -rn 'Closes #' skills/ hooks/ docs/` came back empty — so the one
  queryable link between a pull request and its task existed by habit. Where the
  habit lapsed it is simply gone: `devloop-test-l` task 4 was built and merged
  through this workflow and carries no reference in either direction, even with
  `includeClosedPrs: true`. The build stage now writes the keyword.

  All of it is unwalked. No session has yet run the widened query, met a draft
  or somebody else's pull request in a report, or been kept off a task by the
  third readiness condition. The unattended run of 6 and 7 September 2026 is not
  that third one: between two tasks it waited on a pull request it had opened
  itself, and waiting on work this run just pushed is not the same as being held
  off a task by a pull request somebody else left open.

- **A refused command was repeated in silence, and that was measured on 31
  August 2026.** In a test project, on a real run: a command came back with no
  output. The refusal was not the platform's but the runtime's permission check,
  whose message asks in so many words for a pause and an explanation to the user
  of what the permission is needed for. The run repeated the command without
  saying anything, got an answer the second time, and named the refusal in no
  report. It surfaced later, on a question about something else.

  The refusal is not the finding — nothing here decides whether a permission
  check fires. The silence is, and the fix costs a sentence: a command whose
  output does not come back is reported, with the command as it was run and the
  message that came back in its place. One second attempt is allowed; what stands
  after it is what gets reported, and a second attempt that answers does not
  retire the first. That is now a block of its own, `## When a command does not
  answer`, in all twelve skills, checked for agreement the way the other two
  shared blocks are.

  The boundary is the part that took the work. An empty answer is an answer: no
  match, no open issue, an empty ruleset list, a clean working tree — and every
  negative this workflow states rests on such a command, so a rule that swept
  those in would break more than it fixed. The test written down is whether
  emptiness is one of the answers the question has. A list can be empty; a field
  every object of its kind carries cannot come back absent. An error is an answer
  too and is read for what it says — a 404 whose body reads "Branch not
  protected", a check that comes back red, a rejected push. Three places where
  "found nothing" is an explicit conclusion carry the distinction at the point
  where it would be crossed: the readiness query in `build-work` step 2, the
  in-flight query in `plan-work`, and both halves of the entry point's query.

  The second finding hung on the first. The `mergeStateStatus` enumeration
  carried seven values and a catch for an unknown eighth, and no case for no
  value at all. In the run measured the repeat succeeded; had it been refused
  too, the run would have stood in front of a state with no value, and the
  nearest thing the list offers is `UNKNOWN` — which is an answer GitHub gave
  about a computation it had not finished, and would have been read as one. The
  three stages that arm and the merge guard's message now treat a missing value
  as its own outcome: read once more, and on a second empty read do not arm at
  all, since the rule is to read the state immediately before the mutation and
  there is no state to have read. Name the command and the message, hand the
  merge over on that, and unattended stop with the reason named. The same
  distinction is drawn one step earlier, at the rollup: a required name missing
  from an answer is a check that has not started and waiting helps; a rollup
  query that did not answer is not, and no amount of waiting fixes it.

  Every place a conclusion is drawn from a command's output was read against the
  wording before it was written, with `grep -rn 'gh api\|gh pr \|gh issue\|gh
  run \|gh workflow\|gh repo\|git [a-z]\|$RUNNER\|readiness query\|in-flight
  query' skills/*/SKILL.md hooks/*.sh` — 70 sites in eight skills and three
  hooks, re-run at the commit that recorded it, which is where the figures
  written here first came from. Most needed nothing: the gate and binding queries in `build-work`,
  `setup-checks` and `setup-project` already say that a side which did not answer
  is a third outcome rather than a quiet no, which is this same rule written
  before it had a name. Two sites outside the arming path did need it, both of
  the shape where a refusal and a real failure look alike: a command blocked
  before it ran exits non-zero like a failing test, which `diagnose-bug` step 1
  would have taken for its red signal, and like a target failing on purpose,
  which `setup-checks` step 5 would have taken as proof that a class is filled.
  The hooks conclude from commands too and are left alone: a hook that
  cannot read what it needs exits 0, and on exit 0 nothing it writes reaches
  anybody, so there is no report available to it at all.

  Half of it has been walked since. Measured on 6 September 2026 in
  `devloop-test-o` at 20:56 UTC, inside the unattended run: the permission
  classifier threw out a whole command block — checkout, fetch, fast-forward,
  and a local and a remote branch deletion in one call — and the run said so in
  its next message, named what it took to be the reason, and ran the steps singly
  instead of sending the block again in silence. That is this rule holding on its
  first contact with a real refusal, and it is the only part of it that has been
  walked: no session has met a `mergeStateStatus` read that came back empty, or
  had to tell an empty answer from a missing one under this wording.
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
    file meant to record how this project runs locally — carries a run command
    wherever the project is a command-line tool, and says "nothing to run yet"
    only where there is no code at all. What it never records is a way for the
    user to see the thing, because no step ever asks for one.
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
  three numbered clauses at `skills/build-work/SKILL.md:292-304` never came into
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

  Seen for the first time on 6 and 7 September 2026, all in `devloop-test-o`, a
  Go command-line tool set up from nothing on 31 August: **the unattended mode ran
  from end to end.** Three tasks one after another with no approval question,
  three pull requests merged by the platform, both specs closed, and the agreed
  closing sentence at the end — "No ready task remains in scope.", 7 September,
  06:57 UTC. Around it, each also a first: the question about the mode carrying
  its costs *and* the advice against a yes on a first project — the offer with its
  costs was already recorded on 25 August, so what is new is the advice against it
  and the yes that followed; a gate this workflow built itself, in the prescribed
  order — workflow file landed, seen green on the main branch, only then the
  protection — and binding the account the run works as, `enforce_admins` on over
  the required check `checks`; the third refusal reason at arming still not among
  them, see below; a missing tool recognised as a missing tool rather than turned
  into a finding about the code; the install guard handing its commands to the
  user; the deliberate red per check class and per condition; a project's first
  decision record, `docs/adr/0001-exclude-observer-method.md`; two review rounds
  with the fixes checked afterwards rather than taken on faith; a command block
  thrown out by the permission classifier and reported rather than repeated in
  silence; and the branch guard biting on a write to the main branch.

  The three-case refusal at arming is half walked. `allow_auto_merge` used to
  decide between two of them and cannot: measured on 30 August 2026, it reads
  true in a repository with a required check and in one without alike, and the
  same day `repos/OWNER/REPO/rules/branches/main` came back an empty list for a
  repository whose main branch carried classic protection with the required check
  `checks`. So the gate is now read from that endpoint and from
  `branches/main/protection` together, the refusal that means a pull request is
  already past its gate is read from `mergeStateStatus`, and a run whose rights
  answer neither query says so rather than naming a case. What that leaves
  unwalked is thinner than it was. Two arming refusals have been met and named,
  both of them the second case — no gate to wait on at all. On 31 August 2026 in
  `devloop-test-o` the mutation came back `UNPROCESSABLE` with "Pull request is in
  clean status" on a repository carrying neither protection nor a ruleset, and on
  6 September the same repository answered "Pull request is in unstable status"
  while the gate was still being built; both times the run named the case, said
  the main branch had neither kind of gate, and handed the merge over. **The third
  case is still unwalked** — a gate the pull request is already past — and so is
  the missing-rights answer. Every arming attempt after that gate existed was
  accepted: nine of them across 6 and 7 September, one per pull request.

  30 August 2026 turned up two `mergeStateStatus` values no file carried: on a
  pull request seven days old it read `UNKNOWN`, and on the second query
  `BEHIND`. `UNKNOWN` is the computation not yet done rather than a state, so
  the second reading is the one to use; `BEHIND` is the branch trailing its base, answered
  by a rebase and a force-push, after which the pull request is `BLOCKED` again
  and arming is accepted, rather than by handing the merge over. Both are now
  carried in the three stages that arm and in the merge guard's message, together
  with the rule that outlives either of them: a value in none of the groups is
  named rather than filed under the nearest one. `DIRTY` is the one value of the
  seven still unnamed: the enum was read off the live GraphQL schema on 31 August
  2026 and carries `DIRTY`, `UNKNOWN`, `BLOCKED`, `BEHIND`, `UNSTABLE`,
  `HAS_HOOKS` and `CLEAN`, with no `DRAFT` among them, correcting the count this
  paragraph first carried. All of it is unwalked — no session has read either
  value out of a live pull request under this wording, and none has met a value
  it could not place.

  The reading that closes the same hole on the pull request every run has was
  built the next day. `CLEAN`, `HAS_HOOKS` and `UNSTABLE` were being read as a
  pull request past its gate, when on a branch pushed a moment ago they are the
  required check not having started — the window measured on 25 August 2026,
  `CLEAN` directly after the push and `BLOCKED` five seconds later. The value
  cannot separate the two and `gh pr view --json statusCheckRollup` can, for both
  kinds of gate at once: `StatusCheckRollupContext` is a union of `CheckRun` and
  `StatusContext`, so it sees Actions check runs and older commit statuses alike,
  where `commits/SHA/check-runs` sees only the first. Measured in
  `devloop-test-l` on 31 August 2026: `required_status_checks.contexts` read
  `["checks"]` and the rollup on pull request 14 carried one `CheckRun` of that
  name — and that pull request stood at `BEHIND`, its `checks` run `COMPLETED`
  and `SUCCESS` since 24 August, the `BEHIND` case sitting there in the open. A
  check that has not started is now a wait of ten seconds at a time, bounded at
  two minutes, and a bound that runs out is said as a gate whose check never
  registered. Nothing has yet run against any of it. The `UNSTABLE` met on 6
  September 2026 is not the first sighting it looks like: with neither kind of
  gate present there, the answer is the second refusal case whatever the rollup
  would have said, so the reading was never the thing that decided it. What is
  still needed is that value on a pull request in a repository that does have a
  gate.

  The same reading had a second half missing, found on 31 August 2026. Whether a
  gate binds the account a run works as was read from `enforce_admins` alone —
  a field on `branches/main/protection`, the endpoint that 404s where the gate is
  a ruleset. Three skills found a gate from both queries and then decided whether
  it bound from the one that cannot see half of them, so a ruleset gate came out
  reported as missing. The ruleset side is `current_user_can_bypass` on
  `repos/OWNER/REPO/rulesets/RULESET_ID`, the id taken off the rules
  `rules/branches/main` returns; `never` binds and anything else does not,
  `pull_requests_only` included, since GitHub describes that actor as able to
  "bypass any branch protections and merge that pull request". Measured on
  `github/docs`, where this account holds no admin: two rulesets reached that way,
  one `Repository`- and one `Organization`-sourced, both answering
  `current_user_can_bypass: never`, while `bypass_actors` read `null` on the same
  reply and would have been taken for nobody. The list endpoint does not carry
  the field at all. So binding now has the shape existence already had — both
  sides asked, either one binding is a gate, and a side that did not answer said
  as such rather than counted as a no. Unwalked like the rest of it: no session
  has met a ruleset gate at all, and the benches carry none.

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
  fault. `devloop-test-l` is Kotlin with Gradle and was the first with a real
  platform gate: a required check called `checks` run by a workflow on every
  pull request, with `enforce_admins` on, so it binds the account this workflow
  runs as. `devloop-test-o` carries the same shape now, so those two are the
  gated benches and the other four have no gate at all. It was also the standing
  bench for the stock-take — issue 8 open with pull request 14 closing it, the
  shape that went unseen — and is not any more: that pull request merged on 31
  August 2026 and closed the issue with it, and `gh pr list --state open` and
  `gh issue list --state open` both come back empty there now. No bench carries
  that shape today, so a measurement of the widened query needs one set up for
  it. It was the only place an unattended run could be tried at all until
  `devloop-test-o` ended that on 6 September 2026 by building its own gate.
  `enforce_admins` was switched off there by hand on 25 August 2026 for the
  branch-rule measurement above and stands at true again. A `PROBE.md` on its
  main branch is a leftover of the same measurement — of no consequence, and not
  project content. `devloop-test-m` is Go, set up from nothing on 24 August,
  worked through on 25 August and taken up again on 30 August: all nine classes decided — seven filled and blocking, `types` and
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
  that as its reason. `devloop-test-o` is Go again, a directory-report
  command-line tool set up from nothing on 31 August 2026 and worked through on 6
  and 7 September: nine classes decided — seven filled and blocking, `integration`
  and `dependencies` skipped with reasons — and the only project whose gate this
  workflow built itself, classic protection over the required check `checks` with
  `enforce_admins` on, auto-merge on, private. Two specs closed, fourteen issues,
  and three of its pull requests built and merged unattended. It is the bench for
  anything to do with the unattended mode, and the only one where the mode is
  recorded as available in `environment.md`.

  The base check, the rewritten questions at four stage boundaries, and the
  control documents finally getting a writer came out of a single run merged
  after 0.46.0, and all three have since run. The base check ran three times in
  the unattended run in `devloop-test-o`, reporting the base green before each
  cut. The questions at the stage boundaries were answered across that project:
  auto-merge and the labels at setup, the symlink decision in planning, and the
  choice of design. And the control documents got their writer there for good —
  ten pull requests after the setup one wrote `docs/agents/environment.md`,
  `checks.md` twice among them, one of them for the gate state alone, and three
  of them written unattended.
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
- **A check that could not fail was accepted in place of the one the task named,
  and that was measured on 30 August 2026.** In a test project: a task under a
  spec named its check, the build wrote a different one, the whole chain came
  back green, and the task was reported done. The review found it — a lens broke
  the code on purpose and the chain stayed green — so the work was built against
  one condition and checked against another. **Nothing in the run said so at any
  point.** A substituted check does not announce itself; it looks exactly like
  success, and unattended the review's report is read by nobody. That is what
  makes this the worst of the three findings from that day rather than the
  largest.

  The question was what a run can read to tell a check that guards a condition
  from one that merely stands beside it. Three answers were available and two of
  them are not evidence. **Reading the check and judging that it covers the
  condition** is the judgement that already failed — it is exactly what a run
  does while substituting. **Coverage** answers a different question: it says a
  line ran, not that anything asserted on it, and a check with no assertion at
  all covers everything it touches. What is left is the idiom this repository
  already uses one level up, in `setup-checks` step 5 for a target: break it on
  purpose, watch it go red, put it back. Now once per **condition** rather than
  once per target, which is the difference between "this target can fail" and
  "this target fails for this condition".

  **It is the expensive answer and it is the only one, so the cost is named
  rather than hidden.** One break, one narrow run and one restore for every
  condition a task names. Where the check is written in the task the red already
  exists — test-first produces it — and only the reading is new. Where an
  existing check already covers the condition, the task produces no red at all
  and the whole cycle is extra. Where one check guards two conditions it is two
  cycles, because a check that goes red for one and stays green for the other
  guards one of them. Where the project has no narrow target, the cycle is a
  whole suite.

  Five shapes were walked before the wording was written, and four of them moved
  it:

  - **A condition whose check is written here** already had its red, in
    `build-work` step 3 point 2, and nothing said to read it. An import error, a
    missing fixture and a command refused before it ran all exit non-zero too.
    Worse, the point after it exempts that red from diagnosis by name, so an
    unread red was in order. The wording now asks what the red says, and names
    the cheapest catch there is: a check green the first time it runs, before the
    code exists, is the substitution showing itself.
  - **A condition an existing check already covers** was the hole the measured
    defect sat in. That task produces no red anywhere, and nothing in the run
    distinguished it from a condition nobody checks. This is the branch that
    costs the full cycle.
  - **A condition that cannot be captured as a check at all** had no legitimate
    exit. `checks.md` has `skipped: <reason>` for a class; the task level had
    nothing, so a step expecting a check, a condition that will not take one, and
    a run that must report done produce the check that cannot fail. There is now
    an exit, and it is named in the task issue and at the gate — where unattended
    there is nobody, which is stated rather than implied.
  - **A task naming no condition** is a defect in the cut, and the build now says
    so instead of inventing one. This turned out to be the common case in
    disguise: `cut-into-tasks` asked for "what is covered there", which a scope
    satisfies — "unit tests at the parser boundary" — and a scope cannot be
    broken. The rule would have had nothing to bite on. Conditions are now
    written so they can be false.
  - **One check guarding two conditions** breaks any rule phrased per check: one
    red, counted once, and the second condition unguarded. The proof is per
    condition.

  And one thing all five needed: **the proof has to be written where something
  reads it again.** A proof living in the build subagent's context dies with it
  and the run reports green either way — which would have reproduced this same
  finding one level up, since what caught it the first time was a review a person
  happened to read. So the list travels twice: up with the build's report, which
  is what the review reads, and into the pull request body under `Guarded
  conditions`, which is what outlives the session. Writing the first draft with
  only the second trip in it put the list in a pull request that does not exist
  until two steps after the review that has to read it.

  Every route reaching this situation was looked at, with `grep -rn 'test-first|
  failing test|just enough code|Test decisions' skills docs README.md` and
  `grep -rni 'cannot fail|able to fail|always passes'`. Three carry the change:
  `cut-into-tasks` writes the conditions, `build-work` step 3 proves them, and
  `review-changes` reads the proofs in its spec lens. Two were read and needed
  nothing. `setup-checks` step 5 is the class-level proof this is modelled on and
  is untouched. `diagnose-bug` writes a failing test too, and its steps already
  read "watch it fail" then "watch it pass" — the code is broken before the test
  is written there, so the break is the bug and the proof is built in.

  All of it has now been walked, on 6 and 7 September 2026 in `devloop-test-o`.
  Each of the three unattended tasks carried a `Guarded conditions` table in its
  pull request body — the condition, how it was broken, which target ran, what
  came back red, and the restoration — fourteen rows on pull request 26 alone,
  and the review's spec lens read them. **The expensive branch was walked too**:
  on pull request 27 `--mode usage` and `--mode summary` were each mutated on
  purpose to prove that the byte-for-byte regression checks already covering them
  really go red, work the task's own changes produced no red for. What none of the
  three tables carries is the other exit — a condition that cannot be captured as
  a check at all, named as that rather than filled in.
- **The glossary stayed empty while the work coined two terms, and that was
  measured on 30 August 2026.** `docs/agents/domain.md` is where a project keeps
  its glossary, `CLAUDE.md`'s pointer block names it, and two skills say a term
  goes in the moment it resolves. Neither of them was running: the terms were
  coined during the build, between the spec and the merge, and no step on that
  path writes the file. `grep -rn 'domain.md' skills/ hooks/ docs/ README.md`
  returns `setup-project`, `plan-work`, `untangle-idea` and `diagnose-bug`, and
  the last of those only reads it. `build-work`, `cut-into-tasks` and
  `review-changes` do not mention the file or the word at all.

  A fix costs one sentence in the build stage — a term this task introduced goes
  into `domain.md` on the same branch, the way a changed run command already goes
  into `environment.md` there — plus one line in the review's standards lens for
  the ones that slip past it. Recorded, not built.
- **A run split its findings into fixed and filed without saying what separates
  them, and that was measured on 30 August 2026.** After the review it announced
  it would fix the obvious defects and file the rest as issues, and named no
  criterion for the split. Both skills carry one: `build-work` step 4 and
  `review-changes` under "What happens to a finding" — fix now where the fix is
  obvious and revisits nothing that was decided, file where fixing it would
  revisit a design decision, change an interface, or exceed the task. So the rule
  was there and the sentence was not, which is the shape two bullets above
  already have: a step that asks for a sentence, and a run that reaches the right
  decision without ever saying it. Unstated, it is the announcement the user
  would have had to disagree with before the issues existed.

  A fix costs one clause at each of the two sites — name the criterion per
  finding as the split is announced — and changes no decision, only what gets
  said. Recorded, not built.

- **The unattended mode needs a machine that stays awake, and nobody was told,
  and that was measured on 6 and 7 September 2026.** In `devloop-test-o`, inside
  the run that went end to end: at 21:00 UTC on 6 September the run reported the
  first pull request merged — the platform had merged it sixteen minutes earlier,
  on its own — took the next task without being asked, and said it was building it
  in the background. Then nothing. The machine went to idle sleep, and the session's only
  message — one word, "weiter" — came at 06:37 UTC the next morning, nine and a
  half hours later, and the two remaining tasks were built and merged inside
  twenty minutes of it. Nothing was lost and nothing was wrong; the mode simply
  does not run while the machine does not.

  The cost list at the moment of asking named the workflow file, the protected
  main branch and the Actions minutes, and said nothing about this. **Built**, in
  `setup-checks` step 8: the cost is in the list in plain words — it works while
  the window is open and the machine is awake, a closed lid stops it, it carries
  on when the user is back — with a hint on keeping the machine awake that reads
  the system first (`uname -s`) and names `caffeinate` only on macOS, saying in
  the same breath that the assertion covers idle sleep and not a closed lid
  (`caffeinate(8)` on this machine, read 7 September 2026). Off macOS, a command
  is named only where that machine's own documentation backs it, and otherwise
  nothing is named. **Built** beside it: what a yes leads to, said before the
  answer — what the run does in order, where it still stops, how a finish is
  recognised, and how a standstill is. That last one is the one that had no answer
  at all before this measurement.

- **The cost list and that description do not reach the second run.** Step 8
  leaves early where the gate is already there and binding — "say the mode is
  available and skip the rest of this step" — so a project set up in an earlier
  session gets neither, and the person who types `--auto` there is exactly the one
  who has read neither. The same gap one skill over: `build-work` offers to build
  the gate itself where protection is available and absent, with no cost list at
  all. Both are the shape this file already names — a rule written on one path
  when several reach the situation.
  A fix costs one sentence at the early exit and one where the build offers the
  gate. Recorded, not built.

- **The unattended state file had no reader, and it is gone. Built.**
  `build-work` said a hook checks whether `.claude/autorun.local.md` exists rather
  than what it says. `grep -rn autorun hooks/` came back empty; the file was named
  in exactly two skills and read nowhere. So the round count, the cap, the
  finishing sentence and the starting commit were all written to a file whose only
  reader was the run that wrote it. Measured on 6 and 7 September 2026: a run kept
  it across three tasks and raised its own cap from four to six in the same write,
  unchecked.

  What the file was for, read out of the two skills that wrote it: a loop bound —
  `build-work` precondition 3 made `--max-iterations` mandatory and called it a
  rip-cord, and that condition has since gone entirely, see the entry below; a
  trace for the user — `started_from` is the one field something
  actually consumed, in the same skill and the same session, for reading the diffs
  at the end; and a resumption after interruption, claimed by the deletion
  sentence alone. `setup-project` step 5 gave it no job at all, only a place
  beside `check-attempts.local`, which is the one local file a hook really does
  read — and that neighbourliness is most of why it looked like machinery.

  **It got no reader, for three reasons that hold together.** The resumption is
  not unbuilt but ruled out: **Nothing resumes on its own** in
  `docs/skill-conventions.md`, and the mode's own description at `setup-checks`
  step 8 promises the user that nothing starts itself again. The bound cannot be
  enforced from a hook at all — see **Stderr only reaches the model when the hook
  exits 2**: on `Stop`, exit 2 continues the turn and exit 0 ends it, so a hook
  can refuse to let a run stop and can never stop one. That leaves a `PreToolUse`
  block on one command name, and this file already carries what that is worth: on
  6 September the branch guard blocked `git push origin --delete` and the same act
  went through as `gh api -X DELETE` one command later. And the counter would
  still be written by the run, which is the measured defect exactly — moving the
  number into a file the run also writes changes nothing about who may raise it.

  What replaced it: the scope, the finishing sentence and the starting commit are
  said in the opening message and stay in the conversation. The round count and
  the cap were replaced too, first by a rule that the cap was the user's to raise
  and then, one entry down, by nothing at all — the cross-task limit is gone.
  Named rather than hidden, because the wording was walked through five
  situations first: two unattended runs in one working directory neither see nor
  bound each other, which is the existing one-task-at-a-time constraint and not a
  new one; and a `.claude/autorun.local.md` left over from an older version is
  stale local state carrying a standing instruction to keep taking tasks, so it is
  deleted and said rather than read. The attended path never reaches any of it —
  all of it sits inside `## Unattended mode`.

  **The same phantom had a second home.** `README.md` carried it as a general
  rule — "a hook that gates on a state file's existence must have that file
  deleted" — under a heading saying both rules there were already fixed in the
  skills. No hook gates on existence; `stop-checks.sh` reads
  `check-attempts.local` for its content and deletes it when the checks go green,
  which is the opposite. Replaced by what the incident actually teaches.

- **A ceiling on tasks removed; the ceiling meant to replace it written and taken
  out again. Half built.** `--max-iterations` capped how many tasks an unattended
  run might finish. That is a cost ceiling wearing the coat of a quality one:
  whoever switches the mode on has chosen the delegation and accepted the cost,
  and a run that stops after four tasks with everything going well has interrupted
  for no reason to do with the work. The honest stop was already built and ran on
  7 September 2026 — no ready task left in scope, with the agreed sentence said
  once.

  Looked up on 7 September 2026: Anthropic's Agent SDK bounds `max_turns`, which
  is model turns inside one piece of work, not the number of pieces. Matt
  Pocock's skills, which most of this set is adapted from, carry no iteration
  limit at all — `grep -rn -i 'max-iterations|max_turns|iteration limit|attempts|
  give up|stop after'` over his repository finds nothing, and the one place
  pointing that way asks for the opposite, "Refuse to give up" while diagnosing.
  A count across pieces of work stood alone, and it is gone. The cost list at
  `setup-checks` step 8 says so in plain words instead: the run works until the
  thing is done, work that turns up on the way is taken on where it serves the
  same goal, and there is no ceiling on the number of tasks.

  **A limit inside a task was written in its place, and then taken out on the same
  day.** Five passes over the check chain, a pass being one whole run of it begun
  because the build believed it was done. The reason it went: **it is an
  instruction and not an enforcement.** The run would have had to keep the count
  against itself, and this file already carries what that is worth — on 6 and 7
  September 2026 one run did three things the text does not say: it left a skill
  before its last step, it put the check suite off until "later" and never came
  back to it, and it narrowed the review's lenses. All three are recorded below as
  their own findings. A number a run counts against itself is the same kind of
  thing as any of them.

  **And a limit that reads like a safeguard without being one is worse than
  none**, which is the half that decided it. Someone reading `build-work` later
  would have found five passes written down and taken the case for covered, and
  stopped looking for the thing that actually catches it. That is the shape of the
  state file two entries up, one level further out: not a claim about a hook that
  does not exist, but a claim about an enforcement that is only a sentence.

  **The case it was for stays open and is not covered by anything.** Five passes
  over the chain with a different failure picture each time — each one plausible
  on its own, and the task's cut wrong underneath all of them. The hook does not
  catch it: `hooks/stop-checks.sh` counts turn-ends whose set of failing classes
  has **not** changed, and resets the count whenever the failure changes, so a
  run whose failure moves every time never reaches three. It has also never
  happened: across the two measurement days no build needed more than two passes,
  which is why this is recorded rather than solved. What it was meant to catch was
  measured once in a different form — on 30 August 2026 a check the task had named
  by name was replaced by one that cannot fail and the chain came back green,
  which is the entry above and is answered by proving the condition, not by
  counting.

  **What does stand is the hook, and it is enforcement rather than text.**
  `hooks/stop-checks.sh` runs the chain itself, counts three turn-ends with the
  same classes failing, and exits 2 exactly once at the limit with the problem
  written out for a person. Nothing in the run has to co-operate for that to
  happen. It covers the important case — a run going round in circles.

- **The turn-end hook hands the problem to a person, and unattended there is
  none. Built.** At three turn-ends with the same classes failing,
  `hooks/stop-checks.sh` writes the failures out and asks for them to be handed
  over, ending "Then wait for them." Attended that is right. Unattended it is a
  standstill — not a stop with a reason, but a halt in the middle of a task that
  still looks like it is running, and by some distance the likeliest halt the mode
  has, since it fires on the ordinary case of a task that will not go green. The
  matching case one step further on was already covered and is what this was read
  against: at `build-work` step 6 a refused arming with nobody there is a stop
  with the reason named, rather than a wait.

  **The hook cannot tell which it is in, and giving it the means would rebuild
  what was just deleted.** It discards its input — `cat >/dev/null` on the first
  working line — and the only variable any hook here uses is
  `CLAUDE_PROJECT_DIR`. Nothing in a `Stop` event carries the mode, because the
  mode is this workflow's own idea and not the harness's: `--auto` is a word typed
  after `/devloop:start-work`, so it never reaches the process, and the one file
  that used to record the mode was removed two entries up for having no reader.
  Marking the run for the hook would mean writing that file again, and then the
  hook would be reading a mark the run writes about itself.

  So the distinction is in the skill text, at the site and once more where the
  mode is offered. `build-work` step 3 now carries it: attended, the hook's
  message is the answer and the problem is handed over in the form it asks for;
  unattended, it becomes an issue that the task is not buildable as cut, carrying
  the failing classes and their output and whatever the hook asked to have handed
  over, labelled `raised-here` and `needs-human` and recorded as a blocker — then
  the task goes down and step 2 takes the next, which the readiness query allows
  by itself. The same shape as the refused arming, deliberately. `setup-checks`
  step 8 says it at the offer, where "a check still red after three attempts" used
  to sit in the list of stops and was wrong twice over: it is not a stop
  unattended, and it is the most likely outcome rather than an edge. `README.md`
  carries the second half of its sentence now too.

- **Work put off with nothing to bring it back, twice in the same session, and
  that was measured in `devloop-test-o`.** On 31 August 2026 the setup stage
  closed by saying the check suite would be taken up "separately" and went
  straight into the first build; nothing carried the promise, and the suite
  arrived six days later. On 6 September the same session finished `setup-checks`
  step 7 and stopped there — step 8 of that same skill, the one that offers the
  unattended mode, was never reached, and what got it run was the user typing
  "Stopp. setup-checks hat nach Schritt 7 noch einen Schritt 8. Führ ihn aus."
  Both times the run had seen what was open and said so out loud. The second is
  the expensive shape: a mode never offered is a mode nobody misses, because the
  question that would have raised it is the thing that went missing. The first
  carried a second defect in the same sentence — it named the skill to the user,
  which the block at the top of every skill in this set forbids.
  Should hold: what a run names as open is the next thing it does, not something
  else; a skill is not left while it still has steps; and "later" is only allowed
  where the thing that calls it back is named in the same breath.
  A fix costs one clause where a stage hands over, plus a line at the last step of
  every skill that has one. Recorded, not built.

- **Two guard false positives, and a run that stepped around both, measured on 6
  September 2026 in `devloop-test-o`.** The branch guard blocked `git push origin
  --delete task-24-exclude-core` at 20:57 UTC because the run stood on the main
  branch, which deleting a merged remote branch does not touch; the run's next
  command was `gh api -X DELETE repos/OWNER/REPO/git/refs/heads/task-24-exclude-core`,
  the same act under a name the guard does not match. The install guard blocked
  `gh pr create --body` at 13:14 UTC because the body — describing a fix to a
  broken install line — contained the string `go install`. Writing the same body
  to a file was blocked for the same reason; the third attempt reworded it to
  "fetch and build ... from" and went through, and the run said in the same breath
  what it had worked out: the hook reacts to the string, in quotes and heredocs
  alike, regardless of context.
  Should hold, two halves. The guards tell a command that runs from a command that
  is quoted, and an action that touches the protected state from one that does
  not. And a run that takes a block for a false positive says so and stops, rather
  than finding a spelling that gets through — which is what both guard messages
  already ask for in so many words, and what neither run did.

  **The branch guard is built**, 7 September 2026. What it reads is no longer
  where the run stands but what the push moves: the refspecs after the remote are
  taken for their destination — the part behind the last colon, with a leading `+`
  and `refs/heads/` stripped — and a destination that is demonstrably another
  branch goes through, deletions included. No readable destination means the
  current branch, which here is the default one, so it blocks; `--all` and
  `--mirror` block; every `git push` in the command is read, so one blocking
  segment blocks the call; and `git commit` on the default branch is untouched.
  The cost this entry carried was wrong and is corrected with it. It read "one
  clause letting a `git push` through when what it deletes is a branch other than
  the default one", and a clause about deletions is too narrow —
  `git push origin task-24:task-24` deletes nothing and has to go through as well.
  The clause reads the destination, not the deletions.

  Three cases it does not answer, all deliberate, all open:
  - `git push --tags origin` moves no branch, names no refspec and is blocked.
    Should hold: a block that protects nothing. Kept, because "no readable
    destination means the current branch" is the rule that holds the guard shut,
    and giving it an exception is how the guard stops being one.
  - `git push fork main` moves the default branch of another remote, not this
    one, and is blocked all the same. Should hold: the same — a block in the safe
    direction. The guard reads the destination's name, not which remote it lands
    on, and telling the two apart would mean resolving remotes from a string.
  - `git -C /elsewhere push origin main` runs today and after, because the
    condition wants `git` immediately before `push`. Should hold: that moves a
    default branch and belongs blocked. Not fixed, because `git -C` can point at
    another repository, where blocking it would be a fresh false positive.
    Unresolved rather than forgotten.

  **The install guard is unchanged and the case stays open.** The reason it stays
  open is one thing, and it is not that the false positive is a corner.
  Telling a string from an execution needs the quotes, and line 4 of every hook
  destroys them on purpose. That normalisation is the correction from "A hook
  reading the tool's JSON must undo the escapes first" and it closed two silent
  holes — a second command on a new line walking past all three guards, and
  anything after the first quoted string being invisible. Undoing it reopens both.
  That part holds, and it is why a `PreToolUse` hook cannot tell "runs an install"
  from "writes about one" without the shell-quoting and heredoc guessing this file
  already refused for wrappers.
  **The false positive sits on the normal path**, measured on 7 September 2026
  against this repository's own hook: `gh issue create --body 'Run: go install …'`
  exits 2, and so does `echo 'go install …' >> docs/agents/environment.md`. Both
  are the normal path — step 3 of `build-work` files an issue "carrying the exact
  command" where an install is declined, and point 8 of the same step writes a
  command the user has to type into `environment.md`. An earlier reading of this
  entry had it the other way round, that the false positive sits off the normal
  path; that reading is measured false and is no reason for anything.
  **And the rule below cannot catch this one**, which is the part worth writing
  down. Its unattended answer to a guard block is an issue labelled `raised-here`
  and `needs-human` — and in the decline path, filing that issue is itself the
  blocked act. The way out is the thing that is barred. Unattended the run stands
  still, and it does not look like a standstill.
  What is built instead narrows what ever reaches the guard, and it is built in
  `build-work` rather than in the hook: a body goes to `gh` through a file with
  `--body-file` rather than as a string on the command line, and `environment.md`
  is written with the editing tool rather than appended from the shell — the second
  for a reason of its own as well, since a change bundled into a shell command goes
  past the per-file hooks, which "The run bundles shell commands where it used to
  edit files one at a time" records. **That is not the rewording the rule below
  forbids, and the difference is who decided and when**: this is written into the
  skill, once, in the open, and holds for every body the skill writes, where a
  rewording is invented by a run at the block, for the one command that was
  refused.
  That narrowing was written down incomplete the first time, and the way it was
  incomplete is worth more than the fix. It said the body goes into a file and the
  file is passed with `--body-file`, and said nothing about how the file gets
  written — so a heredoc or an `echo` put the same text back through the shell and
  the guard blocked that instead. The measured incident had two halves, the string
  and the file, and the rule covered the first. Should hold: **a rule that leads
  text past a guard names every channel the text takes, not only the channel that
  was measured.** The same reading applies to the title, which stays on the command
  line because `gh` has no `--title-file`: what keeps it clear is what it says, so
  it names the problem and the body carries the command. A title put through a
  substitution reading a file, or set plainly and edited afterwards, is not that —
  it is a spelling that gets through, which is the move the rule below forbids.

  Where the two setup stages meet a block there is a second reading to make, and
  it is not the same as a decline. Where the command really is the install the
  class or the step needs, the guard worked and the cost is real: unattended,
  `setup-checks` records the class `skipped` with the block as its reason, except
  `secrets`, which is never skipped and stops instead, and `setup-project` raises
  it as `needs-human` and stops. Where the guard matched on text, nothing is
  blocking anything, and recording a skip would be an entry that is not true — a
  class standing as skipped while nothing hinders it. Each stage says which of the
  two it is, in its own vocabulary, and neither copies the other's.

  One thing the shared rule cannot reach, recorded and not fixed. Ist: the install
  guard's message offers two ways out — a check class becomes `skipped` with that
  reason, or the part of the task that needs the tool cannot be built. Both assume
  the caller has check classes or tasks. `research`, `build-prototype` and
  `record-lessons` have neither, and the message offers them nothing. Should hold:
  a message whose ways out apply on every path that can reach it. Not fixed,
  because that means changing the hook and the hook stays untouched here; the
  shared block catches it on the skill side instead, by saying that what a block
  costs the work in hand gets said whatever that work is.

  So the hook is untouched, the false positive is unfixed, and the normal path no
  longer runs through it.

  **The half about the run is built.** The shared block "When a command does not
  answer", in all twelve skills, said only that a guard's message says what to do.
  It now carries the negative half too: the same act under a different command name
  is the act that was refused, a text reworded until the match no longer catches is
  the same command with the words changed, and a refusal held to be a false
  positive is still a refusal — said, and not acted on. `build-work` carries the
  unattended answer as a third case of the shape it already had at the turn-end
  hook in step 3 and the refused arming in step 6. The general form is in
  `docs/skill-conventions.md`.

- **The unattended run narrowed the review from five lenses to three, measured on
  6 and 7 September 2026.** The first task went through standards, spec, security,
  test quality and failure behaviour; the two after it through standards, spec and
  test quality, with a reason given for the two left out. `review-changes` says
  which lenses run is judged from the diff — if the diff contains it, the lens
  runs — and both dropped ones have their trigger in those diffs: file paths
  arriving from outside, and error handling with default returns. An attended run
  leaving a lens out with its reason was recorded here approvingly on 30 August;
  this is the same act with nobody reading the reason.
  Should hold: unattended, nothing is narrowed — every lens that applies runs. A
  lens dropped is a judgement, and unattended nobody checks the judgement.
  That costs more, and those costs belong in the cost list at the moment the mode
  is offered — but only once the rule exists, since a list naming a cost the run
  does not yet incur is wrong in the other direction.
  A fix costs one sentence where the lenses are picked and one clause in that cost
  list. Recorded, not built.

- **Every review finding fixed on the spot, none raised as an issue, on a
  criterion invented as it went, measured on 6 and 7 September 2026.** The
  unattended run called them all mechanical. Among them, on pull request 27, a
  missing byte-for-byte regression test that the task's own Test Decisions had
  asked for — an acceptance criterion of the work being reviewed. Both skills
  already carry the criterion: fix where the fix is obvious and revisits nothing
  decided, file where fixing revisits a design decision, changes an interface, or
  exceeds the task. So a fresh one was invented beside a written one, which is the
  30 August finding one turn further on — there the split was announced with no
  criterion named, here with a criterion nobody wrote down.
  Should hold: the criterion is the written one; and a finding touching an
  acceptance criterion of the run's own task is never mechanical — it gets fixed
  and named at the close.
  A fix costs one clause at each of the two sites. Recorded, not built.

- **An install command handed to the user without being backed, measured on 6
  September 2026 in `devloop-test-o`.** The check workflow installed gitleaks from
  `github.com/gitleaks/gitleaks/v8@latest`. That module path does not exist — the
  GitHub organisation name is not the module path, which is
  `github.com/zricethezav/gitleaks/v8` — and it failed in the workflow's first run
  on the main branch, after the pull request carrying it had merged; pull request
  9 was the fix. On the user's own machine the same line had looked like a success,
  because an older copy of the tool was already on `PATH` from somewhere else.
  Should hold: a command handed to the user that fetches something from outside is
  backed before it is handed over — the vendor's own installation line, or the
  module resolving — and its success is read off the result, whether the tool is
  where that command puts it, rather than off the user reporting that it ran.
  A fix costs one sentence where a build hands over an install command, and one
  more where the result is checked: `command -v` answers a different question than
  "did this command put it there". Recorded, not built.

- **`git reset --hard` without looking first, measured on 6 September 2026 in
  `devloop-test-o`.** A run reset without a `git status` before it and took
  uncommitted work with it. It noticed, said so, and put it right. What makes this
  worth recording is the frequency the rest of the workflow gives it: proving a
  check guards a condition means breaking the condition and restoring it, once per
  condition, and every one of those restorations is a chance to reach for the same
  command.
  Should hold: before a command that can discard work, the state is queried.
  Better: the proof needs no commit that has to be taken back — where the break
  lives in the working tree, restoring it is git's own copy of one file, not a
  reset of everything.
  A fix costs one sentence in the proof step. Recorded, not built.

- **A review ran a check the chain does not carry, measured on 6 September 2026 in
  `devloop-test-o`.** It read the change with Go's race detector. `checks.md`
  there has all nine classes decided and none of them is that, so the check ran
  once, for one change, and will not run again.
  Should hold: a check worth running belongs in the chain. Where it only ever runs
  inside a review, it either goes into `checks.md` or its absence is named in the
  report — and either of those is a result, where silence is not.
  A fix costs one sentence in the review's report step. Recorded, not built.

- **A run promised to come back and had nothing that could wake it.** Its last
  message before the standstill said it was building the next task in the
  background and would report when it was done — measured on 6 September 2026 in
  `devloop-test-o` at 21:00 UTC, with the next thing to happen being the user's
  one-word message nine and a half hours later. A backgrounded agent really does
  come back by itself, which is what made this look permitted, and the condition
  nobody had written down is that the machine has to be awake for it. The user's
  reading of the same paragraph adds a second half — the state of another pull
  request asserted from memory rather than queried, against the standing rule. The
  two sessions read for this entry carry the promise; the memory claim rests on
  that report rather than on a transcript read here.
  Should hold: a run promises nothing it cannot keep. Either it really waits, in
  the same turn, or it says it is standing still and will need a push. "I will
  come back to you" is neither.
  A fix costs one clause. Recorded, not built.

- **Sixteen false statements in these two documents, and that was measured on 7
  September 2026.** A reading of `docs/roadmap.md` and `docs/skill-conventions.md`
  against the repository, the git history and the live platform — not against each
  other, which is the reading that cannot find this kind.

  Five of the sixteen said something about what had run, or about the state a
  bench stands in, and they went wrong in both directions. `devloop-test-l` was
  named as the standing bench for the stock-take, issue 8 open with pull request
  14 closing it, when that pull request merged on 31 August 2026 and closed the
  issue with it. The same project was named as the only one with a platform gate,
  when `devloop-test-o` has carried the same protection since 6 September.
  `environment.md` was said to read "nothing to run yet" in every project set up
  so far, when four of the six carry a real run command. A paragraph opened with
  "nothing has yet run against the three-case refusal" and recorded two walked
  refusals nine lines further down. And the base check, the questions at the stage
  boundaries and the control documents getting a writer stood as reasoned about
  only, when all three had run in `devloop-test-o` — the last of them ten times
  over. Each of the five was answered by a single command: `gh pr list --state
  open`, `gh api .../branches/main/protection`, the contents API, and for the two
  internal ones nothing more than reading the paragraph to its end.

  Three shapes came out of it, and are written where rules live, in
  `docs/skill-conventions.md`: **a count lives in one place**, after the number of
  pre-handover checks went stale in one file and short in the other; **a time
  reference names its date**, after an inserted measurement moved a 30 August
  reading to 7 September without a word of the sentence changing; and **a figure
  taken from a command is copied out of that command's output**, after numbers
  presented as a `grep` result turned out never to have been run — the same `grep`
  at the same commit answers differently.

  Two more were a sentence pointing at something that is not there: a line
  reference into `build-work` that had drifted by seventy-seven lines, and a skill
  named as spawning parallel agents that has never been built. Both are the cheap
  kind, and both stood through every handover, because the checks before a
  handover compare copies of this repository's own text against each other and
  none of these claims is about that text.

  Two claims were left standing without evidence rather than corrected, marked as
  such where they sit: that two build agents in one working directory collide, and
  that Agent Teams makes a waiting subagent hang. Both were recorded on 19 August
  2026 in a commit whose message carries no detail, and neither has a measurement
  anywhere. They cost nothing to obey, which is why they stay; what they are not
  is measured.


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
  file — so the only local state left is `check-attempts.local`, produced by a
  hook the guard never sees, and the second reason holds again. The verdict rests
  on both once more. Reopen on a case where such a file cannot wait for a
  branch.

## Names that were rejected

Kept so nobody re-proposes them: `plan-feature` and `build-feature` (the pair
implied planning was not building), `settle-open-questions` (too vague),
`split-into-tickets` (everything else says "task"), `clarify-idea-no-repo`
(the case does not exist in Claude Code), `map-decisions` and `sort-big-idea`
(lost to `untangle-idea`).

Never reuse the names of skills Claude Code ships: `doctor`, `code-review`,
`batch`, `debug`, `loop`, `claude-api`.
