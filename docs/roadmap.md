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
  third readiness condition.

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
  query' skills/*/SKILL.md hooks/*.sh` — 75 sites in eight skills and five hooks.
  Most needed nothing: the gate and binding queries in `build-work`,
  `setup-checks` and `setup-project` already say that a side which did not answer
  is a third outcome rather than a quiet no, which is this same rule written
  before it had a name. Two sites outside the arming path did need it, both of
  the shape where a refusal and a real failure look alike: a command blocked
  before it ran exits non-zero like a failing test, which `diagnose-bug` step 1
  would have taken for its red signal, and like a target failing on purpose,
  which `setup-checks` step 5 would have taken as proof that a class is filled.
  The five hooks conclude from commands too and are left alone: a hook that
  cannot read what it needs exits 0, and on exit 0 nothing it writes reaches
  anybody, so there is no report available to it at all.

  All of it is unwalked. No session has yet reported a refusal it retried, met a
  `mergeStateStatus` read that came back empty, or had to tell an empty answer
  from a missing one under this wording.
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

  Nothing has yet run against the three-case refusal. `allow_auto_merge` used to
  decide between two of them and cannot: measured on 30 August 2026, it reads
  true in a repository with a required check and in one without alike, and the
  same day `repos/OWNER/REPO/rules/branches/main` came back an empty list for a
  repository whose main branch carried classic protection with the required check
  `checks`. So the gate is now read from that endpoint and from
  `branches/main/protection` together, the refusal that means a pull request is
  already past its gate is read from `mergeStateStatus`, and a run whose rights
  answer neither query says so rather than naming a case. What that leaves
  unwalked is every branch of it: no session has yet been refused arming and
  reported which of the three it was, and none has hit the missing-rights answer.

  The same day turned up two `mergeStateStatus` values no file carried: on a pull
  request seven days old it read `UNKNOWN`, and on the second query `BEHIND`.
  `UNKNOWN` is the computation not yet done rather than a state, so the second
  reading is the one to use; `BEHIND` is the branch trailing its base, answered
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
  registered. Nothing has yet run against any of it.

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
  fault. `devloop-test-l` is Kotlin with Gradle and is the only one with a
  real platform gate: a required check called `checks` run by a workflow on
  every pull request, with `enforce_admins` on, so it binds the account this
  workflow runs as. It is also the standing bench for the stock-take: issue 8 is
  open and pull request 14 closes it and has been open since 24 August, which is
  the shape that went unseen. That makes it the only place an unattended run can be
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

  All of it is unwalked. No build has produced a `Guarded conditions` list, no
  review has read one, and the expensive branch — breaking a condition an
  existing check covers — has never been run.
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
