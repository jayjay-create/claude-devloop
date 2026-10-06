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
pre-handover check that holds locked skills against their callers prints one
line since 13 September 2026 (`b90874b`) — `start-work`, named in `build-work`
step 6 as the place that sends an armed pull request there, not run — and
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
  2026, against 0.120.1. The findings the stock-take recorded at its close on
  23 September 2026 are not a round of this check: they were read against the
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
    branch, reachable from inside a map and, since 14 September 2026 (`e09fa80`),
    from `plan-work` Stage 1, only for one question at a time, and what was
    chosen is recorded on the issue and read by nothing afterwards.
    `settle-the-look` above is the named answer to
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
  three numbered clauses under `build-work` step 2 — beginning "Anything that
  leaves built work wrong goes first" — never came into play: the run took the
  one ready task, which is what the rule says to do. A measurement of the
  ordering needs a spec whose last task is closed, or merged work that is wrong,
  with the loose issues still lying there.
- **The loose-issue rule was written by appending, and the sentences it competes
  with were left standing.** This is the finding; the three violations below are
  how it showed. Measured on 9 September 2026 on a bench with four loose issues
  open, every one of them `raised-here` and raised by the run itself.

  **Read the count first, or the fourth break reads as the first.** The rule at
  `build-work` step 2 says in its own text that this step had been broken three
  times and answered three different ways — it was written as the answer to
  exactly that. What follows is the fourth, fifth and sixth violation of the same
  step, with the rule standing in full, explicit, and at the right anchor
  throughout.

  **And the lesson is not that a rule was broken a fourth time.** It is that
  `docs/skill-conventions.md` already carried the convention that answers this —
  *rewrite the sentence rather than appending to it* — with two earlier cases
  recorded under it, and that convention was not applied to the file the rule was
  being written into. Every one of the three violations below matches a sentence
  elsewhere in that same file saying something different, standing nearer to the
  moment of deciding. None of them matches a gap. So this is the fourth case of
  that convention, and it is recorded there as the fourth: applying this page to
  the file being edited is part of writing a rule, not a review afterwards.

  - **The unattended scope announcement did not mention the loose issues.** The
    run set its scope to the last open task under one spec, said nothing about
    the three loose issues open beside it, closed the spec, reported nothing left
    under that spec and halted. It built the scope from the readiness query —
    the query step 2 says does not see loose issues — and the finish sentence it
    halted on read "until nothing in scope is **ready** any more, and that is the
    only finish", which is that query's own word. *Should:* the opening message
    names the loose issues carrying `raised-here` and says which of the three
    clauses each stands under, and the finish is two conditions — nothing ready
    in scope **and** no loose `raised-here` issue that clause 1 or clause 3 would
    take now. Clause 2 is not one of them: a loose issue waiting on an open spec
    is the ordinary state of a healthy run, and treating it as unfinished work
    would mean no run ever finishes. *Built:* both rewritten in `build-work`'s
    unattended section, and the same finish pulled straight in the three places
    `setup-checks` step 8 promises it to the user.
  - **Asked what was next, the run offered two ways instead of naming one.** It
    listed all four issues correctly and classified them correctly, then put the
    choice to the user, with planning a fresh candidate offered as an equal
    alternative. The rule says in as many words *say which and why* and *do not
    stop without saying what comes next*; the knowledge was complete and the rule
    was not applied. It did not have to be: `build-work` step 7 — which is where
    a run stands after a merge — answered the same three cases in three words of
    its own, and two of them were the opposite of step 2's, "ask" against **Do
    not ask which** and "stop" against **Do not stop without saying what comes
    next**. `start-work` step 5 supplied the other half of the offer: its four
    branches have none for a loose issue, so one falls into "anything else,
    including a fresh idea" and is routed to `plan-work` from the start.
    *Should:* with the spec closed the run names the issue it takes and why, as a
    statement. *Built:* step 7 loses its three answers and points at step 2,
    keeping the two sentences that are its own — that everything known before the
    merge is stale, and that an unlanded pull request holds its own task out of
    the answer. `start-work` step 5 gets a fifth branch sending loose
    `raised-here` issues to `build-work`, not to `plan-work`.
  - **The four issues were built in issue-number order.** Announced as "in order
    by issue number, since none blocks another". Exactly one of the four met
    clause 1 — a shipped flag that silently skipped a rule file in a worktree —
    and it carried the highest number, so it was built last. The other three were
    hardenings with nothing wrong in service, which is clause 3. Blocking is not
    this rule's criterion at all; it is the readiness query's, for tasks under a
    spec, and it is the criterion nearest to hand because the query is the first
    thing the step says to run. *Should:* the order follows the three clauses, and
    the announcement names the clause it follows from. *Built:* step 2 now asks
    for the clause per issue, so an ordering that names none is incomplete on its
    face, and says outright that blocking is the other query's criterion.

  **A guard was examined and rejected.** The situation is trivially queryable —
  `gh issue list --state open --label raised-here` — and there is no place it can
  usefully run. `Stop` is the only hook that fires at the right moment, and it
  cannot tell a run declaring itself finished from a run waiting at an approval
  gate: it receives the session id, the working directory and a transcript path,
  and open `raised-here` issues are the *normal* state at step 5, since step 4
  files them. Worse, a `Stop` hook blocks with exit 2, which forces the model to
  continue — it would push runs past the approval gates the whole loop rests on.
  Its non-blocking form writes to stdout, which the model does not see. Keying it
  on the transcript's closing sentence fails twice over: that sentence is agreed
  per run and deliberately written to no file, and a check keyed on wording loses
  what it watches silently. `SessionStart` can inject context cheaply, but in all
  three violations the run already had the facts — the second one enumerated and
  classified all four issues correctly — so supplying them again prevents none of
  it. **The queryable part of this situation and the failing part do not
  overlap:** what is queryable is whether loose issues exist, and what failed is
  the shape of a sentence no hook can read. What was built instead is two checks
  over the skill text under "Before a handover, run these", where the artefact is
  a file rather than a run.
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

  **Whether that stayed true through 8 and 9 September cannot be read off the
  platform, and the entry stays as it is because of that.** Seven more pull
  requests were merged in `devloop-test-o` on those two days, each of them armed
  or handed over, and GitHub keeps no record of a refused `enablePullRequestAutoMerge`
  mutation — a refusal leaves nothing on the pull request, so the only place it
  exists is the session's own transcript. **The uncertainty is about what can be
  read, not about what happened**: the third case either occurred there or it did
  not, and this file cannot tell which. So it stays recorded as never walked until
  a transcript shows otherwise, which is the reading that is wrong in the
  harmless direction — a case wrongly held open costs one more measurement, a case
  wrongly retired costs the measurement nobody knows is missing.

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
  gated benches and the others have no gate at all. It was also the standing
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
  blocking, five skipped, and the first project where an install was
  declined — `cargo-geiger` was chosen and refused, so `code-security` carries
  that as its reason; `devloop-test-t` declined the second, on 30 September
  2026, the entry of that date. `devloop-test-o` is Go again, a directory-report
  command-line tool set up from nothing on 31 August 2026 and worked through on 6
  and 7 September and again on 8 and 9 September: the only project whose gate this
  workflow built itself, classic protection over the required check `checks` with
  `enforce_admins` on, auto-merge on, private. It is the bench for anything to do
  with the unattended mode, and the only one where the mode is recorded as
  available in `environment.md`.

  **Its state is read off the platform, and the reading has a date on it**, because
  this is the bench that moves. On 7 September 2026 it stood at two specs closed,
  fourteen issues, and three pull requests built and merged unattended. Read again
  on 9 September 2026: twenty-three issues and twenty-one merged pull requests,
  the work of 8 and 9 September being `--gitignore` support and four
  `raised-here` hardenings against it. The three unattended merges are a dated
  fact and stand; the counts beside them were not, and had gone stale inside two
  days.

  **Its check suite is nine classes decided — eight filled and blocking, only
  `integration` skipped**, read off `docs/agents/checks.md` there on 9 September
  2026. This file said seven filled with `integration` *and* `dependencies`
  skipped, which was true when it was written. `dependencies` has since been
  filled: the `scan-deps` target runs `govulncheck` from
  `golang.org/x/vuln/cmd/govulncheck`, blocking, and that project's own
  `environment.md` records what it costs — unlike `gosec` and `gitleaks`, which
  are static analysers, it fetches its database from `https://vuln.go.dev`, so a
  blocking `make check` there can now stall or fail on network reachability, which
  was never true of that suite before. That is the first check class in any bench
  whose blocking target needs the network, and nothing in `checks.md`'s shape
  records that about a class.

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

  **Five more since 29 September 2026**, none of them described above:
  `devloop-test-p`, empty, set up under 0.117.2 on 29 September 2026 with
  step 4 skipped, its setup pull request open and unmerged; `devloop-test-q`
  and `devloop-test-r`, empty, the two askings of the install question under
  0.118.0 and 0.119.0 on 29 September 2026, each holding its initial commit
  and nothing else; `devloop-test-s` and `devloop-test-t`, Go, the two runs
  of milestone 3 on 30 September 2026, the yes and the no, the entry of that
  date. None of the five has a gate, and `devloop-test-s` is the bench for a
  Go project whose install record says yes.
- **devloop's own repository is not set up with devloop.** There is no
  `docs/agents/` here, so the hooks this plugin ships stay inert while you work
  on the plugin itself — including the main-branch guard. What guards work on
  the plugin is not the plugin's hooks: since 29 September 2026
  `.claude/settings.json` of this repository runs `scripts/devloop-version-guard`
  after every edit, and main stands behind the required check `stock-take`, the
  entries of that date.
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
  made to do, so it is worth knowing, and it moves. Read on 30 September 2026
  with `command -v`: Go, Python, TypeScript and Rust are installed, as are
  `gitleaks`, `shellcheck` since 28 September 2026 and `pipx`, `yarn`, `bun`
  and `pnpm` since 29 September 2026; `gosec` and `govulncheck` stand under
  `~/go/bin`, which is on no shell's `PATH` here; `java` answers only with the
  system's stub asking for a runtime, and Kotlin has no command of its own,
  the Kotlin bench running through its Gradle wrapper. A project in one of
  those stacks asks for an install only where its tool is moved aside first,
  which is how the decline of 30 September 2026 in `devloop-test-t` was
  produced, the entry of that date. .NET, PHP and Elixir are the ones still
  absent, and Ruby and Swift exist only as the system versions under
  `/usr/bin`.
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
  said. **Built on 7 September 2026**, at both sites and in nearly these words:
  `review-changes` under "What happens to a finding" and `build-work` step 4 both
  carry "the criterion is the one written above, and each finding is announced
  under it". It was built as part of the entry below about every finding being
  fixed on the spot, which is the same rule arriving from the later measurement,
  and this entry was left reading "Recorded, not built" for two days afterwards.
  That is its own small lesson: an entry answered by a later entry does not
  notice, and the reader who checks this list for what is still open is the one
  who pays for it.

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
  said in the opening message and stay in the conversation — and since 14
  September 2026 the starting commit stands in the mark as well, its first line.
  The round count and the cap were replaced too, first by a rule that the cap was the user's to raise
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
  hook would be reading a mark the run writes about itself. That was read
  against a file that bounded the run; since 14 September 2026 (`e09fa80`) a
  mark of another kind exists, `.claude/unattended.local`, which bounds nothing
  and answers only which mode the run is in, and whether this hook should read
  it is open in the entry on the landing question below — not decided here
  either way.

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

  **The branch guard is built**, 7 September 2026. Where the run stands is no
  longer the *whole* of what it reads: standing on the default branch is still
  the precondition for the guard to look at anything at all, and once it is
  looking, what decides is what the push moves. The refspecs after the remote are
  taken for their destination — the part behind the last colon, with a leading `+`
  and `refs/heads/` stripped — and a destination that is demonstrably another
  branch goes through, deletions included. No readable destination means the
  current branch, which here is the default one, so it blocks; `--all` and
  `--mirror` block; every `git push` in the command is read, so one blocking
  segment blocks the call; and `git commit` on the default branch is untouched.

  **That first sentence read "no longer where the run stands but what the push
  moves" until 9 September 2026, and it was false**, which mattered because the
  three cases below were written under it and read as though they held anywhere.
  `hooks/pre-tool-use-branch-guard.sh` exits 0 before the tool dispatch whenever
  the current branch is not the default one, and that line was never touched by
  the change that taught it to read destinations. Measured on 9 September 2026
  against a scratch repository with `docs/agents/` present, feeding the hook its
  JSON directly: standing on `main`, `git push origin main` exits 2 and
  `git push origin --delete task-24` and `git push origin task-24:task-24` exit 0
  — the fix working as recorded — while standing on `task/x`, every one of those,
  `git push origin main` included, exits 0.

  **The hook's own comment opened with the same false sentence and was corrected
  with this entry.** It was nearly left alone on the reasoning that this round
  changed no file under `hooks/`, and that reasoning is backwards: no version
  bump is the *consequence* of having changed nothing there, never a reason to
  leave something wrong. A comment saying the opposite of what the code does sits
  in the file the next reader opens to understand the guard, which is a worse
  place for it than this one. The comment now says that standing on the default
  branch is the precondition and that the destination decides once the guard is
  looking. Only the comment changed; the six cases above were re-measured
  afterwards and answer exactly as before.
  The cost this entry carried was wrong and is corrected with it. It read "one
  clause letting a `git push` through when what it deletes is a branch other than
  the default one", and a clause about deletions is too narrow —
  `git push origin task-24:task-24` deletes nothing and has to go through as well.
  The clause reads the destination, not the deletions.

  Four cases it does not answer, all open. The first three are deliberate, and
  all three describe the guard **while the run stands on the default branch**;
  the fourth is what standing somewhere else costs, and it was found by reading
  this list against the hook rather than by a run hitting it.
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
  - **`git push origin main` from a task branch goes through**, measured on
    9 September 2026, because the guard exits before it reads anything whenever
    the current branch is not the default one. That is the act the guard exists
    for, reached from the branch every build in this workflow actually stands on.
    Should hold: what is guarded is the default branch moving, so a push whose
    destination is the default branch is blocked wherever the run stands, and the
    standing check goes on gating only the two cases that really are about
    standing — writing files, and `git commit`. Not built: this round corrected
    the comment describing the guard and changed none of its behaviour, and
    which of the two the standing check should gate is a decision rather than a
    wording. **The reason it has never been
    hit is not that it is safe**, it is that `build-work` step 6 hands the merge
    over rather than pushing, so nothing in the workflow reaches for this command
    — and a guard is for the run that departs from the text, which is the only
    kind of run it ever fires on.

  **The install guard is unchanged and the case stays open.** The reason it stays
  open is one thing, and it is not that the false positive is a corner.
  Telling a string from an execution needs the quotes, and line 4 of the three
  guards and of `post-tool-use-checks.sh` destroys them on purpose. That
  normalisation is the correction from "A hook reading the tool's JSON must undo
  the escapes first" and it closed two silent
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

  One thing the shared rule cannot reach, recorded and not fixed. Today: the install
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

  **Built on 7 September 2026.** One sentence under "The lenses that run when
  they apply" in `review-changes`: unattended, a stated reason buys no exception —
  where the trigger is in the diff the lens runs, and the reason is a judgement
  standing where the diff was supposed to decide. The sentence above it is
  unchanged and no latitude was added to the attended mode; what the new sentence
  says about it is only that a judgement there reaches somebody who can
  contradict it. The clause went into the cost list at `setup-checks` step 8 in
  the same change, phrased in the words that list already speaks — every review
  runs every angle the change touches, and that costs more than the same review
  with the user there. **It carries no figure and says why it carries none:** five
  angles over one task and three over two others is the defect, not a rate. The
  general form is in `docs/skill-conventions.md` under "A reason is not the
  evidence the rule asked for", together with the finding below, which has the
  same shape.

  **The record itself was the weaker half, and that is its own finding.** The 30
  August entry above says five lenses ran as background agents, the sixth was left
  out, and the reason was given. It does not say **which** lens, or whether its
  trigger stood in the diff. So it reads two ways that lead opposite places: a
  latitude recorded approvingly, or the rule working exactly as written — the
  change carried no schema or stored-format edit, the data-migration lens did not
  apply, and that was said. The second is the nearer reading and the entry cannot
  settle it. Writing this up nearly bought a loosening of the attended rule that
  nobody had decided, off an entry that never claimed it.
  Should hold: an entry recording a lens left out names the lens and says whether
  its trigger was in the diff. Without those two, it is not evidence of anything
  and the next reader has to guess which way it went. This is the general case of
  what `docs/skill-conventions.md` already asks of a measurement, applied to the
  half that records an omission rather than an act.

- **Three findings against the review step, measured on 9 September 2026 across
  two unattended runs.** The first two are the same rule failing without a rival;
  the third is a real gap.

  **A. Five applicable lenses were carried by two reviewers.** One read security
  together with failure behaviour, the other standards with spec and test
  quality. The run announced the allocation; nothing was hidden.
  *Today:* the rule stood in **four** places, every one of them saying the same
  thing — `review-changes` at "each with exactly one lens", at "Add one reviewer
  per lens the change touches" and at "One subagent per lens, in parallel", and
  `skill-conventions.md` under Agent Teams. **And there is no competing
  sentence.** Searched: `build-work` step 4 says only "Run `review-changes` on
  the diff" and is silent on allocation; its head permits parallel agents for
  reviewing without bounding them; the one sentence in the corpus about the cost
  of the lens count, in `setup-checks` step 8, argues for running the full set;
  the measured environment constraints record no cap on parallel agents; and the
  30 August entry above records five lenses running singly, approvingly. So the
  explanation that answered the loose-issue findings — a rival sentence nearer
  the moment of deciding — **does not apply here**, and a fifth copy of a rule
  that four copies did not carry is not the remedy.
  *Should:* a lens is one reading of the whole diff by a reviewer given no other
  lens, so five lenses on two reviewers are two lenses and a false count.
  *Built:* `lens` defined — in `review-changes` beside `seam` and `condition`,
  and in `skill-conventions.md` under "Shared words are defined in one place",
  where it was missing while three lesser words were defined. Not a fifth
  instruction: the four say how to start reviewers, the definition says what the
  word the report counts means. And the announcement now carries both numbers in
  one sentence — lenses that apply, reviewers started — **with its purpose
  written beside it**, which is to spare the reader a comparison rather than
  hand them one: "five lenses, five reviewers" reads as nothing, "five lenses,
  two reviewers" reads as itself. The purpose is written down so a later reader
  does not take the pair for bookkeeping and cut it.
  **Its limit is written down too: this is not enforcement.** Nobody reads that
  sentence in an unattended run; it works when a person reads the report
  afterwards. What the finding measures next is that report.

  **The enforcement was examined and rejected, and the case stays open.** The
  obvious quantity — reviewers started against lenses that apply — is one the run
  announces about itself, and this file already settled what that is worth: a
  ceiling inside a task went out because **it is an instruction and not an
  enforcement**, the run having to keep the count against itself, and one of the
  three examples named there is literally that a run "narrowed the review's
  lenses". A self-counted number here would be the fourth entry in that list, not
  its answer. From outside, a `PreToolUse` hook on the agent tool sees each
  spawn's prompt and fails three ways: it cannot know how many lenses apply
  without judging the diff, it cannot tell a review subagent from the build
  subagent of step 3, and matching lens names in a prompt is keyed on wording, so
  a bundled prompt describing two lenses without naming them passes. The false
  positives decide it — the build subagent is handed the spec and `standards.md`,
  so its prompt plausibly carries two lens words, and a block there stops the
  build. Recorded as open rather than answered with a sentence that only looks
  like an answer.

  **B. The reason given for a lens left out was a judgement.** One task ran four
  lenses instead of five, security omitted because there was "no new input, path
  or network surface". *Whether the omission was substantively right is not the
  finding, and it may well have been.* The finding is the form.
  *Today:* the four conditional lenses are triggered by facts about the diff's
  content — does it contain a path, a test, a fallback value, a stored form. The
  reason given was a judgement about what the change means, which no reader can
  check and which unattended nobody reads.
  *Should:* the statement about a lens that did not run is the trigger's own words,
  negated, item by item — checkable by anyone holding the diff.
  *Built:* the existing paragraph "Unattended, a stated reason buys no exception"
  rewritten, not added beside. **The form had to be stricter than "a fact rather
  than a judgement", and that is worth recording:** a fact can answer a narrower
  question than the trigger asks. "The diff adds no new error handling" is true,
  checkable, and about the diff's content, while the trigger reads "**any** error
  handling, fallback value, or default return" — so a diff changing an existing
  default return satisfies the sentence and triggers the lens. A rule asking only
  for a fact stops the judgement and leaves that route open. The general form is
  in `skill-conventions.md` beside "A field is not an answer to a question it was
  not asked", which is the same shape one level over.

  **C. The review step fell away entirely.** A run read its own change, called a
  full five-lens review disproportionate for a comment-only diff, and landed it.
  *Today:* **not the void it first looks like.** Two sentences forbid it in general
  terms — `build-work`'s head, "none of them is optional", and step 6's "Only
  after steps 4 and 5. If the review has not run… Go back rather than forward."
  What is missing is the clause that would have caught this run: that the size or
  kind of the diff is not a reason, and that unattended the review is the only
  reading the change gets. And one sentence sits near enough to be read the wrong
  way — step 5's "in unattended mode the check suite is this gate instead", which
  replaces step 5's gate and says nothing about step 4.
  *Should:* unattended the review never falls away; the author's judgement of size
  is not the measure, because it is the judgement the review checks.
  *Built:* at `build-work` step 4, which is the **only** place `review-changes`
  is reached from — a run that decides this never opens that file, so the
  sentence cannot live there alone. It says what the diff does decide (which
  lenses apply) and what it does not (whether the step runs), and it says why no
  exemption for a comment-only diff can be written: the claim that a diff is only
  comments is one of the things a review reads for. The clause holds over the
  second review round too, said there. Step 6's precondition now says which of
  its two halves the unattended mode replaces and which it does not. And
  `review-changes` was recorded here as carrying the corresponding sentence at
  "Pin the target", with a comment-only diff named as the case where the standards
  lens has the most to do rather than the least. **It never did.** Read on 14
  September 2026: what stands at "Pin the target" is "How small it is decides
  nothing here. A one-line diff gets the lenses its content triggers, and the two
  that always run always run", and `git log -S 'most to do'` over the file is
  empty — the sentence was never written. This entry claimed a built state that
  did not exist, which is a finding of its own: a *Built* line written from the
  intent rather than from the diff.

  **A third question was added to the two this file asks before a rule is
  written: what does this sentence not replace?** Both known competing sentences
  have that shape — step 7 summarised step 2's decision and replaced it, step 5
  replaces one gate and is silent about the other. It is recorded there that this
  third question would have caught the first of the two failures already on the
  page and **not** the second: the unattended finish sentence replaces nothing,
  it defines in the wrong vocabulary, which is the second question's case. The
  three are not nested, and a question wide enough to hold all of them would say
  nothing. It is also recorded that this one does **not** become a check before a
  handover — whether a sentence considered the other mode is a question of
  meaning, and a search for the other mode's name would be keyed on wording and
  mostly noise — so that nobody builds one later and takes the case for covered.

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

  **Built on 7 September 2026, at four sites rather than two.** Two clauses at
  each of the criterion's two homes — `review-changes` under "What happens to a
  finding" and `build-work` step 4: the split is announced per finding under the
  written criterion, saying which of its two halves applies and why; and a finding
  against something the task issue itself asked for is never fixed silently.
  **The second clause is a duty to say so, not a second route to the tracker**,
  and it is written that way — the destination does not change, the fix is usually
  obvious and the first half still takes it. Read as a switch it would have
  contradicted "fix now if the fix is obvious" one line above it.
  **And it is written in the words this repository already has** — a condition the
  issue names, a test decision it records. "Acceptance criterion" would have been
  a fourth term for something the glossary covers twice, which
  `docs/skill-conventions.md` makes a defect under "Shared words are defined in
  one place". The measured case is a test decision, not a condition.
  The two extra sites are the close, because a clause naming something at the
  close needs a close with a line for it: `build-work` step 5 gives the case its
  own line rather than letting it sink into "what was fixed", and the unattended
  half of step 5 — where the check suite replaces the gate — says the naming is
  not replaced with it and goes into the report the run writes. The general form
  is in `docs/skill-conventions.md` under "A duty to say something needs a place
  where it is said".

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
  **Built on 7 September 2026, at five sites.** In `build-work` step 3, point 7
  carries both halves: a command that fetches something from outside is backed
  before it is handed over — by the vendor's own installation line quoted from
  where it was read, or by the path in it resolving, `go list -m
  <module>@<version>` and its equivalent elsewhere — and **the text names which of
  the two the backing hangs on**, because "checked" names neither. Whether it
  worked is read off the path that installer writes to, read from the installer
  rather than assumed and not written for one ecosystem: `$(go env GOPATH)/bin`
  or `$GOBIN`, `$(brew --prefix)/bin`, `$(npm prefix -g)/bin`. The resumption
  sentence changed with it — the build picks up once the tool is where that
  command puts it, not once the user says it ran.
  **Backing before handover covers both channels, not the one that was measured.**
  A decline turns the command into an issue carrying it verbatim, and an unbacked
  command in the tracker outlives the session; the rule is written to cover the
  message and the issue alike.
  Point 8 got the narrow half only: the line written into `environment.md` is the
  backed command itself rather than a copy made by hand. **No second backing is
  owed there** — point 7 is the only route by which such a command enters the
  step — but that file is read after every merge to say what to pull, so a command
  retyped or shortened on the way in is wrong for every later reader, none of whom
  goes back to check it.
  Two sites outside the build: `setup-checks` step 3, which is where a wrong path
  is likeliest to be typed because filling a check class means naming a tool — the
  measured case was a linter — and `setup-project` step 3. The install guard's own
  message carried the defect too, telling the run to pick up as soon as the user
  said the command had run; it now says the word is checked against the path that
  command writes to.
  **The commands the new text asks for were run against the guard rather than
  assumed past it**: `go list -m`, `ls` and `test -x` on that path all come back
  0, the install itself comes back 2. The general form is in
  `docs/skill-conventions.md` under "A command handed over is backed, and its
  result is read".

  **Rewriting the resumption sentence dropped it out of the check that watches
  it**, and that is worth its own line. The handover check in "Before a handover,
  run these" finds these sites by their wording, and the site it was written for
  is this one; the new phrasing matched none of its seven patterns, so the output
  went from seven lines to six with nothing saying a line had gone. `picks up
  once` was added to the pattern and it stands at seven again.
  Should hold: a check keyed to wording loses what it watches every time the
  wording improves, and silently — so a phrasing is added as it is coined, and a
  line vanishing from that output is read as a question rather than as progress.
  That is written beside the check itself.

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
  Built on 13 September 2026 in `b90874b`, in the entry on the post-arming stop
  below: `build-work` step 6, "Unattended, the wait happens in this answer or it
  does not happen at all. Nothing wakes a run: the answer that ends here ends the
  run, whatever it promised about reporting back"; and with somebody there, "the
  session does not sit and wait: it says what is outstanding and picks up when you
  say it landed" (`README.md`, "Merge and verify").

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

- **The setup cuts its branch before the first question is answered, measured on
  9 September 2026.** `plan-work` was invoked in a repository with no
  `docs/agents/`, routed on to `setup-project`, and `setup-project` cut the branch
  `setup-devloop-project` before it asked anything. The user broke off. The branch
  stayed behind and was in the way at the next start — `git branch -D` refused it,
  because it was the checked-out branch. That nothing had been written is not
  inferred: it stood on exactly the then-current main and `git status --short` was
  empty.

  *Today:* `## Cut the branch before the first write` is a step of its own between
  Step 2 and Step 3, and the questions are Step 4. The paragraph says why it is
  placed there and the reason is good — a run that reads past it hits the
  main-branch guard on its first edit and on every edit after, which had happened
  three times. So the placement answers a real failure; what it never considered
  is the run that never gets as far as a first edit.
  *Should:* the branch comes into being once the last question is answered, or a
  break-off clears it away. A branch standing there from an abandoned setup looks
  like work begun and is none, and the next run has to work out which of the two
  it is before it can do anything.

  **The same pattern is one skill over, in the same words.** `setup-checks`
  carries that block verbatim, in the same position: before Step 2, which is the
  step that asks which classes to fill — "All of them, some of them, or none".
  The branch therefore exists before the question that decides whether anything
  gets built at all. It is one paragraph living in two files rather than two
  rules, which is the shape this file already names as *a rule written on one
  path when several reach the situation* — except that here both paths got the
  rule and neither got the question that follows from it.

  **And one skill already carries the answer, which is why this is cheap.**
  `plan-work` opens the planning issue before Stage 1, which looks like the same
  defect and is not: the issue is the surface each stage writes its output into,
  it carries the label `being-planned` so that neither an agent nor a person acts
  on it, and "Picking up an interrupted plan" is a written path back to it. A
  mark saying *unfinished*, and a reader for that mark next time — the two halves
  the setup branch has neither of. The other three places something is created
  were read and are not this pattern: `cut-into-tasks` presents the cut and then
  creates it without asking, deliberately, because the cut is not the user's to
  judge; `build-work` step 3 cuts the task branch inside the build subagent, after
  the task has been chosen; and `build-prototype` commits to a throwaway branch at
  capture time, after the work exists.
  Built on 1 October 2026, version 0.123.0, the entry of that date: the cut
  stands behind the last question in both skills, the branches carry the fixed
  names `devloop-setup` and `devloop-checks`, and a branch of that name with
  nothing written on it is deleted and cut afresh, the checked-out one included.

- **The check over the installed copy could not be green where it stood, measured
  on 9 September 2026.** Reported red three times in one day, at 0.95.0, 0.96.0
  and 0.97.0.

  *Today:* the command in `docs/skill-conventions.md` read the version out of
  `.claude-plugin/plugin.json` — the working tree's — and compared against the
  cache directory of exactly that version. Every change that lands raises that
  number, so that directory does not exist from the bump until the plugin is
  updated after the merge. The check stood in the handover list, which is
  precisely when the bump has happened, so it was red exactly when it was read,
  and it answered `No such file or directory` rather than a difference.
  *Should:* the check belongs where its answer can go either way — at the start of
  the work, where it matters that you are not working against a stale installed
  copy — and it reads the version from the installed side, not from the working
  tree.

  **Built**, and the losing option is written down beside it because it is the
  repair that suggests itself. Comparing against the version before the bump does
  not hold: 0.96.0 was merged and released and never entered the cache at all —
  the install went from 0.95.0 straight to 0.97.0 — so the predecessor's directory
  need not exist either, and the check would go red for a second reason it cannot
  tell from the first. Under that sits the reason that decides it: at a handover
  the text being handed over is by construction not the installed text, so no
  comparison made at that moment can be green about the change in hand. The check
  was in the wrong place, not in the wrong form. It now stands under "Before you
  change anything, run this", reads the installed version out of
  `~/.claude/plugins/installed_plugins.json`, and diffs the whole `skills` and
  `hooks` trees rather than one file — `hooks` added in the commit after this
  one, since a hook runs from the installed path too. Both directions were
  measured before it was written down: against the installed 0.97.0 it is
  silent, against 0.95.0 it prints the difference. The general form — **a check
  that is red by construction at the moment it is read is not a check** — is in
  `docs/skill-conventions.md` beside it, as the mirror image of the check keyed
  on wording that goes quietly green and stops watching.

- **A lens checked against a decision it had not been given, measured on 9
  September 2026.** The standards lens reported a field name as contradicting the
  intent of the design. That field name was the recorded design decision on the
  spec issue. The calling run saw it and struck the finding itself, saying the
  reviewer had not known that connection.

  *Today:* `review-changes` under "Run them" — "One subagent per lens, in parallel,
  each given only its own lens and the diff. A reviewer that sees the other lenses
  starts prioritising across them." What else a reviewer may read is written into
  each lens: the standards lens is pointed at `standards.md`, the spec lens at the
  task issue and the spec it belongs to. So the decisions the diff was built
  against reach the spec reviewer and nobody else, and the standards reviewer has
  no route to them at all.
  *Should:* a lens gets the decisions that hold for the diff it is reading, or the
  report says which ones it did not have. A reviewer without them manufactures
  false findings that the caller then clears away one at a time — and that the
  caller recognises them is not guaranteed. It is the same judgement by the same
  run that the review exists to check, arriving one step later.

  Recorded, not built, and the build is a decision of its own rather than a
  clause. It touches what a reviewer may see, and the rule as it stands is not a
  gap but a reason: a reviewer that sees more starts ranking across lenses, which
  is the thing that made one reviewer with five lenses a false count in the entry
  above. So the question is not whether to hand the decisions over but which
  ones, from where, and whether the reason for the narrow context survives it.

- **A run offered a way around its own guard, and the guard is blind to it,
  measured on 9 September 2026.** Blocked by the install guard, the run handed the
  command over correctly — and added that the user could type it with a leading
  `!` directly in the session, where it would run and the run would see the
  output.

  **The guard does not fire on that route, and that was measured before this was
  written.** In this repository, with `docs/agents/` present so the hooks are
  armed: `echo "brew install probe"` through the Bash tool exits 2 with the
  install guard's message — run twice, once before the probe and once after, so
  the two readings are the same state. The same string typed by the user as
  `! echo "brew install probe"` ran, printed `brew install probe`, and no hook
  fired at all. The mechanism is visible in the shape it arrives in: a `!` command
  reaches the session as its own kind of input, not as a tool call, so
  `PreToolUse` has nothing to fire on. That is the heavier of the two possible
  answers. It is not a wall the run sends the user against; it is a way past the
  wall, and the run named it.

  *Today:* all three guards in this set are `PreToolUse` hooks on `Bash`, `Edit`,
  `Write` and `MultiEdit`. The `!` channel is none of those, so `! brew install`,
  `! git push origin main` and `! gh pr merge` are all unguarded — the install
  guard is only where this was met.
  *Should:* where a guard blocks, the run offers no route that ends at the same
  block or gets around it. It hands the action over **as an action** — what it
  does, what it costs, and where a no leads — not as a keystroke whose output
  comes back into the run's own context. `docs/skill-conventions.md` already
  carries the near half of this, that the same act under a different command name
  is the act that was refused; a different *channel* for the same act is the same
  move, and the shared block does not say so.

  **One reading against it, and it is the reason this is worth writing down
  rather than obvious.** Letting a `!` command through is arguably the guard
  working: the guard's own message says the act is the user's to run, and a
  command the user types is the user running it. That reading holds right up to
  the point where the run is the one that proposed the exact string and then reads
  the result. Formally the act became theirs; what actually happened is the run's
  act with the user as a keyboard, and the deliberation the guard exists to force
  — say what it installs, say what a decline costs, wait — never took place.
  **The distinction is who decided, not whose fingers moved**, which is the same
  distinction this file already draws between a rule written into a skill in the
  open and a rewording invented by a run at the block.

  **And the suggestion comes from outside this repository**, which is why a rule
  here has to name it. The `!` form is harness guidance, offered to a run
  independently of anything these skills say; a run that has read it will offer it
  again unless the skills say not to. That is the mirror image of the entry above
  about a rule in the run's own memory closing a route the skills expressly allow
  — there something outside shut a door these skills hold open, here something
  outside opens one they mean to hold shut. Both say the same thing about how much
  of this workflow's behaviour is actually decided by its own text.
  Recorded, not built. Fixing the hook is not the answer available: a hook cannot
  see an input that never becomes a tool call, so this is a rule on the run's side
  wherever it lands, and this file already records what that is worth.

- **The second review round cannot read a change to the test scaffolding,
  measured on 9 September 2026.** In one task the corrections changed the
  scaffolding itself: the error injection of a fake file system was split apart so
  that "directory readable, file not" became constructible at all.

  *Today:* `build-work` step 4 — "Not the whole diff — the commits added since the
  last review", and "A second round follows the same two ways out, and it looks
  only at what is new." A reviewer reading only the correction commits sees the
  change to the scaffolding and cannot judge whether tests that already existed
  went blunt because of it, since the tests that use that scaffolding are not in
  the diff it was given.
  *Should:* where a correction round changes a test double or test scaffolding, the
  second round is given the tests that use it as well — or the narrowing to the
  correction commits does not hold for that commit, and the report says so.

  **A second reading, from the other file, and it points the same way.**
  `review-changes` defines its target at "Pin the target" as *the diff between the
  branch and the main branch, at the current commit*. The narrowing to the
  correction commits is written only in `build-work`. So the second round is the
  one place in this workflow where the caller hands over a target the callee's own
  definition does not describe, and neither file says what happens when the two
  disagree. Whatever is built here belongs in both.
  Recorded, not built.

- **A closed planning issue still carries `being-planned`, seen on 9 September
  2026.** Issue 29 in `devloop-test-o` — "Add --format json output for dirstat,
  all three modes" — is closed and carries the label. It is a planning issue that
  was closed because the work it proposed turned out to be built already.

  *Today:* `plan-work` puts the label on at the start and takes it off at Stage
  4, when the spec is written into the body. A plan that ends any other way —
  closed because the work exists, closed because it was abandoned — never reaches
  Stage 4
  and keeps the label.
  *Should:* a closed planning issue does not carry it. `plan-work` says what the
  label means in as many words — "Nothing acts on a `being-planned` issue —
  neither an agent nor a human — because it is not a suggestion and not an
  instruction, it is unfinished." On a closed issue that is simply false: it is
  not unfinished, it is settled, and the mark says the opposite of the state it
  is attached to.

  **Nothing is broken by it today, and the reason is worth stating rather than
  leaning on.** Both readers of the label filter on state before they ever see
  it: `plan-work`'s stock-take asks for *open* issues labelled `being-planned`,
  and the entry point's query is `issues(states:OPEN,…)`. So a closed one is
  invisible to both, and what protects them is the state filter rather than the
  label being kept true. That is a coincidence holding a mark honest, not a
  design, and the mark is still wrong for anyone who reads the tracker by label.

  Recorded, not built. **It stands on a bench and not in this repository**, so
  nothing here is red because of it; what is wrong is the wording in `plan-work`,
  which describes exactly one way out of a plan — Stage 4, where the spec is
  written and the label swaps — and leaves the label behind on every other way one
  can end.

- **Five false statements in these two documents, and that was measured on 9
  September 2026.** The same reading as the round of sixteen two days earlier —
  the documents against the repository, the git history and the live platform.
  Corrected where they sat; listed here because what they have in common is worth
  more than any of them.

  - **A "Built" description that overstated what was built.** The branch guard's
    entry opened "what it reads is no longer where the run stands but what the
    push moves", and the standing check is still the precondition — the hook exits
    0 before it reads anything whenever the run is not on the default branch. The
    three cases written under that sentence therefore only hold on the default
    branch, and a fourth case was hiding behind it: `git push origin main` from a
    task branch goes through. Corrected, with the measurement, and the fourth case
    added to the list. **The same sentence opened the comment in
    `hooks/pre-tool-use-branch-guard.sh` and was corrected there too**, which is
    the only file outside `docs/` this round touches and the reason the version
    moves to 0.98.0.
  - **A "Recorded, not built" entry that was built.** The 30 August finding about
    a split announced with no criterion was answered on 7 September by the 6 and 7
    September finding, at both of the sites it names, and never noticed. An entry
    answered by a later entry does not update itself.
  - **Two bench figures that had gone stale in two days.** `devloop-test-o` was
    recorded at fourteen issues and at seven filled check classes with
    `dependencies` skipped. Read off the platform on 9 September: twenty-three
    issues, twenty-one merged pull requests, and `dependencies` filled and
    blocking with `govulncheck`. Both were true when written. Now dated.
  - **A line reference that had drifted again.** `build-work`'s three loose-issue
    clauses were cited at `:292-304` and stand at `:366-380`. The round of sixteen
    corrected the same reference for the same reason; two commits later it was
    wrong again.
  - **A tally written in relative time.** The count of these audit rounds read
    "three in the first, four in the round before this one" — written in the very
    commit that corrected sixteen, so the largest round was missing from the tally
    on the day it happened. Now by date.

  **What the five have in common is the thing to take from them.** Not one of
  them is about the workflow's rules; every one is about a sentence describing
  something that had moved — a hook, a bench, a line number, an entry two screens
  down, an earlier round. Three of the five point at a second copy of a fact that
  lives somewhere else, which is what "a count lives in one place" already says.
  The other two are the drifting kind: a figure and a line number, both true when
  written. The checks before a handover cannot find any of this, and this file
  already says why — they compare this repository's own text against itself, and
  none of these claims is about that text. **The only thing that finds them is
  reading each claim against the thing it claims about**, which is what
  `check-docs-consistency` would be if it were ever built, and the reason it stays
  on the list of names rather than leaving it.

- **Planning is fenced out of the unattended mode by one sentence, and three
  places already decide the other way, read on 11 September 2026.** Nothing ran
  for this one: it is the text read against itself, the same reading as the
  round of five above.

  *Today:* `start-work` under `## Unattended` — "Planning is never unattended: the
  design choice and the task cut are the two decisions that belong to the human,
  and skipping them would build the wrong thing faster." `--auto` accordingly
  reaches only the build stage.

  **The fence stands in a second file, on a second reason.** `README.md` under
  `## Attended and unattended` says the switch "replaces that approval with a
  green check suite, from the build step onward", and then fences planning off
  as "the two decisions where a mistake sends the whole thing in the wrong
  direction" — the same rule resting on what a mistake costs rather than on
  whose decision it is. Two places, two grounds, and neither names the other: a
  repair at one of them leaves the other standing, still carrying a reason the
  repair never answered.

  Three sites settle the same question the other way:

  - `plan-work` at `## Close` creates the cut without asking, and says why: the
    split "follows from the spec rather than from anything only they know — so
    it gets presented and created, not put to them as a question."
  - This file says it a second time, in the entry on the setup branch above:
    `cut-into-tasks` "presents the cut and then creates it without asking,
    deliberately, because the cut is not the user's to judge."
  - `plan-work` at `## How to ask` — "With nobody there to answer, a question
    that passes this test does not stop the run. Take the reversible option,
    record it in the spec as decided without an answer, and carry on. Stop only
    where no reversible option exists." That is a planning stage describing its
    own unattended behaviour, and it is not a stray line: it stands verbatim in
    six skills — `plan-work`, `cut-into-tasks`, `build-work`, `setup-checks`,
    `setup-project` and `untangle-idea` — held byte-identical by the cksum
    command in `docs/skill-conventions.md`, under "The same for the block on
    asking, in the six skills that ask anything". **So a word changed in that
    clause is a change to six files**, which is the rule written directly under
    that command: *a change to one skill is a question about all of them.* What
    the command does not find is the other half — where every copy carries the
    same reading, right or wrong, the checksums agree.

  So the task cut is settled twice in opposite directions, and the design choice
  is covered by a rule that already says what to do when nobody answers.

  **The sentence that fences planning off is the oldest of the four and the
  first one a run reads**, and that pair is what keeps it standing. It was
  written on 18 August 2026 and has not been touched since; both sentences in
  `plan-work` are from 22 August 2026, and the entry in this file from 9
  September 2026. It sits at the entry point, in the section where `--auto` is
  typed, so a run meets it before it opens `plan-work` at all. And of the four
  skills a piece of work passes through, `start-work` is the only one carrying no
  `## How to ask` block, so the two never stand in one file — the check that
  holds the shared blocks together compares copies of the same block across
  files and cannot see a sentence in another section contradicting one of them.

  *Should:*

  - **The task cut falls out of that sentence.** It is decided otherwise at its
    own site already, and one of the two places saying so is this file.
  - **Both sentences change, the one in `start-work` and the one in
    `README.md`.** The README's reason does not fall away because a mistake in
    either decision would be cheap — it would not be. It falls away because both
    decisions get something to be checked against: the design choice against the
    user stories, the cut against the spec it follows from. What carries them
    unattended is that check, not a claim that being wrong stopped costing
    anything.
  - **Planning runs unattended from the point where the idea stands.** Stage 1
    stays attended, because it is the only part that needs something only the
    user has. Everything after it — reading the code, the drafts, the design
    choice, the seams, the spec, the cut, the build, the merge — can run alone.
  - **The hard core of the user stories comes out of the end of Stage 1**
    instead of Stage 4, so that the design choice has a list to play every draft
    against.
  - **The design choice is checked by an agent of its own, and as a question of
    fact**: which draft does not carry what the user stories demand, and which
    one builds something the spec expressly rules out. Not as a ranking — "which
    of these is best" gets a plausible reason for whichever one it is handed,
    which is no check at all.
  - **At the end of Stage 1 the user is asked once, with three answers**: carry
    on unattended now, plan unattended and stop before the first build, or stay
    attended.
  - **That question and the one in `setup-checks` step 8 are two questions, and
    the text has to say which is which.** Step 8 offers the mode once per
    project, with its costs and with the advice against a yes on a first
    project. That one is a permission for this repository. The one at the end of
    Stage 1 is a choice for this piece of work and presupposes the permission.
    Left unrelated, the same thing is decided in two places. The wording with
    the costs and the advice stays with the permission and is not repeated in
    the choice.
  - **The five preconditions of the unattended mode are checked at that
    question**, not at the build. Otherwise the user is asked whether the work
    should go on alone and it emerges afterwards that the repository does not
    allow it at all.
  - **The throwaway prototype separates two cases.** A question that can be
    settled by measuring — a state model, a flow — is built, measured and
    recorded by the run itself, attended as much as unattended. Only a question
    where somebody has to look at the thing goes to the user as an offer.
  - **Whether a question of that second kind is open is checked at the end of
    Stage 1**, as one of the conditions for the idea standing, so that the case
    does not arise in the unattended part.
  - **Where a question is left unanswered unattended, this order holds:** first
    take the less committing option and record it; then cut the part hanging on
    the question out of the scope, file the question as an issue of its own and
    build the rest — only where the rest is still a result on its own; and only
    after those, record it in the spec as undecided and build on it.
  - **For questions about the surface, the route in the `settle-the-look` entry
    applies**: the design decisions are fixed once per project with the user
    there, and are applicable unattended and checkable by machine afterwards. A
    surface is reversible as long as it is kept apart from the function, which
    is why the first option carries there and not the cutting out. **That route
    does not exist today.** `settle-the-look` is a name under `## Named, not
    built as skills`, with no body written, so this point hangs on its being
    built first; until then an unattended stage that meets a surface question
    falls back on the order in the bullet before this one.

  **What this leaves open, deliberately**: a question that needs someone to look
  and first appears while drafting in Stage 3. The check at the end of Stage 1
  catches the ones visible by then, and nothing in the text provides for one that
  surfaces later — an unattended run meeting it has nothing written to follow.

  **What a repair touches is counted here rather than discovered halfway
  through it:** two files for the fence, six for the unattended clause and
  nothing less, one further skill whose existing question has to be told apart
  from the new one, and `settle-the-look` built before the last point of what
  should hold means anything.

  **Built on 14 September 2026, on `task/unattended-planning`, after a
  walkthrough of what should hold against seven situations found six gaps and
  each was decided.** Nothing here has run yet: every sentence below is text
  read against text, and the first unattended planning is what measures it.
  What stands now:

  - **The fence is gone from both files.** `start-work` under `## Unattended`
    and `README.md` under `## Attended and unattended` say what `--auto` means
    instead: do alone everything that can be done alone; the sharpening runs
    with the user whatever was typed, and from the point where the idea stands
    everything after it has something to be checked against. The README's reason
    fell away the way this entry said it should — not because a mistake stopped
    costing anything, but because each decision got its check.
  - **`--auto` stays and has one meaning.** Typed, the question at the end of
    Stage 1 is not asked — the flag is its answer — so flag and answer can never
    disagree. Not typed, the question is asked. On the route straight to a build,
    from a finished spec or after a halt, the flag is the only thing that sets
    the mode. Written in `start-work` at `## Unattended` and step 5, in
    `plan-work` Stage 1, in `setup-checks` step 8.
  - **Four of the five preconditions are read at the question, all five at the
    build**, and both places say why two: the direct route has no question, the
    state can change in between, and the third — no task blocked from outside —
    has nothing to be read against before a cut exists. `plan-work` Stage 1,
    `build-work` under `## Unattended mode`, `README.md`.
  - **Seams are placed at the code, not confirmed by the user**, in both modes:
    the path and the symbol where the boundary stands, or the line of the chosen
    interface that creates it. The three byte-identical copies of the definition
    — `cut-into-tasks:48`, `build-work:234`, `review-changes:51`, `cksum`
    `3342723713 196` in all three before the change — were rewritten
    identically, and every sentence leaning on "confirmed seams" with them.
  - **The hard core of the user stories and of the exclusions comes out of Stage
    1**, before the drafts exist, and Stage 3's problem space is that list plus
    what Stage 2 found — one list, not two. Stage 4's long list grows out of it
    and keeps every line.
  - **One checking agent per draft**, given the draft, the hard core and Stage
    2's constraints and nothing else, answering item by item which story the
    draft does not carry, which exclusion it builds, which constraint it breaks
    — in the words of the item, never as a ranking. The verdicts and the rejected
    drafts go into the Stage 3 comment, which until now held the winner alone:
    read on the tracker of `devloop-test-o` on 14 September 2026, specs 2 and
    46, and spec 2's body says the rejected alternatives were recorded there.
  - **The question at the end of Stage 1: three answers, one message, no
    recommendation**, asked only where `environment.md` records the mode as
    accepted and only where the idea stands — nothing important open, the hard
    core written, no question left that somebody has to see something to answer.
    The costs of this piece of work are said, the repository's costs not
    repeated. It is defined as standing outside the asking test, the way the
    landing gate does, in the one place it is asked. That was the cheaper of the
    two ways to reconcile it with "moving to the next stage is never a
    question": one sentence in `plan-work` against an exception written into six
    byte-identical copies.
  - **The shared block on asking keeps the test and points away.** Its
    unattended clause no longer says what to do — "take the reversible option,
    record it in the spec" was wrong for four of the six skills carrying it, a
    build having no spec to record into and a setup no scope to cut — but that
    each skill with an unattended path says it in a section of its own, and a
    skill without one stops with the question named. Six files changed
    identically; the `cksum` under "The same for the block on asking" reads one
    line, `3461436879 4084`. The sections stand in `plan-work`, `cut-into-tasks`,
    `build-work`, `setup-checks` and `build-prototype`, each under `## With
    nobody there`. `setup-project` and `untangle-idea` have no unattended path
    and no section, by the rule in the block.
  - **The order for a question with nobody there** stands in `plan-work`: the
    less committing option recorded; else the part cut out and filed as an issue
    where the rest is still a result on its own; else undecided in the spec; and
    where none holds, a stop with the reason named. `build-work` says why a
    build does not follow that order — a task needing a decision the spec did
    not take is not buildable as cut, and goes the way the guard's block and the
    turn-end hook already go.
  - **The prototype splits two ways, in both modes.** What can be measured is
    built, driven and read by the run itself alone, and offered first with the
    user there because it costs real time; what has to be seen is not built
    alone at all, and the end of Stage 1 checks that none is open. `plan-work`
    Stage 1 now names `build-prototype`, which it never did — the only call site
    was `untangle-idea:378` — and `build-prototype` carries the case under `##
    With nobody there`.
  - **The mark from the entry below is built here**, because this is the
    boundary that entry was waiting for. `.claude/unattended.local`, two lines:
    the main-branch commit the run starts from, and `build` or `plan` for how
    far it may go. Written with a shell command where the run steps out of the
    flow — the end of Stage 1, or the start of a direct unattended build — read
    at every fork, deleted at every exit: the finish, the standstill, a refused
    arming that ends the run, a refusal of the preconditions on the planning
    route, the user's word, and the halt before the first build, which is the
    sixth exit this walkthrough found. A session that simply ends deletes
    nothing, and two rules meet what it leaves: the planning stage deletes a
    mark it finds when picking a plan up and asks the question again, since
    somebody is there to answer; the build stage refuses on one, since nobody
    may be. That first half departs from the entry below, which decided a mark
    not this run's is never deleted, and the difference is written at both
    sites.
  - **`setup-project` names two local-state files and has the refresh check
    `.gitignore` for both**, since a project set up before the second existed
    has only the first.

  **Ten skill files and two documents, not three files.** The paragraph above
  counted two for the fence, six for the clause and one further skill. The
  walkthrough found `README.md`, `start-work`, `plan-work`, `cut-into-tasks`,
  `build-work`, `review-changes`, `setup-checks`, `setup-project`,
  `build-prototype` and `untangle-idea` — the last for the shared block only —
  and the change added `diagnose-bug` for the seam vocabulary and
  `docs/skill-conventions.md` for the passage on what a hook cannot see. The
  version went from 0.99.0 to 0.100.0.

  **Searched by subject against the tree at `e62627c`, and again after the
  change; each place named with what was done there or why nothing was.** Line
  numbers are those before the change.

  Who takes the design choice and the cut, and where the fence stood: `grep -rn
  "design choice\|task cut\|never unattended\|belong to the human\|stays with
  them\|you choose\|confirm the cut\|only builds tasks\|changes nothing about
  who decides" skills/*/SKILL.md README.md docs/skill-conventions.md`.

  - `start-work:302`, `README.md:99` — the fence. Rewritten.
  - `README.md:61`, `:72` — "you choose", "You confirm the cut". Rewritten; the
    second was already false against `cut-into-tasks`.
  - `setup-project:322` — "It changes nothing about who decides: the design
    choice, the task cut… The unattended mode… replaces those decisions". A
    fourth site deciding the other way, not named above. Rewritten.
  - `setup-checks:585` — the cost list the user agrees to. Rewritten.
  - `plan-work:337`, `:344` — the design question and "Write nothing until they
    have answered", named from reading rather than from a hit. Kept for the case
    with the user there; the alone case written beside it.
  - `build-work:288`, `setup-checks:408` — "a task cut from a stale main", "the
    next task cuts its branch": the verb, not the subject. Unchanged.

  Seams confirmed: `grep -rn -i "confirm" skills/*/SKILL.md README.md`, read
  past the hits about permission prompts and the installed copy.

  - `cut-into-tasks:48`, `build-work:234`, `review-changes:51` — the definition.
    Rewritten identically.
  - `plan-work:356` — "confirmed rather than assumed". Rewritten to placed.
  - `plan-work:365`, `:379`, `cut-into-tasks:205`, `build-work:419`, `:551`,
    `review-changes:164` — "confirmed seams" as a noun; `diagnose-bug:293` to
    `:297` — "the spec's confirmed list", "a place nobody confirmed". Rewritten
    to placed.
  - `untangle-idea:341` — "Do not act on it until the user confirms" is about
    the map. Unchanged.

  What carries the mode: `grep -rn "unattended.local\|nothing on disk\|no
  mark\|word typed\|records the mode" skills/*/SKILL.md README.md
  docs/skill-conventions.md hooks/*.sh`.

  - `build-work:590` — "There is no mark of an unattended run for it to find
    either… nothing on disk records the mode". Rewritten: the mark exists, the
    hook does not read it.
  - `build-work:1180` — "None of it goes into a file". Rewritten to say which
    kind of file that rules out and why the mark is not that kind.
  - `build-work:413` — the build subagent's brief. Told where the mark stands.
  - `README.md:225` — the state-file rule. Kept, the distinction added.
  - `docs/skill-conventions.md:1045` to `:1056` — what a hook cannot see. Kept,
    a paragraph added.
  - `build-work:1035` — the round count into no file "for the reason under
    'Unattended mode'". Unchanged: that reason still stands there, about counts.
  - `hooks/*.sh` — nothing reads the mark. Unchanged; open below.

  Local state: `grep -rn "check-attempts.local\|local state\|autorun.local"
  skills/*/SKILL.md README.md docs/skill-conventions.md hooks/*.sh`.

  - `setup-project:498` — "one file of local state". Rewritten to two, and the
    refresh section at `:188` told to check `.gitignore` for both.
  - `build-work:1226` — the stale `autorun.local.md`. Unchanged: a different
    file.
  - The last bullet under `## Decisions taken against` — "the only local state
    left is `check-attempts.local`". Rewritten there.

  Prototypes: `grep -rn -i "prototype" skills/*/SKILL.md README.md`.

  - `plan-work:288` — "Do not start one unasked". Rewritten with the split.
  - `build-prototype:111`, `LOGIC.md:52`, `UI.md:94` — the hand-over to a
    person. Kept; the alone case written in `SKILL.md` under `## With nobody
    there`, which says the hand-over is skipped there.
  - `untangle-idea:337`, `:380` — attended by construction. Unchanged.

  The preconditions: `grep -rn -i "precondition" skills/*/SKILL.md README.md` —
  seven lines, none of them the list itself.

  - `setup-checks:587` — the cost list, where a missing precondition is a stop.
    Rewritten with the list.
  - `start-work:300` — "checks its own preconditions before starting". Rewritten
    with both places.
  - `setup-project:310`, `:326` — permissions as one precondition, and the mode
    having preconditions of its own. The first unchanged, the second rewritten
    around the question per piece of work.
  - `build-work:727` — step 6's two preconditions, the gate's. Another subject;
    unchanged.
  - `README.md:232`, `:233` — the general rule on a missing precondition.
    Unchanged.
  - Not reached by the word, named from reading: `build-work:1110` — the five.
    Kept; the reason for reading them twice written above the list.
    `README.md:102` — "It refuses to start unless". Rewritten with both places.

  The stage boundary: `grep -rn "next stage\|permission to reach"
  skills/*/SKILL.md`.

  - Six copies of "Moving to the next stage is never a question". Unchanged, by
    the choice recorded above.
  - `start-work:265` — "None of them asks permission to reach the following
    one". Kept, with a sentence saying the one boundary question is not that.

  Attended promises on a path that runs alone: `grep -rn "they see the
  result\|you see each piece" skills/*/SKILL.md README.md`.

  - `cut-into-tasks:267` — "they see the result before anything is merged".
    Moved under the attended branch of the fork at "After creating".
  - `README.md:47` — the default. Unchanged.

  The checks under "Before a handover, run these" were run after the change:
  the three checksums read one line each, the offer grep counts 21 lines
  before and after — two offers rewritten, none added — and the check over the
  unattended finish is silent.

  **What stays open, and what the text does meanwhile.**

  - **Who chooses among the surviving drafts when the recommended one falls, and
    what happens when all fall.** Today both are a stop with the reason named,
    the mark deleted, the planning issue left `being-planned`, and the next
    session asks with somebody there. Whether a second comparison over the
    survivors, or a redraft under the failed items, should happen instead is
    not decided. The stop was chosen because a comparison that recommended a
    draft now known not to carry the stories is not one to pick the next from.
    Measured once since, the other way: the first planning run alone revised
    the recommended draft three times instead of stopping — finding 6 of that
    entry below.
  - **A question that has to be seen and first appears in Stage 3.** The check
    at the end of Stage 1 catches the ones visible by then; one surfacing later
    goes through the order for a question with nobody there, most often its
    second step. That is a fallback and not a route to a look; the route is
    `settle-the-look`, still unbuilt.
  - **Precondition 4 cannot be read.** "The tool classes the run needs are
    already approved" is asserted at the question and at the build alike;
    nothing in the tree reads the permissions file, and `setup-project` records
    that writing it is refused.
  - **Whether `hooks/stop-checks.sh` should read the mark.** Carried over from
    the entry below, unchanged.
  - **Existing yes-records in `environment.md`** were given under the old cost
    list, for a mode that built tasks only. Decided here that they stand: the
    question at the end of each sharpening, or the flag, obtains the choice per
    piece of work anyway, and step 8's wording now says the record is a
    permission and not a choice.
  - **The measured cost of what this buys.** In spec 46 of `devloop-test-o`,
    Stage 1 settled at 21:45:43 and Stage 3 was posted at 21:51:23 — under six
    minutes with the user present. What the change buys is not that time; it is
    that the user can leave after Stage 1.

- **A run stopped four times after arming auto-merge, each time on a sentence it
  wrote itself, and every file that does say what follows arming says something
  that cannot wait.** Measured in `devloop-test-o`, attended throughout: pull
  requests 50, 54, 55 and 57 were armed with the mutation this workflow uses and
  merged by the platform between forty-five seconds and two minutes later — 50 on
  11 September 2026 at 22:08 UTC, the other three on 13 September. Each time the
  run armed, queried the state once (`state OPEN`, `mergedAt null`), said it
  would report back once the merge had landed, and ended its answer. Nothing
  wakes a run, so it stood there until the user wrote a word. Pull request 53 was
  armed and merged the same morning without a stop, so this is not what every
  arming does. Line numbers in this entry are those at `e84eb88`, the tree before
  it was written.

  *Today:* **the promise is a sentence no file asks for, and the rule it breaks is
  already written down.** `docs/skill-conventions.md` under `## Environment
  constraints, measured`: "A run that hands the user a command and says it will
  carry on once that command has run has promised something it cannot do." That
  was measured on 25 August 2026 on the merge command handed to a user, and the
  same failure has now appeared one stage later, where what is being waited for
  is not a person at all.

  **The gap is not a missing connection.** Three stages arm, all three say what
  comes after, and none of the three waits:

  - `skills/build-work/SKILL.md:924` — "Then check **once** whether it landed —
    do not poll in a loop. If it has not, say what it is still waiting on and
    offer the next step; do not block the session." That is the measured
    behaviour, written down: one read, and the answer ends.
  - `skills/setup-checks/SKILL.md:413` and `skills/setup-project/SKILL.md:744`
    both say to arm and then check `git log` "that it actually arrived — a report
    of success is not evidence". Immediately after arming the git log cannot
    carry it, because the platform has not merged yet. The sentence is right
    about what counts as evidence and wrong about when the evidence exists.
  - `README.md:84` says it to the reader the same way: "Pull request, set to
    merge when the gates pass, then check the git log that it actually landed."

  **Nothing anywhere waited on a state on the platform.** `gh pr checks --watch`
  appeared in no skill, no hook and no document on the day this was read. The thirteen occurrences of
  `watch` in `skills/` are about a person watching or a check somebody sees go
  red, except one — `build-work:1051`, "no hook watches for an unattended run",
  about a file nothing reads.

  **The arming command stands byte-identical in five places and nothing holds
  them together.** `skills/setup-project/SKILL.md:739`,
  `skills/build-work/SKILL.md:744`, `skills/setup-checks/SKILL.md:416`,
  `hooks/pre-tool-use-merge-guard.sh:18` and `docs/skill-conventions.md:764`, all
  five on one `cksum`, measured. No check under `## Before a handover, run these`
  extracts it. The block on asking has such a check, at
  `docs/skill-conventions.md:1207`; this block has none, so a repair made at
  three sites leaves two standing and nothing says a word.

  *Should:*

  - **The wait happens in the same answer as the arming**, and the merge is
    proved against the platform before anything depends on it: `gh pr checks
    <number> --watch`, which blocks until the checks have decided and needs
    nobody outside, then a read of the merge state. Not one read, a promise, and
    an end of answer.
  - **A check coming back red is a finding, not a reason to stop.** Resolve it,
    rebuild, re-run the part that changed, wait again. The pull request stays
    open and the arming stands.
  - **Stopping is at the existing threshold of three identical failure pictures
    in `hooks/stop-checks.sh`, and on a timeout of the wait.** Whether that
    threshold counts a check that went red on the platform as the same failure
    picture is not open — it cannot, and the file says why. `$FAILED` is built
    only from running `$RUNNER "$target"` locally over the blocking rows of
    `docs/agents/checks.md`, so a failure that exists only on the platform never
    enters the signature. And the count rises once per `Stop` event: a loop that
    runs inside a single answer reaches a `Stop` once, whatever it tried in
    between. **What the threshold covers is the same classes failing locally on
    three consecutive answers, and that is all it covers.** A wait that loops
    inside one answer needs a count of its own, and where that count lives was
    the open question here — answered in the build below: in the answer itself,
    and nowhere on disk.
  - **After every merge the linked issues are read, and closed by hand where the
    platform did not close them.** Measured on the five merges of that run: four
    closed within seconds of the merge — issue 47 by pull request 50, 48 by 53,
    49 by 54, 52 by 57 — and one did not. Pull request 55 merged at 09:21:34
    carrying a correct closing reference to issue 51; the issue was still open
    four minutes later and was closed by hand at 09:25:57. So the closing keyword
    is the right link and is not a guarantee, and an issue standing open over
    work that has landed reads to every later round as work not done.
  - **The mutation fetches the id in a step of its own and passes it with `-f`
    rather than `-F`.** In the same run the one-line form failed with `unexpected
    end of JSON input`, and the two-step form with the id fetched first went
    through. Taken from that run and not re-measured here. The change is to all
    five copies, not three.

  **What is missing at this point is the point itself.** Everything arranged
  after the merge — the fast-forward, the branch deletion, the issue check, the
  spec, the `skipped` reasons, step 7 querying again — is written and is
  reachable only by a run that got past arming. Until the build below, an
  unattended run ended there, at the first task, before any of it. Those stages
  were not wrong; they were unreached.

  **What a repair touches is counted here rather than discovered halfway through
  it:** five copies of the arming command and not three — three skills, the merge
  guard's message in `hooks/pre-tool-use-merge-guard.sh`, and the prose carrying
  the same command in `docs/skill-conventions.md` — with no checksum check
  existing to hold them together, so one has to be written or the next repair
  splits them silently. Then the three sentences saying what follows arming
  (`build-work:924`, `setup-checks:413`, `setup-project:744`) and the one in
  `README.md:84` that says it to the reader. Then `docs/skill-conventions.md`
  under `## Environment constraints, measured`, where "nothing resumes on its
  own" is right about a command handed to a user and has to say that a state on
  the platform is not that case. And the handover check at
  `docs/skill-conventions.md:1240`, which finds these sentences by their wording
  and loses a line silently every time one of them is improved.

  **Built on 13 September 2026**, all of the above except the checksum over the
  five copies, which stays unwritten and stays recorded here. What now stands:

  - `build-work` step 6 splits attended from unattended where it used to have one
    answer. Attended keeps the single reading and the offer — a person is there
    and their next message costs nothing. Unattended the wait happens in the same
    answer, `gh pr checks <number> --watch --interval 60`, and the merge is read
    off the platform afterwards, `state MERGED` with a `mergedAt`, because the
    checks going green is not the merge and the measured gap between the two is
    forty-five seconds to two minutes.
  - The wait is bounded by the `Duration` cells of the `Blocking: yes` rows or
    thirty minutes, whichever is more. Nothing in the shell holds that bound —
    `gh pr checks` has no timeout of its own and `timeout` is not on a stock
    macOS, `command -v timeout` empty on this machine the same day — so the run
    holds it, by giving the call a timeout and repeating it while time is left.
  - A wait that runs out is a finding: the pull request stays open and stays
    armed, lands by itself, and step 7 queries with it still open. A red check is
    a finding like a review finding — resolve, rebuild, step 4 runs again on what
    changed, wait again, with no cap on the rounds. What ends it is standstill:
    three rounds on the same signature, built from `gh pr checks --json
    name,bucket`. That count lives in the answer, since `stop-checks.sh` counts
    only local runs and only once per `Stop` event, and nothing on disk reads a
    file this run would write.
  - The standstill ends the run, where the local twin does not — three turn-ends
    on the same classes become an issue and the next task is taken up. The
    difference is written at both anchors, and in the unattended description at
    `setup-checks` step 8, where the user agreeing to the mode is told it.
  - Every merge now reads `closingIssuesReferences` and closes by hand what the
    platform left open.
  - The mutation fetches the id first and passes it with `-f`, in all five
    copies, which are byte-identical again.
  - Two sentences that said waiting unattended is a standstill were narrowed to
    waiting on a person, which is what they were about. A pull request found open
    at the start of an unattended session is one whose wait ran out, and it is
    still armed: `start-work` says so and `build-work` step 6 reads
    `autoMergeRequest` rather than arming a second time.

  **Two things it stands on are not measured.**

  - **Whether `Duration` predicts anything about the platform.** It is taken from
    a local run; a runner has to be set up and a queue waited on before the first
    target starts on GitHub, and nothing here has measured that difference. The
    thirty-minute floor is what carries the bound in practice — the cells hold
    seconds and single minutes — so what is really unmeasured is whether thirty
    minutes is anywhere near right, not whether the sum is.
  - **Whether the failure signature is stable enough to call two failures the
    same.** It is the failing checks' names and buckets. A check that fails under
    a different name each round reads as progress and never reaches the
    threshold; one that fails identically for two unrelated reasons reads as
    standstill and stops a run that was getting somewhere. Neither has been seen
    happen; the threshold was carried over from the local counter, where the
    signature is built from class names and has stood since 17 August 2026.

- **A lens fell over and reported "no findings", measured on 13 September 2026 in
  `devloop-test-o`.** Reviewing issue 51, the test-quality lens came back with a
  placeholder summary stating there was nothing to report, while three other
  lenses had already named three real findings between them. The run noticed only
  because that answer contradicted its neighbours, started the lens again, and got
  a usable report on the first repeat. **Six of twenty lenses fell over across the
  run**, four of them test quality, every one of them inside a group of four
  started in parallel, and every repeat answered immediately. Attended throughout.
  Line numbers in this entry are those at `ac5a5d1`, the tree before it was
  written.

  *Today:* a lens that falls over silently is visible, and the workflow already says
  what to do about it — `review-changes:240`, "If a reviewer fails to return, say
  so and either rerun it or state which lens did not run. Never present a
  comparison that is quietly one lens short." A lens that hands back a report
  claiming no findings **has** returned, so that sentence never fires, and nothing
  else separates it from a lens that read the whole diff and found it clean. What
  separated them here was the comparison with three neighbours that had findings.
  That comparison is not available on the diff where every lens genuinely finds
  nothing, and that is the ordinary diff: the case this defect hides in is the
  case nobody has any reason to look at twice.

  **The distinction exists one layer down and stops at commands.**
  `review-changes:96` and `docs/skill-conventions.md:264` both draw it — an empty
  answer is an answer, a missing one is not — and both hand over a test for
  telling them apart: whether emptiness is one of the answers the question has. A
  list can be empty; a field every object carries cannot come back absent. Applied
  to a lens report that test settles the case the wrong way, because emptiness
  **is** one of the answers the question has. A lens can find nothing. So the rule
  that would have caught this everywhere else licenses it here, and carrying the
  wording up a layer is not the repair.

  **And the competing sentence is in the report step, four lines from where the
  placeholder was accepted.** `review-changes:257` — "If a lens found nothing, say
  that lens found nothing. That is a result, not an absence, and it is the end of
  that section." It is right about the lens that ran and is the nearest sentence
  to the moment a report with nothing in it is read, which is the shape
  `docs/skill-conventions.md` names under "A rule holds only on the path it is
  written on": look for the competing sentence before the missing anchor.

  *Should:* a report with no substance never counts as "no findings" — it counts as
  not having run. The difference is fixed to something the report itself has to
  carry, not to agreement with its neighbours: what the lens read, against what,
  and what it looked for. A count of neighbours is not available to a single lens
  and is not available at all on a clean diff, so anything resting on it is a
  check that works only where it is not needed.

  **What a repair touches is counted here rather than discovered halfway through
  it:** `review-changes:240`, which covers the failure that announces itself and
  has to cover the one that does not; `review-changes:257`, which has to say what
  a section reporting nothing is required to contain, since as it stands it says
  the opposite; and `review-changes:243` under "Report", where one section per
  lens is asked for and the shape of a section is fixed. `build-work:611` is the
  only place `review-changes` is reached from and needs nothing, because what is
  being fixed is the shape of a report rather than whether the step runs. The
  four-at-a-time pattern is not evidence of a cause and is recorded as a
  measurement only: nothing here establishes that starting four reviewers at once
  is what made six of twenty fall over, and `docs/skill-conventions.md` under
  `## Environment constraints, measured` records no cap on parallel agents to hold
  it against.
  Recorded, not built.

- **Reviewing agents built, measured on 11 September 2026 in `devloop-test-o` on
  task 47.** The test-quality lens committed to the branch itself — switching
  locks over to a deferred call — and then asked whether the work should land. The
  spec lens opened an issue and summarised all three lenses. The run saw that the
  branch had moved and said so, and drew nothing from it. Line numbers in this
  entry are those at `ac5a5d1`, the tree before it was written.

  *Today:* the review ran against a diff pinned at one commit, the branch stood on
  another at the end, and the summary went out over the first. So code sat on the
  branch that no lens had read, and it reached the gate inside a review that
  reported clean over the version before it. The landing question was put twice.

  **Four acts, and they do not all land in the same place.** Filing the issue is
  allowed outright — `review-changes:274` is where a lens is told to file one. Two
  of the other three are already forbidden in as many words, and that is a finding
  about the run rather than about the text. `review-changes:248` — "Then stop, and
  stop means all three of these. No sentence after the last lens. No verdict over
  the whole thing… and above all nothing about what happens next" — names "No
  findings. Merging." as the exact failure and adds that the pull request is not
  opened there either. `review-changes:31` forbids findings being "merged, ranked
  against each other, or reduced to a single verdict", which is the summary.
  `build-work:689` puts the landing question in its own message at step 5, and
  `build-work:701` says "**This is the gate.** It is the one place in the loop
  where a human decides whether work lands." A run that asks it from inside a lens
  is not in a gap; it is past four sentences.

  **The fourth act is a real void.** Nothing anywhere says a reviewer may not
  change the code. Searched by subject rather than by wording, `grep -rn "changes
  nothing\|change nothing\|read-only\|reads and reports\|does not edit\|never
  edits" skills/ hooks/ docs/ README.md`, run against the tree as it stood before
  this entry was written: seven sites, and not one of them is about a reviewer.
  Each named, with why the rule does not hold there:

  - `setup-checks:350`, `setup-project:511` and `README.md:120` — the rule that a
    **check target** renders a verdict and changes nothing. Same words, different
    subject: a target is a command the chain runs, not an agent reading a diff.
  - `setup-project:329` — the explore step of setup, which reads a repository
    before writing to it. It is the one site with a reviewer's shape, and it
    governs one step of one skill.
  - `setup-project:322` — about who decides, not about who may write.
  - `docs/roadmap.md:53` — the one-line description of `explore-codebase`, a name
    under `## Named, not built as skills` with no body written.
  - `docs/roadmap.md:953` — a dated measurement, about who may raise a number in a
    file. Not one of the places a rule change touches, by the carve-out in
    `docs/skill-conventions.md` under "A finding that would have passed
    unsupervised gets written down".

  The nearest thing to a constraint is `review-changes:221` — "each given only its
  own lens and the diff" — which bounds what a reviewer **sees** and says nothing
  about what it may do.

  **And the competing sentence is inside the review skill.**
  `review-changes:266`, "**Fix it now** if the fix is obvious and revisits nothing
  that was decided", is written to the caller and stands in the file a lens is
  working out of. Switching a lock to a deferred call is exactly the obvious fix
  that sentence describes. So a reviewer that commits is following the nearest
  instruction it has, which is why no fifth prohibition elsewhere would have
  helped.

  *Should:* a lens reports and changes nothing. Where one changes something anyway,
  the review counts as not having run and is repeated against the new state — not
  amended, because a report that already went out over the earlier commit says
  something untrue about the branch. The pinned diff is read against the actual
  branch state at the end of the review, and a divergence ends the review instead
  of being summarised. The landing question is put at exactly one place, at the
  end of the whole review, by the step that owns the gate.

  **The pin has no closing read today, and that is the same gap one file over.**
  `review-changes:132` establishes the target as the diff between the branch and
  the main branch at the current commit and says everything below looks at that,
  "not at the working tree, and not at whatever changed since" — which is an
  instruction to the reader and not a check on the branch. The entry on the second
  review round not reading a change to the test scaffolding, measured 9 September
  2026, records the other side of the same seam: the caller hands
  over a target the callee's own definition does not describe, and neither file
  says what happens when the two disagree.

  **What a repair touches is counted here rather than discovered halfway through
  it:** `review-changes:219` under "Run them", which is where what a reviewer may
  do has to be said, since that is where the reviewers are started and given their
  brief; `review-changes:264` under "What happens to a finding", which has to say
  who the fixing is addressed to, because today it does not; `review-changes:132`,
  where the pin is set and the closing read against it belongs; and
  `build-work:609`, the only call site, which is where a repeated review is
  ordered from. `build-work:689` and `:701` need nothing — the gate is already at
  one place, and the second appearance was a lens saying something it was already
  forbidden to say.
  Recorded, not built.

- **A change to the check chain itself went to the main branch unreviewed,
  measured on 12 September 2026 in `devloop-test-o` on issue 49.** `setup-checks`
  changed four check targets and two documentation files and landed them. The run
  said so itself: that skill has no review step. Line numbers in this entry are
  those at `ac5a5d1`, the tree before it was written.

  *Today:* attended, the user sees the diff, so nothing was unread. Unattended, the
  check chain is what stands in for the user's approval — `build-work:707` at step
  5, "In unattended mode the check suite is this gate instead" — and on this route
  the chain changes without the chain reading the change. A green suite
  after such a change says the suite passes itself as edited.

  **There is a route where it is reviewed, and that is what makes this a path
  problem rather than a missing rule.** `setup-checks:402`: "Skip this whole step
  when this skill was called for a single class from a build. That branch belongs
  to the build, and the build lands it with the rest of its task." Called that way
  the diff rides on the build's branch and reaches `build-work:609`. Called on its
  own — as it was here, for a loose issue — step 7 opens its own pull request at
  `setup-checks:412` and arms it. Same edit, same file, two routes, one of them
  read. That is the shape `docs/skill-conventions.md` records under "A rule holds
  only on the path it is written on", arriving from the side where the rule was
  never written at either end.

  *Should:* a change to the check targets themselves goes through the diff review
  like any other change.

  **Searched by subject: which stages land a diff, and which of them review
  first.** `grep -rn "review-changes" skills/ hooks/ docs/ README.md` returns
  `build-work:611` as the only call site in the set — every other hit is prose in
  `docs/` or the skill's own frontmatter. Held against the stages that land
  something, with `grep -rn "Never merge yourself\|Open a pull request\|Open the
  pull request" skills/ hooks/`: three sites, one per stage, each named here with
  what the rule does or does not ask of it.

  - `setup-checks:412` in step 7 — the measured site. This is where the review has
    to be reached from on the standalone route, and where the skip at `:402`
    already marks the other route as covered.
  - `setup-project:734` — the same shape, one stage earlier: it lands the control
    documents it wrote, the first `checks.md` among them, with no review. Whether
    the rule holds there is a real question and not an obvious yes, because at
    that moment there is no check suite to review against and `standards.md` is
    being written in the same change. Named, not decided here.
  - `build-work:741` in step 6 — does not apply. It is reached only after step 4,
    and `build-work:719` already says that unattended only one of its two
    preconditions is replaced and nothing stands in for the review.

  `hooks/pre-tool-use-merge-guard.sh:18` does not come back from that search and
  would not apply if it did: it carries the arming command in its message so a
  blocked run can follow it, and decides nothing about what was read first. The
  five byte-identical copies of the arming command are counted in the entry on a
  run stopping four times after arming, and are a different subject from this
  one.

  And `build-work:500` — "**Do not edit `docs/agents/checks.md` yourself.** If the
  task creates or changes a check target… call `setup-checks` for that class
  instead" — is the sentence that sends every build-side edit down the route that
  **is** reviewed. It needs no change and is named because it is what makes the
  standalone route the only hole rather than one of two.
  Recorded, not built.

- **A design question was put in the build stage, measured on 13 September 2026 in
  `devloop-test-o` on issue 51.** Taking the issue up, the run laid out two ways
  to build it — a recorded reference output against a reference implementation in
  the test code — and waited for an answer. Attended, so it got one. Line numbers
  in this entry are those at `ac5a5d1`, the tree before it was written.

  *Today:* the grilling was long over, the spec closed, and both options were
  reversible. **The rule that was broken is not the one for an empty room.**
  `build-work:185` — "With nobody there to answer, a question that passes this
  test does not stop the run. Take the reversible option, record it in the spec as
  decided without an answer, and carry on" — is for the unattended case, and this
  run was attended. What applies is `build-work:146`, the test itself: both halves
  have to hold, and the second is "**Being wrong is expensive**… Measured by what
  it would cost to put right… What a later task can redo is cheap". Two ways of
  writing one test are cheap by that measure, so under the written test this was
  not a question at all, with or without somebody in the room. The unattended
  clause would have caught it too; the attended test caught it first and is the
  stricter reading.

  *Should:* a loose issue that opens with a design choice is not a build order.
  Either the choice is taken under that test and recorded, or the issue belongs in
  planning rather than in the build.

  **The second half of that runs into a sentence written three days earlier
  against the opposite failure, and it does not get to stand unexamined.**
  `start-work:249` routes loose issues carrying `raised-here` to `build-work`,
  "**Not to `plan-work`.** An issue that already says what is wrong does not need a
  spec written around it, and sending it there stands a fresh candidate beside it
  as an equal choice — measured on 9 September 2026, that is exactly the pair a run
  put to the user instead of naming the issue it was taking." So "it belongs in
  planning" is a route this set closed deliberately, with a measurement behind it.
  Either the first half of what should hold carries the whole case — the choice
  is taken and recorded, and the issue never leaves the build — or the second
  half needs a narrower door than "send it to planning", and what that door is,
  is open.

  **Searched by subject: where a design choice may be made, and by whom.** `grep
  -rn "design choice\|design decision\|reversible\|design question" skills/ hooks/
  docs/ README.md`, run against the tree as it stood before this entry: 31 lines,
  of which twelve are the six two-line copies of one clause, and the hits in
  `docs/roadmap.md` are dated measurements rather than places a rule stands.
  Twelve sites carry a rule. Each named, with what holds there:

  - `build-work:186`, byte-identical at `plan-work:235`, `cut-into-tasks:159`,
    `setup-checks:181`, `setup-project:166` and `untangle-idea:146` — the six
    copies held together by the `cksum` command in `docs/skill-conventions.md`.
    Does not apply to the measured run, which was attended, and is named because
    any repair phrased in its vocabulary becomes a change to six files.
  - `review-changes:274` and `build-work:634` — "File it as an issue if fixing it
    would revisit a design decision". Does not apply: that is a finding travelling
    out of a review, the opposite direction, and it is the rule that files issues
    like 51 in the first place.
  - `start-work:298` and `README.md:95` — "Planning is never unattended: the
    design choice and the task cut are the two decisions that belong to the human."
    Does not apply to this run, and is already open in the entry on planning being
    fenced out of the unattended mode, read 11 September 2026, where three sites
    are recorded deciding the same question the other way. A repair here and
    the repair recorded there have to agree about who takes a design choice, and
    they are not the same change.
  - `setup-project:322` — "It changes nothing about who decides: the design
    choice…", said of the setup skill's own routing. Does not apply: it preserves
    an allocation made elsewhere rather than making one.
  - `build-prototype:3` — the skill built for exactly this, "Build something
    throwaway to settle a design question". Not reachable from here: `grep -rn
    "build-prototype" skills/` finds one call site, `untangle-idea:378`. A design
    question that first appears in the build has no route to it — the same void
    that entry leaves open, in its own words, for a question needing someone to
    look that first appears while drafting in Stage 3.

  **Three further sites decide this case and no search by that subject finds
  them**, which is the hazard `docs/skill-conventions.md` names when it says the
  search goes by the subject the statement stands on and not by its wording. They
  were reached by reading the two steps the run passed through:

  - `build-work:146` — the asking test, and the rule that was already there. What
    it needs is the open part: it is right as written and was not followed, which
    this file says to answer by looking for a competing sentence rather than by
    adding another copy.
  - `build-work:361` and `:377` — the loose-issue ordering, clause 3, "With the
    spec closed, take it". That is the clause issue 51 fell under and it is
    correct; it says which issue to take and nothing about an issue that turns out
    not to be buildable as written. That silence is where this case lands.
  - `start-work:249` — the collision above, and the reason the second half of
    what should hold cannot simply be written.

  **Built in part on 14 September 2026 in `e09fa80`.** The unattended half stands
  in `build-work` under `## With nobody there`, as the fourth case, with this
  measurement beside it: a question about the work itself that comes up inside
  a task and passes the test is a task not buildable as cut — the issue carries
  the question and the options, labelled `raised-here` and `needs-human`, and
  step 2 takes the next. The attended half — the asking test applied where the
  user is there — and the planning route stay recorded and not built.

  **What the label cannot carry.** Every entry here ends on one of two words,
  built or not, and this one was neither: half of what should hold stood in a
  skill while the entry still read "Recorded, not built", which is what a reader
  checking this list for open work reads as nothing built — and then builds the
  half that exists a second time. The entry above on a run splitting its
  findings into fixed and filed met the same thing from the other side, an entry
  answered by a later one that did not notice. A label with two values cannot
  say "this half"; what can is the sentence under it, which is why this entry
  names the half rather than picking a word. Recorded as a finding about the
  labelling and not only about this entry: a build that lands part of a Should
  owes the entry a line saying which part, in the same change.

- **The same failure picture came out of the review three times and was fixed
  three times separately, measured across 11 to 13 September 2026 in
  `devloop-test-o`.** A lock released by hand instead of through the deferred
  call: in task 47, in the first diff of task 48, and in the fix-up commit of 48
  immediately beside a place that does it correctly in the same commit. Line
  numbers in this entry are those at `ac5a5d1`, the tree before it was written.

  *Today:* the threshold in `hooks/stop-checks.sh` counts three identical failure
  pictures, and it cannot see this one. `MAX=3` at line 8, and the signature at
  line 35 is a `cksum` over the `--- class (runner target) ---` headers of
  `$FAILED`, which line 23 builds only from `$RUNNER "$target"` run locally over
  the blocking, filled rows of `docs/agents/checks.md`. A review finding never
  enters it. The state file is removed the moment the suite goes green, line 31,
  so the count does not survive a task; and the count rises once per `Stop` event,
  so it is a count of consecutive answers within one run of the chain. Across
  tasks and pull requests nobody counts anything.

  *Should:* what comes out of the review three times belongs in the project's
  standards file, so that the build stops producing it, rather than being caught
  again by every review.

  **That is already decided, at two rather than three, in a skill nothing can
  call.** `record-lessons:95` under "What counts as a lesson": "Record it when one
  of these holds: **It happened a second time.** One occurrence is an accident; two
  is a pattern." And `record-lessons:115` routes it: "A rule this project holds
  that nobody wrote down → `docs/agents/standards.md`". That is what should hold
  above, written out, with a lower threshold and a named destination. What is
  missing is not the rule and not the number. It is that `record-lessons` carries
  `disable-model-invocation: true` in its frontmatter, and
  `docs/skill-conventions.md:1046` spells out what that costs: "only a typed
  command starts it — no other skill can". The same passage at
  `docs/skill-conventions.md:1049` states the ground for locking it — "No other
  skill runs either of them, so locking them costs nothing" — and this run is what
  that sentence does not survive. A build loop that produces the same finding three
  times has something to hand `record-lessons` and no way to reach it.

  **So the open question is narrower than it looked, and it is worth saying which
  part is open.** Not what the threshold should be: two is written down and this
  run cleared it by the second occurrence, inside task 48's first diff. What is
  open is what the count is kept on when the findings are spread over tasks and
  pull requests — the state `hooks/stop-checks.sh` keeps lives in
  `.claude/check-attempts.local` and is deleted on green, and a finding's identity
  is not a check class and a target but a description a lens wrote in prose. Two
  findings are "the same" here by a judgement, and `docs/skill-conventions.md`
  under "A reason is not the evidence the rule asked for" is what any such
  judgement has to answer to. Whether that count belongs in a file, in the tracker
  under `raised-here`, or nowhere because the reachability is the whole repair, is
  not settled here.

  **Searched by subject, twice, against the tree as it stood before this entry.**
  First, where a rule of this kind is meant to end up: `grep -rn "standards.md"
  skills/ hooks/ docs/ README.md` — ten sites. Each named, with what holds there:

  - `record-lessons:115` — the destination, in the table that routes a lesson.
    This is half of the decision, and it is reachable only by a typed command.
  - `review-changes:37` and `:148` — the standards lens reads `standards.md` as
    its source and does not write to it. No change needed, and it is the reason
    the destination is the right one: a rule that lands there is read by the build
    before the finding exists rather than by the review afterwards.
  - `setup-project:698` and `:725` — where `standards.md` is created at setup and
    where it is listed among the control documents. Does not apply: both describe
    the file's initial content, not how it grows.
  - `diagnose-bug:132` — reads it for context. Does not apply.
  - `docs/roadmap.md:111` and `:120` — the `settle-the-look` entry, naming
    `standards.md` as the precedent for a per-project file of recorded decisions.
    Does not apply, and is the nearest thing here to an argument that the
    destination is right.
  - `docs/roadmap.md:1347` and `:1671` — dated measurements, about what the build
    subagent and the standards lens are handed. Not places a rule change touches,
    by the carve-out in `docs/skill-conventions.md`.

  Second, what counts occurrences: `grep -rni "second time\|three times\|same
  defect\|a pattern" skills/ hooks/ docs/skill-conventions.md README.md` — 29
  lines, and **this is the search that shows why the list is what gets read and
  not the command.** Twelve of the 29 are one line of the shared `## When a
  command does not answer` block, about a command retried in silence, and they
  match on wording alone. The remaining seventeen lines are fifteen sites, of
  which two carry a rule on this subject; the other thirteen are dated
  measurements of unrelated repeats, and they are `setup-project:293` and `:354`,
  `setup-checks:255`, `build-work:363`, `start-work:68`,
  `docs/skill-conventions.md:79`, `:143`, `:150`, `:244`, `:315`, `:1103`,
  `:1177` and `:1352`. The two:

  - `record-lessons:102` — "**It happened a second time.** One occurrence is an
    accident; two is a pattern." The threshold, already decided, at two.
  - `docs/skill-conventions.md:458` — "An unrecorded finding is a repeatable one,
    and the second time round it looks exactly like the first, so nobody notices
    that it is the second time", running on to `:460`. The same rule turned on
    this repository, and it says so at `:466`. It also carves out what does not fall under it — "A finding
    the check chain reports red does not fall under this… The chain is already the
    prevention" — which is exactly why a review finding, where no red is coming,
    does fall under it.
  - `docs/skill-conventions.md:1037` under "Who may invoke a skill", reached from
    the lock at `record-lessons:4` rather than from either search. Its ground for
    locking — "No other skill runs either of them, so locking them costs nothing"
    at `:1049` — is the sentence this run falsifies, and it is where a repair has
    to answer for itself.

  And `hooks/stop-checks.sh:8`, `:23`, `:31` and `:35` — the existing threshold,
  reached by reading the hook rather than by either search, since it carries none
  of those words. Does not apply and cannot be widened to apply: its signature is
  built from local check runs, which the entry on a run stopping four times after
  arming already establishes in the same words for the platform case.

  `build-work:634` and `review-changes:274` — the two ways out of a finding, fix
  or file — are named because they look like the place this belongs and are not.
  A third way out is not what should hold asks for: the rule is written after the
  finding has already gone one of those two ways, so it belongs at the close
  rather than in the split.
  **Built on 26 September 2026**, at the close and without the count: the entry
  of 14 September on the standards file records what was built and why the
  count went.

- **The unattended run put the landing question to the user, measured on 13
  September 2026 in `devloop-test-o`.** The first unattended run on 0.99.0. At the
  end of the task the check chain was green and all five preconditions had been
  checked and named, and the run asked whether this should land instead of
  landing.

  It was started with `--auto`. It refreshed the setup files to 0.99.0 first, and
  that piece of work went the whole way by itself: armed, waited for the checks in
  the same answer, proved the merge at the platform and carried on with nobody
  touching it. Then it read all five preconditions and said each one, announced
  the scope and the main-branch commit it started from, built issue 56, had four
  lenses read it, fixed three mechanical findings and ran a second round over the
  fix-up commit. Then the question. Told no, it raised a push notification and
  waited. On an explicit instruction it opened the pull request, armed it, waited
  blocking, proved the merge, cleaned up and checked that the issue had closed.

  *Today:* `build-work:1107` under `## Unattended mode` — "`--auto` replaces the
  user's approval with a green check suite. Same stages, same checks — only the
  gate differs." The gate it names is two sentences of step 5: `:705`, "**This
  is the gate.** It is the one place in the loop where a human decides whether
  work lands", and `:711`, "In unattended mode the check suite is this gate
  instead — the gate is replaced, never removed". And the section on the counter
  at the end of a round already records why the difference has to be drawn in
  words at all: `:590`, "There is no mark of an unattended run for it to find
  either — `--auto` is a word typed to a skill, not a flag the harness passes
  down, and nothing on disk records the mode. So the difference is drawn here, in
  the text". `docs/skill-conventions.md:1048` states the same one level out, about
  hooks in general: "an unattended run is this workflow's own idea rather than a
  state of the harness — the word that starts one is typed to a skill and never
  reaches the process."

  **What neither of them asked is how far those words have to carry.** Both are
  written about a hook's message and the sentence answering it, and there the
  answer stands three lines under the question, inside one section, read in one
  breath. The landing question sits at the other end of the run. Between the typed
  word and it, this run passed through several skill loads, a build subagent with
  a fresh context, four review subagents and a second review round — and what it
  arrives at is the ordinary case of the same file, written out in full at `:693`
  with both its answers and a paragraph at `:705` saying why it is the gate,
  against one sentence eighteen lines further down that replaces it.

  *Should:* what a run knows its mode by at the point of landing is not a word
  from the beginning of the session. A difference drawn in the text does not carry
  that far, and what is needed is a mark the run lays down itself when it starts
  and reads when it lands.

  **Where that mark lies and who writes it stays open here, and the reason is on
  this page.** The obvious place is a file, and the entry above on the unattended
  state file is why that is not a decision to take in passing: the last file this
  mode wrote was deleted for having no reader, and "the counter would still be
  written by the run" is recorded there as the reason moving a number into a file
  changes nothing about who may raise it. What that entry rules out is a bound a
  run keeps against itself. A mode mark bounds nothing and enforces nothing — it
  answers a question the run cannot re-derive later — so the objection does not
  obviously reach it, and whether that difference is enough to make a file the
  right answer is the open part. Recorded as open, not decided.

  **Two further findings of the same run, neither of them this one.**

  - **The first write went to `main` and the branch guard blocked it.** The branch
    was cut after that and the work went on. The guard did exactly what it exists
    for — `hooks/pre-tool-use-branch-guard.sh:32`, "Cut a branch, then do this
    again" — and the instruction it enforced was already written where the run
    would have read it: `build-work:418`, the first of the seven things step 3
    gives the build subagent, "Cuts a branch from the current main branch". The
    finding is not that the guard fired. It is that the guard was the thing that
    got the branch cut.
  - **The run made the three review fixes itself** rather than handing them back
    to the build subagent, and then ran the second round over the fix-up commit.
    `build-work:636` — "**Fix now** if the fix is obvious and touches nothing that
    was decided" — says which findings are fixed rather than filed and says
    nothing about who fixes them, while `:413` hands the work to a subagent with a
    fresh context and `:419` puts it test-first at the seams the spec confirmed. A
    fix made in the orchestrating run is under neither. The second round covered
    the commit, which is what `:664` asks for, so nothing landed unread. Recorded
    because the silence is real, not because this run went the wrong way through
    it.

  **Four things ran in operation here for the first time, all of them built into
  0.99.0 and none of them seen work until this run.** The wait for
  the platform's checks in the same answer as the arming; the merge proved against
  the platform rather than reported; `closingIssuesReferences` read after every
  merge and the issue checked for having actually closed; and the finish taken on
  both of its conditions — nothing ready in scope **and** no loose `raised-here`
  issue — against an empty tracker. The entry above on the post-arming gap records
  what each of them replaced; this is the first run in which the replacements were
  exercised end to end, including the refresh of the setup files, which went
  through the whole of it before the task did.

  **Searched by subject, twice, against the tree at `b90874b`.** The subject is
  what tells a run which mode it is in at the moment it has to act on the
  difference, and `unattended` is a wording of it rather than the subject. Nothing
  below was changed: this entry records a gap and takes no repair, so each place
  is named with what would hold there.

  First, by the word anyway, to have the whole surface: `grep -rn
  "[Uu]nattended\|--auto" skills/*/SKILL.md hooks/ README.md
  docs/skill-conventions.md` — 89 lines.

  - **Twelve byte-identical copies of the block on a permission prompt**, "With
    nobody there to tell, the report is still written" — `build-prototype:87`,
    `build-work:114`, `cut-into-tasks:111`, `diagnose-bug:95`, `plan-work:106`,
    `record-lessons:89`, `research:97`, `review-changes:126`, `setup-checks:110`,
    `setup-project:88`, `start-work:217`, `untangle-idea:98`. Every one of them
    forks on the mode and would read the mark. No change, and by the rule on
    byte-identical copies the search is not what holds them together: they sit
    inside `## When a command does not answer`, whose `cksum` check at
    `docs/skill-conventions.md:1215` came back one line, `3918197568 3823`.
  - **The places in `build-work` where the run's own behaviour parts on the
    mode** — `:134` the guard block, `:356` the rule step 2 uses when nobody is
    there to ask, `:542` and `:543` an unchecked condition the unattended gate
    cannot see, `:567` the pull request body as the only record, `:590` to `:597`
    the turn-end hook, `:617` and `:673` the review not falling away, `:711` and
    `:716` the gate, `:723` the two preconditions of step 6, `:874` and `:934` a
    refused arming, `:946` and `:954` the wait, `:1037` the round count that goes
    into no file, and `:1105` to `:1222`, the section itself. Each is a place the
    mark would be read. None changed here.
  - **`start-work:295` to `:302`, `## Unattended`**, where `--auto` is typed. This
    is the one place in the set where the mark would be written rather than read,
    and a repair starts here. No change.
  - **`build-work:1180` and `:1226`.** The first is "**None of it goes into a
    file.** Nothing on disk reads such a file — no hook watches for an unattended
    run", the sentence a mark on disk has to reopen; `grep -rn autorun hooks/` is
    still empty today, so it is still true as written. The second says a
    `.claude/autorun.local.md` lying about is stale and gets deleted, which a mark
    written at the start would collide with directly — the same path's
    neighbourhood, and a rule that says to delete what it finds there. Both are
    named because a repair cannot be made without them, and neither is touched by
    an entry that decides nothing.
  - **`review-changes:181`, `:188`, `:197` and `:236`** — unattended a stated
    reason buys no exception, and the sentence nobody reads in an unattended run.
    The mark would be read at all four. No change.
  - **`setup-checks:491` to `:646`, step 8**, and **`README.md:87` to `:122`** and
    **`:144`** — where the mode is described to a person at the offer and in the
    readme. Does not apply: nothing there is read by a run deciding how to act. It
    becomes a co-change only if the mark is something the user is told about,
    which this entry does not decide.
  - **`setup-project:267`, `:308`, `:318`, `:324`, `:394`, `:752`** — permissions
    granted up front, the instruction not to name the unattended mode while asking
    for them, and the note that nothing reaches the merge answer unattended. Does
    not apply: all of it runs at setup, before any run of the mode exists.
  - **`build-work:771`, `setup-checks:428`, `setup-project:742`,
    `hooks/pre-tool-use-merge-guard.sh:20`, `docs/skill-conventions.md:811`,
    `:830`, `:834` and `:1020`** — `gh pr merge --auto`, the tool's flag. Does not
    apply, and it is named because it is the half of this search that matches on
    the string alone: two different `--auto`s, one of them not this subject at all.
  - **`docs/skill-conventions.md:1045` to `:1051`** — "A hook that says 'hand this
    to a person' assumes there is one, and it cannot check", with the general form
    underneath it. This is where a repair has to answer for itself, because that
    passage is what draws the difference into the text in the first place. No
    change.
  - **`docs/skill-conventions.md:116`, `:127`, `:136`, `:195`, `:197`, `:224` and
    `:261`** — rules about how to write for both modes, and the worked examples of
    the unattended finish and of step 5's replacement. Does not apply: they govern
    what a sentence has to say, not what a run reads to know which sentence it is
    under. **`:652`, `:713`, `:719` and `:738`** are dated measurements, which the
    carve-out puts outside this rule. **`:1344` to `:1353`** is the handover check
    over the unattended finish, keyed on `raised-here`; it does not look at the
    mode and needs nothing here.
  - **`start-work:71` and `:73`** — where the mode decides what an open pull
    request means: unattended it is one whose wait ran out or whose checks went
    red, still armed, and read off the platform rather than armed again. The mark
    would be read there, at the start of a session rather than at its end. No
    change.
  - **`docs/skill-conventions.md:996`** — tool classes pre-approved per project,
    "which is what makes an unattended run possible". Does not apply: it is a
    condition of the mode being startable at all, granted before any run of it
    exists.
  - **`README.md:226`** — "A state file with no reader is not a safeguard,
    however carefully it is kept", kept in the readme after the unattended state
    file was deleted, so that the shape does not come back in another file.
    **This is the sentence a mark on disk has to answer**, and it is the second
    half of why what should hold above stops where it does: a mark would have a
    reader, this same run at the landing, which is exactly what that file never
    had. Whether that is enough is not settled here. No change. **`:243`** is the
    attribution of the unattended loop to `ralph-wiggum` and does not apply.
  - **`build-work:648` and `review-changes:284`** — one dated measurement, the
    unattended run that called every finding mechanical, which the carve-out puts
    outside this rule. What stands around it is not a measurement and is the last
    block of this entry: the paragraph carrying that line is byte-identical in
    both files and nothing holds the two copies together.

  Second, by the subject without the word: `grep -rni "nobody is there\|with
  nobody\|nobody to\|is nobody\|no one to ask" skills/*/SKILL.md README.md` — 50
  lines, **and 34 of them the first search does not find**; the other sixteen
  carry the word and are already listed above. That is the measurement worth
  keeping from this round, since it is the same hazard this file names when it
  says the search goes by the subject and not by the wording — and here the two
  wordings are not even far apart, only the word for who is absent. Neither search
  reads `docs/roadmap.md`, so this entry does not move either count.

  - **Six byte-identical copies of the asking block's unattended clause**,
    "**With nobody there to answer**, a question that passes this test does not
    stop the run" — `build-work:187`, `cut-into-tasks:158`, `plan-work:234`,
    `setup-checks:180`, `setup-project:165`, `untangle-idea:145`. Held by the
    `cksum` check at `docs/skill-conventions.md:1266`, which came back one line,
    `774425850 3827`. **This is the nearest rule in the set to what happened and
    it did not reach it**, which is worth the line: the landing question is not a
    question that passes the asking test — it is the gate, and step 5 asks it
    whatever the test says — so the one clause that already tells a run what to do
    with a question when nobody is there is written past the case. Named, not
    changed: widening it would put the gate under a rule about ordinary
    decisions, which is the opposite of what `:705` says it is.
  - **Twelve byte-identical copies of "Where nobody is there to hear it, the run
    does not carry on past it either"** — `build-prototype:83`, `build-work:110`,
    `cut-into-tasks:107`, `diagnose-bug:91`, `plan-work:102`, `record-lessons:85`,
    `research:93`, `review-changes:122`, `setup-checks:106`, `setup-project:84`,
    `start-work:213`, `untangle-idea:94`. Same block and same `cksum` as the first
    search's twelve. No change.
  - **`build-work:120`, `:123`, `:355`, `:618`, `:712`, `:944` and `:1210`**, and
    **`setup-checks:125`, `:126`, `:420`, `:589`, `:593`**, and
    **`setup-project:104`** — thirteen more places where the run acts on whether
    somebody is there: a guard's block, a class going `skipped` with the block as
    its reason, a question that becomes an issue, the report at the gate, the
    turn-end bound. All of them would read the mark. None changed.
  - **`README.md:8`, `:107` and `:145`** — the readme again, by the other wording.
    Does not apply, for the reason given above.

  What no search reached, and what is therefore named from reading rather than
  from a command: `hooks/` contains nothing that could read a mode at all, which
  is not an oversight but the finding one level out at
  `docs/skill-conventions.md:1045`. A mark on disk is the only thing that would
  change that, and it is the same sentence at `build-work:1180` that says nothing
  reads one today.

  **One more finding, out of the search rather than out of the run.** The pair
  the search had to name — `build-work:643` to `:649` and `review-changes:279` to
  `:285`, "**The criterion is the one written above, and each finding is announced
  under it**", identical to the byte — is not one loose end. It is one of eight.

  *Today:* **which byte-identical blocks are held has grown rather than been
  decided.** Measured against `b90874b`, by taking every paragraph of 200
  characters or more in `skills/*/SKILL.md` and keeping those that appear in more
  than one place: 23 such blocks. Three `cksum` checks under `## Before a
  handover, run these` cover 15 of them — the language block in twelve copies at
  `docs/skill-conventions.md:1202`, the whole of `## When a command does not
  answer` in twelve at `:1215`, and `## How to ask` in six at `:1266`. Nothing at
  all covers the other eight:

  - **Seven copies** of "**If a command this skill needs is missing from
    `docs/agents/`, say so**" — `build-work:54`, `cut-into-tasks:41`,
    `plan-work:46`, `review-changes:44`, `setup-checks:50`, `start-work:157`,
    `untangle-idea:189`. It stands immediately above `## When a command does not
    answer` and is thereby just outside the check that holds everything below it.
  - **Four copies** of "**Write into the issue tracker in English**" —
    `build-work:50`, `cut-into-tasks:37`, `plan-work:42`, `untangle-idea:185`.
  - **Three copies** of the definition of a condition — `build-work:237`,
    `cut-into-tasks:51`, `review-changes:54`. One of the three shared words under
    the heading `## Shared words are defined in one place`, which is what the
    duplication is for — "a word two skills lean on has to be defined somewhere
    both of them read" — and the definition that is in one place in the rule
    stands in three copies in the files, held by nothing.
  - **The criterion pair**, `build-work:643` and `review-changes:279`.
  - **Two copies** of "**At most three questions in a round**" —
    `plan-work:265`, `untangle-idea:286`.
  - **Two copies** of "The shared block above says a block is answered rather
    than got around" — `setup-checks:118`, `setup-project:96`.
  - **Two copies** of "**Do this as an action, now, before anything below writes
    a file.**" — `setup-checks:252`, `setup-project:351`, the branch-cut block
    the entry on the abandoned setup branch already reads as one paragraph
    standing in two files.
  - **Two copies** of the reading of an empty answer from the platform —
    `setup-checks:459`, `setup-project:788`.

  Beside those eight stands the arming mutation in five copies, recorded above and
  unheld since it was written; being a command line rather than a paragraph, this
  measurement does not even see it. An unheld block drifts apart and nothing says
  a word, and that is the position the arming command has been in the whole time.

  *Should:* **the guard is written in the same change as the copy.** Both halves
  already stand in `docs/skill-conventions.md` and neither reaches the other: "A
  rule holds only on the path it is written on" says to write the copy at every
  route that reaches the situation, and the passage on byte-identical copies says
  what holds them together is a checksum and that this replaces the search, not
  the copies. What is missing between them is that nothing makes the second
  happen when the first does. The copy gets made while a rule is being written;
  the checksum gets written when somebody remembers. Whoever writes the second
  copy owes its guard in the same change, and `## Before a handover, run these`
  is where it lands.

  **And the obvious generalisation does not work, which is why it is written down
  before somebody builds it.** A check that finds the pairs for itself — compare
  every paragraph against every other and report the ones that match — goes green
  exactly when they drift: once two copies differ they are no longer a pair, the
  finder stops seeing them, and it reports on what still agrees. That is the
  defect `docs/skill-conventions.md` names as a check going quietly green and
  stopping watching, arrived at from a new direction. The three that work are
  anchored on a heading rather than on equality, and that route is not open
  everywhere: the criterion
  pair sits under `## Step 4 — Review it` in one file and `## What happens to a
  finding` in the other, and the paragraphs on both sides of it differ in both
  files on purpose — so a heading-anchored extract would sweep in text that is
  meant to differ and be red by construction, which that same page calls not a
  check at all.

  **What stays open is whether every byte-identical block needs one, and what
  decides it.** Three candidates, none chosen here: the number of copies; whether
  the duplication is deliberate — one rule written at several routes — or two
  passages that merely happen to agree today; and whether an anchor exists at all,
  since a block with no shared heading needs a different form of check rather than
  the same one again. A list of the guarded blocks kept somewhere would answer it
  by hand and moves the remembering one level out rather than removing it, which
  is worth saying because it is the first answer that suggests itself.

  **Walked through against the sites on 14 September 2026, decided in five
  places, and then not built.** The branch `task/unattended-mark` stands, cut
  from `4358ead`, and carries no build. What stopped it is none of the gaps
  below. The place the mark is written hangs on a boundary that has not been
  drawn yet — where the part the user answers in ends and the part that runs
  alone begins — and that boundary is the next piece of work. The entry above on
  planning being fenced out already names where it would fall: a question at the
  end of Stage 1 with three answers, carry on unattended now, plan unattended and
  stop before the first build, or stay attended. Writing the mark at the start of
  the build stage now would put it exactly where that question then moves it from.

  **Decided, each with what decided it.**

  - **Three states and not two: unattended, attended, and mode unknown.** "No
    mark means attended" is the safe side only at the gate. At every handover
    site attended means waiting for a person who is not there, which is the
    standstill `build-work:590` to `:597` was written against — "waiting for them
    is not a stop with a reason — it is a standstill in the middle of a task that
    still looks like it is running". Unknown lands nothing and waits nowhere: it
    stops with the reason named.
  - **The mark is written where the user steps out of the flow, and not
    earlier.** While they are still answering questions, the skills that ask them
    must not read "nobody there" out of it. That is what makes the write site
    wait on the boundary rather than on this entry.
  - **The identifier is the main-branch commit the run starts from, not a random
    number.** A random number lives in the conversation and has therefore exactly
    the weakness this entry is about: a run that has lost it can check the mark
    against nothing but its own memory, which is the thing that failed. A commit
    is checkable against the repository — it is either in this history or it is
    not, either an ancestor of where main stands now or not, and the branch in
    the tree was either cut from it or was not. It is also read anyway:
    `build-work:287` compares the base against the remote before anything is cut,
    `:1164` has the opening message name it, and `:1235` with `setup-checks:609`
    send the user back to it to read the diffs afterwards. What the check cannot
    be is equality with the current main, for the reason under the first search
    below.
  - **A mark that is not this run's is not deleted.** It is a reason to refuse to
    start, under the rule already at `build-work:1222`, "One unattended run per
    working directory". The run says what it found and does not start. Deleting
    it would make the collision that rule forbids destructive rather than merely
    disallowed: the other run would carry on, read nothing at its next fork and
    stand still.
  - **The file is written with a shell command, not with the write tool, and the
    guard gets no exception.** `hooks/pre-tool-use-branch-guard.sh:32` blocks
    `Edit|Write|MultiEdit` on every path under the project directory while the
    tree stands on the default branch, which is where a run stands when it
    starts; the same hook reads `Bash` only for `git commit` and `git push`, and
    a write through `Write` would also wake `post-tool-use-checks.sh`. An
    exception for one path would make the guard porous for everything under the
    project directory — and the guard is what caught the first write of the run
    measured above.

  **Eleven gaps came out of the walkthrough, and they hold wherever the boundary
  ends up.** Five are answered by the decisions above; six stay open.

  - **The fallback inverts at most sites.** Answered, by the third state.
    Attended is the cautious side at one place, step 5's gate. It is a standstill
    at `build-work:134` the guard's block, `:187` the asking clause in six
    byte-identical copies, `:590` to `:597` the turn-end hook, `:934` a refused
    arming, `:946` to `:955` the wait — "Nothing wakes a run: the answer that
    ends here ends the run" — `setup-checks:589` and `:593`,
    `setup-project:104`, and the twelve copies of the permission-prompt block.
    One site against eight groups.
  - **A mark written at the session's start would reach the planning skills.**
    Answered, by writing it at the boundary. The asking clause stands in six
    skills and four of them are planning or setup — `plan-work:234`,
    `cut-into-tasks:158`, `untangle-idea:145`, `setup-project:165`,
    `setup-checks:180` — so a mark true of the session but not of the stage would
    stop them asking, against `start-work:302` and `README.md:99`.
  - **A random identifier cannot be checked by a run that has forgotten it**, and
    the rule that deletes a foreign mark would then have the run destroy its own.
    Answered twice over, by the starting commit and by refusing instead of
    deleting.
  - **The write is blocked by the branch guard.** Answered, by the shell.
  - **The four sites in `review-changes` are not read by a lens subagent.** Open.
    `review-changes` runs in the main run — `build-work:615`, "Run
    `review-changes` on the diff" — so it can read the mark itself, and of the
    four only `:181` forks behaviour, deciding whether a lens may be left out
    with a reason; `:188`, `:197` and `:236` are the grounds for that rule rather
    than instructions. Where the mode does have to travel in a prompt is
    `build-work:413` to `:419`, the build subagent, which meets the permission
    prompt, the guard's block and the unanswerable question inside itself.
  - **At least five sentences have to be rewritten, not two.** Open. Named
    already: `build-work:1180`, "**None of it goes into a file.** Nothing on disk
    reads such a file — no hook watches for an unattended run", and `README:225`
    to `:231`, "A state file with no reader is not a safeguard" — the search
    above reaches that bullet at `:226`, which is where the word sits, and the
    sentence itself is the line over it. Not named and equally
    contradicted: `build-work:590`, "There is no mark of an unattended run for it
    to find either … nothing on disk records the mode", which is the sentence
    this entry quotes as *Today*; `build-work:1035` to `:1037`, where the round
    count must go into no file "for the reason under 'Unattended mode'" — the
    rule stays right and its stated reason stops holding; and
    `docs/skill-conventions.md:1045` to `:1056`, whose half about the harness
    stays true while its conclusion gains a second half. `README:222` is the
    heading over the state-file rule, "Both already fixed in the skills", and
    changes with it.
  - **`setup-project:498` to `:503` says "one file of local state under
    `.claude/`"** and instructs that `.gitignore` cover it. Open. A second file
    changes both halves, and this is the place that keeps the mark out of a
    commit.
  - **The deletion has five exits and none of them is in the file that creates
    the mark.** Open. `build-work:1231` the finishing sentence, `:1026` and
    `:1039` the standstill after three rounds, `:1110` the five preconditions
    refusing — after a mark written at the session's start would already exist —
    `:1235` a stop message from the user, and the session simply ending. Creation
    in one file, deletion in another, five ways out: the case
    `docs/skill-conventions.md:72` names.
  - **`build-work` is reachable without `start-work`.** Open.
    `docs/skill-conventions.md:1077`: "Note the consequence — the model can also
    reach for `build-work` or `setup-project` on its own", and a typed command
    does the same. With no mark in existence the whole of `## Unattended mode` is
    dead text on that route. The entry above on the planning fence touches this
    from the other side, putting the five preconditions at the question rather
    than at the build.
  - **`start-work`'s `## Unattended` is a trailing description, not a step.**
    Open. It stands at `:295`, the last section of the body, after "Never say a
    skill's name" and behind steps that end at `:267`, and
    `docs/skill-conventions.md:28` is the rule it would have to be written
    against: "A section reads as description; a numbered step reads as an
    instruction."
  - **A second run would delete the first run's mark.** Answered, by refusing.

  **Two questions this did not decide.**

  - **Whether `hooks/stop-checks.sh` should read the mark.** Today no hook can
    see the mode at all, which is the finding at `docs/skill-conventions.md:1045`
    turned around — a hook cannot see absence either. A mark on disk is the first
    thing that would let it, and whether the turn-end message should then differ
    by mode, or stay one message the run reads differently, is not settled here.
  - **Whether the lens subagents need the mode at all.** `review-changes:221`
    gives each lens only its own lens and the diff, and nothing inside a lens's
    own work was found to fork on the mode. The forks are in the skill that
    decides which lenses run, and that runs where the mark is readable.

  **Searched by subject for what the decisions stand on, against the tree at
  `4358ead`. Nothing was changed, because nothing was built.** The entry's own
  two searches were re-run first and are unmoved, 89 lines and 50 — `skills` and
  `hooks` are byte-identical to `b90874b`, which the check over the installed
  copy also reported silent the same day. Three more, one per new subject:

  Where the run's starting point on the main branch is read or named: `grep -rn
  "current main branch\|local main branch\|commit it starts\|commit noted at the
  start\|main-branch commit\|Check the base\|rev-parse" skills/*/SKILL.md
  README.md docs/skill-conventions.md hooks/*.sh` — 10 lines.

  - `build-work:285` and `:287` — step 1, which fetches and compares the base
    before anything is cut. Where the identifier would be read; no change.
  - **`build-work:1049` — the fast-forward after a merge, and the one hit worth
    the line.** The starting point does not stand still: after the first merge
    the local main has moved, so an identifier re-read from "the current main
    branch" at a later site would not match the one written at the start. What
    the mark holds is the commit the run began on, and no reader re-derives it
    from main. Named so that the repair does not read it the wrong way round.
  - `build-work:1164` — the opening message naming that commit. Where it is
    already said aloud, and the reason it costs nothing to keep.
  - `build-work:1235` and `setup-checks:609` — the user sent back to that commit
    to read the diffs afterwards. The same value in its second use, so anything
    that changes what "the starting commit" means changes what these two promise.
  - `build-work:418` — the build subagent cutting from the current main branch.
    Does not apply: that is the task branch, not the run's starting point.
  - `docs/skill-conventions.md:1148` — `git rev-parse origin/main` in the check
    over the installed copy, and `hooks/pre-tool-use-branch-guard.sh:8` and
    `hooks/session-start.sh:4` — `git rev-parse --git-dir`, which only asks
    whether this is a repository. All three match on the string and none of them
    is this subject.

  Where the boundary between the two parts is written: `grep -rn "never
  unattended\|stays with them\|belong to the human\|belongs to the human"
  skills/*/SKILL.md README.md docs/skill-conventions.md` — 4 lines.

  - `start-work:302` and `:303`, and `README.md:99` — the fence itself. This is
    where the write site lands once the boundary is drawn, and it is already open
    in the entry above, where three sites are recorded deciding the same question
    the other way. A repair here and the repair recorded there are one change,
    not two.
  - `setup-checks:586` — the cost list telling the user what never runs
    unattended. It is the sentence they agreed to, so it moves whenever the fence
    moves; unchanged today.

  What the refusal leans on: `grep -rn "One unattended run per working
  directory\|One build task at a time" skills/*/SKILL.md docs/skill-conventions.md
  README.md` — 2 lines.

  - `build-work:1222` — the rule itself. It gains a way to be enforced and loses
    nothing; no change today.
  - `docs/skill-conventions.md:757` — "One build task at a time", whose own
    evidence that page records as missing. Does not apply: it is about two build
    agents in one working directory, not two runs, and it is named because it is
    the rule that looks like the same one.

  **Built on 14 September 2026 on `task/unattended-planning`, inside the repair
  of the planning fence above, because that repair drew the boundary this entry
  was waiting for.** `.claude/unattended.local`, two lines — the main-branch
  commit the run starts from, and `build` or `plan` for how far it may go —
  written with a shell command at the end of Stage 1 in `plan-work` or at the
  start of a direct unattended build in `build-work`, read at every fork, and
  deleted at six exits listed in `build-work` under `## Unattended mode`. Of the
  eleven gaps: the four sites in `review-changes` read it in the main run and the
  build subagent reads the same file, so nothing travels in a prompt; the five
  sentences named as contradicted are rewritten, with the heading "Both already
  fixed in the skills" in `README.md` left, since both rules under it are still
  fixed in the skills;
  `setup-project` says two files; the exits stand in one list in the file that
  creates the mark; `build-work` reached without `start-work` writes its own
  mark on the direct route; `start-work`'s `## Unattended` stays a section, but
  step 5 now carries the instruction. **One decision above was changed at one
  site**: a mark not this run's is still refused at the start of a build, and is
  deleted where the planning stage picks up an interrupted plan — somebody is
  there to answer at the second site and may not be at the first, and both files
  say so. The two questions above stay undecided. The branch
  `task/unattended-mark` still carries no build.

- **The first planning run alone, measured on 14 September 2026 in
  `devloop-test-o` — the first run on 0.100.0, six findings, and two places
  where the wording is the user's to settle before anything is built.** The
  user gave an idea, answered three questions in Stage 1 and chose to let the
  run carry on alone. What followed ran without them: four drafts, a checking
  agent against each, three revision rounds on the recommended draft, the spec,
  a cut into two tasks, the build, the review, the merge, and then four loose
  issues raised in the review taken up in turn. Six pull requests landed, the
  tracker was empty at the end, and the mark was deleted and said. The checking
  agents earned their place: draft 4 broke two facts about the existing code,
  draft 2 two structural assumptions, and against the recommended draft the
  agent found four gaps one after another, two of which would otherwise have
  surfaced in the build.

  **1. A block from outside the five preconditions stopped the run.** Claude
  Code's auto mode classed `go test ./cmd/dirstat/... ./internal/snapshot/...`
  as `Irreversible Local Destruction`, blocked three calls in a row and asked
  for an approval. The user was there and gave it. Alone, the run would have
  stood there. A test run deletes nothing.

  *Today:* `build-work:1192` to `:1193` — the fourth precondition, "The tool
  classes the run needs are already approved for this project. A run nobody is
  watching cannot answer a permission prompt", read again at `plan-work:462` to
  `:463` before the question at the end of Stage 1; `docs/skill-conventions.md:995`
  to `:998`, "Tool classes can be pre-approved per project, which is what makes
  an unattended run possible … They must be granted before the run"; and the
  block in twelve byte-identical copies, `build-work:117` to `:118` among them,
  "That a permission prompt appeared at all is a finding in itself: the tool
  classes the run needed were not all approved before it started". Every one
  of them reads a prompt as a grant that is missing. What stopped this run was
  a second model. Read on 14 September 2026 at
  `code.claude.com/docs/en/security`: "In auto mode, a separate classifier
  model reviews actions instead of you and blocks the ones it judges unsafe."
  And at `code.claude.com/docs/en/permission-modes`, the same day, what it
  holds against: the list under "What the classifier blocks by default"
  carries "Irreversibly destroying files that existed before the session", and
  "In most sessions the reason names the rule the classifier matched, such as
  `[Data Exfiltration]`, rather than giving a written explanation" — which is
  the label this run saw, with nothing under it. The three blocks in a row are
  not an accident of this run either: "if the classifier blocks an action 3
  times in a row or 20 times total, auto mode pauses and Claude Code resumes
  prompting", and that prompt is what the run met. The five preconditions read
  whether a grant stands. None of them can read what a second model will make
  of a command it has not seen yet, and the workflow cannot write the grant in
  any case — `setup-project:302` to `:305`, "the permissions file belongs to
  the tool, not to this project, and writing it is refused — measured, not
  assumed: a run tried and was blocked by the platform's own classifier". The
  nearest record of the classifier in this file, `docs/roadmap.md:148` to
  `:152`, is about the arming mutation, and `docs/skill-conventions.md:940` to
  `:948` says that measurement is no longer one to lean on; neither is about a
  check command.

  *Should:* this is recorded as the hardest limit of the unattended mode, and
  as one the workflow can do nothing about: a judgement made at run time by a
  model the skills cannot see, over a command they cannot pre-approve, landing
  as a prompt nobody is there to answer. What the user can do is on the same
  two pages, and it belongs where the mode is offered and where the check
  commands are named as something to grant:

  - **A narrow allow rule per check command keeps the classifier off it.** The
    decision order under "How the classifier evaluates actions": "Actions
    matching your allow, ask, or deny rules resolve immediately", and on
    entering auto mode "broad allow rules that grant arbitrary code execution
    are dropped" — blanket `Bash(*)`, wildcarded interpreters, package-manager
    run commands — while "Narrow rules like `Bash(npm test)` stay in effect".
    `setup-checks:320` to `:326` already names the check commands as something
    to grant, with "always allow" or `/config` as the two ways. What it does
    not say is that the rule has to be narrow to survive auto mode, and why.
    Which rule stood in `devloop-test-o` for `go test` is not recorded here, so
    this entry does not settle whether the grant was missing or had been
    dropped as broad.
  - **When it happens anyway:** the blocked action is listed under
    `/permissions`, tab "Recently denied", "where you can press `r` to retry it
    with a manual approval"; `/feedback` is where a false positive goes, and
    "Repeated blocks usually mean the classifier is missing context about your
    infrastructure".
  - **In a session that cannot prompt it is worse, not better.** "a
    non-interactive `-p` run without a `--permission-prompt-tool` has no prompt
    to fall back to. When repeated blocks reach a threshold, the action doesn't
    run and Claude keeps working." A check command that does not run, in a run
    that keeps working, is the case the twelve copies were written against —
    "Where nobody is there to hear it, the run does not carry on past it
    either" — and it arrives without a prompt, so the block that names it never
    fires. Whether the hooks' own runs of the chain go past the classifier is
    not measured: the page names tool calls as what it reads, and a hook is
    not one.

  **2. The wrong review was loaded first, for the second time.** Before the
  review of task 62 the run loaded `code-review:code-review`, with seven
  pre-approved tools, and corrected itself to `devloop:review-changes`. The
  same happened on 13 September 2026 before the review of task 47 and was not
  recorded then: `grep -rn "code-review" docs/roadmap.md` finds only the name
  under "Names that were rejected". By `record-lessons:102` the second time is
  the pattern.

  *Today:* `build-work:664` — "Run `review-changes` on the diff." — names the
  skill bare, without the plugin's prefix, under a heading that reads `## Step
  4 — Review it` at `:662`. The harness lists `code-review:code-review`, "Code
  review a pull request", beside `devloop:review-changes`, "Review a change
  from several angles at once", and the foreign one carries the word the
  heading uses. The sentence under "Names that were rejected" in this file —
  "Never reuse the names of skills Claude Code ships: `doctor`, `code-review`
  …" — is the nearest rule, and it held: the name was not reused. It is a rule
  about naming, and it says nothing about which of two names a call site
  reaches. The prefix stands in the set at five places — `start-work:305`,
  `untangle-idea:472` and `:574`, `README.md:39` and `:106` — every one of them
  the command a person types, and at no call from one skill to another.

  *Should:* a call from one skill to another names the skill the way the
  harness lists it, prefix included — `devloop:review-changes` — and this site
  says that the review skill Claude Code ships is not the one meant. Whether
  every call site takes the prefix or only the ones with a shipped neighbour is
  left to the list under the searches below, which names them all. The rule,
  either way, belongs in `docs/skill-conventions.md` beside "Never say a
  skill's name to the user" at `:24` to `:26`, which is about the person and
  says nothing about the call.

  **3. The standards file of the test project is empty after two dozen landed
  pull requests.** `docs/agents/standards.md` in `devloop-test-o` says there is
  no code from which rules could be derived, while the repository carries over
  a thousand lines of Go.

  *Today:* the gap is already recorded, two entries up, from the run of 11 to
  13 September: the same failure picture three times out of the review, fixed
  three times separately; the rule at `record-lessons:102`, "It happened a
  second time … two is a pattern", and the destination at `:115`,
  `docs/agents/standards.md`; the lock at `record-lessons:4`,
  `disable-model-invocation: true`; and its ground at
  `docs/skill-conventions.md:1080` to `:1082`, "No other skill runs either of
  them, so locking them costs nothing", which is the sentence a build loop with
  something to hand over falsifies. That entry is recorded and not built, and
  this run is its second measurement. What is new is the file's own sentence.
  It is the template's: `setup-project:712` to `:713`, "If you find none, write
  that down — empty is more honest than invented", written at setup when the
  repository had no code, and no later step revisits it — the refresh at
  `start-work:25` "touches nothing the project decided for itself",
  `review-changes:37` and `:151` read the file and never write it, the build
  subagent is handed its path at `build-work:460` to `:461` and never writes it
  either, and the one writer is the skill nothing calls. So the file records
  the state at setup and asserts it as the state now, which is
  `docs/skill-conventions.md:158`, "Never assert state — query it", one level
  up: a document nobody re-queries.

  *Should:* superseded on 26 September 2026 by what was built. The close of the
  review — where each finding is announced under fix or file, under "What
  happens to a finding" in `review-changes` and under step 4 of `build-work` —
  carries a third duty, not a third way out, in one shared block,
  `shared/rule-not-written-down.md`, inserted at both places so the wording
  exists once: as each finding is announced, whether the rule it breaks is
  already written is looked up in `standards.md`, in a command of `checks.md`
  and in the task's own issue, and where none carries it and a sentence can be
  written that names a situation this project's code will meet again and what
  is done in it, that sentence goes into `standards.md` as one rule, in the
  same change as the fix. The counting is gone. The earlier wording here
  counted a finding as the second of its kind before a rule was written, and
  the entry above left open where that count is kept across tasks; nothing
  survives a task that a later run could count against — the state the
  turn-end hook keeps is deleted on green, a finding's identity is prose a lens
  wrote, and the tracker holds issues, not findings — and the lookup against
  `standards.md` and `checks.md` answers in the moment instead: a rule found
  there means the documents did not fail, a rule found nowhere is written at
  the first finding, and a written rule broken all the same is the one case
  that files an issue, for a check, labelled `raised-here`. The skill nothing
  calls is neither changed nor unlocked, and the block names no skill, since
  the check under "Before a handover, run these" prints a locked skill named
  in backticks by another file; "Who may invoke a skill" in
  `docs/skill-conventions.md` says the lock's price is met, and milestone 5 of
  `docs/plan.md` no longer lists this case.

  Measured on 26 September 2026 across the six bench projects,
  `devloop-test-i`, `-j`, `-l`, `-m`, `-n` and `-o`, on their checkouts on this
  machine: every `docs/agents/standards.md` carries only the sentence
  `setup-project` wrote when it created the file, under a version marker that
  later refreshes moved. In `devloop-test-o` it reads "No coding rules recorded
  yet — there is no code in this repository to derive them from.", and `git
  log --oneline main | grep -c '(#[0-9]*)$'` there answers 36.

  **Built on 26 September 2026**, on `task/record-rules-at-review-close`: the
  shared block, its two insert lines, this entry, the conventions passage and
  the plan's list. Not walked: no bench has produced a finding at the close
  since.

  **Built on 27 September 2026**, on the same branch, three corrections to the
  block and what they rest on. The sentence no longer says the next build
  reads the rule: step 3 of `build-work` hands the subagent the paths of the
  control documents and never tells it to read them, and the entry below on
  Pocock's set records the review as the carrier of the standards. The third
  exit of "Clear out as you go" stands in the block in computable form: a rule
  on the main branch for more than ten landed pull requests that no
  `raised-here` issue cites comes out, and which one is said. A rule occupies
  one line, a breach issue quotes it word for word, and a rule written a
  second time after removal files the check as a breach does, which makes two
  cases that file where the Should above says one. The rulings behind these,
  the ten, its evidence and how it is revised stand in
  `docs/skill-conventions.md` under "A project's rules are written at the
  review's close", and nowhere else. The tool over the whole table, run on 27
  September 2026 at 0.111.0 on this branch: 0 broken records, 0 of 1781 lines
  of the search set uncovered, 3 findings, exit 0, and 56 runs that do not
  count, the same 56 as at `6a4b9e5`. The self-test the same day: exit 0, 87
  cases, 72 of 72 messages asserted by a case.

  **4. The questioning in Stage 1 closed after one round of three questions.**
  The idea: a tool that remembers what it saw of a directory tree on its last
  run and says, the next time, what has changed. Asked: where the last state is
  kept, what counts as a change, and what is reported as changed. The user
  answered briefly and without a question back, and the run read that as
  nothing important left open.

  At least six questions the idea raises were never put: whether directories
  that appeared or vanished count as changed; what holds when the same tree is
  scanned with different options than last time, another exclusion list say;
  what holds when a tree was moved or renamed and the key hangs on the absolute
  path; how old a stored state may be before it is useless; whether the state
  is overwritten on every run or an older one can be compared against; and
  what happens after a run that broke off. The second and the third pass the
  test under "How to ask" at `plan-work:207` to `:228`: only the user can answer
  them, and being wrong is expensive. The second the checking agent found on
  its own, later, as a filter change reported as a removal, and it cost two of
  the three revision rounds on the draft. Four of the six are children of the
  three that were asked — not askable before those answers, never asked after
  them, because no second round came.

  *Today:* `plan-work:359` to `:366` — "Map the open decisions as a tree. Each
  round, settle what you can settle yourself and say so in one line, then ask
  what is left … Say roughly how many rounds you expect. Then wait. The answers
  open the next round. Done when nothing important is open, the hard core of
  the user stories and of what is out of scope is written down, and no
  question is left whose answer somebody has to see something to give. Those
  three are what 'the idea stands' means everywhere in this file." The first
  condition is the run's judgement of importance, and a run that had asked
  three questions passed it. The sentence stood alone — "Done when nothing
  important is open.", at `:263` of the file at `4358ead`, from 20 August 2026
  — and gained its two companions on 14 September in the change that let
  planning run alone, so the sentence that ends Stage 1 is now the sentence
  that hands the run over. `README.md:52` to `:57` describes the stage to a
  person the same way and names an end — "It ends with the hard core written
  down … and … one question" — without the condition "nothing important open".

  **The mechanism that ends on a state rather than on a judgement is already in
  the set, in the other skill that interviews.** `untangle-idea:283` to `:288`
  — "Work the tree in rounds. The frontier is every decision whose
  prerequisites are already settled — the questions answerable now, without
  guessing at answers you haven't heard yet. Ask the whole frontier in one
  round, then wait. A question whose answer depends on another question still
  open in this round belongs to a later round, not this one." And `:344` to
  `:346` — "The interview is done when the frontier is empty: every branch of
  the tree visited, nothing left silently assumed. Do not act on it until the
  user confirms you have reached a shared understanding." Written on 19 August
  2026, adapted from Pocock's `wayfinder`, and it is his `grilling` nearly to
  the word — read on 14 September 2026 at `github.com/mattpocock/skills`,
  `skills/productivity/grilling/SKILL.md`, to which his `grill-me` delegates in
  one line: "Work the tree in rounds. The frontier is every decision whose
  prerequisites are already settled … The session is done when the frontier is
  empty: every branch of the design tree visited, nothing left silently
  assumed." Its page, `www.aihero.dev/skills-grill-me`, read the same day, says
  what a session looks like: "Forty-six questions across four rounds" as
  ordinary, and "Questions arrive in a few rounds rather than one long drip,
  and later rounds clearly build on what you said earlier" — rounds are what is
  counted, not questions. `docs/roadmap.md:35` to `:38`, this file, says
  `interview`, Pocock's `grilling` verbatim, is "written out in `plan-work` and
  `untangle-idea` rather than delegated to, deliberately" and "will not be
  built". Written out in both, then, and in one of the two the end is the
  frontier's emptiness while in the other it is the run's judgement of
  importance. The measured run went through the second.

  What `plan-work` keeps that `grilling` does not have is the cap:
  `plan-work:368` to `:376`, "At most three questions in a round", from 20
  August 2026 and measured, where `grilling` asks the whole frontier at once.
  The two do not conflict — the cap changes how many rounds a frontier takes,
  not when the stage ends — but under it a round and the frontier come apart:
  a round of three out of a frontier of seven leaves four questions askable
  now, and "the answers open the next round" then has to mean the rest of the
  frontier before anything the answers unlock. The same pair stands in
  `untangle-idea` today, "Ask the whole frontier in one round" at `:286` and
  the cap at `:290`, four lines apart and unmeasured.

  *Should:* Stage 1 asks in rounds; a round is the set of questions answerable
  now — every prerequisite settled, at most three of them — and the stage ends
  when that set is empty, not when the run sees nothing important left. That
  is the answer to how the end is established without a number the run keeps
  against itself, which the entry above on the removed ceiling says a run may
  not be the reader of: a state and not a count. Whether a question hangs on
  an unanswered one is a fact about the tree that anybody holding the tree can
  check, and nothing is counted. **Open: whether the first of the three
  conditions of "the idea stands" — nothing important open — is replaced by
  the empty frontier or stays beside it.** For replacing it: "important" is the
  judgement that just let three questions through. For keeping it: the
  frontier is only as complete as the tree the run drew, and "nothing important
  open" is the one sentence that asks the run to look for a branch it has not
  drawn. Confirmed from outside, and already decided here: a question that
  needs something to look at ends the grilling and is answered through a
  throwaway — `plan-work:389` to `:401`, `untangle-idea:339` to `:342`, and the
  page says "stop grilling. Build the throwaway version … then come back and
  answer in one line"; and a scope too large is cut first and grilled piece by
  piece — `start-work:225` to `:231`, "too large to see the end of … start
  mapping", and the page says "break the work into smaller pieces first, then
  grill each one". The recommended answer with every question, and facts looked
  up rather than asked, stand at `plan-work:360` to `:361` and `:380` to `:382`
  already.

  **5. The four conditional lenses have a trigger each, and no list of what
  they look for and none of what they leave alone.** `review-changes:218` to
  `:222`: Security — "any input from outside, credential, permission, file
  path, or anything reaching a network or a database"; Data migration — "any
  schema or stored-format change"; Test quality — "any test added or changed";
  Failure behaviour — "any error handling, fallback value, or default return".
  Each says when it runs; `:181` to `:182`, "if the diff contains it, the lens
  runs". None says what it looks for.

  *Today:* the two fixed lenses have the list — Standards at `:151` to `:155`,
  eleven items from dead code to interfaces that force the caller to know how
  they work inside, and Spec at `:165` to `:168`, five, with the reading of the
  guarded conditions at `:170` to `:177` — and the one exclusion in the file
  stands under Standards alone, `:157` to `:159`, "Skip anything a tool already
  enforces". `:226` gives each subagent "only its own lens and the diff", so a
  conditional lens's subagent gets one line, its trigger, as the whole of its
  brief. `:250` to `:251` fixes the report to findings worst first and the
  single worst named, and `:262` to `:263` — "If a lens found nothing, say that
  lens found nothing. That is a result, not an absence" — is the sentence the
  entry above on the fallen lens, 13 September, already found says the
  opposite of what a section with nothing in it has to contain, leaving "what
  the lens read, against what, and what it looked for" as what should hold.
  `:187` to `:197` fixes the form of what may be said about a lens that did
  not run, the trigger's own words negated item by item; nothing fixes the
  form of what a lens that did run says.

  Read against two primary sources on 14 September 2026. Anthropic's
  `/security-review`, `github.com/anthropics/claude-code-security-review`, file
  `.claude/commands/security-review.md`, names categories and no trigger:
  input validation — SQL, command, XXE, template and NoSQL injection, path
  traversal; authentication and authorisation — bypass, privilege escalation,
  session flaws, JWT, authorisation logic; crypto and secrets — hardcoded keys,
  weak algorithms, key storage, randomness, certificate validation; injection
  and code execution — deserialisation, pickle, YAML, eval, XSS; data exposure
  — sensitive data logged or stored, PII, endpoint leakage, debug information.
  It carries seventeen hard exclusions, among them: lack of hardening
  measures; theoretical race conditions or timing attacks; outdated
  third-party library vulnerabilities; memory safety issues; unit test or
  test-only files; log spoofing; denial of service; input validation on
  non-security-critical fields without proven impact. And it fixes what every
  finding carries: "file, line number, severity, category, description,
  exploit scenario, and fix recommendation". Pocock's `/code-review`,
  `www.aihero.dev/skills-code-review` dated 24 August 2026 and
  `skills/engineering/code-review/SKILL.md` in his repository, has two axes,
  standards and spec, one subagent each, never merged and never re-ranked —
  the same two this skill runs always — with a fixed baseline of twelve smells
  under standards even where the repository documents nothing, and every
  finding cites its ground: a standards finding "the standard (file + the
  rule)" or the smell "and quote the hunk", a spec finding "Quote the spec
  line". The four conditional lenses have no counterpart there; this skill is
  wider. And neither source re-checks its subagents: Pocock's aggregates
  "verbatim or lightly cleaned", and his page says so as the cost.

  From the runs themselves: the security lens reported no findings throughout
  13 and 14 September, on a package that builds file paths from an environment
  variable, reads JSON from disk and writes a file among them. That can be
  true. It is also the pattern a lens without criteria produces. And on 14
  September a lens reported "no findings" without having run, noticed only
  because three neighbours had found something — the shape recorded on 13
  September, now for the second time.

  *Should:*

  - **Every conditional lens gets a list of what it looks for, as the two fixed
    ones have.** For security, Anthropic's categories are the source. For data
    migration, test quality and failure behaviour there is no outside source;
    they are written on the pattern of the standards list at `:151` to `:155`.
  - **Every lens gets a list of what it leaves alone**, and the list's second
    purpose is said with it: to keep noise down, so that not every defect that
    can be imagined gets reported. Today that is one sentence, under Standards.
  - **Every finding names what it stands on** — file, line, and the lines of
    the diff that carry it — and a lens that finds nothing names what it read.
    The ground: both comparison sources take their subagents at their word,
    and on 14 September a lens said "no findings" without running, caught only
    by comparing neighbours. A report carrying its site is distinguishable from
    a placeholder on its own, which is what the 13 September entry asked for —
    "fixed to something the report itself has to carry" — and the two are one
    change. The shape is already in the set for drafts and not for lenses:
    `plan-work:519` to `:528` hands each checking agent the lists and takes back
    "three lists, item by item … every answer in the words of the item, so
    anyone holding the list can check it against the draft".

  **6. The recommended draft was revised three times alone, where the text
  says to stop.** Against the recommended draft the checking agent found four
  gaps one after another; the run redrafted under each and had it checked
  again, three rounds, with nobody there, and the draft that came out of the
  third is the one that was built.

  *Today:* this entry counts those rounds above as the checking agents earning
  their place. `plan-work` Stage 3 says otherwise: "Alone, the recommendation is
  taken where it passed every item … Where the recommended draft failed an item,
  or no draft passed, the run stops — 'With nobody there' says why that is a
  stop and not a second-best pick"; under `## With nobody there`, "a design
  choice where the check leaves nothing standing, or takes away the draft the
  comparison recommended: alone, that is a stop with the reason named"; and of
  the check itself, "A draft that fails an item is recorded as failing it; no
  agent decides what follows from that." No sentence in the file provides for a
  revision round. The run did not stop, and the five findings above do not
  carry that. The entry on the planning fence lists the case among what stays
  open — "Whether a second comparison over the survivors, or a redraft under the
  failed items, should happen instead is not decided" — and this run is its
  first measurement, taken by a run that went past the rule rather than by a
  decision.

  *Should:* one of two things, and which is not decided here. Either the run
  stops where the text says, and this run's three rounds were a breach that
  happened to end well; or the rule allows the redraft in so many words and says
  how many rounds and what ends them — the checking agent's three lists coming
  back empty, or a bound on rounds after which it is the stop. What speaks
  against today's rule is the result: the three rounds produced a draft that
  carried every story, and a stop would have left the planning issue
  `being-planned` for the next session to put to a person what the checking
  agent had already found. What speaks for it is the reason it gives — a
  comparison that recommended a draft now known not to carry the stories is
  not one to pick the next from — which a redraft answers only where the
  redraft is checked again, as this run's were.

  **Two places the user sees, whose wording is settled with them before
  anything is built.**

  - **The three answers at the end of Stage 1 explain the mechanics and not how
    they differ for the user.** `plan-work:427` to `:437`: what is read,
    drafted, written, cut, built and merged under each. The user proposed a
    version that separates them by presence: full flexibility — everything is
    built to a finished solution without them; planning runs without them and
    they can look at it once more before the build, from there on like the
    first; full control — everything is put to them and they decide. That
    answers `docs/skill-conventions.md:338` to `:342`, "what each answer means
    in practice", by a different property than the current text does, and
    `:396` to `:399`, "Describe what must be said; never dictate wording",
    holds over it: what changes is what each answer has to cover. The three are
    named in four places — `plan-work:427` to `:437`, `start-work:318` to `:321`,
    `setup-checks:613` to `:616` in the cost list at the offer, and
    `README.md:118` to `:123` — and the costs said with them at `plan-work:439`
    to `:445` stay.

    **Built on 16 September 2026, on `task/three-answers-wording`.** The three
    are said by where the user is needed and not by what the run does at each
    stage: everything built without them; the plan made without them and seen
    before anything is built, and from there the first answer again; everything
    put to them as it arises. The mechanics are not repeated with them — they
    stand where the mode itself is described, `start-work` under
    `## Unattended` and `README.md` under `## Attended and unattended`. The
    costs stay where they were, with one clause moved into them out of the
    first answer: where no draft carries the stories the run stops rather than
    guessing. And two of the four places said which answer `--auto` stands for
    with the words "that answer", whose nearest antecedent was the wrong one of
    the three; both now name the first. The version went from 0.100.0 to
    0.101.0. The second of the two wordings, below, stays open.

    **Searched by subject against the tree at `b368285`, and again after the
    change. Line numbers are those before it.** First by the answers'
    own words: `grep -rn "Carry on alone\|carry on alone\|Plan alone\|plan
    alone\|halt before the first build\|halt before the build\|\*\*Stay\.\*\*\|or
    stay" skills/ hooks/ README.md docs/skill-conventions.md` — 11 lines before
    and 3 after, the three that remain being the ones on another subject.
    Second by the question rather than by the answers, since a place that names
    them without using their words is not reachable by the first: `grep -rn -i
    "three answers\|asks once\|asked once\|how this piece of work should run"
    skills/ hooks/ README.md docs/skill-conventions.md` — 9 lines before and 10
    after, the extra one the README's own sentence naming the property.

    - `plan-work:425` to `:437` — the answers themselves, and the only place
      they are put to anybody. Rewritten.
    - `start-work:318` to `:320`, `setup-checks:613` to `:616`,
      `README.md:118` to `:123` — the same three named in one line each, twice
      to the model and once to the reader. Rewritten to the same property.
    - `plan-work:439` to `:445` — the costs. Kept, and one clause added.
    - `plan-work:415` to `:423` — the question itself, and the two cases where
      it is not asked. Unchanged: what changed is the answers, not whether it
      is put or when.
    - `plan-work:350`, `cut-into-tasks:298`, `build-work:1230` — "the halt
      before the first build" as an exit of the mark and as the mark's second
      line. The same words on another subject: they say what the run does with
      the file, not what was answered. Unchanged, and they are why the first
      search does not come back empty afterwards.
    - `cut-into-tasks:195` — "each answer the user gave at the end of the
      sharpening", which points at the three without naming them. Unchanged,
      and it is the one place the first search would have missed had the second
      not been run.
    - `docs/skill-conventions.md:340` to `:344`, "what each answer means in
      practice, what it costs", and `:398` to `:401`, "Describe what must be
      said; never dictate wording" — the two rules the wording answers to, both
      met by the new text: what changed is the property each answer is said by,
      and the three are still described rather than transcribed. Unchanged.
    - `docs/skill-conventions.md:111` and `:989` — "two of its three answers"
      about `build-work` step 7, and "Binding has three answers" about branch
      protection. Matched by the count alone, two other subjects. Unchanged.
    - `docs/roadmap.md:1951` to `:1953`, the *Should* of 11 September that first
      named the three, and `:3144` to `:3145`, the walkthrough of 14 September
      quoting it. Dated records of what was decided and read on a day, which
      the carve-out puts outside this rule: editing them to the new wording
      would falsify what was written then. Unchanged.
  - **Nothing at the start of a session says how the whole thing runs**: what
    comes, where the user is asked and where not, and how they will notice
    that it has gone on. The build has one — `build-work:1248` to `:1251`, "say
    what this run turns on, in the message that opens it": the scope, the
    loose issues, the finishing sentence, the starting commit. Planning has
    none, and the question at the end of Stage 1 has made the gap larger. **A
    rule stands against it and has to be answered before a word is written:**
    `start-work:45` to `:48`, "Name no stages. Not sharpening, designing,
    speccing, cutting, building or reviewing, and no counts of anything. A list
    of what is coming reads as a process to learn, which is the opposite of the
    promise just made", `setup-project:242` to `:246` the same at the second
    entrance, and `README.md:21` to `:25`, whose "Every decision point announces
    itself" is a promise per decision and not a map. What is asked for is not
    the list those forbid. It is where the user is needed and where not, and
    the two sentences do not tell the two apart. Whether that can be said
    without becoming the process to learn is the wording question, and it is
    theirs. The four-sentence introduction at `start-work:34` to `:43` runs
    only where the project is not yet set up; on a set-up project the session
    opens with no introduction at all.

  **Searched by subject, eight times, against the tree at `e09fa80`. Nothing
  was changed: this entry records, and decides nothing about the text, so each
  place is named with the change it would take or the reason it takes none.**

  Where a permission stands in for the mode's ability to run — finding 1:
  `grep -rn "approved before it started\|already approved\|are approved for
  this project\|pre-approved\|permission prompt\|classifier" skills/*/SKILL.md
  hooks/ README.md docs/skill-conventions.md` — 37 lines.

  - **Twenty-four of them the twelve byte-identical copies of the
    permission-prompt block**, two lines each — `build-prototype:90`,
    `build-work:117`, `cut-into-tasks:117`, `diagnose-bug:98`, `plan-work:109`,
    `record-lessons:92`, `research:100`, `review-changes:132`,
    `setup-checks:113`, `setup-project:91`, `start-work:220`,
    `untangle-idea:101`, each with the line after it. Held by the check at
    `docs/skill-conventions.md:1268`, whose anchor is the same sentence and is
    the 37th line. All twelve read a prompt as a missing grant. Were the Should
    built, the sentence would gain its second reading — a granted command a
    second model refused — as one change to twelve files under that checksum.
    Not changed.
  - `build-work:1192` to `:1193` and `plan-work:463` — the precondition, read
    twice. No change: it reads the grant, which it can, and what it cannot read
    is named here rather than there.
  - `setup-checks:618` — the cost list at the offer, "a permission prompt,
    which nobody is there to answer, which is why the kinds of command it needs
    have to be approved before it starts". This is where the limit is told to
    the user, and it is the co-change: the limit, and what they can do.
  - `setup-project:305` — the classifier blocking a write to the permissions
    file. A dated measurement about a different command; no change.
  - `docs/skill-conventions.md:261` to `:262` — the general form of the prompt
    as a finding, the same reading as the twelve; changes with them.
  - `docs/skill-conventions.md:941` to `:946` — the classifier on the arming
    mutation. Dated, outside the rule.
  - `docs/skill-conventions.md:995` to `:998` — pre-approved tool classes make
    the mode possible. Gains the qualification that granted is not the same as
    passed; the co-change one level out.
  - `hooks/` — nothing. `grep -n "permission\|classif" hooks/*` is empty: no
    hook sees a permission decision, and none could.

  Not reached by the search and named from reading: `setup-checks:320` to
  `:326`, where the check commands are named as something to grant — the site
  where "narrow, and why" would be said.

  Where one skill reaches another by name — finding 2:
  `grep -rn "\`review-changes\`\|code-review" skills/*/SKILL.md hooks/ README.md
  docs/skill-conventions.md` — 6 lines. `build-work:664` is the call and the
  co-change. `build-work:680`, `plan-work:522`, `docs/skill-conventions.md:61`,
  `:748` and `:1087` name the skill without calling it; no change. The naming
  rule under "Names that were rejected" is unchanged and named because it is
  the rule that looks as if it covered this. The prefix: `grep -rn "devloop:"
  skills/*/SKILL.md hooks/ README.md docs/skill-conventions.md` — 9 lines, five
  the typed command, listed above; two the version marker, `start-work:19` and
  `setup-project:222`; two the status line, `hooks/session-start.sh:7` and
  `:14`. None a call. The calls themselves have no one string, so they were
  reached by reading each skill for where one skill runs another: twenty-four
  sites, the dispatch list in `start-work` counted once — `start-work:24` to
  `:25`, `:113`, `:231` to `:232`, `:238`, `:247` to `:262`; `plan-work:38`,
  `:381`, `:397`, `:623`; `untangle-idea:213`, `:315`, `:378`, `:382`, `:554`,
  `:598`; `cut-into-tasks:295`; `setup-project:834`; `build-work:350`, `:477`,
  `:538`, `:551`, `:664`, `:1123`; `diagnose-bug:315`. Of these, the one whose
  target has a neighbour sharing a word in the harness's list on 14 September
  2026 is `:664`; `debug`, on that list against `diagnose-bug`, was not in the
  harness's list that day. Whether the prefix goes to all of them or to the one
  is the open half of the Should.

  Where a lesson is meant to land — finding 3: the two searches of the entry
  from 13 September, re-run. `grep -rn "standards.md" skills/ hooks/ docs/
  README.md` — 16 lines against ten then, the six new ones all in
  `docs/roadmap.md` at `:2548`, `:2677`, `:2702`, `:2707`, `:2711` and `:2716` —
  the first in the entry on the check-chain change that went unreviewed, the
  other five in that entry; the ten sites in the skills and
  in this file are unmoved, and the reading given there holds for each. `grep
  -rni "second time\|three times\|same defect\|a pattern" skills/ hooks/
  docs/skill-conventions.md README.md` — 31 lines against 29: twelve the shared
  block, the two rule sites unmoved at `record-lessons:102` and
  `docs/skill-conventions.md:458` to `:460`, the rest measurements, or rules on
  another subject that match on the wording alone — `start-work:75` and
  `build-work:1047`, arming a second time — at lines shifted by the changes
  since. New from reading:

  - `setup-project:712` to `:713` — the template's sentence. Right at setup;
    named because it is what the file still says.
  - `start-work:25` — the refresh; no change.
  - `build-work:460` to `:461` — the subagent is handed the control documents'
    paths; no change, and the reason a rule written there reaches the build.
  - `build-work:692` and `review-changes:284` — the close, where the third duty
    would stand: the co-change, in two files, byte-identical today and held by
    nothing, as recorded above.
  - `docs/skill-conventions.md:1080` to `:1082` — the ground of the lock,
    false either way the repair goes: the co-change.
  - `docs/skill-conventions.md:1095` to `:1098` — a locked skill cannot be
    called; the reason the lock stays.
  - `docs/skill-conventions.md:1197` and `:1203` — the invocability checks; the
    second prints a line the day another file names `record-lessons` in
    backticks.

  Where the end of Stage 1 is stated — finding 4: `grep -rn "idea
  stands\|nothing important\|frontier\|next round\|rounds you expect\|rounds
  are left\|last round" skills/*/SKILL.md hooks/ README.md
  docs/skill-conventions.md` — 34 lines.

  - `plan-work:362` to `:366` — the sentence; the co-change. `:407`, "Before
    the last round closes" — the last round becomes the one that empties the
    frontier, and the words stay. `:417`, "only where the idea stands by the
    three conditions above" — reads the definition; changes only if the first
    condition is replaced. `:275`, "Planning runs alone from the point where
    the idea stands" — no change, the definition moves under it.
  - `start-work:271` and `:309`, `setup-checks:611`, `setup-project:333` — "the
    idea stands" as the boundary, said to a person or read as the fence. No
    change; they point at the definition.
  - `README.md:53` to `:57` — the stage described to a person, with "an estimate
    of how many rounds are left" and an end that names the hard core and the
    question, not the condition. A co-change if the condition is said there.
  - `untangle-idea:284`, `:286`, `:300`, `:312`, `:314`, `:344` — the
    interview, the source wording. No change, and after the change the two
    stages are a near-pair held by nothing — one more beside the eight unheld
    blocks the entry above lists and the ninth the entry below counts. The
    other fifteen lines in `untangle-idea`, `:208` to `:596`, are the frontier
    of the map — tickets,
    not questions — the same word on another subject. `build-work:1075` to
    `:1076` — rounds against the platform's checks; another subject.
  - `plan-work:368` and `untangle-idea:290` — the cap, in two copies held by
    nothing, recorded above. The co-change in `plan-work` says the cap bounds a
    round and not the frontier; `untangle-idea` carries the same tension four
    lines apart today.
  - `docs/roadmap.md:35` to `:38` — a status claim, not a measurement, and
    the one line of this file the repair reaches: it becomes exact where today
    it reads as if the same interview stood in both.

  Where a lens is told what to look for and what to report — finding 5:
  `grep -rn "lens" skills/*/SKILL.md hooks/ README.md docs/skill-conventions.md`
  — 50 lines, 34 of them in `review-changes`.

  - `review-changes:218` to `:222` — the co-change. `:151` to `:159` — the
    pattern and the one exclusion; no change. `:226` — no change in words, its
    content grows. `:250` to `:251` — the report gains the site each finding
    stands on. `:262` to `:263` and `:245` to `:246` — the repair the 13
    September entry already names; one change with this one. `:187` to `:197` —
    the form for a lens not run; no change, and it is the model for the form.
  - `build-work:589`, `:612`, `:673` to `:674`, `:680`, `:774` to `:775` — what
    the lenses read, referred to from the build. No change; `:673` is the one
    that leans on a criterion by its content, and it shows what a list buys: a
    sentence elsewhere can stand on it.
  - `plan-work:523` — the checking agents; no change, and the argument.
  - `README.md:88` to `:91` — the six lenses to a person; no change unless the
    criteria are said there.
  - `docs/skill-conventions.md:59` to `:67` — the definition of a lens: who
    reads, not what for. No change. `:748` — dated.
  - `hooks/` — nothing reads a review.

  Second, the sentences on nothing found and on what a tool enforces: `grep
  -rn "found nothing\|no findings\|No findings\|tool already enforces\|Skip
  anything" skills/*/SKILL.md hooks/ README.md docs/skill-conventions.md` — 5
  lines: `review-changes:157`, `:255`, `:262`, named above; `build-work:374`, a
  query and another subject; `setup-project:712`, the same exclusion at the
  standards file's birth, unchanged. Third, the form: `grep -rn "item by item"
  skills/*/SKILL.md docs/skill-conventions.md` — 3 lines, `plan-work:523`,
  `review-changes:189`, `docs/skill-conventions.md:563`, every one of them a
  checkable answer asked for by the item; no change, and the shape the third
  part of the Should takes.

  Where the three answers are named — the first user-visible place: `grep -rn
  "Carry on alone\|carry on alone\|Plan alone\|plan alone\|halt before the
  first build\|\*\*Stay\.\*\*\|or stay" skills/*/SKILL.md hooks/ README.md
  docs/skill-conventions.md` — 10 lines. The four places named above,
  `plan-work:427`, `:432`, `:436`, `start-work:320`, `setup-checks:614` to
  `:615`, `README.md:119` to `:120` — the co-change, together. `plan-work:350`
  and `cut-into-tasks:298` — the halt as an exit of the mark; the same words on
  another subject, no change.

  Where the opening of a session is governed — the second: `grep -rn "Name no
  stages\|name no stages\|what is coming\|message that opens\|opening
  message\|announces itself\|tells you where you are\|Say what happens
  next\|say what happens next" skills/*/SKILL.md hooks/ README.md
  docs/skill-conventions.md` — 10 lines. `start-work:45` to `:46` and
  `setup-project:242` and `:245` — the rule against, named above.
  `README.md:21` and `:24` — the promises. `build-work:1248` and `:1253` — the
  build's opening message, the model. `start-work:230` and `setup-checks:684` —
  "say what happens next in one line", the per-step form that exists, one line
  at the step, which is what stands where a map would; no change to any of
  them until the wording is theirs.

  Where the stop after a failed check is written — finding 6: `grep -rn
  "recommended draft\|the run stops\|second-best pick\|failed an item\|takes
  away the draft" skills/*/SKILL.md README.md docs/skill-conventions.md` — 11
  lines. `plan-work:329`, `:546`, `:552` to `:553` — the rule at its three
  sites, the co-change whichever way it goes; `:320` and `:431` — the same stop
  on other questions and in the answer's description, which change only if the
  redraft is allowed. `setup-checks:128`, `:630`, `setup-project:106`, `:112`,
  `docs/skill-conventions.md:363` — stops on other subjects; no change.

  Built in part on 16 September 2026, on `task/three-answers-wording`: the
  first of the two wordings above, the three answers at the end of Stage 1.
  Five of the six findings and the second wording are recorded and not built;
  the third, the standards file, is built, above.

- **Matt Pocock's skill set read in full against this one on 14 September 2026,
  and it divides into three defects he names that this set has, one he names
  that it does not, seven mechanisms of his missing at named sites here, and
  four places where this set is further on.** Read at
  `github.com/mattpocock/skills`, `main`: 37 `SKILL.md` files, 2465 lines
  together, the longest of them 140. This set, measured at `b3805bc`: 12 files,
  6157 lines, the longest `build-work` at 1359 — on its own more than half the
  length of his whole set. The file the first three findings are read against
  is `skills/productivity/writing-for-agents/SKILL.md`, his meta-discipline for
  documents an agent reads; each of the seven below names its own source file.

  **Nothing here is a convention, and nothing here is built.** Each rule below
  is one document's rule read against another set of documents, which is the
  weakest kind of evidence this file accepts — the reading that has been wrong
  twice already, once about what a field means and once about what a run would
  do. **Before any of it is built it owes a counter-check against real cases**:
  the runs this file already records, walked through the proposed rule to see
  what it would have changed and what it would have broken. Where a Should
  below is already backed by a measurement, that measurement is named beside
  it; where it is not, it says so.

  **1. Duplication, and he requires one source per meaning**: the same meaning
  in several places costs maintenance and tokens, and lifts its rank above what
  it is actually worth. This set decides that expressly the other way —
  `docs/skill-conventions.md:72`, "A rule holds only on the path it is written
  on", with the four failures of one day that produced it and the sentence "Two
  copies that agree beat one copy that half the runs never read"; and `:36`,
  "Shared words are defined in one place", which is the same decision for words
  rather than rules.

  *Today:* **24 byte-identical blocks in 165 copies**, measured at `b3805bc` by
  taking every paragraph of 200 characters or more in `skills/*/SKILL.md` and
  keeping those standing in more than one file. Three `cksum` checks under
  `## Before a handover, run these` hold 15 of them —
  `docs/skill-conventions.md:1212`, `:1225` and `:1276`. **The count has grown
  by one block and three copies since the entry above measured it** at
  `b90874b` — 23 blocks there, and 162 copies measured here the same way — and
  the one that entered is the definition of a seam, `cut-into-tasks:47`,
  `build-work:277`, `review-changes:50`, rewritten identically on 14 September
  in the change that let planning run alone, and held by nothing. It is the
  ninth unheld block beside the eight that entry lists. **It did not arise in
  that change.** The three copies were byte-identical before it — the entry on
  the planning fence records their `cksum` at `e62627c`, `3342723713 196` — and
  what the rewrite did was carry the block from 194 characters to 461, across
  the 200-character threshold this measurement reads at. That moves the
  evidence rather than weakening it: three copies were edited together by hand,
  correctly, and nothing was written that would notice next time, which is the
  point either way. **And it names a gap of the measurement itself.** It reads
  the threshold, not the arising of a copy: a block under 200 characters is as
  unheld as one over it, and this count does not see it. How many such blocks
  stand below the line is not measured here; the seam definition was one until
  14 September.

  What that costs is measured, and it is the commonest failure class in this
  file. Four cases in four days where the same thing stood decided differently
  in several places:

  - **The fence around planning, in two files on two grounds** — read 11
    September 2026, the entry above: `start-work` under `## Unattended`
    grounded it on whose decision it is, `README.md` under `## Attended and
    unattended` on what a mistake costs, and neither named the other, so a
    repair at one would have left the other standing on a reason it never
    answered. Repaired in both on 14 September.
  - **The task cut, settled at three sites against that same fence** — same
    entry: `plan-work` at `## Close` (`:626` to `:627` today), `cut-into-tasks`
    at `## Before you create anything` (`:268`), and `README.md:81`, all three
    saying the cut follows from the spec and is created rather than asked,
    while the fence called it one of the two decisions that belong to the
    human.
  - **"Do not block the session" against "check that it actually arrived"** —
    measured 11 and 13 September 2026 on pull requests 50, 54, 55 and 57, the
    entry above: one file told the run to read once and end its answer, two
    others and the readme told it to check the git log for evidence that could
    not exist yet. Three stages armed, all three said what came after, none of
    them waited. Those exact strings find nothing today: all four were
    rewritten on 13 September when the wait was built.
  - **"Waiting unattended is a standstill" against the wait that was then
    built** — 13 September 2026: two sentences saying so had to be narrowed to
    waiting on a person, because the new step waits on the platform and that is
    not a standstill.

  **The way he avoids it is reference skills that others call** —
  `codebase-design`, `grilling`, `domain-modeling` — and this set rejects that
  route at `docs/roadmap.md:37`: `interview`, `define-terms` and `clarify-idea`
  "are written out in `plan-work` and `untangle-idea` rather than delegated to,
  deliberately — upstream reports that a skill which only delegates loads half
  its dependencies and guesses at the rest." **That is a foreign observation
  and not a measurement here.** It carries no date, no source page and no run;
  by the second rule under "A field is not an answer to a question it was not
  asked" a claim about behaviour outside this repository holds only with
  evidence, and this one is a recollection standing where a measurement should
  be. The architecture of the whole set rests on it.

  *Should:* **a repeated rule owes its guard in the same change**, which is
  already what should hold in the entry above on the eight unheld blocks, and
  what this entry adds is the count it has to survive: the guard is owed at 24
  blocks, not at the three that happen to have one. And **the decision that
  produced them is written down as resting on an unchecked claim**, so that it
  is reopened on evidence rather than inherited. What would settle it is small:
  one delegating skill, one run, and a reading of what its dependencies
  actually loaded. Until that exists, "a skill which only delegates loads half
  its dependencies" is the same shape as `allow_auto_merge` used for "there is
  a gate" — a statement about something else, doing duty as the answer.

  **2. Premature completion, and he describes it this way**: every step ends on
  a completion condition, and a vague condition invites ending the step before
  it is finished, because attention moves to being done. His worked example of
  a vague boundary is "understanding reached", word for word.

  *Today:* `plan-work:363` — "Done when nothing important is open, the hard
  core of the user stories and of what is out of scope is written down, and no
  question is left whose answer somebody has to see something to give." The
  first of the three is the run's own judgement of importance. **Measured on 14
  September 2026** in `devloop-test-o`, the entry above: Stage 1 ended after
  one round of three questions with at least six the idea raises never put,
  four of them children of the three that were asked and therefore not askable
  before those answers and never asked after them. One of the six surfaced
  later as a filter change reported as a removal and cost two of the three
  revision rounds.

  **The counter-example is in the same file and it held.** `build-work:1278` to
  `:1281` — "There is no ceiling on how many tasks this run may finish. What
  ends it is that step 2 has nothing left to take, and that is **two**
  conditions, both of which have to hold: nothing ready in scope, **and** no
  loose `raised-here` issue that clause 1 or clause 3 would take now." Both
  halves are queries, and the run of 14 September went through it correctly:
  six pull requests, four loose issues taken up in turn, the tracker empty at
  the end. The condition that was rewritten after a failure is the one that is
  checkable; the one that has never been rewritten is the one that failed.

  **He names two properties that make a condition a lever** — clarity, whether
  the agent can tell done from not-done, and demand, how much it asks for.
  Those two are the test, and this set has never applied it to more than one
  condition at a time.

  *Today, across the set:* `grep -rni "done when\|ends when\|what ends it\|is
  finished when\|until nothing\|the end is" skills/*/SKILL.md README.md` — 10
  lines, seven of them a stage's own end.

  - **Ends on a state:** `diagnose-bug:211`, one named command already run,
    with its invocation and output, that is red-capable; `diagnose-bug:244`,
    removing any remaining element makes it go green; `untangle-idea:344`, the
    frontier is empty; `build-work:1067`, standstill built from `gh pr checks
    --json name,bucket`; `build-work:1278`, the two queries above.
  - **Ends on a judgement:** `plan-work:363`, the finding above. And
    `untangle-idea:175` — "the map is done when the way is clear" — which reads
    the same at first and is not: the clause after the dash, "nothing left to
    decide before someone goes and does the thing", is checkable against the
    tickets, and `:344` gives the same skill's interview a state to end on. It
    is named here because it is the nearest miss, not because it is a second
    defect.
  - **Not a stage end:** `plan-work:429`, `setup-checks:550` and `:607` — the
    unattended loop described to a person, pointing at `build-work:1278`. No
    change; they are readings of a condition written elsewhere.

  *Should:* **every completion condition in the set is read against his two
  properties, not only Stage 1's.** The repair to Stage 1 is already written in
  the entry above — the stage ends when the set of questions answerable now is
  empty — and what this entry adds is that fixing one condition and leaving
  six unexamined is the same mistake one level up: seven stage ends, one
  measured failure, and no reading of the other six. The pass is cheap, it is
  text against text, and it is the one Should here that needs no new run before
  it can be done.

  **3. Sprawl — a document simply too long**, even where every line is alive
  and unique: attention thins out over the excess. His remedy is an information
  hierarchy of three ranks — the step in the document, the reference in the
  document, the reference moved out behind a pointer — and the branch test:
  what every branch needs stands in the document, what only some branches reach
  lives behind a pointer.

  *Today:* `build-work` is 1359 lines at `b3805bc`, against 1263 at `b90874b`
  where the duplication entry above was measured — it grew by 96 lines in the
  four commits since, none of which was about its length. `## Unattended mode` runs from
  `:1155` to the end of the file, **205 lines, and every attended run loads all
  of it**: it is the clearest thing in the set that the branch test would move
  behind a pointer, since an attended run reaches none of it. The seven step
  headings before it are the other half of the picture — one document carries
  the whole loop from base check to merge and back.

  **The evidence usually reached for does not hold, and saying so is the point
  of this paragraph.** The landing question put to the user in an unattended
  run — the entry above — was measured on **13 September 2026**, when no mark
  existed; its own diagnosis is distance, "Between the typed word and it, this
  run passed through several skill loads, a build subagent with a fresh
  context, four review subagents and a second review round". The mark was built
  on 14 September in `e09fa80`, and the run of 14 September under it did not
  put the question. So that measurement is evidence that distance defeats a
  difference drawn in text, and it is already answered by something other than
  shortening. **It is not evidence for sprawl, and this entry does not use it
  as such.**

  *Should:* **the three ranks are applied to `build-work`, beginning with the
  205 lines an attended run cannot reach.** And it is written down here that
  this is the most expensive of the three rebuilds and the only one not yet
  shown to be worth doing: the duplication finding has four dated failures
  behind it and the completion finding has one, while this one has a line count
  and a rule from another repository. **What would settle it is a measurement
  this set can take** — a run that reaches a late step in `build-work` and is
  asked what it holds from the early ones — and until that exists, splitting a
  file that works is a cost paid against a document's advice.

  **The fourth defect he names is not a finding here. Steering by prohibition
  pulls the forbidden behaviour into context and makes it more available.** He
  allows a prohibition as a hard guard and requires the positive aim beside it.
  This set is full of them: `grep -rc "Never \|Do not \|never \|do not "
  skills/*/SKILL.md` sums to 337 across the twelve files.

  **They stay.** Nearly every one stands for a measured defect, and this file
  is the record of which — "No sentence after the last lens", "do not ask
  whether the cut is right", "Do not go on to guess without it", each with a run
  behind it. Removing a prohibition because a document elsewhere prefers positive
  phrasing would throw away the evidence and keep the wording. What is owed is
  the other half: **every prohibition carries the positive aim beside it**,
  which several already do and which nothing requires. That is a writing rule
  for `docs/skill-conventions.md`, not a change to any skill, and it binds the
  next prohibition written rather than the 337 standing.

  **Seven mechanisms of his that are missing at a named site here.**

  - **`skills/productivity/grilling/SKILL.md`** — the mechanism Stage 1 does
    not have. Rounds; the whole set of questions whose prerequisites are
    settled, in one round; numbered, each with a recommended answer, in a fixed
    output form; the set recomputed after every answer, with a question
    depending on an open one belonging to a later round; facts fetched by a
    subagent, which blocks nothing but the questions beneath it; the end is the
    empty set, and nothing is acted on until the user confirms shared
    understanding. **It has stood in `untangle-idea` almost word for word since
    19 August 2026** — `:283` to `:288` and `:344` — and not in `plan-work`.
    Already recorded in the entry above, with what is open: whether the empty
    frontier replaces the first of the three conditions of "the idea stands" or
    stands beside it.
  - **`skills/engineering/code-review/SKILL.md`** — his standards axis carries
    twelve code smells from Fowler's *Refactoring* as a fixed baseline, each
    with what it is and how to fix it, bounded by two rules: the repository
    overrides, and each is a judgement call and never a hard violation. The
    list at `review-changes:151` to `:155` overlaps in three — duplicated
    logic, functions doing several things, dead code — and is otherwise
    behavioural: misleading names, comments restating code, inconsistent error
    handling, silent failures, magic values, leaked internals, missing edge
    cases, interfaces that force the caller to know how they work inside. The
    structural half is absent, and so is the hard-versus-judgement distinction:
    `:161`, "A documented project rule always beats a general one", settles
    precedence and not severity. Three further things from the same file: he
    hands the subagent the whole list, because it has no other access to it —
    which this set's `:226`, "each given only its own lens and the diff", makes
    binding here too; he caps the report at four hundred words; and he forbids
    merging or re-ranking the axes' findings, which stands at `:253` to `:254`
    already.
  - **`skills/engineering/tdd/SKILL.md`** — the tautological anti-pattern: a
    test whose expected value is computed the way the code computes it, so that
    it passes by construction and can never contradict the code. The nearest
    thing in this set is four sites about a check that cannot fail —
    `cut-into-tasks:229` and `:232`, `build-work:592`, `review-changes:272` —
    and one under the Spec lens, `review-changes:167`, "tests that would pass
    whatever the code did". None of them names the mechanism, and the Test
    quality lens has no criteria list at all, which is the finding above on the
    four conditional lenses. **Reported from the run of 14 September 2026 and
    not otherwise recorded in this file: the test reading found exactly this
    defect, without it standing in any list it was given.** It stands here as
    reported and not otherwise backed, and nothing is built on it until it is.
  - **`skills/in-progress/implement-spec/SKILL.md`** — tasks as a graph with an
    advancing frontier rather than one after another; each implementing
    subagent in its own worktree; as one finishes the frontier advances and
    more start. `build-work` builds one task at a time — step 7 at `:1133`
    returns to step 2, and `docs/skill-conventions.md:757` states the rule:
    "One build task at a time. Two build agents share one working directory:
    one switched branches out from under the other mid-edit... Parallelism
    needs separate worktrees and is not worth it while tasks merge to the same
    branch one after another." **That passage says its own evidence is
    missing** — recorded 19 August 2026 from a run nobody can go back to — and
    names the experiment that would settle it. His worktrees are the answer to
    the exact failure it describes, so the two do not disagree: this set ruled
    out parallelism in one directory, he ruled out one directory.
  - **`skills/engineering/wayfinder/SKILL.md`** — every kind of work is marked
    "needs the human" or "runs alone", and the agent never stands in for the
    human; a grilling agent answering its own questions has broken that. **That
    same distinction was derived here by hand on 14 September**, as the
    boundary the mark was waiting for — the entry above: "The place the mark is
    written hangs on a boundary that has not been drawn yet — where the part
    the user answers in ends and the part that runs alone begins." Drawn once,
    for one stage, in prose. His is a property of every entry in the set.
  - **`skills/in-progress/retro/SKILL.md`** — his retrospective searches seven
    categories: discoverability, automated checks, coding standards, the
    always-loaded control file, tool economy, instructions with no effect, and
    access to information. `record-lessons` knows two triggers — `:102`, it
    happened a second time, and no check could have caught it — and has never
    run: it carries `disable-model-invocation: true` at `:4`, nothing calls it,
    and the entry above measures what that costs, a build loop producing the
    same finding three times with no way to reach it. And his rule that **the
    review agent carries the standards and not the build agent, because the
    build agent is under the greatest context pressure** — which this set
    already does, `review-changes:37` and `:151` read `standards.md` while
    `build-work` names it nowhere and hands the subagent "the paths of the
    control documents" at `:460` to `:461`. Named as agreement, not as a gap.
  - **`skills/engineering/to-tickets/SKILL.md`**, two things. **First, he puts
    the cut to the user and iterates to agreement**, and this set decides that
    expressly the other way at `cut-into-tasks:268`, `plan-work:626` to `:627`
    and `README.md:81`, with the reason: the user cannot judge whether a task
    is too large without the code in front of them. **The divergence is
    recorded nowhere** — the deviation from an upstream source this set
    otherwise copies verbatim is unwritten, and
    `docs/skill-conventions.md:431`, "Where it is adapted, say why", is the
    rule it falls under. **Second, his pattern for wide rebuilds that will not
    fit a vertical slice**: put the new form beside the old, migrate the call
    sites in batches, each batch its own task, remove the old form last. **That
    already stands at `cut-into-tasks:214` to `:216`** — "add the new thing
    beside the old, move callers in batches, delete the old last" — but scoped
    to "wide mechanical rewrites — renaming something that appears in a
    thousand places". His is not limited to mechanical rewrites. Whether
    widening the scope is right is a question for the counter-check, not a
    finding: the narrow wording is what keeps it from becoming the route by
    which a horizontal cut gets smuggled past the rule, which the line above it
    forbids by name.

  **Where this set is further on.** Written so the entry is not read as a list
  of faults, and because each of these is a place where copying him would be a
  regression.

  - **Six review lenses against his two.** `review-changes:147` two that always
    run, `:179` four that run when the diff contains their trigger. His
    `code-review` has standards and spec and no conditional axis at all, which
    the entry above already records.
  - **A check-class matrix that says which class binds.** `setup-checks:392`,
    the table with `Class | Per-file | Whole | Files | Duration | Blocking |
    Status`, and `:405`, "`Blocking` becomes `yes` only on rows that are
    `filled`". Nothing of the kind exists on his side; a check either runs or
    it does not.
  - **Real enforcement through guards.** `hooks/` carries three `PreToolUse`
    guards — branch, install, merge — plus `post-tool-use-checks.sh`,
    `stop-checks.sh` and `session-start.sh`, six scripts wired in `hooks.json`,
    against his single script for dangerous `git` commands. A guard's block is
    also written into the skills as something answered rather than got around,
    in twelve byte-identical copies.
  - **The unattended mode with five checked preconditions**, `build-work:1164`
    to `:1221` — no `empty` class, a gate that genuinely binds on the remote,
    nothing blocked from outside the range, the tool classes granted, and a
    repository that can merge without a person — against the fifteen lines his
    `implement` gives the same subject.
  - **This file.** A dated measurement protocol in which every rule names the
    run that produced it, with a carve-out saying a dated measurement is never
    edited to match a later change. His skills carry their reasons inline or
    not at all.

  **The order of work, and why.**

  1. **The duplication decision first.** It produces the commonest failure
     class in this file — four cases in four days, all of them the same shape —
     and it rests on an unchecked claim about what a delegating skill loads.
     Everything else written while it stands gets written in 24 blocks' worth
     of copies.
  2. **Then the completion conditions.** One measured failure, six conditions
     never read against the two properties, and the pass is text against text
     with no run needed.
  3. **The cut of `build-work` last.** The most expensive of the three, and the
     only one whose gain is still a line count. It also gets cheaper once the
     first two are done: what moves behind a pointer is easier to see when the
     duplication is held and the stage ends are exact.
     Widened to every skill on 17 September 2026; the entry of that date below
     says why.

  **The searches.** By the third rule under "A field is not an answer to a
  question it was not asked", widened on 13 September 2026 to any change to a
  rule or a command. **No site below was changed.** This entry decides nothing;
  the list is what the first build has to work through, and each site carries
  either the co-change it would take or the reason it does not apply.

  **Where duplication is decided:** `grep -rn "path it is written
  on\|byte-identical\|at every route\|every route that\|defined in one
  place\|in one place" skills/*/SKILL.md README.md docs/skill-conventions.md` —
  7 lines.

  - `docs/skill-conventions.md:72` to `:95`, `## A rule holds only on the path
    it is written on`, and `:36` to `:50`, `## Shared words are defined in one
    place` — the decision itself, with the four failures of one day behind it,
    recorded on 20 August 2026 in `d55ea99`; the section itself carries no
    date. **The co-change**, and it is one change: the guard owed with the
    copy, and the note that the delegation route was rejected on an unchecked
    claim.
  - `docs/skill-conventions.md:538` to `:547` — where this rule hands off to
    the checksum, "What this replaces is the search, not the copies". No
    change; it is the sentence the co-change extends, and it already says what
    holds copies together.
  - `docs/skill-conventions.md:620` — "A count lives in one place, and
    everywhere else points at it". Does not apply: it governs numbers that go
    stale, not rules written at several routes, and it already decides the
    other way for its own subject.
  - `cut-into-tasks:194` — the mode said in one place at the end of the file.
    The same words on another subject; no change.
  - `docs/roadmap.md:37`, the delegation rejection, and `:2993` onward, the
    measurement of 23 blocks. Dated records and a status claim: the carve-out
    puts the measurement outside this rule, and `:37` is the claim this entry
    names rather than edits.
  - The three `cksum` commands, `docs/skill-conventions.md:1212`, `:1225`,
    `:1276` — where a ninth guard would land. No change until one is written.

  **Where a stage says it is finished:** `grep -rni "done when\|ends when\|what
  ends it\|is finished when\|until nothing\|the end is" skills/*/SKILL.md
  README.md` — 10 lines, listed item by item under the second finding above,
  with which of them end on a state and which on a judgement. `plan-work:363`
  is the co-change and is already the co-change of the entry above; the other
  six are read, not necessarily changed, and that reading is the work.

  **Where a subagent is told what it may see:** `grep -rn "fresh context\|only
  its own\|and nothing else\|the paths of the control documents"
  skills/*/SKILL.md docs/skill-conventions.md` — 15 lines.

  - `review-changes:226` — "each given only its own lens and the diff". **The
    co-change** for the smells list: a lens that may see nothing else has to be
    handed what it looks for.
  - `build-work:460` to `:461` — what the build subagent gets. Co-change only
    if the standards list moves; today it gets paths, which is the arrangement
    his retro recommends and which this entry records as agreement.
  - `plan-work:521` — a checking agent gets the draft, the hard core and Stage
    2's constraints "and nothing else". No change; it is the shape the lens
    repair copies.
  - `setup-checks:245`, `:660`, `start-work:11`, `:37`, `:111`,
    `review-changes:281`, `untangle-idea:331`, `:561`, `build-work:309`,
    `docs/skill-conventions.md:403`, `:920` — the same phrase on other
    subjects: a column, a command, a label, a glossary, a shell call, a plugin
    boundary, a field's meaning. None applies.

  **Where the set builds one task at a time:** `grep -rn "one at a time\|One
  build task at a time" skills/*/SKILL.md docs/skill-conventions.md` — 7 lines.
  `docs/skill-conventions.md:757` is the rule and **the co-change**, if the
  worktree experiment is ever run; it already names the experiment and says its
  evidence is missing. `cut-into-tasks:269` — "vertical, demonstrable, one at a
  time, real blockers" — is about how a task is cut, not how many run; no
  change. `diagnose-bug:238` and `:247`, `setup-project:325` and `:331`,
  `untangle-idea:417` — elimination, permission grants, ticket graduation. The
  same words on other subjects.

  **Where the cut is decided without the user:** `grep -rn "do not ask whether
  the cut\|not the user's to judge\|presented and created\|follows from the
  spec" skills/*/SKILL.md README.md docs/skill-conventions.md` — 4 lines.
  `cut-into-tasks:268`, `plan-work:626` to `:627`, `README.md:81` — all three
  **co-change together** if the divergence is ever written down, and the place
  it goes is `docs/skill-conventions.md:431`, "Where it is adapted, say why",
  which is the fourth site and takes no change itself.

  **Where a check that cannot fail is named:** `grep -rn "cannot fail\|pass
  whatever\|nothing to break\|cannot be broken" skills/*/SKILL.md` — 5 lines.
  `cut-into-tasks:229` and `:232`, `build-work:592`, `review-changes:272` — the
  condition that leaves nothing to break, the missing exit, the finding a lens
  reports. No change; they are the neighbourhood the tautological test belongs
  in and none of them reaches it. `review-changes:167`, under the Spec lens, is
  **the co-change**: "tests that would pass whatever the code did" is the
  nearest sentence in the set, and the mechanism belongs beside it or in the
  Test quality list that does not exist yet.

  **Where a lesson is routed:** `grep -rn "standards.md" skills/*/SKILL.md` — 6
  lines. `record-lessons:115`, the destination, and `:4`, the lock — both named
  in the entry above and unchanged here. `review-changes:37` and `:151`, the
  review reading the file, which is the arrangement his retro argues for; no
  change. `diagnose-bug:132` — the file named among what says what the words of
  this project mean; no change, it reads and does not write.
  `setup-project:710` and `:737`, the file's creation at setup; no change, and
  `build-work` returns nothing for this search, which is the agreement rather
  than a gap.

  **What no search reaches**, and is therefore named from reading: his
  repository is not on this machine, so every statement above about his files
  is a reading of one day, 14 September 2026, at `main`, with no commit
  recorded. `docs/skill-conventions.md:421` gives the clone command that would
  pin it, and the first build under this entry should run it and record the
  commit — a comparison against a moving branch is the same defect as a claim
  about a platform from recollection, one subject over.
  Recorded, not built.

- **Text inserted into a skill at load, measured on 17 September 2026 in eight
  runs against a throwaway plugin, and it divides into four findings and one
  open line.** The runs are the user's, on their machine, and cannot be
  repeated from here; the throwaway repository is deleted, so the probe is
  described in full and this entry has to be followable from it alone. Claude
  Code 2.1.274 on macOS, shell zsh. Every run was a new session, started with
  `claude --permission-mode auto` or `claude --permission-mode manual` in an
  empty working directory.

  **The probe.** A throwaway plugin `probe` in a throwaway marketplace
  `skill-probe` on GitHub, source `./` as in devloop's own marketplace,
  installed with scope `local`; the installed copy stood under
  `~/.claude/plugins/cache/skill-probe/probe/<version>/`. A marketplace in a
  local folder was ruled out: by `code.claude.com/docs/en/plugins-reference`,
  read the same day, a plugin given by a relative path from such a marketplace
  loads in place rather than out of the cache. One shared file,
  `shared/marker.md`, two lines: `Kennung: ` followed by 16 random hexadecimal
  characters, and `Zeichen: X=$(printf '%s' "id") 'm($id:ID!){a(b:{c:$id}){d}}'
  -f id="$X"`, the character classes of the arming command the skills carry.
  Three skills show the marker and share one task: write the two lines under
  `## Marker` character for character into `result-$0.txt` with the Write
  tool, use no other tool, and write `MISSING` if the lines are absent. Two
  more load one of those three, and one program serves them.

  - `show-marker` (0.1.0): frontmatter
    `allowed-tools: Bash(cat ${CLAUDE_PLUGIN_ROOT}/shared/*)`, and under
    `## Marker` the line `` !`cat ${CLAUDE_PLUGIN_ROOT}/shared/marker.md` ``.
  - `bin/probe-text` (0.2.0): a POSIX sh program. It refuses a name outside
    lower-case letters, digits and hyphen with exit 2, and otherwise prints the
    file with `exec cat "$(dirname "$0")/../shared/$1.md"`.
  - `show-marker-path` (0.2.0):
    `allowed-tools: Bash(${CLAUDE_PLUGIN_ROOT}/bin/probe-text *)`, line
    `` !`${CLAUDE_PLUGIN_ROOT}/bin/probe-text marker` ``.
  - `show-marker-bare` (0.2.0): `allowed-tools: Bash(probe-text *)`, line
    `` !`probe-text marker` ``.
  - `load-marker-skill` and `load-marker-in-subagent` (0.2.0, both
    `disable-model-invocation: true`): the first has the model load the skill
    `probe:$0` with the argument `$1` through the Skill tool; the second has it
    start exactly one subagent through the Agent tool to do that.

  **The criterion, fixed before the runs and written down outside this
  repository.** "Inserted" means the identifier value — the 16 hexadecimal
  characters — stands in the text Claude Code delivers as the skill, and no
  call of the model targets the shared file or the program. By the timestamps
  of the user's expectation file: the criterion stands there since 17
  September 2026, 08:54 CEST, before run 5, and was extended at 09:06, before
  run 9, so that text in the result of the Skill call counts too. For run 1
  the reading was fixed before the log was read, for run 4 before the run. The
  expectation for each run was written before it: 08:30 before run 1, 08:54
  before run 5, 09:00 before run 7, 09:06 before run 9.

  **How it was read.** The session log is the JSONL file under
  `~/.claude/projects/<working directory>/`; Anthropic names the place in the
  Agent SDK documentation under "Persist sessions to external storage", and
  the line format is not documented. Read as JSON: a call of the model is a
  content block of type `tool_use`, and every tool result is matched to its
  call by `tool_use_id`. The identifier value was searched by its form, not by
  the label `Kennung:`, because the label stands in the task text too. The
  result file was compared with `grep -cFx -f <marker.md> <result file>`,
  which answered `2` in every run that wrote one.

  | Run | Inserted how | Loaded how | Mode | Result |
  |---|---|---|---|---|
  | 1 | `cat` | typed | auto | not inserted |
  | 4 | `cat` | typed | manual | load aborted |
  | 5 | program by path | typed | manual | inserted |
  | 6 | program as bare command | typed | manual | inserted |
  | 7 | program by path | typed | auto | inserted |
  | 8 | program as bare command | typed | auto | inserted |
  | 9 | program by path | through `load-marker-skill` | auto | inserted |
  | 10 | program by path | through `load-marker-in-subagent` | auto | inserted |

  - **Run 1.** Where the line stood, the loaded skill read ``[run this first,
    exactly as written, and use its output: `cat
    /Users/…/.claude/plugins/cache/skill-probe/probe/0.1.0/shared/marker.md`]``.
    The identifier value was not in the loaded text. The model called `Bash`
    with that `cat` (log line 28) and wrote the file from its result; the
    window showed for that call only "Read 1 file". `${CLAUDE_PLUGIN_ROOT}`
    had been replaced by the path in the cache, `$0` by `run1`. The first
    attempt at this run ended with "Login expired" before the model did
    anything; after `/login` it went on.
  - **Run 4.** The load aborted. The message, verbatim: ``Shell command
    permission check failed for pattern "!`cat
    /Users/…/.claude/plugins/cache/skill-probe/probe/0.1.0/shared/marker.md`":
    cat in
    '/Users/…/.claude/plugins/cache/skill-probe/probe/0.1.0/shared/marker.md'
    was blocked. For security, Claude Code may only concatenate files from the
    allowed working directories for this session:
    '/Users/…/skill-probe-lauf'.``
  - **Runs 5 to 8.** The model's only call was Write, and no prompt about the
    inserted command. The log carried in each an entry of type `attachment`
    with `"type":"command_permissions"` and the rule: in 5 and 7 with the path
    in the cache substituted in, in 6 and 8 as `Bash(probe-text *)`.
  - **Run 9.** The model's calls were Skill (`probe:show-marker-path`) and
    Write. The identifier value stood in the loaded text after the Skill call.
    Directly under the load the window read "Allowed by auto mode classifier";
    which call that applied to is not established.
  - **Run 10.** The main log holds only the Agent call. The subagent wrote its
    own log under `<session>/subagents/agent-<id>.jsonl`, and in it Skill, the
    identifier value in the loaded text, Write and `SubagentHandback`.
  - **Runs 2 and 3**, `cat` through the Skill tool and through a subagent, did
    not run.
  - **Against the expectation written beforehand:** run 1 differed (expected:
    inserted), run 4 differed (expected: no abort), run 10 had
    `SubagentHandback` in addition, which touches no file. Runs 5 to 9 went as
    expected.

  **Vendor sources, read on 17 September 2026.**

  - `code.claude.com/docs/en/skills`, "Inject dynamic context": the command
    runs before the model sees the skill and its output replaces the line; a
    command that fails aborts the load; outside auto mode a command that is
    not permitted aborts the load, and in auto mode the skill loads instead
    with the instruction to run the command first; with
    `disableSkillShellExecution` the line reads `[shell command execution
    disabled by policy]` in place of the output. "Available string
    substitutions": `${CLAUDE_PLUGIN_ROOT}` is substituted in plugin skills, in
    the Bash rules of `allowed-tools` too, and expressly for files the skills
    of one plugin share; the same variable in both places lets a bundled
    script run without a prompt. "Skill content lifecycle": after a compaction
    Claude Code re-attaches every loaded skill with its first 5,000 tokens;
    all of them together share 25,000, filled from the most recently loaded,
    and older ones drop out entirely.
  - `code.claude.com/docs/en/plugins-reference`, directory layout: programs in
    a plugin's `bin/` directory go onto the PATH and can be called in the Bash
    tool as a bare command.
  - `code.claude.com/docs/en/tools-reference`, "Output limits": a valid output
    arrives complete up to about 30,000 characters.
  - `code.claude.com/docs/en/sub-agents`, "Available tools": background
    subagents keep Bash, Skill and Write among others, plus
    `SubagentHandback`.

  **1. A file in the plugin read with `cat` is never inserted at load.**
  Outside auto mode the load aborts, run 4. In auto mode the model fetches the
  text itself and nothing shows it: the loaded skill carries an instruction in
  place of the output, the model obeys it, and the window shows a read of one
  file, run 1. In neither mode does the text arrive as part of the skill.
  *Should:* shared text is never inserted by `cat` on a path inside the
  plugin.

  **2. A program bundled in the plugin, with the matching rule in
  `allowed-tools`, is inserted at load in both modes and on all three routes
  measured** — typed, through the Skill tool and through a subagent: runs 5
  to 10, the identifier in the loaded text every time, the model's only call
  Write, no prompt. *Should:* this is the route for text that has to stand in
  several skills. Open: the bare-command form, `Bash(probe-text *)`, is
  measured typed only, runs 6 and 8, and not through Skill or a subagent; and
  `disableSkillShellExecution` is not measured at all.

  **3. Two decisions stand on a ground that has gone.** Neither is changed
  here; each carries a note of this date at its own place, and both are
  decided again in the rebuild.

  - `## Named, not built as skills` above, the bullet on `interview`,
    `define-terms` and `clarify-idea`: written out in `plan-work` and
    `untangle-idea` because "a skill which only delegates loads half its
    dependencies and guesses at the rest". The entry of 14 September 2026
    above already records that as an unchecked claim. What this measurement
    adds is that the claim no longer decides the copies question: on the route
    measured here no model loads anything, because the text is in the skill
    before the model sees it. **The claim itself remains unmeasured.** Runs 9
    and 10 loaded one skill with exactly one dependency through the Skill
    tool, to see whether the insertion survives that route; a claim about
    "half its dependencies" needs a skill with several, and none was run. The
    same sentence stands in `skills/untangle-idea/SKILL.md:278` to `:281`,
    unchanged here.
  - `docs/skill-conventions.md:540` to `:550`, the paragraph that names the
    checksum as what byte-identical copies cost. With one source inserted into
    every skill at load there are no copies to hold together, so that cost
    falls away with them. The rule it hands off to, "A rule holds only on the
    path it is written on", is not touched: it is about routes, within a file
    and between files, and inserted text stands on every route at run time.
    The three `cksum` checks under `## Before a handover, run these` hold
    until the rebuild.

  **4. What survives a compaction is written down nowhere in this set, and the
  vendor says what it is.** `grep -rni 'compact' skills/ docs/ README.md | wc
  -l` at `055c861` answers `0`. Against that stand the first 5,000 tokens of
  each loaded skill and 25,000 in all, from the skills page above. Measured at
  `055c861`, each figure copied out of its command's output:

  - `## How to ask` in `plan-work`, one of the blocks that would move to a
    single source: `awk '/^## How to ask/,/^## [^H]/' skills/plan-work/SKILL.md
    | sed '$d' | wc -c` — `4084`, under the 30,000-character output limit
    above.
  - `build-work`: `wc -c skills/build-work/SKILL.md` — `85770`;
    `grep -c '' skills/build-work/SKILL.md` — `1359`; `wc -m` over the same
    file — `85328`. `grep -n '^## ' skills/build-work/SKILL.md` lists
    `## Unattended mode` at `:1155`, the last of the file's sections. The text
    before it: `head -n 1154 skills/build-work/SKILL.md | wc -c` — `72103`,
    and `wc -m` over the same lines — `71725`.
  - The vendor's approximation, read on 17 September 2026: the glossary at
    `docs.anthropic.com/en/docs/resources/glossary`, under "Tokens", gives
    about 3.5 English characters per token for Claude, varying by language;
    the token-counting page at
    `platform.claude.com/docs/en/build-with-claude/token-counting` says models
    from Claude 4.7 on produce about 30 percent more tokens for the same text.
    By that approximation the text before `## Unattended mode` alone is on
    the order of 20,000 tokens, `71725 / 3.5`, and more on the newer models,
    so the section stands far beyond the first 5,000. **No exact count was
    taken**; the approximation is what is used here and nothing finer.

  *Should:* what a run needs after a compaction reaches it again. Part of the
  reason and not a measurement — no run here was compacted — is what the
  approximation implies for the unattended mode: after a compaction a build
  under `build-work` has the head of the file back and not the section that
  describes the mode it is in, and nobody is there to load it again. **The
  user's decision on 17 September 2026:** every skill is read against the
  post-compaction limit and split into several where it has to be. Point 3 of
  "The order of work, and why" in the entry of 14 September 2026 thereby holds
  for every skill and not for `build-work` alone, and its gain is no longer
  only a line count, since a vendor source stands behind it. What it still
  does not have is the measurement that entry names — a run reaching a late
  step and asked what it holds — which is about a run without a compaction
  and is not answered here.

  **Open.** The line "Allowed by auto mode classifier" in the window of run 9,
  directly under the load: whether it applied to the Skill call, to the
  inserted command or to the Write is not in the log and not established.

  **What was measured and what was not**, so that this is not read wider than
  it is. Measured: Anthropic's insertion at load, in the three forms and two
  modes above. Not measured: the route by which a skill loads other skills,
  which is what the delegation claim is about; the bare-command form beyond
  typed; the policy switch; a compaction. The checksum checks stay as they are
  until the rebuild, and the rebuild — the copies moved onto inserted text —
  is its own step with its own design, not begun here.
  Recorded, not built.

- **Text inserted into a skill at load, measured once more on 18 September
  2026 against the installed copy of this plugin after the move, in one run:
  ten insert lines on ten files, every one inserted, and leading whitespace
  kept.** Claude Code 2.1.274, model Sonnet 5, auto mode, an empty directory
  with no git repository, the installed copy 0.102.0 equal to `main`.
  `build-work` was loaded typed and interrupted straight away. It carries ten
  insert lines on ten files, and the first line of each of those files stands
  in the loaded text. No abort, no prompt, and no line `run this first,
  exactly as written` anywhere in the log. The model's only call was `ls -la
  && git status`.

  **The move itself was checked in the pull request that carried it, `ca0ff3a`
  (#123), and read again on 19 September 2026 at that commit:** every skill
  expanded with `scripts/devloop-expand` and diffed against the same file at
  `f613901`, the state before the move. What differs is the `allowed-tools`
  line in the frontmatter and the notice above the first insert line, in all
  twelve, and two sentences that described the old copies: `build-work` on the
  arming command standing in five places, now in three, and `untangle-idea` on
  why the interview is written out rather than delegated. `diff | grep -c
  '^[<>]'` over the twelve expanded files against `f613901`: `10` in ten of
  them, `17` in `build-work`, `14` in `untangle-idea`, `131` in all. No rule
  moved with the text.

  **This also measures what the entry above did not:** inserted text keeps its
  leading whitespace. `shared/arming-command.md` carries four spaces at the
  start of its lines, and exactly that line stands, with its four spaces, in
  the loaded text.

  *Should:* a shared text carries its own indentation; the insert line stands
  at the start of the line.
  Recorded, not built.

- **The rule against saying a skill's name did not hold where a skill could
  not work, measured on 18 September 2026 in three runs, and the move onto
  inserted text is not the cause.** Claude Code 2.1.274, model Sonnet 5, auto
  mode, an empty directory with no git repository; in each run
  `/devloop:build-work` was typed and interrupted at once.

  - **Run A, plugin 0.102.0.** Ten insert lines on ten files, every one in the
    loaded text, no abort, no prompt, no line `run this first, exactly as
    written`, the model's only call `ls -la && git status`. The reply named
    `build-work` and `setup-project`.
  - **Run B, plugin 0.103.0.** Nineteen insert lines on nineteen files, all
    there, no fallback route, one call by the model. Measured in addition: the
    rule against skill names stood in the loaded text. The reply named
    `build-work` and `setup-project` all the same.
  - **Run C, the state before the move.** Commit `f613901` installed beside it
    as its own plugin, `devloop-old@jayjay-old`, in the same directory with the
    same model, and removed after the run. There the sentence stands written in
    the file, not inserted. The reply named `devloop:setup-project`, prefix
    included, a name the user had not typed.

  **What follows.** The move onto inserted text is not the cause: the rule was
  in the loaded text in run B and written in the file in run C, and it held in
  neither. It did not hold in this situation, and it had never been measured
  in it. The situation is its own: the skill cannot work, and the reply is not
  a narration of what happens next but a question back, what the user wants
  instead — and in run C the run introduced the second name itself.

  *Should:* the rule carries this situation expressly, rather than an
  exception for typed names. Where a skill cannot work, what is missing and
  what could be done instead are said in ordinary words, without a skill's
  name. The rule is rewritten, not extended: it describes what is said and
  prescribes no wording. `shared/skill-name.md` and the same wording under
  "Every skill carries these two" in `docs/skill-conventions.md` carry it.
  Built on 18 September 2026 in `0c8f10f` (#125).

  **Run D, the same day, plugin 0.104.0, against that rewrite.** The same
  setup — Claude Code 2.1.274, model Sonnet 5, auto mode, an empty directory
  with no git repository, `/devloop:build-work` typed — and measured on the
  session log. The block from `shared/skill-name.md` stood complete in the
  loaded text, word for word with whitespace collapsed. The reply held the
  part that has its own bold lead-in, "That holds where the run cannot go
  on": the alternative came without a name, described by what it does —
  setting this repository up — and with no command to type. It did not hold
  the sentence that stands mid-paragraph, behind the measurement and without
  a lead-in of its own: the reply said the typed name back, "build-work
  cannot run here".

  *Should:* the block is regrouped, not extended. Each rule stands under its
  own bold lead-in — the rule, the case where the run cannot go on, the typed
  name that is not said back — the two things that are not saying a name and
  the path case each stand set off, and the measurement stands last, behind
  the rules. Nothing is added and nothing falls out; `shared/skill-name.md`
  and the same wording in `docs/skill-conventions.md` carry it as the third
  wording of the day. Regrouped on 18 September 2026 in `929dabe` (#126).

  **Run E, 19 September 2026, plugin 0.105.0, against the regrouping.** The
  same setup — Claude Code 2.1.274, model Sonnet 5, auto mode, the same empty
  directory with no git repository as runs A to D, the installed copy equal to
  `main` in the five directories the pre-edit check compares — and
  `/devloop:build-work` typed. The reply named no stage: not "build-work
  cannot run here" but, in substance, "I cannot build anything here", and the
  alternative stood as the setup routine for this repository, described by
  what it does. No command to type; instead the question whether the run
  should start it. The plugin's name occurred — "the project setup for
  devloop" — which the rule allows.

  What this settles: the part of the rule with its own bold lead-in held in
  run D already; the sentence that stood mid-paragraph did not; regrouped so
  that it too opens its own paragraph, it holds. A rule that is to hold gets
  its own opening, not a place inside another rule's paragraph.

- **The plan is written, on 19 September 2026, and the aim in `README.md`
  moves with it.** `docs/plan.md` carries the aim — from an idea to an
  application or tool that runs on this machine — where the set ends, five
  sentences on how the work is done, and the milestones in order, each with
  its kind, its end and the conventions it meets; what is open stands there
  as open. This file stays the measurement record and
  `docs/skill-conventions.md` the rules; the plan holds neither. The entry
  above, "The aim is idea to a running application; this gets to merged
  code", is what the plan answers, and it is not rewritten.

  **What became of "The order of work, and why" in the entry of 14 September
  2026.** Its first point, the duplication decision, was built on 18 September
  2026 in `ca0ff3a` (#123) and `d713819` (#124): text standing byte-identical
  in several skills stands once under `shared/` and is inserted at load, and
  the places that said one thing in several wordings were settled on one
  wording each. That entry still ends "Recorded, not built" and is not
  edited, by the carve-out for dated entries. Its second point, the completion
  conditions, is the plan's sixth milestone, the completion conditions, with
  the grilling mechanism — the first of that entry's seven — as Stage 1's
  end. Its third point, the cut of `build-work`, widened to every skill on 17
  September 2026, is the ninth, the compaction, after the road to running is
  built, so that the split goes once over the final text. The counter-check
  the entry owes before any of the seven is built is the tenth, the six
  remaining mechanisms.

  **Measured on 19 September 2026, against `hooks/pre-tool-use-install-guard.sh`
  at `929dabe` in the working tree, fed its JSON directly with a scratch
  project directory carrying `docs/agents/`:** `npx playwright install` exit
  0, `npm install -D playwright` exit 0, `brew install node` exit 2,
  `go install golang.org/x/tools@latest` exit 2. The first two pass, and the
  first is a download that lands outside the repository — the wrapper case
  the entry above, "The install guard does not see a wrapper that downloads
  on first use", records as left alone on purpose. Where what it downloads
  lands was not read from the vendor. The plan's third milestone, the informed
  permission to install, covers it expressly. Recorded, not built.

  **Read the same day off the platform, through the contents API:**
  `docs/agents/environment.md` carries `<!-- devloop: 0.100.0 -->` in
  `devloop-test-o`, 0.50.0 in `devloop-test-j` and 0.81.0 in
  `devloop-test-m`, against 0.105.0 installed and equal to `main` at
  `929dabe` — the check under "Before you change anything, run this" was
  silent before anything here was changed. Every bench is refreshed before a
  run on it.

  **Read the same day off the harness, and not measured:** the description of
  the Bash tool, as a session receives it, says of its background option that
  it "runs the command detached: it keeps running across turns and re-invokes
  you when it exits". Whether that holds for a process a devloop run starts is
  the fourth milestone's to measure; nothing here has.

- **The conventions read against their cases, on 19 September 2026.**
  Milestone 2 of `docs/plan.md`, a text milestone: no run, and no skill,
  shared file, hook, check or version changed. The head of
  `docs/skill-conventions.md` now says what holds a convention up — its case —
  and what happens where the case stops holding: read first, re-evaluated,
  rewritten or dropped with every site named, never gone around. Three
  rewritten, each on its case:

  - "Works with nothing else installed" — on a second plugin's hooks running
    alongside every test for a day unnoticed. It now covers the skills and
    hooks of another plugin and says it does not cover tools: what the project
    declares is the project's and lands inside the repository; what lands
    outside lands there under the person's explicit permission only, asked
    once at setup and recorded, with the project's declaration shown at the
    question and not standing in for it. **That case has no dated entry in
    this file.** It stands only in the convention's own text, and a reader
    checking the rewrite against its case later has that sentence and nothing
    else.
  - The sentence under "The install guard matches the outcome as well as the
    verb" that nothing lands outside the repository without the user running
    it — on the same case and on the module path that was an organisation's
    name, 6 September 2026 above. Now written on the permission, not on who
    runs the command; the backing and the reading of the result stay, and that
    entry is covered as before.
  - "No other skill runs either of them, so locking them costs nothing" under
    "Who may invoke a skill" — on the two entries above that falsified it for
    `record-lessons`: the same failure picture three times out of the review,
    11 to 13 September 2026, and the standards file empty after two dozen pull
    requests, 14 September 2026; and on the line in the entry on Pocock's set
    that `record-lessons` has never run. The lock on `start-work` costs
    nothing, read off the pre-handover check; the lock on `record-lessons`
    stays with its price beside it, and milestone 5, what goes wrong with
    nobody reading, answers it.

  Marked, not rewritten: the delegation claim under "Named, not built as
  skills" above, as the measurement milestone 9 owes before it splits a skill;
  "Writing long files", as a case not seen since the editing tool exists and
  kept because obeying it costs nothing. The sites, searched by subject over
  `skills/`, `hooks/`, `docs/`, `README.md`, `shared/`, `bin/` and `scripts/`,
  stand below, each with what happened there. The searches were run on 19
  September 2026 at `8196ebf`, after the change, and the list is that reading;
  the change that carried the rewrite named no list. Those in skills, shared
  files and hooks were not touched, being milestone 3's and 5's.
  `docs/plan.md` moved in one place, "What lands on the machine" under "Where
  the set ends", which had read a tool the project declares as one the run may
  install and now reads as the convention does.

  - **"Works with nothing else installed."** `grep -rn -i "nothing else
    installed\|another plugin\|other plugin\|second plugin\|plugin's
    hooks\|plugin's skills"` over the seven — 13 lines, all in `docs/`.
    `docs/skill-conventions.md`, the section: rewritten. The same file under
    "The install guard matches the outcome as well as the verb", the clause "in
    the form 'Works with nothing else installed' gives it": rewritten with it.
    `docs/plan.md`, milestone 2 and milestone 8, "as milestone 2 rewrites it":
    no change, the plan names the rewrite. This entry. No skill, shared file,
    hook, program or script names another plugin, and `README.md` names other
    plugins only as origin under "Credit": nothing stands on it there.
  - **The sentence on who runs an install.** `grep -rn -i "outside the
    repository\|user's machine\|their machine\|theirs to run\|the person
    runs\|the user runs\|system-wide\|install"` over the seven — 117 lines,
    most of them the plugin's own installation in `README.md`, the
    installed-copy check, the guard's own matching, and installs as another
    subject: a skill not installed, groundwork that installs, what to pull
    locally. The ones standing on who runs an install:
    `skills/build-work/SKILL.md` step 3 point 7, the install handed over, and
    the decline path under it: milestone 3's, untouched.
    `skills/setup-checks/SKILL.md` step 2, what filling a class would put on
    their machine, step 3, never install anything system-wide without asking,
    "With nobody there", the declined install for a class, and "A guard's
    block is not a decline": milestone 3's, untouched.
    `skills/setup-project/SKILL.md` step 4 question 3, the same rule at setup,
    "A guard's block is not a decline", and "Permissions, before the first
    command", which says the install commands are not known at setup:
    milestone 3's, untouched. `hooks/pre-tool-use-install-guard.sh`,
    the message: milestone 3's, untouched. `hooks/hooks.json`, naming the
    guard: no change. `shared/backed-command.md`, the backing and the reading
    of the result: no change, the rewrite keeps both.
    `shared/body-through-file.md`, a declined install line into a body: no
    change, about the channel. `shared/guard-block-intro.md`: no change, about
    reading a block. `docs/skill-conventions.md`, the sentence itself and
    "Works with nothing else installed": rewritten; "A command handed over is
    backed",
    "Narrowing what a guard ever sees" and "A guard is answered, not got
    around": no change, they are about backing and about the guard's reach;
    "Tool classes can be pre-approved per project": no change now, it gains
    the install class under milestone 3. `docs/plan.md`, "What lands on the
    machine": changed with it; milestone 3 and the open items: no change, they
    are what changes the rest. `docs/roadmap.md`, the entry of 6 September
    2026 on the unbacked install, the entry on the wrapper the guard does not
    see, and the measurement above: dated records. `README.md`: no sentence on
    who runs an install; its hooks paragraph under "The check suite" named
    neither guard, which the change carrying this list repairs.
  - **"Locking them costs nothing."** `grep -rn -i
    "disable-model-invocation\|\block\b\|\blocked\b\|user-invoked\|model-invocable\|nothing
    calls it\|other skill runs\|typed command\|only command you ever type"`
    over the seven, piped through `grep -v -i 'blocked\|unblock'` — 49 lines.
    `skills/start-work/SKILL.md:4` and `skills/record-lessons/SKILL.md:4`, the
    locks: the first stays and its cost is read off the check, the second is
    milestone 5's. `README.md` under "What you type", the only command ever
    typed: no change, it promises the main path, which `start-work`'s lock
    is; `record-lessons` stands outside that path. `docs/skill-conventions.md`,
    "Who may invoke a skill": rewritten; the two checks under "Before a
    handover, run these" on invocability and on locked skills' callers: no
    change, the second is what `start-work`'s cost is read off. `docs/plan.md`,
    milestone 2 and milestone 5: no change, the plan names them.
    `docs/roadmap.md`, "Named, not built as skills" on that check printing one
    line: no change, it agrees; the entries of 13 and 14 September 2026 and
    the comparison with Pocock's set: dated records.
    `skills/untangle-idea/SKILL.md:31`, "to lock before planning starts":
    another subject. No shared file, hook, program or script names a lock.

  The seventeen checks under "Before a handover, run these" were run on 19
  September 2026 at `8196ebf`, after the change, and each printed what its
  explanation says. Of the files they read, the change touched only this one
  and `docs/skill-conventions.md`, whose copy of the arming command they
  compare.

- **The stock-take of what is built, closed on 23 September 2026.** Milestone 1
  of `docs/plan.md`, a measurement milestone, run in ten orders from 21 to 23
  September 2026 on pull request #131. What was built is not the roadmap entry
  with a table in it that the plan of 19 September described. It is a table,
  `docs/stock-take.tsv`, that holds facts only — per thing its kind, the line it
  stands on and the line that carries its evidence, each as a file and a
  verbatim substring of one line; per run its date, the version or commit it ran
  and the line of this file that records it; and for every line of the search
  set that is not a thing the reason it is not — and a tool,
  `scripts/devloop-stock-take`, whose header holds the rules and which computes
  the state of every thing on every run from the records and the git history,
  one of four: undetermined, where the evidence is empty; recorded and not
  built, where it lies under `docs/` or in `README.md`; built and never walked,
  where it lies under a shipped directory or one of the two check headings and
  no run counts; walked, where a run counts, which is a run whose version
  already contains the last change to every line the thing stands on. No state
  is written down anywhere, because a stored state is an asserted state. The
  search set — every line under `skills/`, `shared/`, `hooks/`, `bin/` and
  `scripts/` that carries a condition word, a heading, a numbered item, a list
  head or a table row; every command block under the two check headings of
  `docs/skill-conventions.md`; every entry head and status line under this
  heading; every row under "Named, not built as skills" — is what makes the
  table checkable for completeness: a line of it that no record covers is
  reported, so a line nobody read is seen rather than missed.

  The table at the close, counted with `awk -F'\t' 'NR>1{c[$1]++} END{for(k in
  c) print c[k], k}' docs/stock-take.tsv`: 1159 things, 172 runs, 858 records of
  lines that are not a thing, and no finding left in it. That first figure stood
  as 1084 for one commit, typed from the order's brief, which counted the things
  before the seventy-five findings became things; the command prints 1159, and
  the figure was corrected off its output — the case "A figure taken from a
  command is copied out of that command's output" is written for, met at the
  close of the milestone that quotes it. The tool, run over the whole table on
  23 September 2026 at 0.106.0 on the tree this change commits: 0 broken
  records, 0 of 1722 lines of the search set uncovered, exit 0. The things by
  state and kind are the tool's output under "COUNTS per state and kind" and are
  not repeated here: a count lives in one place, and for a state that place is
  computed. Milestone 5 takes its list from that output, and `docs/plan.md`,
  section 1, now describes this shape instead of the one it planned.

  The self-test of the tool, `scripts/devloop-stock-take --self-test`, ran on 23
  September 2026 at 0.106.0 in this repository, exit 0, and its last line read
  `SELF-TEST PASSED: 46 cases, every red outcome once, every green counterpart
  once`. Every outcome of the tool that a case of the self-test produces, 45 of
  88, carries a run of that date on the line above that names the version. The
  43 that no case produces carry none: they are built and never walked on
  purpose, and 36 of them stand below as findings, each asking for its case. The
  other seven are the report itself, the three exit codes, the two forms of the
  command line and the information line copy detection adds; the report, exit 0
  and the passed self-test are produced by the two runs this entry records and
  carry no run record all the same, because the order that closed the milestone
  gave runs to the cased outcomes only.

  What the reading found, seventy-five findings, each recorded in the table by
  the order that read the file and moved here at the close, where it is a defect
  of this set like every other entry's: what is wrong, what should hold instead,
  and the file and the line it concerns. Where an entry of this file already
  named the same defect, the finding was not recorded a second time, and it
  stands there. Thirty-three stand in skills, one in a check under "Before a
  handover, run these", two in dates of this file, and thirty-nine in the tool:
  thirty-six outcomes and exit codes that no case of the self-test produces, one
  run dropped from the output in silence, and the two lines of its header that
  still counted nine orders. Every one but those two is recorded and not built,
  and its evidence is the line of its bullet that says so; the two header lines
  are repaired in this same change, and the evidence of each is the repaired
  line, so the tool reads them built and never walked.

  The seventeen checks under "Before a handover, run these" were run on 23
  September 2026 at 0.106.0, after the change, which touches nothing under
  `skills/`, `shared/`, `hooks/` or `bin/`. Sixteen printed what their
  explanations say: the two registration lists empty; the two locks at 1 and the
  ten other skills at 0; one locked reference, `start-work` from `build-work`;
  twelve openings, eleven before any heading and `start-work`'s under its
  talking section; one checksum and the count 12; 2 and 2 for the arming
  command's copies; fifteen offers, none of them changed here; seven handover
  lines over six sites; the two second statements; and silence from the seven
  that are silent when green. The check on names in this file printed 130 lines,
  one more than before this entry — the `-` a bullet below quotes — and cannot
  be silent, which is one of the bullets below.

  - `skills/build-work/SKILL.md`, under "Step 6 — Merge it", at "Start condition
    6 makes the". Recorded, not built: "Start condition 6" while the section
    names five conditions and every route into it reads all five — should: Start
    condition 5.
  - `skills/build-work/SKILL.md`, under "A guard's block, with nobody there", at
    "step 3, and a refused arming in step 6 — and it gets the same answer.".
    Recorded, not built: the guard's block is said to get the same answer as a
    refused arming in step 6, but the block raises an issue and takes the next
    task while a refused arming ends the run and deletes the mark (step 6,
    unattended paragraph; "this ends the run, where the local twin does not") —
    should: name the turn-end hook as the twin and the refused arming as the
    shape only, or say the answers differ.
  - `skills/build-work/SKILL.md`, under "When the turn-end hook hands the
    problem over", at "6, and it gets the same answer". Recorded, not built: the
    turn-end hook's unattended answer is said to be the same as a refused
    arming's, which stops the run instead of raising an issue and taking the
    next task — should: same shape, different answer; or name only the guard's
    block as the twin.
  - `skills/build-work/SKILL.md`, under "Build the open tasks", at "running
    without stopping. Two of these steps". Recorded, not built: "Two of these
    steps end by asking the user something", while handovers stand in steps 1,
    3, 5 and 6 — should: name the steps that ask, or drop the count.
  - `skills/build-work/SKILL.md`, under "Step 1 — Check the base", at "usually
    the local branch has commits the". Recorded, not built: the diverged base is
    handed to the user and no line says what a run with nobody there does —
    should: a sentence for the unattended case, here or under "With nobody
    there".
  - `skills/build-work/SKILL.md`, under "Step 1 — Check the base", at "let the
    user choose how to clear it". Recorded, not built: the red base is put to
    the user as a choice of three and no line says what a run with nobody there
    does — should: a sentence for the unattended case, here or under "With
    nobody there".
  - `skills/build-work/SKILL.md`, under "Step 3 — Build it", at "runtime, a tool
    from a package manager. That is the user's to run". Recorded, not built: the
    install is handed to the user and no line says what a run with nobody there
    does; the decline paragraph needs a person — should: a sentence for the
    unattended case, here or under "With nobody there".
  - `skills/build-work/SKILL.md`, under "Step 6 — Merge it", at "and say what it
    would take: the merge landed". Recorded, not built: a failed fast-forward
    stops and hands over, and no line says what a run with nobody there does —
    should: a sentence for the unattended case, here or in the unattended
    section.
  - `skills/setup-checks/SKILL.md`, under "Step 8 — Offer the unattended mode",
    at "as, and whether auto-merge is on (`gh api repos/OWNER/REPO -q".
    Recorded, not built: auto-merge is read and the early exit two sentences
    down does not depend on it: a binding gate with auto-merge off is said to
    make the mode available, while precondition 5 in build-work needs auto-merge
    on as well, and the yes path that switches it on is skipped — should: the
    early exit needs auto-merge on too, or switches it on there.
  - `skills/setup-checks/SKILL.md`, under "With nobody there", at "From a build
    that had an install declined for a check class, which records the".
    Recorded, not built: the first route with nobody there needs a person to
    decline the install; build-work step 3 point 7 hands the install to the user
    and states no outcome with nobody there, and its guard's block raises an
    issue instead of calling this skill — should: name a route that exists with
    nobody there, or say this route is attended.
  - `skills/setup-checks/SKILL.md`, under "With nobody there", at "it stands in
    a first setup, with them present.". Recorded, not built: the offer is said
    to stand in a first setup, while the single-class route skips step 7 only
    and step 8 applies there unchanged, so with the user there a build that had
    a class skipped can meet the offer — should: skip step 8 on the single-class
    route as well, or say the offer applies there.
  - `skills/setup-checks/SKILL.md`, under "Step 7 — Land the check suite on the
    main branch", at "Skip this whole step when this skill was called for a
    single class from a build.". Recorded, not built: on the route from
    build-work step 6, after the merge, the build's branch has landed and
    nothing lands the class this skill fills; this line skips the step for every
    single-class call and says the build lands it — should: say which branch the
    call after a merge runs on and what lands it.
  - `skills/setup-checks/SKILL.md`, under "Step 3 — Prefer tools that live
    inside the project", at "Name what you just wrote down as something to
    grant. A check command". Recorded, not built: the check commands are named
    to the user as something to grant, and no line says what a run with nobody
    there does with them — should: a sentence for the unattended case, here or
    under "With nobody there".
  - `skills/setup-checks/SKILL.md`, under "Step 9 — Close", at "Then say what
    happens next and do it, without asking first: more classes if any".
    Recorded, not built: step 2 allows the answer none, filling them later, and
    this line does more classes without asking while any is empty, overriding
    that answer at the close — should: a none answer stands until the step after
    a merge re-reads the reasons, or step 2 loses that answer.
  - `skills/setup-checks/SKILL.md`, under "Step 9 — Close", at "are still
    `empty`, otherwise the first piece of work. Say what the state means".
    Recorded, not built: on the single-class route the caller is a build that
    continues with its task, and this line sends the run to the first piece of
    work — should: return to the build where called for a single class.
  - `skills/setup-project/SKILL.md`, under "Permissions, before the first
    command", at "Say what this is not, in the options themselves. A caveat in
    the paragraph". Recorded, not built: "in the options themselves", "the two
    lines the user chooses between" and "the yes carries both halves" presuppose
    a question with a yes, while the passage opens with "This is not a question,
    and must not be put as one" — should: one of the two stands: the two halves
    are said in the preparation, or the passage is a question.
  - `skills/setup-project/SKILL.md`, under "Permissions, before the first
    command", at "yet — `checks.md` is empty until `setup-checks` fills it, so
    that skill adds". Recorded, not built: checks.md is said to be empty until
    setup-checks fills it, while step 4 question 3 fills a class from a tool
    found and step 9 counts filled classes; the check commands known at setup
    are then never named as something to grant — should: name them here or at
    the close, as setup-checks step 3 does for the ones it writes.
  - `skills/setup-project/SKILL.md`, under "Step 1 — Explore, change nothing",
    at "- Whether `gh` is installed and signed in (`gh auth status`). It is not,
    and no". Recorded, not built: "It is not, and no amount of setting up gets
    around it" asserts that gh is not signed in, where the sentence means the
    case that it is not — should: "Where it is not, no amount of setting up gets
    around it".
  - `skills/setup-project/SKILL.md`, under "Step 0 — Say what is about to
    happen, then get on with it", at "this is not a git repository, there is no
    remote, or the working directory does". Recorded, not built: a missing
    remote is listed among the cases to stop and ask about, while step 4
    question 1 says "do not stop yet" and offers to create one — should: one of
    the two places decides the missing remote and the other points there.
  - `skills/setup-project/SKILL.md`, under "Step 4 — Questions", at "undecided.
    Ask separately whether missing tools should be installed — that".
    Recorded, not built: the question whether missing tools should be installed
    says nothing about where a no leads, and the checks.md rules below know only
    filled, skipped by judgement and empty — should: say what the class becomes
    on a no, as setup-checks step 3 does: skipped with that reason.
  - `skills/setup-project/SKILL.md`, under "Step 4 — Questions", at "the five
    standard labels and report it.". Recorded, not built: "the five standard
    labels" while issue-tracker.md below names seven and says to create all
    seven — should: seven, in both places.
  - `skills/setup-project/SKILL.md`, under "`checks.md`", at "target cannot
    block anything; leave it `-` until it is filled.". Recorded, not built:
    "leave it `-` until it is filled" while the column is said two paragraphs up
    to take only yes or no, and the example row above carries no on a skipped
    row — should: one value for a row that is not filled, the same in the rule,
    in the column's definition and in the example.
  - `skills/setup-project/SKILL.md`, under "`domain.md`", at "Where the glossary
    and the decision records live — the two places step 6 just".
    Recorded, not built: "the two places step 6 just created": the two places
    are created in step 4, question 6, not in step 6 — should: step 4, question
    6.
  - `skills/setup-project/SKILL.md`, under "`environment.md`", at "Also what
    checks a merge, and who, from step 2 — the one property of this".
    Recorded, not built: "from step 2": the gate is read in step 4, question 2,
    and step 2 is the report of what was found — should: step 4, question 2.
  - `skills/start-work/SKILL.md`, under "Step 1 — Look", at "Do not read files.
    Do not check git. Do not look at the tracker.". Recorded, not built: step 1
    says one command and no file read, and the paragraph after it reads
    `docs/agents/issue-tracker.md` for the version marker before step 2 —
    should: name the marker search as the one read step 1 makes, or move the
    marker check to step 2.
  - `skills/start-work/SKILL.md`, under "Step 2 — Orient them, if the status
    line says this project is not set up", at "tickets or tasks by title, say
    which one comes next and what it unblocks, in one". Recorded, not built: a
    map in flight is started here, and step 5 routes nothing to untangle-idea's
    second mode, its only route being step 3's fresh idea; untangle-idea:331
    says the entry point picks the map up from the tracker — should: step 5
    names the route for the next ticket of a map in flight.
  - `skills/start-work/SKILL.md`, under "Unattended", at "nothing runs alone
    whatever was typed". Recorded, not built: on the direct route nothing reads
    the answer setup-checks step 8 recorded: build-work's five start conditions
    read the repository's state, and plan-work:320 says not to read
    environment.md's account, so this sentence holds on the planning route only
    — should: the direct route reads the recorded answer, or this sentence names
    the planning route as the one it holds on.
  - `skills/plan-work/SKILL.md`, under "Before anything: what is already built",
    at "Do not open a planning issue for it and do not plan it again. Offer to
    land". Recorded, not built: the offer to land says what a no leads to and
    not what a yes does; the one landing procedure is build-work step 6, which
    start-work:125 names and this skill does not — should: say that a yes is
    build-work at step 6, as start-work does.
  - `skills/build-prototype/SKILL.md`, under "Pick a branch", at "default to
    whichever branch better matches the surrounding code". Recorded, not built:
    with nobody there this line takes whichever branch matches the surrounding
    code, the UI branch included, while "With nobody there" says the run takes
    the logic branch and a question that has to be seen is not this skill's to
    answer — should: one rule for the branch with nobody there, the logic
    branch, and this line kept for the user briefly out of reach or dropped.
  - `skills/build-prototype/SKILL.md`, under "Rules that apply to both", at
    "leave a context pointer to that branch on the implementation issue".
    Recorded, not built: the pointer to the throwaway branch and the answer go
    on "the implementation issue", which exists on neither route into this skill
    - plan-work Stage 1 holds a planning issue, untangle-idea a prototype ticket
    - and "With nobody there" names the planning issue — should: the issue the
    caller names, the planning issue or the ticket.
  - `skills/diagnose-bug/SKILL.md`, under "When this runs", at "do not improvise
    a replacement.". Recorded, not built: a missing control document is handed
    to the user as the command that should have created it, and no line says
    what a run with nobody there does; plan-work and start-work run
    setup-project without asking at the same point — should: a sentence for the
    unattended case, here or in build-work's section for it.
  - `skills/diagnose-bug/SKILL.md`, under "Step 6 — Clean up, or hand it over",
    at "says. Then wait.". Recorded, not built: step 6 hands over and waits for
    a person, and no line says what a run with nobody there does; build-work
    step 1 and step 3 send a red test class here without saying it either, while
    the turn-end hook's same wait became a raised-here issue and the next task —
    should: a sentence for the unattended case, here or in build-work's section
    for it.
  - `skills/record-lessons/SKILL.md`, under "Where it goes", at "the "what these
    checks do not cover" section of". Recorded, not built: this row has the run
    write the lesson into docs/agents/checks.md, while shared/checks-owner.md,
    inserted into build-work and diagnose-bug, says "Do not edit
    docs/agents/checks.md yourself" and routes every change to that file through
    setup-checks — should: the section named as the one exception at both
    places, or the lesson routed through setup-checks.
  - `docs/skill-conventions.md`, under "Before a handover, run these", the
    command line "| tr -d '`' | sort -u) <(ls skills/ | sort)".
    Recorded, not built: the command prints every backticked lower-case name in
    docs/roadmap.md that is not a directory under skills/, 129 lines on 23
    September 2026, the twenty-two names under "Named, not built as skills"
    among them, so it can never be silent and the sentence above it is not what
    it checks — should: subtract the names of that table as well, so that a line
    printed is a name the sentence forbids, and the section says that silence is
    green.
  - `docs/roadmap.md`, under "Known gaps", at "Run E, 19 September 2026, plugin
    0.105.0, against the regrouping. The". Recorded, not built: Run E is dated
    19 September 2026, while the session log of that run, in the directory of
    runs A to D with plugin 0.105.0 and the reply the entry quotes, begins
    2026-09-18T21:22Z, 23:22 CEST on 18 September, fifty-three seconds after
    929dabe was committed — should: 18 September 2026.
  - `docs/roadmap.md`, under "Known gaps", at "measured on 12 September 2026 in
    `devloop-test-o` on issue 49. `setup-checks`". Recorded, not built: the run
    is dated 12 September 2026, while the session log of devloop-test-o shows
    setup-checks loaded for issue 49 at 2026-09-13T08:14Z, 10:14 CEST on 13
    September, and its pull request opened at 08:17Z; on 12 September the log
    carries task 48 and nothing on issue 49 — should: 13 September 2026.
  - `scripts/devloop-stock-take`, at `if not only:`. Recorded, not built: the
    outcome '--only without a path: message on stderr, exit 2' is produced by no
    case of the self-test, so nothing can walk it on purpose — should: a case in
    the self-test that produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `except RuntimeError as e:`.
    Recorded, not built: the outcome "git failing on the shallow check, a
    directory that is no repository included: REFUSED with git's message, exit
    2" is produced by no case of the self-test, so nothing can walk it on
    purpose — should: a case in the self-test that produces it once, beside its
    green counterpart.
  - `scripts/devloop-stock-take`, at `except OSError as e:`.
    Recorded, not built: the outcome 'the table cannot be read: one table error,
    nothing read, exit 2' is produced by no case of the self-test, so nothing
    can walk it on purpose — should: a case in the self-test that produces it
    once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `if not lines or
    lines[0].rstrip("\r").split("\t") != COLUMNS:`. Recorded, not built: the
    outcome 'the header is not the 20 columns: one table error, nothing read,
    exit 2' is produced by no case of the self-test, so nothing can walk it on
    purpose — should: a case in the self-test that produces it once, beside its
    green counterpart.
  - `scripts/devloop-stock-take`, at `if absolute_path(f[col]):`.
    Recorded, not built: the outcome 'an absolute local path in any field:
    rejected' is produced by no case of the self-test, so nothing can walk it on
    purpose — should: a case in the self-test that produces it once, beside its
    green counterpart.
  - `scripts/devloop-stock-take`, at `if (f[a] == "") != (f[b] == ""):`.
    Recorded, not built: the outcome 'a file and anchor pair half empty:
    rejected' is produced by no case of the self-test, so nothing can walk it on
    purpose — should: a case in the self-test that produces it once, beside its
    green counterpart.
  - `scripts/devloop-stock-take`, at `if f["kind"] in ("check command", "named
    skill") and f["note"] == "":`. Recorded, not built: the outcome 'a check
    command or named skill with an empty note: rejected' is produced by no case
    of the self-test, so nothing can walk it on purpose — should: a case in the
    self-test that produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `if not DATE.match(f["date"]):`.
    Recorded, not built: the outcome "a run's date not YYYY-MM-DD: rejected" is
    produced by no case of the self-test, so nothing can walk it on purpose —
    should: a case in the self-test that produces it once, beside its green
    counterpart.
  - `scripts/devloop-stock-take`, at `if f["source"] not in SOURCES:`.
    Recorded, not built: the outcome "a run's source not entry, log or none:
    rejected" is produced by no case of the self-test, so nothing can walk it on
    purpose — should: a case in the self-test that produces it once, beside its
    green counterpart.
  - `scripts/devloop-stock-take`, at `if has_v and has_c:`. Recorded, not built:
    the outcome 'a run with both version and commit: rejected' is produced by no
    case of the self-test, so nothing can walk it on purpose — should: a case in
    the self-test that produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `if f["source"] == "none" and (has_v or
    has_c):`. Recorded, not built: the outcome 'a run of source none carrying a
    version or commit: rejected' is produced by no case of the self-test, so
    nothing can walk it on purpose — should: a case in the self-test that
    produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `if f["source"] in ("entry", "log") and not
    (has_v or has_c):`. Recorded, not built: the outcome 'a run of source entry
    or log with neither version nor commit: rejected' is produced by no case of
    the self-test, so nothing can walk it on purpose — should: a case in the
    self-test that produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `if has_c and f["source"] != "entry":`.
    Recorded, not built: the outcome 'a run naming a commit with a source other
    than entry: rejected' is produced by no case of the self-test, so nothing
    can walk it on purpose — should: a case in the self-test that produces it
    once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `if target == "":`. Recorded, not built:
    the outcome 'part of: naming nothing: rejected' is produced by no case of
    the self-test, so nothing can walk it on purpose — should: a case in the
    self-test that produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `"no-file": "the file cannot be read",`.
    Recorded, not built: the outcome 'an anchor into a file that cannot be read:
    rejected' is produced by no case of the self-test, so nothing can walk it on
    purpose — should: a case in the self-test that produces it once, beside its
    green counterpart.
  - `scripts/devloop-stock-take`, at `if len(anchor) > 80:`.
    Recorded, not built: the outcome 'an anchor longer than 80 characters:
    rejected' is produced by no case of the self-test, so nothing can walk it on
    purpose — should: a case in the self-test that produces it once, beside its
    green counterpart.
  - `scripts/devloop-stock-take`, at `if len(anchor) < 20 and lines[lineno -
    1].strip() != anchor:`. Recorded, not built: the outcome 'an anchor shorter
    than 20 characters that is not a whole line: rejected' is produced by no
    case of the self-test, so nothing can walk it on purpose — should: a case in
    the self-test that produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `if anchor != anchor.strip():`.
    Recorded, not built: the outcome 'an anchor with leading or trailing
    whitespace: rejected' is produced by no case of the self-test, so nothing
    can walk it on purpose — should: a case in the self-test that produces it
    once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `if rec["kind"] != want:`.
    Recorded, not built: the outcome 'a straight path under skills/ or shared/
    of the wrong kind: rejected' is produced by no case of the self-test, so
    nothing can walk it on purpose — should: a case in the self-test that
    produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `elif rec.parts and rec.parts[2] ==
    STRAIGHT and site:`. Recorded, not built: the outcome 'a straight path
    outside skills/ and shared/: rejected' is produced by no case of the
    self-test, so nothing can walk it on purpose — should: a case in the
    self-test that produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `rec.errors.append("note %r does not carry
    the form "`. Recorded, not built: the outcome 'a calls segment not carrying
    the form exactly: rejected' is produced by no case of the self-test, so
    nothing can walk it on purpose — should: a case in the self-test that
    produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `if not in_skill:`. Recorded, not built:
    the outcome 'a call note on a thing outside skills/ and shared/: rejected'
    is produced by no case of the self-test, so nothing can walk it on purpose —
    should: a case in the self-test that produces it once, beside its green
    counterpart.
  - `scripts/devloop-stock-take`, at `rec.errors.append("note %r does not carry
    one of the forms "`. Recorded, not built: the outcome 'a calls followed by a
    segment that is none of the claim forms: rejected' is produced by no case of
    the self-test, so nothing can walk it on purpose — should: a case in the
    self-test that produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `if s.startswith("with nobody there:"):`.
    Recorded, not built: the outcome 'a with nobody there segment without its
    calls before it: rejected' is produced by no case of the self-test, so
    nothing can walk it on purpose — should: a case in the self-test that
    produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `elif s.startswith("enters the
    unattended"):`. Recorded, not built: the outcome 'a segment starting like
    the root note and not carrying it exactly: rejected' is produced by no case
    of the self-test, so nothing can walk it on purpose — should: a case in the
    self-test that produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `rec.errors.append("note %r does not carry
    the form 'does "`. Recorded, not built: the outcome 'a does the work of
    segment not carrying the form exactly: rejected' is produced by no case of
    the self-test, so nothing can walk it on purpose — should: a case in the
    self-test that produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `elif s.startswith("outcome with nobody
    there") and s != NOT_STATED:`. Recorded, not built: the outcome 'a segment
    starting like the not-stated note and not carrying it exactly: rejected' is
    produced by no case of the self-test, so nothing can walk it on purpose —
    should: a case in the self-test that produces it once, beside its green
    counterpart.
  - `scripts/devloop-stock-take`, at `if not rec.errors and
    skill_of(rec["file"]) is None:`. Recorded, not built: the outcome 'the root
    note on a thing whose site is not under skills/: rejected' is produced by no
    case of the self-test, so nothing can walk it on purpose — should: a case in
    the self-test that produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `if h is None:`. Recorded, not built: the
    outcome 'a run naming a commit that does not resolve here: rejected' is
    produced by no case of the self-test, so nothing can walk it on purpose —
    should: a case in the self-test that produces it once, beside its green
    counterpart.
  - `scripts/devloop-stock-take`, at `elif origin_main is None:`.
    Recorded, not built: the outcome 'a run naming a commit with no origin/main
    here: rejected' is produced by no case of the self-test, so nothing can walk
    it on purpose — should: a case in the self-test that produces it once,
    beside its green counterpart.
  - `scripts/devloop-stock-take`, at `if loc is None:`. Recorded, not built: the
    outcome 'evidence under a directory the tool classifies as neither shipped
    nor recorded: broken record, the thing in no state' is produced by no case
    of the self-test, so nothing can walk it on purpose — should: a case in the
    self-test that produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `bad = [h for h in per_hash if not
    g.is_ancestor(h, run_c)]`. Recorded, not built: the outcome 'a run naming a
    commit that does not contain the last change: does not count, the line
    named' is produced by no case of the self-test, so nothing can walk it on
    purpose — should: a case in the self-test that produces it once, beside its
    green counterpart.
  - `scripts/devloop-stock-take`, at `if vc is None:`. Recorded, not built: the
    outcome 'a run naming a version never introduced into plugin.json on this
    history: broken record, does not count' is produced by no case of the
    self-test, so nothing can walk it on purpose — should: a case in the
    self-test that produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `if not any(anchorable(text, lines[n -
    1])`. Recorded, not built: the outcome 'a unit with no anchorable line at
    all: listed among the lines that can carry no anchor' is produced by no case
    of the self-test, so nothing can walk it on purpose — should: a case in the
    self-test that produces it once, beside its green counterpart.
  - `scripts/devloop-stock-take`, at `if res.refused or res.broken_count():`.
    Recorded, not built: exit 2 is produced by no case of the self-test: neither
    exit_code() nor main() is called there — should: a case that calls
    exit_code() on a result with a broken record and on a refused one and sees
    2.
  - `scripts/devloop-stock-take`, at `if res.uncovered or
    res.no_straight_path:`. Recorded, not built: exit 1 is produced by no case
    of the self-test: neither exit_code() nor main() is called there — should: a
    case that calls exit_code() on a result with an uncovered line and sees 1,
    and on a clean one and sees 0.
  - `scripts/devloop-stock-take`, at `if t is None:`. Recorded, not built: a run
    keyed to a thing whose record is rejected, or whose evidence lies where the
    tool classifies nothing, is dropped here without a line in the output while
    its anchor still covers its roadmap line (seen 2026-09-23 in a temporary
    repository) — should: the run rejected with a message naming its thing's
    rejection, or listed under RUNS THAT DO NOT COUNT with that reason, and its
    anchor covering nothing.
  - `scripts/devloop-stock-take`, at `nowhere on it: order 9 of the stock-take
    moves each into the dated roadmap`. Repaired in this same change, and the
    repaired line is its evidence: names order 9 as the order that moves the
    findings into the dated roadmap entry; order 9 inventories this tool and
    order 10 closes the milestone — should: order 10 of the stock-take moves
    each into the dated roadmap entry.
  - `scripts/devloop-stock-take`, at `Every order from 2 to 8 of the stock-take
    ends when the tool reports, for the`. Repaired in this same change, and the
    repaired line is its evidence: names orders 2 to 8; order 9 ends the same
    way — should: Every order from 2 to 9.

- **The repairs the stock-take found, on 23 September 2026.** The first change
  to something the stock-take measured, on the branch task/stock-take-repairs,
  cut from the main branch at `b48a323` after the stock-take landed: four works
  over the defects the entry above recorded, 43 of its 75. Every line changed
  broke the records anchored on it or left a defect's evidence behind, the tool
  said which, and mending them was part of the work, since a table that reads
  recorded and not built for something now built is half a repair.

  What was repaired. The run that vanished: a run whose thing was rejected fell
  out of the output while its anchor still covered its line. A run on a rejected
  thing is now rejected with it, with a message naming the thing's line, listed
  under BROKEN RECORDS and covering nothing, and the check that classifies a
  thing's evidence runs before coverage, so that a thing with evidence the tool
  classifies nowhere is rejected rather than left in no state. The 36 outcomes
  of `scripts/devloop-stock-take` that no case of its self-test produced each
  have their case now, red once beside its green counterpart, in the temporary
  repository the self-test builds: the two tables it cannot read, the directory
  that is no repository, the --only form without a path, every rejection of a
  record, the runs naming a commit that does not resolve or does not contain the
  change or a version never introduced, the repository without origin/main, the
  unit no line of which can carry an anchor, the exit codes 1 and 2. None needed
  a limit, since every message could be produced on purpose. Copy detection, one
  of the seven outcomes without a case that were not findings, got its case as
  well, staged with the extra file changed in the same commit, because git blame
  -C -C looks only at the files that commit changed; the header names that as a
  limit. Three lines of `skills/build-work/SKILL.md`, answering four defects:
  the fifth start condition where a sixth was named; the guard's block given the
  turn-end hook's answer, an issue raised and the next task taken, where a
  refused arming ends the run; the turn-end hook's paragraph saying the shape is
  the same and the answer is not; a step that ends by asking, where two steps
  were counted. One paragraph of `docs/skill-conventions.md`, beside "A time
  reference names its date": a run's date is copied from the session log of that
  run, not from memory. That line answers the two wrong dates and nothing else
  does. The measurements stand as written, and the tool reads those two defects
  recorded and not built, a convention being a rule and not a mechanism, which
  is the rule of its header.

  The closing sentence of the self-test. "Every red outcome once" was true of
  the cases it had and false in what it suggested, and it stood unseen since the
  tool was built. The self-test now reads every message the tool can produce off
  its own source, with the ast module, at the places a message is emitted;
  matches each against the messages its analyses produced and the text its cases
  asserted; prints the ones no case asserted; and closes with the count. Four
  existing cases were tightened to assert the message they produce, which that
  count showed they did not. The count reads the messages the tool rejects,
  refuses or answers with, not the lines of the report: python3 -m trace --count
  --missing over the self-test, its coverage written outside the repository,
  listed three report lines that no case reached - the reached set not computed
  for a table with no root, the REFUSED report of a refused repository, and none
  under RUNS THAT DO NOT COUNT - and beside them only lines of the self-test
  itself that a passing run cannot reach. Each of the three has its case now, as
  an outcome of its own with its run, and the closing sentence says what the
  count leaves out. The self-test ran on 23 September 2026 at 0.107.0 in this
  repository, exit 0, and its last line read `SELF-TEST PASSED: 87 cases; of the
  73 messages this tool rejects, refuses or answers with, read off its own
  source, 73 are asserted by a case and 0 by none; the lines of the report are
  not in that count`. The 40 outcomes whose case is new, and the one the repair
  of the vanishing run added, carry a run of that date on the line above that
  names the version; the 45 runs of 0.106.0 count as before, since no line they
  stand on changed. The version was raised to 0.107.0 after every change and
  before the runs: introduced earlier, its commit would not contain the changes,
  and every run against it would fail the version rule.

  The records. 43 defects' evidence moved onto the line that carries the repair:
  37 onto a case line, 4 onto `skills/build-work/SKILL.md`, 2 onto the
  conventions. Where the evidence left a status line of the entry above, the
  defect's site moved onto that line, so that it stays covered and the entry's
  text stays as written. 40 benches filled, 3 outcomes of the report added as
  things, 4 anchors mended, 1 record on a removed line deleted, 21 records for
  the lines the change adds to the search set. The tool over the whole table,
  run on 23 September 2026 at 0.107.0 on the tree this change commits: 0 broken
  records, 0 of 1746 lines of the search set uncovered, exit 0, and 54 runs that
  do not count before this work and after it, so no walk was demoted. The counts
  by state and kind are the tool's output and are not repeated here.

  The seventeen checks under "Before a handover, run these" were run on 23
  September 2026 at 0.107.0, after the change. Sixteen printed what their
  explanations say, and the three that print lines needing an eye - fifteen
  offers, seven handover lines over six sites, two second statements - printed
  the same lines as at the main branch before this work, their line numbers
  moved by the repaired paragraph above them and nothing else. The check on
  names in this file printed 130 lines, as before this entry, and cannot be
  silent, which the entry above records as a defect still open.

- **The check on names in the roadmap repaired, on 25 September 2026.** Defect
  34 of the stock-take entry, the check under "Before a handover, run these"
  that could never be silent, closed on the branch task/repair-names-check, cut
  from the main branch at `1edc955`, pull request 133. The repair is commit
  `860bc25` of 24 September 2026, and `cd0e476` the same day widened the words
  it reads to digits and raised the version to 0.108.0. This entry came a day
  later on purpose: a check's run counts only from the day after the last
  change to its lines, as the head of that section says since the repair, so a
  run of 24 September would have stood in the tool's output as one that does
  not count while this entry claimed the opposite. `date -u +%F` read
  2026-09-25 before the run was made, and `git log -1 --format=%ad
  --date=short 860bc25` read 2026-09-24.

  Why the old command could never be silent. It subtracted the directories
  under `skills/` from the backticked words of this file and printed the rest,
  and the names under the heading of this file that lists what is named and not
  a skill are by definition no directory, so every one of them came out on
  every run: 130 lines on 25 September 2026 on the tree before this entry, the
  22 rows of that table among them, 107 other words the roadmap quotes as
  flags, labels, tools and check classes, and one empty line from a bare pair
  of backticks. What the new one catches: a backticked word of lowercase
  letters, digits and hyphens that is no directory under `skills/`, stands in
  no row of that table, and lies within an edit distance of two of one of those
  names, printed beside the name it resembles, since a typo, a rename left
  behind or a plural is made from a real name and stays near it. Measured the
  same day on the same tree: 172 backticked words, 34 names (12 directories and
  22 rows), 138 words that are no name, the nearest of them four edits from any
  name. What it does not catch: a name invented out of nothing, which no form
  of the check could, since nothing ties such a word to the set it is held
  against; and a word one or two edits from a name of fewer than six
  characters, since such a name is compared for equality only. Two guards.
  Where the table yields no rows or `skills/` no directory, the check prints
  one line saying so, with both counts, and that line is red: with no names on
  one side it would be silent for the wrong reason. And the distance of two
  holds only against names of six characters or more, because a name of five
  would already print words of this file; the shortest name today is
  `research`, 8 characters, and no name is shorter than six, so nothing goes
  unwatched yet. The day a skill gets a shorter name, the section's sentence on
  it is the one that says it goes unwatched.

  The seventeen checks under "Before a handover, run these" were run on 25
  September 2026 at 0.108.0, each block as it stands in the section, under sh.
  The repaired check printed nothing, exit 0, which its section calls green,
  and that silence is the run this entry holds; the other sixteen printed what
  their explanations say, the same lines as on 23 September, since no file
  under `skills/`, `shared/`, `hooks/`, `bin/` or `scripts/` changed between
  `1edc955` and the repair: 3 files changed, the conventions, the table and
  plugin.json, and this entry adds only this file to that list.
  The other outcome of the check, a name printed, takes no run: nothing was
  printed, and like the red side of every other check it waits for something to
  be wrong. The run of 19 September 2026 on the silent outcome stopped counting
  with the repair and stays listed as such; this run stands beside it.

  The tool over the whole table, run on 25 September 2026 at 0.108.0 on the
  tree this entry commits: 0 broken records, 0 of 1747 lines of the search set
  uncovered, 0 findings, exit 0, and 55 runs that do not count, the same number
  as before this entry, since the run of 19 September stays in that list and
  this one is not in it. The self-test ran the same day, exit 0, and its last
  line read `SELF-TEST PASSED: 87 cases; of the 73 messages this tool rejects,
  refuses or answers with, read off its own source, 73 are asserted by a case
  and 0 by none; the lines of the report are not in that count`. The counts by
  state and kind are the tool's output and are not repeated here.

- **The control documents audited against the tree, and mended, on 26 September
  2026.** An order of 25 September 2026 read `docs/plan.md`, `README.md`, the
  present-state lines of this file and the header of `scripts/devloop-stock-take`
  against `5d6dea0`, the tree at 0.109.0, and reported sixteen places over the
  four documents where a number, a name or a claim no longer held against a
  command; the report stands outside the repository. Fourteen of them are mended
  on the branch task/audit-mends, each where it stood and in that document's
  words, against the command that shows what holds. Two are not a document
  saying what the tree no longer carries, and stand in `docs/stock-take.tsv` as
  findings, with their should; they are the last two below. Every one of the
  sixteen has its row in the table: a defect thing sited on its line here, with
  the mended line as its evidence, or a finding on the line it concerns.

  The fourteen, in the order of the documents. Each carries the state the tool
  computes for it, which for a mended sentence in a document reads recorded and
  not built, a document being a rule and not a mechanism.
  - `docs/plan.md`, "Conventions" names sections of `docs/skill-conventions.md`,
    where thirteen of the names are bold paragraph heads inside a section:
    `grep -n 'A count lives in one place' docs/skill-conventions.md` answers
    line 773, a bold head, and `grep -n '^## ' docs/skill-conventions.md` has no
    heading of that name.
    Recorded, not built: it now says sections or bold heads.
  - `docs/plan.md`, the twenty-two names under "Named, not built as skills":
    `sed -n '75,94p' docs/roadmap.md | grep -c '^| \`'` answers 20.
    Recorded, not built: it now says twenty, and why.
  - `docs/plan.md`, thirteen of those names as things of their own: the tool's
    counts per state and kind say `named skill 11`.
    Recorded, not built: it now says eleven.
  - `docs/plan.md`, the four side paths under "What is missing" in `README.md`,
    among the thirteen: that section has named two since 25 September 2026.
    Recorded, not built: it now says two, among the eleven.
  - `docs/plan.md`, the three defects and seven mechanisms of the comparison
    with Pocock's set and the two remaining points of "The order of work, and
    why", read as twelve rows: the table holds ten sited in that entry, the
    grilling mechanism standing as part of the defect the entry of 14 September
    2026 measured first, and the two points being two of the three defects.
    Recorded, not built: it now says where those rows stand.
  - `docs/plan.md`, milestone 1 ended when the tool reported no finding left in
    the table, and nothing said what a finding recorded after the close is: the
    tool printed `FINDINGS: 3` on 25 September 2026.
    Recorded, not built: one sentence says such a finding stands in the table
    until an order moves it, and that the count is read off the output.
  - `docs/plan.md`, "five milestones build on that boundary", naming none:
    `grep -n 'milestone 4' docs/plan.md` answers the sections of milestones 7
    and 8 and the open list, and milestone 11 asks for the interface bench that
    milestone 4 lays down.
    Recorded, not built: it now names 7, 8 and 11, and says why each.
  - `README.md`, this file says under "Named, not built as skills" when each of
    the two side paths would be reached: it does for `find-refactor-candidates`
    and says of `sort-incoming-requests` why it has no trigger yet.
    Recorded, not built: it now says that, and "decided" where it said "planned".
  - this file, the row of `record-lessons` in the first table carrying "built,
    never run", the one state among the present-state lines written rather than
    computed; the tool reads every thing of that skill as built and never
    walked.
    Recorded, not built: the note is gone, and a sentence under the table says
    where the state is read.
  - the header of `scripts/devloop-stock-take`, "Never assert state - query it"
    with a hyphen, where the heading of `docs/skill-conventions.md` carries a
    dash and the header itself carries one where it quotes the should form.
    Built: the dash, as the heading has it.
  - the header, the thirteen entries under "Named, not built as skills", the
    other nine and the four side paths, at A and again at E, the finding the
    table carried since 25 September 2026: the tool counts eleven named skills
    and `README.md` names two side paths.
    Built: the header carries no number there and points at the tool's output,
    which is where a count lives, and that retires the finding.
  - the header, three defects and seven mechanisms of the Pocock comparison,
    against nine rows in that stretch of the entry: the grilling one stands as
    part of an earlier entry's defect.
    Built: the header says where that row stands.
  - the header, "Two of the session logs of the benches carry no version at
    all": no command in the tree names the two, and this file does not either.
    Undetermined, and left as it stands, since the mend needs whoever read the
    logs to name them; its row carries no evidence.
  - the header, text that moved unchanged into `shared/` on 17 and 18 September
    2026: `git log --format=%ad --date=short -- shared | sort | uniq -c`
    answers `4 2026-09-18` and no other day.
    Built: 18 September 2026.

  The two findings that stand, in the table with their should:
  - `README.md` under "Attended and unattended" names three conditions for
    running alone where `build-work` under "Unattended mode" numbers five, and
    `plan-work` reads four of them where the question is put. Which two the
    README leaves out, and whether it should name them at all, is a reading
    somebody has to do. Sited on the README line.
  - this file, under "Decisions taken against", says `untangle-idea` already
    tells the next session what it picks up, and no line of that skill does:
    what stands is the map every session orients to and "When the map is done",
    which carries straight on into planning. The document is not wrong about
    itself; a piece of the workflow is missing. Sited where this file claims it.

  How a check command's run is recorded, changed. Such a run was held against
  the commit date of its line and counted from the day after; a squash merge
  re-dates that line to the day of the merge, so the run of 25 September 2026
  on the repaired names check, made on the branch the day after the repair,
  stopped counting at `834b8d5`, and no run of a check command made before a
  merge could survive it, the finding the table carried since that day. It is
  held against a version now, like every other run: recorded under the version
  `.claude-plugin/plugin.json` carries in the tree it ran in, it counts once the
  commit that introduced that version contains the last change to the check's
  lines, which holds on the branch, where that commit is the branch's own, and
  after the squash, where it is the merge commit. A commit would not do, since
  the tool requires a run's commit to sit in the history of origin/main, and a
  branch commit does not until it merges. The rule left the tool at the two
  lines that carried it, the kind test and the date comparison the finding was
  sited on, and the search set lost those two lines; the header's D and the
  paragraph above the seventeen checks in `docs/skill-conventions.md` say the
  rule as it stands now.
  Built: the branch that held the date takes every run, on the line that opens
  it.
  The self-test's case for the date, red on the day of the change, is the case
  for the version instead: the third commit of its temporary repository now
  changes the line the check stands on, a run dated after that change under the
  first version does not count, the version named as predating the change, and
  a run under the second version counts and reads walked. The message the date
  rule produced is gone, and the count of messages the self-test reads off its
  own source went from 73 to 72, every one asserted by a case. One convention
  entered `docs/skill-conventions.md` beside "A figure taken from a command is
  copied out of that command's output": a measurement nothing depends on never
  becomes a condition for the next step, written because two days of work
  waited on a run that changed one line of a table and nothing else.

  The repaired names check ran on 26 September 2026 at 0.110.0, on the tree of
  `446df65`, the commit that raised the version and carries the repair: it
  printed nothing, exit 0, which its section calls green, and that run is
  recorded here. Under the version rule the run of 25 September 2026 at
  0.108.0 counts again, `834b8d5` containing the repair, and the run of 19
  September 2026 stays as one that does not count, its commit `8196ebf`
  predating the repair. The other sixteen checks ran the same day under sh,
  each block as it stands in the section, and printed what their explanations
  say: registration two empty lists; invocability twelve counts, `record-lessons`
  and `start-work` at 1 and the rest at 0; locked skills the one line naming
  `start-work` in `build-work`; shared copies, insert lines, the grant,
  expansion, executables and unattended finish silent; language block twelve
  lines saying where the opening stands; the notice one checksum line and 12;
  the arming command 2 in the merge guard and 2 in this file; offers 15 lines;
  handovers seven lines over six sites; second statement two lines.

  The tool over the whole table, run on 26 September 2026 at 0.110.0 on
  `446df65`: 0 broken records, 0 of 1758 lines of the search set uncovered, 3
  findings, exit 0, and 56 runs that do not count, as many as it printed at
  `5d6dea0` before this change: the run of 25 September on the names check left
  that list, and the run of 23 September 2026 at 0.107.0 on the outcome of a run
  naming a commit that does not contain the last change entered it, the line
  that opens that branch being the line this change touched. The self-test ran
  the same day, exit 0, and its last line read `SELF-TEST PASSED: 87 cases; of
  the 72 messages this tool rejects, refuses or answers with, read off its own
  source, 72 are asserted by a case and 0 by none; the lines of the report are
  not in that count`; that run is recorded on the two things of the tool whose
  lines this change touched, the defect of the date rule and that outcome. The
  counts by state and kind are the tool's output and are not repeated here.


- **Whether the build subagent reads the project's rules is not decided, and
  four places disagree about it, read on 27 September 2026.** Three say it
  reads them: the row of `settle-the-look` under "Named, not built as skills",
  "The build subagent then reads it the way it reads `standards.md`"; the
  Should of the entry above on the failure picture that came out of the review
  three times, "so that the build stops producing it" and "read by the build
  before the finding exists rather than by the review afterwards"; and
  milestone 7 of `docs/plan.md`, which rests the look file on that precedent.
  The entry on Pocock's set, written a day after the second, records the
  opposite as agreement: the review agent carries the standards and not the
  build agent, because the build agent is under the greatest context pressure.
  In the skills today: step 3 of `build-work` hands the subagent the paths of
  the control documents, `standards.md` among them by the pointer block
  `setup-project` writes into `CLAUDE.md`, and no line tells it to read the
  rules; `review-changes` is told to read the file first and makes it the
  source of the standards lens. The block that writes a rule at the close said
  from 26 September that the next build reads it, and says from 27 September
  that the next review reads a breach of it.

  Recorded, not decided: the path is handed over, the reading is not
  instructed, and the three places stand as written. What would decide it is a
  measurement on a project that carries a rule: a build subagent handed the
  file's path, whether it opens the file, against one told to read it.

- **An install command passed the auto-mode classifier with nobody answering,
  measured on 28 September 2026.** In a directory without `docs/agents/`, so
  that the install guard was inert by its own first condition, a session in
  auto mode was given `brew install shellcheck` and nothing else. It ran: no
  confirmation was asked, and the classifier did not refuse it. Read back off
  the machine on the day this was written, with `brew list --versions`:
  `shellcheck 0.11.0` and its dependency `gmp 6.3.0`, the binary linked at
  `/opt/homebrew/bin/shellcheck`, a place the guard's `BINDIR` list names
  under `/opt/`. Which allow rule stood, if any, is not recorded, as it was
  not on 14 September.

  **What this was, and what it licenses.** It was not an unattended run of
  this set: that mode refuses to start while a class in `checks.md` is
  `empty`, and a directory without `docs/agents/` has no `checks.md`. It was
  the harness's auto mode with nobody answering, which is the state an
  unattended run is in, without the run. What it licenses: on this machine,
  on that day, one install command through one package manager passed the
  classifier once, with the guard out of the way. What it does not license:
  any other command, any other package manager, the same command on another
  day — the classifier is the harness's, and this set has no record of what
  decides it — and the same command inside a set-up project, where the guard
  fires first. Fed the same string with a scratch `docs/agents/` present,
  `hooks/pre-tool-use-install-guard.sh` exits 2 on `brew install shellcheck`,
  which is why the probe had to run outside a set-up project: the guard sits
  in front of the classifier, and a command the guard catches says nothing
  about what the classifier would have done with it.

  **Two earlier commands measured nothing about the classifier**, because the
  guard blocked them first. The one recorded here is
  `go install github.com/client9/misspell/cmd/misspell@latest`; the other is
  not named in the order that produced this entry. Which half of the guard
  fired is read off the guard, since its message names neither half: the verb
  pattern matches, `go` standing in the manager list before `install`, and
  neither place pattern does, because the command names no path — `~/go/bin`
  stands in `BINDIR`, and `BINDIR` is read only behind a write verb or `-o`.
  The verb half alone, exit 2.

  **A write under the home directory that names no install ran unrefused as
  well**, by the account of the session that ran it:
  `mkdir -p ~/.cache/devloop-probe && touch ~/.cache/devloop-probe/marker`.
  Recorded as what it is: a write under the home directory, not refused. Read
  back on the day this was written, the marker does not stand at that path —
  `ls` answers "No such file or directory" — so what the write left cannot be
  read off the machine, and the claim rests on that session's account alone.
  Fed the same string, the guard exits 0: `~/.cache` stands in no place list,
  and `mkdir` and `touch` are no write verb it reads, so it would have passed
  inside a set-up project as well. Where an interface driver lands is carried
  as open in `docs/plan.md` and has not been read from the vendor; this write
  says nothing about it.

  **The command did far more than the package it named.** By the same account,
  Homebrew updated itself, downloaded a portable Ruby, updated two taps, and
  ran a cleanup that deleted cached files, none of it asked for. What a
  package manager command does to a machine reaches past the package it
  names, and nothing in the set says so today — searched by subject on 28
  September 2026: `package manager` stands in `build-work` step 3 point 7 and
  under "The install guard matches the outcome as well as the verb" in
  `docs/skill-conventions.md`, both naming it as a route and neither saying
  what the route does besides; `auto-update`, `update itself` and `cleanup`
  come back empty under `skills/`, `shared/` and the conventions. When
  milestone 3 is built, it has to be said where the question is put, as part
  of what the tool kind costs — the milestone's "what each kind costs" — and
  it has to stand in the report of what came back, which is where it showed
  here. Neither place is changed by this entry. Recorded, not built.

  **Set against 14 September 2026**, where `go test` was refused as
  "Irreversible Local Destruction" in the entry on the first planning run
  alone: the two together say the classifier's ruling does not follow whether
  something is installed — a test run that installs nothing was refused, an
  install was not. What follows, and only this: the unattended path of
  milestone 3 is not ruled out by the classifier, since one install command
  has passed it once; and it cannot rely on any command being let through, so
  the case where one is refused stays what it is — a permission prompt nobody
  answers, the fourth precondition under "Unattended mode" in `build-work`.
  The item under "Open" in `docs/plan.md` that asked whether the classifier
  lets an install command through unattended is closed by this entry; whether
  it lets a start command through, and which allow rule has to stand for
  either, stay open there.

- **What `npx playwright install` lands outside the repository, read on 28
  September 2026 off the vendor's own documentation.** One page,
  `playwright.dev/docs/browsers`, read that day. Nothing was run: what stands
  here was read off the page and not off a machine, and nothing in this
  repository confirms it. The reading was handed over from a session of the
  same day; the page was fetched again on this branch the same day, `curl`
  answering 200 and 133,947 bytes, and read against it section by section.
  Where the two differ, the page is followed and the difference is named
  below.

  **Where the browsers land.** Under "Managing browser binaries": Playwright
  downloads Chromium, WebKit and Firefox "into the OS-specific cache folders",
  `%USERPROFILE%\AppData\Local\ms-playwright` on Windows,
  `~/Library/Caches/ms-playwright` on macOS, `~/.cache/ms-playwright` on
  Linux. None of the three stands in the guard's place list, `BINDIR` in
  `hooks/pre-tool-use-install-guard.sh`, which names bin directories, `/opt/`
  and the Go paths. The size the page gives is "a few hundred megabytes of
  disk space", with a listing whose version numbers are placeholders,
  `chromium-XXXXXX`, `firefox-XXXX`, `webkit-XXXX`: an order of magnitude from
  the vendor, not a figure measured anywhere. The same section says
  `PLAYWRIGHT_BROWSERS_PATH` puts them wherever it points, `$HOME/pw-browsers`
  in the vendor's example, and its sub-heading "Hermetic install" says
  `PLAYWRIGHT_BROWSERS_PATH=0` puts them under
  `node_modules/playwright-core/.local-browsers`, inside the project. That
  last is the false positive a catch on this command produces, which the
  ruling named further down already prices. That the variable can name any
  other place is what the handed-over reading did not carry: the three cache
  directories are the defaults, not the only places, and a place list that
  names the three names where the command lands with the variable unset.

  **The same command lands somewhere else with two of its arguments.** Under
  "Installing Google Chrome & Microsoft Edge": where a branded browser is not
  on the machine, `npx playwright install msedge` installs it, and the warning
  beside that line reads "Google Chrome or Microsoft Edge installations will
  be installed at the default global location of your operating system
  overriding your current browser installation". The page's example is
  `msedge`; the handed-over reading names `chrome` beside it, which the page
  lists as a channel and, for what can be installed, hands to `npx playwright
  install --help`. The sentence on the variable stands under "Hermetic
  install", not in the Chrome section as the handed-over reading had it:
  "`PLAYWRIGHT_BROWSERS_PATH` does not change installation path for Google
  Chrome and Microsoft Edge". What follows for the build, and is not built
  here: a permission answered for a cache directory under the home directory
  cannot cover this, so either the guard reads the argument and not only the
  command name, or these arguments stay outside every answer, the way `sudo`
  does today.

  **System packages are a second act.** Under "Install system dependencies":
  `npx playwright install-deps` installs what the page calls "System
  dependencies" and "OS dependencies", "useful for CI environments", and `npx
  playwright install --with-deps chromium` in the vendor's line combines that
  with the download. Root is said in one place only, under "Install behind a
  firewall or a proxy", for Linux and for a proxy: run the command as root
  there, "Otherwise, Playwright will attempt to become a root and will not
  pass environment variables like `HTTPS_PROXY` to the linux package manager",
  and the vendor's line begins with `sudo`. What that supports and nothing
  more: on Linux the dependency install reaches the package manager and
  involves root, said only where the page speaks of a proxy; how it becomes
  root, and what happens on macOS and on Windows, the page does not say. What
  follows for the build: `sudo` stands nowhere in the command string while the
  flag does, so a guard that leans on the string has to read the flag.

  **The command also deletes.** Under "Stale browser removal": Playwright
  keeps track of the clients that use its browsers, and "When there are no
  more clients that require a particular version of the browser, that version
  is deleted from the system"; `PLAYWRIGHT_SKIP_BROWSER_GC=1` or `--no-remove`
  on the install command opts out. Beside it, and not in the handed-over
  reading: `npx playwright uninstall` removes the browsers of the current
  installation and `--all` those of every installation on the machine, a
  deletion outside the repository under a subcommand that names no install.
  What a guard on installs makes of a delete is not this reading's question.

  **What this unblocks, and what it does not.** The ruling of 28 September
  2026 in `docs/skill-conventions.md`, "A named install command may enter the
  verb list, under two conditions, and only together with its destination",
  lets a name in when the command names the act, an install subcommand, and
  when the vendor documents a destination outside the repository. The first
  held already, by the ruling's own reading of the command; the second holds
  from this entry, three cache directories under the home directory, read from
  the vendor with the date. What still stands before a catch is worth building
  is the ruling's "both or neither": the destination entering the guard's
  place list and the list of places the person answers, which is milestone 3
  of `docs/plan.md` and is not done here. Until then the command passes the
  guard as it did at `929dabe`, and the entries of 19 and 28 September 2026
  above stand as written: on their days, where it lands had not been read from
  the vendor. The item under "Open" in `docs/plan.md` that asked what this
  command lands outside the repository is closed by this entry and says so
  where it stands, keeping the words the ruling quotes it by, since the ruling
  names it among the places that change when milestone 3 is built and it goes
  with them. The places that change when milestone 3 is built, none of them
  changed here: the place list and the manager list in
  `hooks/pre-tool-use-install-guard.sh`, the ruling itself in
  `docs/skill-conventions.md`, and milestone 3 in `docs/plan.md`.
  Recorded, not built: nothing of milestone 3 stands on this branch.

- **The install guard resolves eleven routes instead of three, the record
  carries routes beside places, and a pip inside the project passes; built
  and measured on 29 September 2026, version 0.116.0.** On
  `task/install-routes`, against the tools half of 28 September 2026, which
  asked the machine where a route lands for `brew`, `go` and `npm` and
  blocked every other route under any answer. That was what got built, not
  what was decided, and it was the finding recorded when the question went
  in the same day: on a stack whose routes were among the blocked ones a yes
  opened nothing, and the question did not say so.

  **What the check before building found.** Read off the guard rather than
  off any list, the verb half caught twenty-three managers with `install`,
  `add`, `use` or `tap` after them — `brew`, `port`, `apt`, `apt-get`,
  `yum`, `dnf`, `zypper`, `pacman`, `apk`, `snap`, `choco`, `winget`,
  `scoop`, `sdk`, `gem`, `cargo`, `go`, `pipx`, `uv tool`, `asdf`, `mise`,
  `rustup`, `nvm` — `npm`, `pnpm`, `yarn` and `bun` with `-g`, `--global` or
  `global`, and `pip` or `pip3` with `install`; it resolved three. Two things
  it caught wrongly: `cargo add`, which writes the project's own manifest and
  installs nothing, blocked as a `cargo` install; and `uv pip install`,
  caught by the `pip` pattern through the space before `pip`, blocked under
  every answer although it installs into the project's own environment.
  Whether the hook's process has the same PATH as the tool shell had not
  been measured. Measured now, on this machine: the process that spawns the
  hooks is the `claude` process, and its PATH, read with `ps eww`, differs
  from the tool shell's by the four plugin `bin` directories the harness
  appends to the shell and by nothing else, so every package manager
  directory stood in both at that hour — `pnpm setup`, run later that day,
  put `~/Library/pnpm` on the `PATH` of every shell opened since and on
  neither of these two; the process that started the editor this harness
  runs in carries `/usr/bin:/bin:/usr/sbin:/sbin`, so a harness started from
  there rather than from a terminal would find neither `brew` nor `go` nor
  `npm` in the hook, whatever the shell finds. What happens then is measured
  below with the hook's PATH cut to `/usr/bin:/bin`: a route not found
  answers nothing, and nothing is a block. That held already for the three
  routes, an empty answer falling through to the block, and holds for every
  route now; an answer that is no absolute path counts as none as well,
  which it did not before.

  **What was read from the vendors, and where, on 29 September 2026.**
  Homebrew, `docs.brew.sh/Manpage`: `brew --prefix` displays "Homebrew's
  install path", default `/opt/homebrew` on macOS ARM, `/usr/local` on
  macOS Intel, `/home/linuxbrew/.linuxbrew` on Linux. Go, `pkg.go.dev/cmd/go`:
  "Executables are installed in the directory named by the GOBIN environment
  variable, which defaults to $GOPATH/bin or $HOME/go/bin if the GOPATH
  environment variable is not set". npm, `docs.npmjs.com`, "folders": "When
  in global mode, executables are linked into `{prefix}/bin` on Unix". pnpm,
  `pnpm.io/cli/bin`: `pnpm bin` with `-g` "Prints the location of the
  globally installed executables". Yarn 1, `classic.yarnpkg.com`, "global":
  "yarn global bin will output the location where Yarn will install symlinks
  to your installed executables". Bun, `bun.sh/docs/cli/pm`: `bun pm bin -g`
  prints "the path to the global `bin` directory", `<$HOME>/.bun/bin`. pipx,
  read off `src/pipx/main.py` in the vendor's repository since the
  documentation pages answered 404 that day: `pipx environment` "Prints the
  names and current values of environment variables used by pipx", among
  them `PIPX_BIN_DIR`, and `--value` "Print the value of the variable". uv,
  `docs.astral.sh/uv/reference/storage`: "Use `uv tool dir --bin` to show the
  tool executable directory"; and `docs.astral.sh/uv/pip/environments` for
  the order `uv pip install` looks in: `VIRTUAL_ENV`, `CONDA_PREFIX`, "A
  virtual environment at `.venv` in the current directory, or in the nearest
  parent directory", and `--system` skipping that search. RubyGems,
  `guides.rubygems.org/command-reference`: `gem environment`, "For gems with
  executables ruby installs a wrapper file into the executable directory by
  default", `--user-install` "Install in user's home directory instead of
  GEM_HOME", `-n, --bindir DIR` "Directory where executables will be placed",
  `-i, --install-dir DIR` and `--build-root DIR`; and `Gem.bindir` in
  `lib/rubygems.rb`, which returns `install_dir/bin` unless the install
  directory is the default one, so that a user install puts executables
  under the user installation directory's `bin`. pip,
  `pip.pypa.io/en/stable/user_guide`: "`python -m pip` executes pip using
  the Python interpreter you specified as python. So `/usr/bin/python3.7 -m
  pip` means you are executing pip for your interpreter located at
  `/usr/bin/python3.7`"; `--user` installs "to the Python user install
  directory for your platform", `--target`, `--prefix` and `--root` move the
  installation, and `pip debug`, which prints `sys.executable`, is "only
  meant for debugging", "provisional and may change without notice", so a
  bare `pip` is not asked through it. Python, `docs.python.org`, `sysconfig`:
  the `scripts` path name, "directory for script files", and
  `get_preferred_scheme("user")`, added in 3.10. Cargo,
  `doc.rust-lang.org/cargo/commands/cargo-install`: "The installation root is
  determined, in order of precedence: `--root` option, `CARGO_INSTALL_ROOT`
  environment variable, `install.root` Cargo config value, `CARGO_HOME`
  environment variable, `$HOME/.cargo`", and "all executables are installed
  into the installation root's `bin` folder"; and `reference/config`, which
  says cargo looks for `.cargo/config.toml` "in the current directory and
  all parent directories" and then `$CARGO_HOME/config.toml`, and reads the
  file without the extension as well. `cargo config get install.root` on
  this machine, cargo 1.98.0 stable: "the `cargo config` command is
  unstable, and only available on the nightly channel", exit 101, so cargo
  is the one route read rather than asked.

  **What is built.** Under a yes the guard asks the machine where a route
  lands for eleven routes: `brew`, `go`, `npm`, `pnpm`, `yarn`, `bun`,
  `pipx`, `uv tool` and `gem` with the command each vendor documents,
  `gem` taking `--bindir` as written, the user installation directory plus
  `bin` under `--user-install`, and blocking under `--install-dir` or
  `--build-root`; `pip` through the interpreter the command names, a path
  or a bare name found on the hook's PATH, asked through `sysconfig` for its
  scripts path, the user scheme under `--user`, blocking under `--target`,
  `--prefix` or `--root`, and a bare `pip` or `pip3` blocking because it
  names no interpreter; and `cargo`, read in the vendor's order from
  `--root`, `CARGO_INSTALL_ROOT`, `CARGO_HOME` and `~/.cargo`, blocking
  where a config file on cargo's search path sets `install.root`, which the
  guard does not parse. A route not found here, one answering nothing, or
  one whose answer is no absolute path is not read, and not read is a block.
  `make install` takes `PREFIX`, `prefix`, `DESTDIR`, `BINDIR`, `bindir` or
  `exec_prefix` written on its own line as the destination, as written, and
  blocks where none stands there, since then the makefile decides. A pip
  inside the project passes without the record being read: a pip or an
  interpreter named by a path inside the project — absolute under it, or
  relative without `..` placed against the directory the tool's JSON names
  as `cwd`, where that lies inside the project and no `cd` earlier in the
  command leaves it; a bare `pip` or `python` after `source` or `.` on the
  project's own `bin/activate` earlier in the same command, with no
  `deactivate` in it and the pip or interpreter standing in that environment
  on disk; and `uv pip` where a `.venv` stands inside the project from the
  directory the command runs in up to the project root, with no `--system`,
  `--python`, `--target` or `--prefix` and no `VIRTUAL_ENV` or
  `CONDA_PREFIX` in the hook's environment pointing outside the project.
  What cannot be told from a machine-wide install and stays blocked: a bare
  `pip` or `python -m pip` under an environment an earlier command activated
  or the shell's own configuration put on PATH, since the string shows none
  of it; an activation in the same command of an environment not yet on
  disk, where a bare `pip` would fall through to the machine's should the
  chain not stop; a pip named through a variable other than `HOME`; a
  relative path after a `cd` to an absolute path, to `..`, to `~` or to a
  variable, or in a JSON without `cwd`; and `uv pip` under an environment
  variable the hook cannot see. `cargo add` no longer fires. What stays
  blocked under every answer, each with its own cause: the system package
  managers, which own no directory of their own since each package decides
  and need root anyway; the version managers, by the ruling on runtimes of
  28 September 2026; `sudo`; a script piped from the network. Built in
  `hooks/pre-tool-use-install-guard.sh`; the record's `install-route:` lines
  in `bin/devloop-install-record`, `hooks/session-start.sh` and
  `setup-project` step 6; the conventions under "The install guard reads a
  record".

  **The record.** A resolution is worth nothing where the record cannot name
  the place it resolves to, and the six places of 28 September 2026 named
  none of `~/.cargo/bin`, `~/.gem/ruby/<version>/bin`,
  `~/Library/Python/<version>/bin`, `~/.bun/bin` or a pnpm directory. What
  the record carries since this build: `install-place:` lines as before,
  literal directories held against the destination, and `install-route:`
  lines, each a name from the eleven the guard resolves, a route named there
  opening whatever that route answers on the machine the run is on, read at
  the moment of the command and written nowhere. The two cases that are the
  same problem: the same package manager answers differently on another
  operating system — `brew --prefix` is `/opt/homebrew` here and
  `/usr/local` or `/home/linuxbrew/.linuxbrew` elsewhere, `pip --user` is
  `~/Library/Python/3.14/bin` here and `~/.local/bin` on Linux — and the
  same route answers differently under a version manager, `gem` under an
  rbenv Ruby naming that Ruby's own `bin`. A record of the answers of the
  machine it was written on would go false on the next machine and block
  there, while the question, as approved, says the answer travels with the
  repository and is applied on the cloner's machine; so the record holds
  the route, which survives the machine changing, and the place is read
  where the command runs. A route not named is held against the places, as
  the three were before, so a record of 28 September 2026 reads as it did.

  **The question, whose wording was approved on 28 September 2026 and is
  not rewritten here.** Two of its sentences no longer match what a yes
  opens. "Which places exactly stands written in the record in the
  project's own files, where they can read it at any time" holds for the
  places and not for a route, whose directory is read on the machine at the
  moment of the command and stands in no file; the draft, in the report of
  this build and not in the skill: that the record names places and routes,
  and that a route named there reaches the directory it keeps on the
  machine the run is on. And nothing in the question says that a `pip` run
  bare opens nothing under a yes; the draft: the run names the interpreter,
  `python -m pip`, or the project's own pip by its path, and a bare `pip`
  stays theirs. Recorded, not built: the two drafts stand in the report and
  the question's text stands as approved.

  **Measured on 29 September 2026 against the working tree**, the guard fed
  its JSON directly, with a scratch project whose `origin` was a local bare
  repository, five records each pushed to `origin` and fetched before its
  run — yes with the six places; yes with the six places and the routes
  `cargo`, `gem`, `pip` and `pnpm`; no; never written; yes with `~/bin` as
  its only place — with and without a `.venv` in the project. Under the yes
  with six places: exit 0 for `brew install shellcheck`, for `brew install
  foo` behind `echo "hi" &&`, `go install golang.org/x/tools/cmd/goimports@latest`,
  `npm install -g typescript`, `npm i -g typescript`, `cargo install --root
  ~/.local ripgrep` and the same with `--root=`, `gem install rubocop`,
  whose executable directory under the system Ruby here is `/usr/local/bin`,
  `gem install -n ~/bin rubocop`, `gem install --bindir ~/.local/bin
  rubocop`, `uv tool install ruff`, which answers `~/.local/bin` here,
  `python3 -m pip install black` and `/opt/homebrew/bin/python3 -m pip
  install black`, whose scripts directory is `/opt/homebrew/bin` under
  `/opt`, `make BINDIR=~/bin install`, `make prefix=/opt/x install`, a copy
  into `~/bin` and `go build -o` into `/usr/local/bin`. Exit 2 naming the
  place the record does not name for `cargo install ripgrep`, `~/.cargo/bin`;
  `gem install --user-install rubocop`, `~/.gem/ruby/2.6.0/bin`; `python3 -m
  pip install --user black`, `~/Library/Python/3.14/bin`; `make
  PREFIX=/usr/local install`, `/usr/local`, which the record names only
  under `bin` and `sbin`; `make DESTDIR=/tmp/pkg install`, `/tmp/pkg`. Exit
  2 as not read for `pnpm add -g typescript`, where `pnpm bin -g` printed
  nothing and exited 0 at that hour, `pnpm setup` not having run yet; for
  `yarn global add typescript`, `yarn add --global typescript`, `bun add -g
  cowsay`, `bun install -g cowsay` and `pipx install black`, none of the
  three programs standing here at that hour; for `gem install -i /tmp/g
  rubocop`, `python3 -m pip install --target /tmp/x black`, `python3.99 -m
  pip install black`, `pip install black`, `pip3 install --user black`,
  `/usr/bin/pip3 install black`, `uv pip install --system ruff`, `make
  install`, `apt-get install shellcheck`, `nvm install 20` and `mise use
  node@20`, each with its own cause. Exit 2 for `sudo make install` and for
  `curl … | sh`, as before. Under the yes naming the four routes, the same,
  except exit 0 for `cargo install ripgrep`, `gem install --user-install
  rubocop` and `python3 -m pip install --user black`, and exit 2 still for
  `pnpm add -g typescript`: a route named that does not answer stays a
  block. Under the record saying no, exit 2 with that cause for every
  command that reaches the record; under the record never written, exit 2
  naming the missing section; under `~/bin` alone, exit 2 naming
  `/opt/homebrew/bin` for `brew` and `npm`, `~/go/bin` for `go`,
  `~/.cargo/bin` for `cargo`, `/usr/local/bin` for `gem` and `~/.local/bin`
  for `uv tool`, and exit 0 for `gem install -n ~/bin rubocop`, `make
  BINDIR=~/bin install` and the copy into `~/bin`. Under every record, exit
  0 with the record unread for `cargo add serde`, `.venv/bin/pip install -r
  requirements.txt`, `./.venv/bin/python -m pip install -e .`, the
  project's own `.venv/bin/pip` by its absolute path, and `cd sub &&
  .venv/bin/pip install x`, with the `.venv` on disk and without; with a
  `.venv` made by `python3 -m venv` in the project, exit 0 as well for
  `source .venv/bin/activate && pip install -e .`, `. .venv/bin/activate &&
  python -m pip install x`, `python3 -m venv .venv && . .venv/bin/activate
  && pip install x` and `uv pip install ruff`, and without it exit 2 for the
  same four, each reaching the record and blocked as a bare pip, an
  interpreter not found or an environment not found; exit 2 for
  `../other/.venv/bin/pip install x`, `~/elsewhere/.venv/bin/pip install x`,
  `source .venv/bin/activate && deactivate && pip install x`, `cd /tmp &&
  .venv/bin/pip install x`, `.venv/bin/pip install x` fed without `cwd` in
  the JSON, and `uv pip install ruff` with `VIRTUAL_ENV` set to a directory
  outside the project in the hook's environment. `npx playwright install`
  and `npm install -D playwright` exit 0 as before. With the hook's PATH cut
  to `/usr/bin:/bin`: exit 2 as not read for `brew`, `go`, `npm` and `uv
  tool`; exit 0 for `gem install rubocop`, `gem` standing in `/usr/bin`, and
  for `python3 -m pip install black`, `/usr/bin/python3`, Apple's, answering
  `/usr/local/bin` — a different interpreter from the shell's, answering a
  place the record names all the same, which is the assumption made visible:
  the hook asks the interpreter its own PATH finds; `python3 -m pip install
  --user black` there exit 2, that Python being 3.9 without
  `get_preferred_scheme`, the answer-nothing case. With stand-ins on PATH,
  scripts of this measurement and not the vendors' programs: a `pnpm`
  printing `not a path` exit 2 as not read, a `pipx` printing `~/.local/bin`
  exit 0, a `yarn` printing `~/.yarn/bin` and a `bun` printing `~/.bun/bin`
  exit 2 naming the place — those four arms were exercised as arms, not
  against the vendors' answers; the second measurement below holds them
  against the real programs. `cargo install ripgrep` exit 2 with
  `.cargo/config.toml` in the project setting `install.root`, and exit 0
  with `CARGO_INSTALL_ROOT=~/.local` in the hook's environment. `echo "x" &&
  cargo install ripgrep` and the same behind a newline exit 2 naming
  `~/.cargo/bin`, the decoding of 25 August 2026 holding. The session-start
  line, run against the scratch project, printed `routes: cargo gem pip pnpm`
  under the record naming them and `none:` with the missing section under
  the record never written.

  **Measured again on 29 September 2026, later the same day, with `pipx`,
  `yarn`, `bun` and `pnpm` standing on this machine.** What was done to the
  machine first, none of it the state a fresh machine is in: `pipx` 1.17.6,
  `yarn` 1.22.22 and `bun` 1.4.2 were installed through Homebrew; `pnpm setup`
  was run for `pnpm` 10.33.3, which wrote `PNPM_HOME` and a line putting that
  directory on `PATH` into `~/.zshrc`; and an empty `package.json` was placed
  by hand in `~/.bun/install/global`, because `bun pm bin -g` answers nothing
  until something has been installed globally, the finding below. Each route's
  answer, read directly and not off the guard: `pipx environment --value
  PIPX_BIN_DIR` prints `~/.local/bin`; `yarn global bin` prints
  `/opt/homebrew/bin`, a directory already under the six places through
  `/opt`; `bun pm bin -g` prints `~/.bun/bin` with the hand-placed manifest
  and, with the manifest moved aside or with `BUN_INSTALL_GLOBAL_DIR` pointing
  at a directory holding nothing, exits 1 with `error: No package.json was
  found for directory` on stderr and nothing on stdout; `pnpm bin -g` prints
  nothing and exits 0 where `PNPM_HOME` is not in the environment, exits 1
  with `ERROR The configured global bin directory "~/Library/pnpm" is not in
  PATH` on stderr where it is set and its directory is not on `PATH`, and
  prints `~/Library/pnpm` where both hold, which a shell opened after `pnpm
  setup` has and the process of the harness this was measured from has not,
  started from the editor on 15 September 2026, before `pnpm setup` wrote
  `~/.zshrc`, and carrying neither; the guard fed from this harness therefore
  blocks `pnpm` as not read, as the first measurement did, and its pass was
  exercised with `PNPM_HOME` and `PATH` handed to the hook's process. The same
  way as above, the guard fed its JSON directly against a scratch project with
  a local bare `origin`, seven records pushed and fetched. Under the yes with
  the six places and no route: exit 0 for `pipx install black`, `~/.local/bin`
  being among the places, and for `yarn global add typescript` and `yarn add
  --global typescript`, `/opt/homebrew/bin` lying under `/opt`, the pass by
  place with the route not named; exit 2 naming `~/.bun/bin` for `bun add -g
  cowsay` and `bun install -g cowsay`, and naming `~/Library/pnpm` for `pnpm
  add -g typescript` with the environment handed over; exit 2 as not read for
  `pnpm` without it and for `bun` with a global directory holding nothing.
  Under the yes naming the routes `pipx`, `yarn`, `bun` and `pnpm` beside the
  six places: exit 0 for all seven commands, `pnpm` with the environment
  handed over; exit 2 as not read still for `pnpm` without it and for `bun`
  before its first global install, a route named that does not answer staying
  a block. Under the record saying no, every one of the seven exits 2 with
  that cause; under the record never written, every one exits 2 naming the
  missing section. Under `~/bin` as the only place and no route: exit 2 naming
  `~/.local/bin` for `pipx`, `/opt/homebrew/bin` for `yarn`, `~/.bun/bin` for
  `bun` and `~/Library/pnpm` for `pnpm`. Under `~/bin` as the only place and
  the routes `yarn` and `pipx`: exit 0 for both, the pass by route with the
  place absent, and exit 2 naming the place for `bun` and `pnpm`. Under
  `/opt/homebrew/bin` and `~/.local/bin` as the places and no route: exit 0
  for `yarn` and `pipx` by the literal place. So `yarn` passes three ways that
  can be told apart, by the place `/opt`, by the literal place and by the
  route, and blocks under `~/bin` alone; and so does `pipx`, whose
  `~/.local/bin` stands among the six places as well, so `yarn` is not the
  only route here where the two paths through the guard can be told apart. The
  session-start line under the record naming the four routes printed `routes:
  pipx yarn bun pnpm`, and `none:` with the missing section under the record
  never written. Passes now where the first measurement blocked: `bun` under a
  record naming its route, which no record of the first measurement did while
  no `bun` stood here to answer; `yarn` under the six places, where the
  stand-in's `~/.yarn/bin` blocked and the real program's `/opt/homebrew/bin`
  passes; `pnpm` under a record naming its route, with the environment `pnpm
  setup` writes handed to the hook's process. `pipx` passes as its stand-in
  did, the two answering the same directory. Its runs stand in
  `docs/stock-take.tsv` under version 0.116.1, which this correction raises.

  **`bun` answers nothing before the first global install.** Read on 29
  September 2026: the vendor's page `bun.sh/docs/cli/pm` says `bun pm bin -g`
  prints "the path to the global `bin` directory", `<$HOME>/.bun/bin`, and
  nothing about a manifest; on `bun` 1.4.2, the current release, of 5
  September 2026, `bun pm bin -g` and `bun pm ls -g` exit 1 with `No
  package.json was found for directory "~/.bun/install/global"` and `note: Run
  "bun init" to initialize a project` until a `package.json` stands there, and
  `bun pm ls -g` with an empty one and no lockfile exits 1 with `missing
  lockfile, nothing to list`. Pull request 36622 in `oven-sh/bun`, "pm: let
  `bun pm -g bin` / `bun pm ls -g` work before any global install", opened 1
  August 2026, is open on 29 September 2026; issue 43094, "Listing global
  packages shouldn't require a package manifest", opened 17 September 2026
  against 1.4.2, is open as well. `bun add -g cowsay` into a global directory
  holding nothing, through `BUN_INSTALL_GLOBAL_DIR` and `BUN_INSTALL_BIN`
  pointing into the scratch directory, whose defaults the vendor's `bunfig`
  page gives as `~/.bun/install/global` and `~/.bun/bin`, wrote the manifest,
  the lockfile and the binaries and exited 0: the install itself does not need
  the manifest, only the query does. What the guard should do when a route
  that normally answers does not: block, as it does. A route the record names
  that does not answer is a block, never a pass, and a pass here would need
  the guard to know `~/.bun/bin` from the vendor's page rather than from the
  machine, which is the written answer the routes were built to avoid. Whether
  the message tells the person enough: it says `bun (bun pm bin -g did not
  answer)`, which hands the install over rightly and tells them what was
  asked; it does not tell them that the fix is one command of their own, the
  handed-over `bun add -g` itself, which creates the manifest, or `bun init`
  in the global directory as bun's own note says, because that note stands on
  stderr and the guard sends every route's stderr to `/dev/null`. For `pnpm`
  without `PNPM_HOME` the same shape has nothing to carry, `pnpm bin -g`
  printing nothing anywhere, and its fix, `pnpm setup` and a shell or a
  harness started after it, is outside anything the guard reads.
  Recorded, not built: the block for a route that does not answer names the
  query and not what the query said on stderr, which for `bun` names the
  cause and the fix.

  **`bun`'s directory is not on the search path here, and whether that reaches
  anything.** `~/.bun/bin` is not on this machine's `PATH`. `bun pm bin -g`
  prints `warn: not in $PATH` on stderr only where stderr is a terminal,
  measured with `script`: stdout a file and stderr a terminal prints it,
  stdout a terminal and stderr a file does not, neither does not. The guard
  captures stdout, sends stderr to `/dev/null` and runs where nothing is a
  terminal, so the warning never reaches the guard, by construction and not by
  chance. The install command says so itself: `bun add -g cowsay`, terminal or
  not, prints on stderr `warn: To run "cowsay", add the global bin folder to
  $PATH:` and the `export PATH="…/bin:$PATH"` line to run, measured into the
  scratch directories above. `pnpm` refuses instead: `pnpm add -g cowsay` with
  `PNPM_HOME` pointing at a directory not on `PATH` installs nothing, exits 1
  and prints `The configured global bin directory "…" is not in PATH`, and
  installs once the directory is on `PATH`. So the run sees it, in the
  install's own output, where the vendor prints one; the guard does not and
  cannot. Should an install into a place not on the search path be reported,
  and where: yes, and the places exist. The install report of `build-work`
  step 3 point 7 asks for "what came back", and the vendor's warning is part
  of what came back; a run that copies the `installed` line and drops the
  warning has broken point 7, not found a gap in it. The `export` line is a
  command whoever clones the project has to run, which is what point 8 puts
  into `environment.md`, as the vendor prints it. The build itself is not
  stopped by it: point 7 reads the result off the path the installer writes
  to, never off `command -v`, so a tool off `PATH` is found all the same,
  while a check that calls it by its bare name is red until the directory is
  on `PATH`, one more reason the line belongs in `environment.md`. Where a
  vendor prints no warning the run cannot see it, and nothing here invents a
  way. No defect of this set: a search of point 7 for "what came back" finds
  the duty standing.

  **Not done.** The two runs on a bench that milestone 3 ends with, one
  under a yes and one under a no, from the installed copy; nothing here has
  run on a bench. The refresh in `setup-project`, and the drivers half, as
  on 28 September 2026. The session-start line prints the routes as names
  and does not resolve them, so which directory a route reaches on this
  machine shows in a block and nowhere earlier. `pipx`, `yarn`, `bun` and
  `pnpm` are exercised against the real programs since the second
  measurement, `bun` with a manifest placed by hand and `pnpm` only with the
  environment `pnpm setup` writes handed to the hook's process, not in the
  process of the harness this was measured from, which carries neither
  `PNPM_HOME` nor its directory on `PATH`. Nothing here has run on a bench.
  Built, never walked on a bench: every route above.

- **The install guard's block message cut to the approved wording, on 29
  September 2026, version 0.117.0.** The message of every block in
  `hooks/pre-tool-use-install-guard.sh` is replaced by the wording approved
  that day, worked out in the session that approved it sentence by sentence:
  what each part of the old message was put there for, and what the run has in
  front of it when the message arrives. It stays one `echo`, since a record in
  `docs/stock-take.tsv` anchors on that line, and nothing in it was reworded
  on this branch.

  **What came out.** The name of the record's file and section, and the
  sentence on what a yes opens — a place the record names or the answer of a
  route it names, nothing under `sudo`, no script piped from the network —
  which stand in `docs/skill-conventions.md` under "The install guard reads a
  record" and in `build-work` step 3 point 7. `$REF`, the name of the ref,
  which every cause that resolved one carries already, `install-tools: no on
  origin/main`, `on origin/main as last fetched`, and which the causes that
  never resolved one stood in for with the phrase "the default branch as last
  fetched", untrue there: the assignment of that stand-in came out of the
  failure branch with it, and `$REF` is replaced nowhere. The reason an
  organisation name is not a module path and the reason `command -v` finds an
  older copy, both in `shared/backed-command.md`. And the two costs of a
  decline, a check class `skipped` with that reason or the part of the task
  that needs the tool not built, which assumed the caller has check classes or
  tasks and offered `research`, `build-prototype` and `record-lessons` nothing
  — the gap the entry measured on 6 September 2026 above records under "One
  thing the shared rule cannot reach". The message now says that what a
  decline costs this work gets said, whatever that work is, which closes that
  gap in the hook: the defect's evidence in `docs/stock-take.tsv` moves onto
  the `echo` line, its site staying where that entry names it.

  **What stayed.** The cause, decided at the lines above the `echo` and
  carried as `$CAUSE`; that the record is read off the default branch as last
  fetched and never off the working tree; that the install is the user's to
  run and a yes said in the session does not change that, only the record
  does; what it installs and what it unblocks, in one line; the exact command,
  backed by the vendor's own installation line or by the path in it resolving;
  both ways it can go, said at once; the pick-up once the tool stands at the
  path the command writes to, their word saying when to look and the path
  deciding, never `command -v`; that nothing moves until they say so; a
  decline as an answer; a block as not a decline, the issue or the skip reason
  carrying the cause with nobody there; and the last sentence, on a command
  that only looked like an install, which `shared/guard-block-intro.md` points
  at and still points at what it means to. The two long dashes are em dashes,
  as the approved text has them, and the hook's double quotes carry them
  without escaping, as they carried the two of the old message.

  **Why the shortening could not lean on the shared blocks.** The guard fires
  on any Bash call, registered in `hooks/hooks.json` with no condition, and
  with no skill loaded nothing of `shared/` or `skills/` is in front of the
  run: `shared/backed-command.md`, `shared/command-does-not-answer.md` and the
  decline paragraph of `build-work` step 3 point 7 are read only where a skill
  inserts them, and a block met outside a skill has the message and nothing
  else. So the message carries every duty itself, in fewer words, and the
  reasons behind them stand in the shared blocks and the conventions for the
  runs that have those in front of them.

  **The joined sentence, read for every cause the guard can produce, on 29
  September 2026 against the working tree.** The guard fed its JSON directly,
  as in the entry above, with a scratch project whose `origin` was a local
  bare repository and each record pushed and fetched before its run.
  Thirty-one feeds: twenty-nine blocks and two passes as controls, and the
  text after the cause was the same in all twenty-nine. The reader's causes,
  `bin/devloop-install-record`: not a git repository; no default branch, on a
  repository whose only branch is `trunk`; the ref cannot be read, on `main`
  without a remote; no `environment.md` on the fetched ref; no section; no
  `install-tools` line; `install-tools` reading `maybe`; and the guard's own
  fallback where the reader is not there, with a copy of the hook standing
  beside no `bin/`, and where it answers nothing, with a stub reader exiting 1
  in silence. The guard's own causes: the record saying no; `sudo`; a script
  piped from the network; a place the record does not name, one place and two,
  with no route named and with `gem` and `pip` named; and fourteen shapes of a
  destination that cannot be read — a system package manager, a version
  manager, the two in one command, a bare `pip`, `uv pip --system`,
  `--target`, an interpreter not found, `make install` without a destination,
  `gem --install-dir`, `cargo` with `install.root` in a config file in the
  project, `brew` with the hook's PATH cut to `/usr/bin:/bin`, a copy into
  `$GOBIN` under the same cut, an interpreter answering nothing for its
  scripts path, a stand-in `python3` of this reading, and `bun` with
  `BUN_INSTALL_GLOBAL_DIR` pointing at a directory holding nothing. No cause
  ends in a full stop, a quotation mark or a colon, so every join into "The
  install is the user's to run" reads. The join before the cause is poor in
  seven: the frame ends in a colon and the cause opens with a label and a
  colon of its own, so the sentence reads "does not open it: no record: …",
  "does not open it: unknown value: …", "does not open it: no default branch:
  …", "does not open it: the ref … cannot be read: …" and "does not open it:
  the record could not be read: …", two colons in one sentence, and where the
  reader is missing four, since the fallback quotes the shell's own error with
  two absolute paths and a line number. Three causes read against the frame
  rather than with it, "read off the default branch as last fetched … does not
  open it: not a git repository", "… no default branch …", "… has not been
  fetched", and each reads, the cause saying why the read failed. Not fed,
  because the guard cannot produce them: the reader's "cannot be entered",
  since the guard exits 0 on that directory before the reader runs; the
  reader's exit 2 on more than one argument, since the guard passes one;
  "where it lands could not be read off the command", since every path that
  sets `BEYOND` and reaches the record fills a destination, an unread cause or
  an opened route first; "its install root could not be read" for `cargo`,
  since the root falls back to `~/.cargo` while `HOME` is set; and the arm for
  a route with no arm of its own, since every manager the verb pattern matches
  has one. Recorded, not built: the seven causes carrying a label and a colon
  of their own — "no default branch", "the ref … cannot be read", "no record",
  "unknown value" twice, "the record could not be read" twice — chain two
  colons into one sentence behind "does not open it:", and the fallback for a
  missing reader puts the shell's error with its paths into it; the causes
  stand as they were, unchanged here.

  **The run recorded on the message on 29 September 2026 above** walked the
  old wording and does not stand for this one; it stays in the table as the
  fact it is, and the tool lists it under the runs that do not count, as the
  table's rules say. It did not count before this change either: it stands
  under version 0.116.0, and the squash merge of pull request #141 put 0.116.1
  onto the main history without it, so the tool rejects it, and eighteen more
  runs of that measurement with it, as broken records. The roadmap, searched
  for `0.116.0`, `broken record`, `never introduced` and `squash`, names that
  nowhere: the first finds the entry above and the other three the self-test's
  cases and the dating of check commands. Recorded, not built: the nineteen
  runs of the first measurement of 29 September 2026 above stand under version
  0.116.0, which the squash merge of pull request #141 never introduced into
  `.claude-plugin/plugin.json` on the main history, so the tool rejects them
  as broken records; not repaired here, since the branch's final state they
  should have been recorded at is gone and a re-run is a task of its own.
  Eight runs of this reading stand in `docs/stock-take.tsv` under version
  0.117.0: the message, the reader's cause, the record saying no, `sudo`, the
  script piped, the unread destination, the unnamed place, and the
  two-ways-out defect of 6 September 2026 above, walked by the same feeds; the
  two passes were controls and are not recorded. Nothing here has run on a
  bench, and nothing from the installed copy, which is 0.116.1 and prints the
  old message until the plugin is updated.

- **The nineteen runs of 29 September 2026 re-anchored to 0.116.1, the
  stock-take made to say on a branch what it will say on main, and a guard
  against a second raise of the version on one branch; 29 September 2026,
  version 0.117.1.** On `task/mend-broken-runs`, off `2686bd6`.

  **What the tool said on main, before anything changed.** At `2686bd6`,
  `scripts/devloop-stock-take` exited 2 with `BROKEN RECORDS: 19`: lines 2422
  to 2439 and 2441 of `docs/stock-take.tsv`, every one `version 0.116.0 was
  never introduced into .claude-plugin/plugin.json on this history`. All
  nineteen are runs dated 29 September 2026 of source entry, the first
  measurement of the install routes: fifteen on outcomes of
  `hooks/pre-tool-use-install-guard.sh`, two on `bin/devloop-install-record`,
  two on `hooks/session-start.sh`. Read off `origin/task/install-routes`,
  which still stands: its first commit `3802d25` raised 0.115.0 to 0.116.0,
  its second `054a996` recorded one run, its third `6cd2e6f` raised 0.116.0 to
  0.116.1; the squash `188648d` carries the tree of `6cd2e6f` byte for byte,
  so 0.116.0 never entered `plugin.json` on main. The account in the order
  holds in every particular; the one detail it leaves out is that the first
  raise was a minor one, 0.115.0 to 0.116.0, not a patch.

  **Whether the gap sits elsewhere.** The 221 runs that name a version name
  twenty of them, held against every version `plugin.json` has carried on
  main's history, read with `git log -p` over the file: 0.116.0 is the only
  one absent. Main's sequence has five other numbers it never carried,
  0.21.0, 0.30.0, 0.83.0, 0.84.0 and 0.92.0, and no run names any of them.
  Nothing else.

  **Since when.** Red since `188648d`, the squash of pull request #141, 29
  September 2026 at 14:06 CEST; the tool at `8fbaeee`, pull request #140, run
  in a worktree, exits 0. One order came between: the block message of pull
  request #142, whose defect record says it ran the tool on main at `188648d`
  before changing anything, saw the nineteen, recorded them under this
  heading as a defect and left them, and was merged red at 20:49 the same
  day. So main was red for about seven hours and across one merge before this
  branch, and the one order in between did run the tool against main.

  **The mend, and the rule it follows.** The header of
  `scripts/devloop-stock-take`, section C under run: a run recorded on a
  branch under the version its merge will introduce counts before the merge
  and after it, and such a run is recorded only at the branch's final state.
  The branch's final state carried 0.116.1, and that is what the merge
  introduced, so the nineteen are re-anchored to 0.116.1 and not struck: the
  version column changes and nothing else, the date, the source and the entry
  lines stay. That it overcounts nothing was checked rather than assumed:
  `git diff 3802d25 188648d` over `hooks/`, `bin/`, `skills/`, `shared/` and
  `scripts/` is empty, so every line the nineteen things stand on is the same
  in the tree the runs ran in and in the commit that introduced 0.116.1, and
  the tool of that day, run at `6cd2e6f` in a worktree, exited 0 with none of
  the nineteen among the runs that do not count. Nothing is lost. The entry
  above left the nineteen as they were because the branch's final state they
  should have been recorded at was gone; it is not gone: `origin/task/
  install-routes` stands on the remote, and `188648d` carries its tree byte
  for byte, which is what the re-anchoring rests on. The entry of the
  measurement above still says 0.116.0, which is what the tree carried
  that day and stays as written; the sentence in `docs/skill-conventions.md`
  that said the table carries the runs under 0.116.0 and 0.116.1 now says
  what the table carries.

  **What went wrong, twice, and who has to meet what.** The orders for this
  repository are written outside it and each ends with "raise the patch
  version by one, once"; a branch that takes two orders raises twice, a
  squash merge lands only the last raise, and every run recorded under the
  first names a number main never carried. The rule that should hold is one
  version per branch: an order that finds the version already raised on its
  branch does not raise again, and records its runs under the number the
  branch already carries. Who has to meet it is the run following the order,
  at the moment of the raise, and it is met by nobody remembering: built here
  as `scripts/devloop-version-guard`, registered in `.claude/settings.json`
  of this repository after every Edit, Write, MultiEdit and Bash. It reads
  nothing off the tool call; it reads three versions of
  `.claude-plugin/plugin.json`, where the branch left `origin/main`, at HEAD
  and in the working tree, and exits 2 with all three named when the tree
  raises a second time on a branch that already raised, telling the run to
  put HEAD's number back and record under it. It is silent outside a
  repository, without `origin/main`, without the file, on a branch's first
  raise and on a tree that carries what HEAD carries; it does not care
  whether main has moved on since, since the comparison is against the
  merge-base. What it depends on: Claude Code loading a trusted repository's
  project settings, which the hooks guide says it does without an approval
  step of its own, and picks up on edit; `origin/main` being fetched; and the
  edit being made in a session, since an editor by hand is not a tool call.
  Fed eight states on a scratch repository on 29 September 2026: not a
  repository, exit 0; a repository without `origin/main`, exit 0; tree, HEAD
  and merge-base all at 0.1.0, exit 0; the first raise to 0.2.0 uncommitted,
  exit 0; the first raise committed, tree and HEAD at 0.2.0, exit 0; a second
  raise to 0.2.1 in the tree, exit 2 naming 0.1.0, 0.2.0 and 0.2.1; the file
  gone from the tree, exit 0 and nothing on stderr; main moved to 0.2.0 by
  another commit with the branch not rebased, exit 0. And in this repository
  with tree and HEAD equal, exit 0. Live in the session that built it, picked
  up from the settings file without a restart: a Bash edit of the file to
  0.117.2 came back with the message naming 0.117.0, 0.117.1 and 0.117.2, and
  the number was put back. From now on it runs in every session in this
  repository, which a measurement of the guards made here records among what
  else was there, as the conventions ask.

  The second thing: nothing caught it at the merge, because the tool had been
  run on the branch, where 0.116.0 was a version its history carried, and not
  against what main would become. Can the tool be run against the merged
  state before the merge? By hand, yes: a worktree at `origin/main`, `git
  merge --squash` of the branch, a commit, the tool there. It is not needed
  for versions any more, because the tool now computes that state on the
  branch: a run under a version whose introducing commit is not on
  `origin/main`, and which the working tree no longer carries, is a broken
  record, `version 0.116.0 was introduced at 3802d25, which is not on
  origin/main, and .claude-plugin/plugin.json carries 0.116.1: a squash merge
  lands only the version the branch ends on, so on main this run would name a
  version never introduced`. The patched tool, run at `6cd2e6f` in a
  worktree, exits 2 with exactly the nineteen; so the second order of pull
  request #141 would have been red at its own end, where the nineteen could
  still have been re-anchored, or the raise taken back. For everything but
  versions the branch already tells the truth: anchors stand on the same
  tree, and the squash folds every branch commit into the one that introduces
  the version, so it can only make runs count that did not, never the
  reverse. Its case in the self-test, `a run naming a version this branch
  introduced and raised over`: two commits past `origin/main` bump the
  fixture's version to 0.3.0 and then 0.3.1, a run under 0.3.0 is broken and
  does not count, a run under 0.3.1 counts. What this depends on: the tool
  being run on the branch after the second raise, which the guard now forces
  to a first raise or a reverted one; and on `origin/main` being here, since
  without it the tool cannot tell a branch's version from main's and says
  nothing, as the header's limits state. What runs the tool at the merge
  itself: nothing. Whoever merges does so by hand in a terminal, there is no
  workflow under `.github/`, and main is unprotected, read 29 September 2026:
  branch protection answers 404 `Branch not protected`, rulesets answer an
  empty list. What would hold without memory is a workflow running the tool
  and its self-test on every pull request together with a required status
  check on main, and the second half is a repository setting somebody sets
  once, outside these files; a workflow without it is a light somebody has to
  look at. Recorded, not built: nothing runs `scripts/devloop-stock-take` at
  the merge, and a red branch merges by hand unseen; a workflow under
  `.github/` and a required check on main would hold it, the check being a
  setting of the repository, not a file in it.

  **Records.** The nineteen runs, version 0.116.1. The defect of the entry
  above, its evidence moved onto the tool's squash check, its site staying on
  the line that said nothing was built. A thing for the tool's new outcome,
  anchored where the check stands, and three for the guard's, its silent pass
  where nothing can be compared, its silent pass where the tree carries no
  second raise, and its block. The self-test, run on 29 September 2026 at
  0.117.1 in this tree, `SELF-TEST PASSED: 88 cases; of the 74 messages this
  tool rejects, refuses or answers with, read off its own source, 74 are
  asserted by a case and 0 by none`, recorded on the new outcome. The tool
  itself, run on this branch at 0.117.1, `BROKEN RECORDS: 0` and exit 0,
  recorded on its exit 0 outcome, walked for the first time, and on the
  defect of the nineteen. The guard's eight feeds, recorded on its three
  outcomes. Nothing here has run on a bench, and nothing from the installed
  copy.

- **The merge gate, its half in the files: a workflow that runs the stock-take
  and its self-test on every pull request into main, against the merged state;
  29 September 2026, version 0.117.2.** On `task/merge-gate`, off `5e8c6d2`.

  **Whether Actions runs here, established first.** `gh api
  repos/jayjay-create/claude-devloop/actions/permissions` answers `enabled:
  true` and `allowed_actions: all`; `actions/workflows` answers `total_count:
  0` and `actions/runs` answers `total_count: 0`. Read 29 September 2026:
  Actions is on, and nothing has ever run, because there was nothing to run. A
  required check that never runs would leave every pull request pending; with
  Actions on, a workflow can run, and it runs first on the pull request that
  carries it.

  **What it runs, and on what.** `.github/workflows/stock-take.yml`, on every
  `pull_request` into main, one job named `stock-take`, which is the name the
  check appears under: a step that runs `scripts/devloop-stock-take`, a step
  that runs `scripts/devloop-stock-take --self-test`, each red when its exit
  code is not 0, the job red when either step is. The checkout is
  `actions/checkout` with `fetch-depth: 0`: the tool blames every line of
  every thing, finds the commit that introduced a version with `git log -S`
  over the history, holds a run's commit against `origin/main`, and refuses a
  shallow clone, and the action's default checkout is one commit deep with no
  `origin/main`. Depth 0 fetches all history for all branches, `origin/main`
  among them. A step before the tool prints the git and python versions and
  HEAD with its parents, and fails when the checkout is shallow or
  `origin/main` is missing, so the log says what the tool ran on rather than
  the tool's refusal. The ref is the event's default, `refs/pull/N/merge`: the
  pull request merged onto main as main stood when the run started, the merged
  state and not the branch tip. Read off the tool: it needs python3 at 3.8 or
  later, `ast.Constant` in the self-test's message inventory and
  `subprocess.run(capture_output=True)` being the newest things in it, and git
  at 2.15 or later for `rev-parse --is-shallow-repository`; `ubuntu-latest`
  carries both, so the workflow installs nothing. `permissions: contents:
  read`, `persist-credentials: false`, no step that commits, pushes or
  comments: it writes nothing back. `timeout-minutes: 10`, so a hung run does
  not hold a pull request for the platform's six-hour default; `concurrency`
  cancels the run of a pull request's earlier push when a later one arrives.

  **Whether the merged state differs from the branch tip.** It is what main
  becomes only while main does not move: a merge ref is computed when the run
  starts, and a branch merged after main took another merge was checked
  against a main that no longer exists. The setting that closes that is
  `strict` on the required check, "require branches to be up to date before
  merging", under which a pull request behind main has to be updated, which
  runs the check again on the new merge ref. On this repository branches are
  cut and merged one at a time, so the case is rare and the update cheap. A
  pull request with a conflict has no merge ref, so the workflow does not run
  and the check does not report, which is right: the conflict has to be
  resolved first.

  **What it would have caught, in the two cases this repository has seen.**
  Both on 29 September 2026, the entry above. Pull request #141, the nineteen
  runs recorded under 0.116.0 on a branch that ended on 0.116.1: the tool of
  that day, run on the branch tip, was green, and it would have been green on
  the merge ref too, since the merge commit's history carries the branch's
  `3802d25` and 0.116.0 resolves there as it did on the branch; the tool since
  0.117.1 is red on either, with its squash check. So the gate would not have
  caught #141 on the day; the tool's own change did, and the gate is what runs
  that tool from now on without anybody remembering to. Pull request #142,
  merged at 20:49 with the nineteen already broken on main: its merge ref is
  main at `188648d` plus the branch, on whose history 0.116.0 was never
  introduced, so the tool of that day exits 2 there exactly as it did on main,
  where that order had run it and merged anyway. A required check with
  `enforce_admins` would have refused that merge, and the branch tip would
  have said the same, since the branch was cut from the red main. What the
  merge ref sees that the branch tip does not is a third case, a branch green
  on its own tree and red once merged because main moved after the branch was
  cut; neither of the two was that, and it has not happened here yet.

  **What it costs.** In this tree the tool runs in 20 seconds and the
  self-test in 2, read off `time`; the history is 294 commits, 26 megabytes in this clone. On the runner, with its start and the checkout, a run of one to two
  minutes, the first run measuring it; the repository is public, so the
  minutes are not billed. A pull request that changes the workflow file runs
  the changed file, because on `pull_request` GitHub takes the workflow from
  the merge ref, and that is how the pull request carrying this file runs it
  at all. Once the check is required by name, a pull request that renames the
  job, breaks the file or removes it never reports `stock-take` and cannot
  merge until the file or the rule is put right, which is the direction a gate
  should fail in.

  **What exercises it, and when.** A workflow runs once it is on the server,
  so the order that wrote it could not run it: the pull request carrying
  `task/merge-gate` is the first thing it runs against, and the run is on the
  server's merge ref of that pull request, not in this tree. What to look at,
  so that it worked and did not merely report: `gh pr checks` on that pull
  request listing `stock-take` with pass and its duration; in its log, the
  step "what the checkout holds" printing HEAD with two parents, `origin/main`
  resolved, git and python versions; the stock-take step ending in `BROKEN
  RECORDS: 0` and `UNCOVERED LINES OF THE SEARCH SET: 0 of N`, N the figure
  this entry records below; the self-test step ending in `SELF-TEST PASSED: 88
  cases`. That proves it runs green; only a red pull request proves it
  catches, and none has met it: a throwaway pull request carrying one broken
  record, a run under a version never introduced, opened after the merge and
  closed without merging, would walk the red outcome once. Its run is recorded
  on the workflow only after it has run, by the order that reads that log.

  **What is not in the files: the setting, and the sequence after it.** Making
  the check required on main is a setting of the repository, the owner's, not
  attempted here and not needed for the workflow to run. Read 29 September
  2026: branch protection on main answers 404 `Branch not protected`, rulesets
  answer an empty list, `allow_auto_merge` reads `false`. The command, no
  placeholder in it, the check's name being the one thing that has to match
  the job's: `gh api -X PUT
  repos/jayjay-create/claude-devloop/branches/main/protection --input -` with
  the body
  `{"required_status_checks":{"strict":true,"checks":[{"context":"stock-take"}]},"enforce_admins":true,"required_pull_request_reviews":null,"restrictions":null}`
  on its standard input; `enforce_admins` because the owner is an admin and
  would otherwise merge past a red check with a warning; `strict` for the
  reason above. The same as a ruleset is a `POST` to
  `repos/jayjay-create/claude-devloop/rulesets` with a
  `required_status_checks` rule naming the same context, which binds admins
  unless they are listed as bypass. The merge sequence after it: `git push -u
  origin <branch>`, `gh pr create --fill`, `gh pr checks --watch --fail-fast`,
  then `gh pr merge --squash --delete-branch` on a 0 from the watch; `gh pr
  merge` straight after `gh pr create`, today's third step, is refused with
  `not mergeable: the base branch policy prohibits the merge` while the check
  is pending or red, and `gh pr checks` run in the seconds before the check
  run is registered answers `no checks reported` and exits 1, so it is run
  again. Where `strict` finds the branch behind main, `gh pr update-branch`
  first, then the watch again. Auto-merge, not enabled on this repository: `gh
  pr merge --auto` is not available, and enabling it is a separate decision of
  the owner, `allow_auto_merge` on the repository, not part of this; with it
  on, `--auto` arms the platform to merge once the check is green, and merges
  at once instead where it is run inside the window before the check
  registers, which "Arming auto-merge is allowed; merging is not" in
  `docs/skill-conventions.md` measured. Auto-merge on and a required check
  that binds are together the two preconditions the unattended mode of
  `build-work` reads before it goes alone, so that decision is also the
  decision whether this repository can be built on unattended.

  Half built: the workflow stands in `.github/workflows/stock-take.yml` and
  has never run, and the required check on main is a setting still to be set.
  The tool reads the defect of the entry above off this line, and it says what
  the header's limits say: it rejects an evidence under `.github/`, since that
  is neither a shipped directory nor docs/, so a fix standing in a workflow
  cannot carry a state, and the defect keeps reading as recorded while the
  file stands on disk; recorded as a finding on the tool's location rule, the
  search of this file for `.github` and `evidence under` having come back with
  the entry above and the self-test's outcome only.

  **Records.** The tool, run in this tree at 0.117.2, `BROKEN RECORDS: 0`,
  `UNCOVERED LINES OF THE SEARCH SET: 0 of 1900` and exit 0, recorded on its
  exit 0 outcome. The self-test at 0.117.2, `SELF-TEST PASSED: 88 cases; of
  the 74 messages this tool rejects, refuses or answers with, read off its own
  source, 74 are asserted by a case and 0 by none`, recorded on its outcome.
  Nothing has run on the server, and nothing from the installed copy.

- **The empty case of `setup-project` asks the questions that need no code,
  the install permission among them: step 3 skips the two questions that need
  code, not step 4; 29 September 2026, version 0.118.0.** On
  `task/empty-case-questions`, off `6e06fbf`.

  **What was observed, and what was recorded already.** The order of this
  branch reports, as observed on 29 September 2026 in a fresh empty
  repository, `devloop-test-p`: `start-work` reached `setup-project`, step 3
  found no code and skipped the whole of step 4, so the install permission
  question was never put, the project has no record, and the guard blocks
  every install outside the repository there for good, since nothing asks
  later. The machine this entry was written on read 29 September 2026, 23:34
  CEST, at the time; the required check on main the order names as standing
  since 30 September read as set at that moment, `strict` with the one
  context `stock-take` and `enforce_admins` on. That the skip does this
  stood recorded already, as a finding of the stock-take in
  `docs/stock-take.tsv`, made on 28 September 2026 by the order that put the
  question in and anchored on the skipping line: question 4 is asked nowhere
  else, the refresh asking nothing anew, so a project set up empty gets no
  record and the guard blocks every install for it until the section is
  written by hand; searched under "Known gaps" that day for the same defect
  and found no entry. Its should offered two ways out, question 4 put before
  the rest of step 4 is skipped, or a sentence saying that a project set up
  empty carries no record and where it is asked later. The first is built
  here, widened to every question that needs no code; the finding is the
  defect below. The status sentences of 28 September 2026 in README.md,
  `docs/plan.md` and `docs/skill-conventions.md`, which said a project set
  up empty carries no record, now say so of one set up empty before 0.118.0.

  **The drift, and when it started.** The skipping line dates from 17 August
  2026, the day the skill was written: `e6ece10` put "ueberspringe Schritt
  4" into the German text and `9d7a784`, the same day, "skip Step 4" into
  the English. Step 4 held six questions that day, the tracker, the checks,
  the local environment, the labels, where glossary and decision records
  live, and the tone, which the translation took out the same day. Of the
  five that stayed, two need code, the checks and the local environment; the
  other three did not need it then either, so the skip was wider than its
  reason from the day it was written. Since then two questions came in, both
  needing no code, neither touching step 3: auto-merge with the gate reading
  on 18 August 2026, `e658181`, and the install permission on 28 September
  2026, `8fbaeee`, version 0.115.0. Read off `git log -S` over the two
  phrases and the question heads of step 4 at every commit of the file. Five
  of the seven questions need no code today, and the skip took all seven.

  **What the skip took with it, besides the record.** Two consequences the
  audit of 26 September 2026 carries as defects already, each recorded there
  as a wrong cross-reference and not as a consequence of the skip. The
  pointer in `domain.md`, which step 6 writes at the two places question 7
  creates, `CONTEXT.md` and `docs/adr/`, and which the skill's own words
  call the one outcome to avoid, a pointer to something that does not
  exist: in every empty project it was written at two places nothing had
  created, the creating question skipped with the rest. And the reading
  question 2 supplies, whether auto-merge is on, what checks a merge and
  whether it binds this account, which `environment.md` records and step 8
  arms against: never made, so `environment.md` had nothing to record there
  and step 8 met the arming without knowing what the repository can do.
  This change mends what the skip caused in the empty case: questions 2 and
  7 run there now, so the two places exist when `domain.md` points at them
  and the reading is made before `environment.md` records it. It does not
  mend the two recorded defects, which stand as written: `domain.md` still
  says step 6 created the two places and `environment.md` still says the
  reading comes from step 2, with code as without, and both stay as the
  audit recorded them. The should of the first names question 6, which has
  been question 7 since 0.115.0 put the install permission in as question 4;
  recorded as a finding on that line. Also taken: question 1's statement of
  the one remote, and question 6's mapping onto existing labels where the
  tracker has some with overlapping meaning, which a fresh repository on
  GitHub has.

  **Which questions the empty case puts now, and which it skips.** Step 3
  says it: step 4 is not skipped, and the two questions that need code say
  so in their own condition, "always where there is code". Question 3, the
  checks: its mapping is of tools found onto classes, and no code means no
  tool found and nothing to map; a class is ruled out against what the
  project is, and against nothing no class can be; and a missing tool is
  named from a stack. Question 5, the local environment: nothing runs yet,
  and `environment.md` says so, which is what it has said in that case all
  along. Questions 1, 2, 6 and 7 are put under their conditions as with
  code. Question 4 is put as with code, in the approved wording, unchanged:
  there is no dependency file, and the run says so, the question asking for
  what the project declares; there is no stack, so no route is named, which
  the wording provides for by naming no route the stack does not have. Yes,
  no and the record are unchanged: written into `environment.md` in step 6,
  `install-tools`, the six `install-place` lines, no `install-route` line and
  `install-answered`, landed by step 8, the same moment as with code. The
  reader prints no route line for such a record and the session-start line
  prints `routes: none`; nothing of the guard, the reader or the record's
  form changes.

  **What the person loses by being asked before there is a stack.** The
  route half of the question: with a stack, the question says for each
  route the stack has which kind of place a yes opens, read off the
  machine; without one it says only that a yes opens the places the record
  names. A yes given then opens the six places and no route, and when the
  stack arrives with the first task and reaches for a route whose
  destination lies outside those places, `cargo` into its own bin
  directory, `bun`, `pnpm`, `yarn`, or `npm` under a prefix of its own, the
  guard holds that destination against the places, blocks, and hands the
  command over, under a yes as under a no; a route landing inside them,
  `brew` under `/opt`, `go` under the home directory's go bin, `pipx` and
  `uv` under `~/.local/bin`, passes. Nothing later would have told them
  more: the refresh asks nothing anew and `docs/plan.md` carries it as not
  built, no skill puts the question again when a stack arrives, and the
  entry on how the stack gets chosen records that nothing picks one. So the
  choice is between the question now, without its route half, and no
  question; the route lines are added by hand, with the person there, as
  the wording says the answer can be changed, and every session start
  prints the record with `routes: none` until then. The refresh is where the
  route half would be put, and it stays unbuilt.

  **Read through afterwards.** Step 4 reads as one flow with the empty case
  in it: its opening rule, each question only under its condition, now
  carries the case, since the two questions that need code say so where
  their condition stands, and step 3 says which and why. `grep -rn "skip
  Step 4" skills shared` and `grep -rn "set up empty" README.md docs skills
  shared` find no sentence saying the opposite; the four status sentences
  named above were the ones that did, and the finding's own text in the
  table, which goes with it. Step 0's "two or three questions", the
  `checks.md` rule that `empty` is what the no-code case in step 3 writes,
  and step 9's close for barely any code stand as written and hold.

  Built: step 3 of `setup-project` skips the questions that need code and
  puts the others, question 4 among them, since 29 September 2026, version
  0.118.0; the defect's evidence stands on that line. Nothing has run on a
  bench: the question has been put to nobody in an empty project, and the
  two runs milestone 3 ends with have not happened.

  **Records.** The tool, run in this tree at 0.118.0, `BROKEN RECORDS: 0`,
  `UNCOVERED LINES OF THE SEARCH SET: 0 of 1902` and exit 0, recorded on its
  exit 0 outcome. The self-test at 0.118.0, `SELF-TEST PASSED: 88 cases; of
  the 74 messages this tool rejects, refuses or answers with, read off its
  own source, 74 are asserted by a case and 0 by none`, recorded on its
  outcome.


- **The install question put through the harness's choice widget on its first
  asking, none of its thirteen points arriving whole; the question cut to the
  four that carry the decision and the form named; 30 September 2026, version
  0.119.0.** On `task/install-question-shorter`, off `f2e6814`.

  **What the run of 29 September 2026 produced.** In `devloop-test-q`, a fresh
  empty repository set up with 0.118.0, the first time the question was put to
  anybody: three questions in one multiple-choice form, tabbed "Auto-Merge",
  "Labels" and "Tool-Installation", answered in one submit, and the install
  question as one line with two answers of two lines each — a yes saying the
  run installs by itself without asking again, landing through the usual
  package manager, "here: go install", in the usual places for installed Go
  tooling on this machine; a no saying the command is shown for the person to
  run, or noted as an issue with `needs-human`. Nothing above the form. Held
  against the thirteen points question 4 required, in the order that read it:
  none arrived whole, six in part, six not at all, one wrong — a route named
  where the repository had no go.mod and no stack, against the two sentences
  that said to name none. What did arrive is the words that stand only in
  question 4, "usual places on this machine", "without asking again", "from
  now on", and no recommendation, so the text was reached and read through.
  Where "go" came from is not settled by the files: the nearest text is
  `shared/backed-command.md`, inserted between question 3 and question 4 and
  leading with `go install`, and the machine answers `go env GOPATH` without
  a go.mod; the transcript of that run would settle it, and it was not read
  for this entry.

  **The form as the cause.** The harness's question tool takes one to four
  questions in one call, each a question line, a header and options of a
  label and a line; nothing in the twelve skills, the shared text or the
  conventions named it — `AskUserQuestion`, `widget` and `multiple choice`
  come back empty over `skills/`, `shared/`, `docs/`, `hooks/`, `bin/` and
  `scripts/` on 30 September 2026, before this entry. Ten of the thirteen
  points were prose above the options and had no slot; the three with a slot,
  the subject, the yes and the no, arrived cut to the slot. "In a message of
  its own" was the one sentence that could have kept the question out of the
  form, and a tab of its own met it. The sentence in step 0 that a caveat in
  the paragraph above the options does not get read and the two lines chosen
  between do, standing in front of step 4, described the outcome exactly; it
  was a recorded defect already, for saying so in a passage that is no
  question. So a run following the text lands here, and a form holding this
  question alone would have delivered the same four lines: the prose had
  nowhere to go, and nothing said it goes in the run's own message before the
  form.

  **What the thirteen came down to.** Each was gone through against what the
  person loses without it, by three tests in this order: whether they would
  answer differently knowing it; whether they meet it elsewhere before it
  matters, without going to look; whether it is true at the moment of asking.
  Four carry the decision and stay: the subject, in the question line —
  programs that run and end, landing outside the project on this machine, the
  answer holding for this project and so for anyone who builds on it with this
  set; what a yes means, in the yes itself — from then on the run installs by
  itself, with them there and with nobody there, without asking again; what a
  yes does not hold back — through a package manager the guard sees the verb
  and not what is installed, so a yes to tools also lets through a runtime, a
  rule on the run and not a wall, compilers and runtimes theirs under every
  answer; and where a no leads, in two halves, in the no itself. The standard
  is that nothing in the question implies something untrue, not that
  everything true is said. Out of the question, and where each went: what the
  project declares, to step 2, which reports what was found; which kind of
  place each route reaches, to step 6, as the run's own reading where it
  writes the route lines and not text to the person — the reading is what
  produced "go" where there was nothing to read; where the list of places is
  written and that a session reads it, to step 9, which names the files
  written. Out altogether: why it is asked now, the reason behind giving no
  recommendation, that it can be changed later, and that nothing lands at this
  moment, "from now on" carrying it. Giving no recommendation stays a rule on
  the run. The sentence that said which places exactly stand written in the
  record, false for a route since 29 September 2026 and one half of a recorded
  defect, went with the cut; the bare-pip half of that defect stands. Two
  status sentences said the person is shown what the project declares at this
  question, in `docs/plan.md` under "Where the set ends" and in
  `docs/skill-conventions.md` under "Works with nothing else installed"; both
  now say it is reported at setup before the question, in step 2. No wording
  was written here: the last wording was approved twice and arrived as four
  lines, so a new approved wording is not what was missing.

  **The form, named, and what the requirement is worth.** Question 4 is put
  in prose, in the run's own message, in the person's language; a choice
  widget that follows carries its two answers and no other question,
  everything above them said by then. Step 0's sentence is resolved for every
  question of step 4 rather than for this one: the passage itself, being no
  question, says both halves in the preparation, and the reading about options
  holds for a choice two lines carry — questions 1, 2, 6 and 7 — and not for a
  question that needs more said, which step 4's opening names: the mapping of
  question 3, the permission of question 4, and question 5, which is open and
  has no options. What can be read off a result afterwards to tell a question
  put in prose from one that was not: the transcript, and nothing else. The
  harness keeps a log of the session and can export the conversation, and
  both hold the run's text before the tool call and the call's own content,
  so whether a message preceded the form and how many questions the call
  carried are read there. The record cannot tell — it carries the answer, the
  places, the routes and the date, whatever form produced them — and nothing
  else in the repository can, since what the run said to the person is not in
  it. So this is a requirement that holds only when a run chooses to meet it,
  as "in a message of its own" was before it, and what catches a run that
  does not is a measurement: a bench run of the setup, read off its transcript
  against the list above, which is the question half of the two runs
  milestone 3 ends with, and neither has happened. What the requirement is
  worth beyond that: it names the form the harness offers, which no sentence
  did, and it can be told from the screen the moment the question arrives,
  where "in a message of its own" could not be told from a tab.

  **Read through afterwards.** Step 4 reads as one flow: its opening says the
  two forms and which question takes which, question 4 says its own, and
  questions 1 to 7 stand under their conditions as before. `grep -rn "message of its own" skills shared` finds
  the phrase in plan-work Stage 1 alone, since question 4's own account of the
  old rule breaks the phrase over two lines; `grep -rn "shown at that
  question\|shown when the question" docs README.md skills shared` finds
  nothing left; `grep -rn "question 4 named\|names no route\|says why it gives
  none" skills shared docs README.md` found one sentence in
  `docs/skill-conventions.md` under "The install guard reads a record" still
  saying the route lines are the routes question 4 named, corrected in this
  change to say the run reads them where it writes the record, and then
  nothing; the entries of 29 September 2026 that say the question named the
  routes stand as written, being dated.

  Built: question 4 of `setup-project` step 4 covers the four points and names
  its form, step 4's opening says which questions two lines carry, and step
  0's sentence says where it holds, since 30 September 2026, version 0.119.0;
  the defect of the permission passage, recorded on 26 September 2026, is
  repaired by it and its evidence moves onto the repaired line. Nothing has
  run on a bench: the question has been put once, before this build, and the
  two runs milestone 3 ends with have not happened.

  **Records.** The tool, run in this tree at 0.119.0, `BROKEN RECORDS: 0`,
  `UNCOVERED LINES OF THE SEARCH SET: 0 of 1911` and exit 0, recorded on its
  exit 0 outcome. The self-test at 0.119.0, `SELF-TEST PASSED: 88 cases; of
  the 74 messages this tool rejects, refuses or answers with, read off its
  own source, 74 are asserted by a case and 0 by none`, recorded on its
  outcome.


- **A rule on the length and the form of a delivered text, drawn from the two
  cuts of 29 and 30 September 2026, the message and the question; 30 September
  2026, version 0.119.0.** On `task/install-question-shorter`, its second
  commit, the version not raised again.

  **What the two entries establish.** The block message of
  `hooks/pre-tool-use-install-guard.sh`, read off the `echo` line carrying
  `>&2` at each commit `git log --format=%h -- hooks/pre-tool-use-install-guard.sh`
  names and counted with `wc -w` over the quoted text: d8ed768 of 24 August
  2026, 112 words; ae89724 the same day, 158; 3627f6e and 5e2c07e of 25 August,
  158; 2f333b3 the same day, 159; 93b2dc8 of 7 September, 211; 433bdc1 of 28
  September, 310; 188648d of 29 September, 337; and 2686bd6 the same day, 207,
  after the cut. Five changes grew it, each answering something a run had got
  wrong — a declined install with nowhere to land, a run resuming on the user's
  word, the result deciding whether an install ran, the record, the routes —
  and none read the message as a whole. The entry of 29 September 2026 above
  cut it by reading each part for what it was put there for and for what the
  run has in front of it when the message arrives, and what came out was of
  three kinds: said already where the run has it, `$REF` in every cause that
  resolved one; untrue for some of its readers, the stand-in "the default
  branch as last fetched" where no ref was resolved, and the two costs of a
  decline, which assumed a caller with check classes and tasks; and the reasons
  behind duties, why an organisation name is not a module path. Question 4 of
  `setup-project` grew to thirteen points between 28 and 30 September 2026,
  each added for a reason, and the entry of 30 September 2026 above cut it to
  four by three tests in order — would they answer differently knowing it; do
  they meet it elsewhere before it matters, without going to look; is it true
  at the moment of asking — and found that the form, not the length, was why
  nothing arrived: ten points were prose above two option lines, and nothing in
  the set named the widget. Neither text was read as a whole after any
  addition; that is the one thing both have, and the rule is drawn from it.

  **The rule, and where it stands.** `docs/skill-conventions.md`, "A text is
  as long as what carries the decision, and written for its form", after
  "Describe what must be said; never dictate wording" and before "Works with
  nothing else installed". There because the sections from "Only ask where
  there is something to decide" to "Describe what must be said" are the rules
  on what a run says to a person and how a skill specifies it, and this is what
  such a specification is held to as it grows: "Describe what must be said" is
  the sentence the question's cut leaned on — list what the text covers — and
  the list is what had grown. Its two halves: nothing that carries the reader's
  decision comes out and nothing that does not stays in, the reader deciding
  what carries — a run's text carries what the run does differently at that
  moment, a person's what they would decide differently — part by part, by the
  three tests of the question's cut; and a text is written for the form that
  carries it, the form named where the text is specified, a text and a form
  that do not fit being one thing wrong, never answered by hoping it gets
  through.

  **What it covers and what not.** The texts a run delivers whole, at one
  moment, to a reader with nothing else in front of them who does not go and
  look: what a hook or a program prints into a session, and what a run says or
  writes for a person — a question, an offer, a handover, a close, an issue or
  a pull request body. Not the skills and the shared text, which a run reads at
  load and which can point: the entry of 14 September 2026 above names sprawl
  for `build-work` with the branch test as remedy, an open defect in
  `docs/stock-take.tsv`, and the rule leaves it there. Not a project's control
  documents: the third exit of `standards.md`, in the conventions since 27
  September 2026, is the same principle for them with its own evidence. Not
  the conventions, the header of `scripts/devloop-stock-take`, the dated
  entries or the table: records and cases, written once, read by somebody who
  went to look, kept by the conventions' own opening. Said in the section so
  that the rule is applied to the kinds it names rather than to everything.

  **What makes it checkable.** Nothing mechanical. A count cannot tell the
  message of 337 words, wrong for what it was made of, from one of 337 words
  that carries, and none was built. What can be shown to have been broken: an
  order that adds to a delivered text names the reader and the form; reads the
  whole text as that reader receives it after the addition — the hook fed its
  JSON and its stderr read, the expanded skill's question read against the
  form's slots; holds every part, old and new, to the three tests; and lists in
  its report what came out and where each part went, as the entry of 29
  September 2026 above does under "What came out" and "What stayed" and the
  entry of 30 September 2026 under "What the thirteen came down to". A diff that adds to such a text
  beside a report without that list has broken it, and that is read off the
  report. The form of a question cannot be read off the repository, as the
  entry of 30 September 2026 above says: the transcript alone tells, and a
  bench run reads it. One fit of text and form can be read off the repository,
  and it is the one place the conventions set a count, the description under
  "Frontmatter", "under ten words":

      for f in skills/*/SKILL.md; do d=$(grep -m1 '^description:' "$f" | sed 's/^description: *//'); echo "$(echo "$d" | wc -w | tr -d ' ') $f"; done

  printed on 30 September 2026 eleven descriptions of six to nine words and
  `skills/record-lessons/SKILL.md` at ten, "Write down what went wrong so it
  does not repeat", which is not under ten. Not built as a check: the rule has
  stood since the file's first version and this is its first breach, a
  description is written once and does not grow by additions, and a nineteenth
  check here would be a count.
  Recorded, not built: the description of `record-lessons` has ten words
  against "under ten words" under "Frontmatter" in `docs/skill-conventions.md`;
  not changed here, since the frontmatter is no part of this rule. The roadmap,
  searched for `ten words` and `under ten`, names it nowhere.

  **Read through afterwards.** `docs/skill-conventions.md` read in full after
  the change. What already speaks of length there, and whether it agrees:
  "Frontmatter", "under ten words, no trigger conditions", a limit set by the
  form the description is read in, with "Whatever the model needs in order to
  recognise the situation goes in the body" — the same rule for one text,
  agreeing; "Only ask where there is something to decide", agreeing; "A rule
  holds only on the path it is written on", "rewrite the sentence rather than
  appending to it", the same act on a skill's text, agreeing; the third exit
  under "A project's rules are written at the review's close", "a line the
  agent reads that changes nothing it does costs", the same principle for a
  control document with evidence, agreeing; the check on names under "Before a
  handover, run these", "130 lines that day, was read once and skipped", the
  failure of an unread text, agreeing; and "Every question carries its own
  reason", four things a question states, "why it comes up now" among them,
  which the cut of 30 September 2026 took out of question 4 as not carrying
  the decision. The new section reads the four as what has reached the person
  by the time they answer, and the setup's opening says that questions come
  with it; read as four sentences in every question, the section and that
  heading disagree on the one item, and so do `shared/how-to-ask.md` and
  question 4 as cut, since the shared text carries the same sentence into six
  skills. `grep -rn "why it comes up now" skills shared docs README.md`: the
  conventions' heading, `shared/how-to-ask.md`, the template of
  `untangle-idea`, and nothing else.
  Recorded, not built: `shared/how-to-ask.md` says every question states why
  it comes up now, and question 4 of `setup-project`, cut on 30 September
  2026, states it nowhere, the entry of that date having judged it not to
  carry the decision; the two disagree as written, and the reading that
  reconciles them stands only in the new section. Not changed here: the shared
  line stands in six skills, with the conventions' heading and the template
  beside it, and rewriting the three is a change of its own. The roadmap,
  searched for `why it comes up now` and `comes up now`, names it nowhere.
  `grep -n -i -w "short\|long\|length\|words" docs/skill-conventions.md` over
  the rest finds "Writing long files", about a heredoc truncated on paste and
  not about a text read; `caffeinate` running "as long as" a process; "the
  shape of the list matters more than its length" on `mergeStateStatus`; and
  the lines of the check on names. No sentence in the file says that a text
  says everything true, or that a text is shortened without being read, so
  nothing says the opposite.
  Recorded, not built: the rule stands in `docs/skill-conventions.md` as a
  written convention, a duty done at the moment of adding and read off the
  report, and no mechanism.

  **Records.** The tool, run again in this tree at 0.119.0 after this entry,
  `BROKEN RECORDS: 0`, `UNCOVERED LINES OF THE SEARCH SET: 0 of 1915` and
  exit 0, recorded on its exit 0 outcome. The self-test, run again at 0.119.0
  after this entry, `SELF-TEST PASSED: 88 cases; of the 74 messages this tool
  rejects, refuses or answers with, read off its own source, 74 are asserted
  by a case and 0 by none`, recorded on its outcome.


- **Question 4 of `setup-project` came out wrong twice on 29 September 2026,
  from two different texts, its surroundings pulling it toward a question
  about tools for check classes; the pulls that could be removed removed, and
  three things in the options that arrived in the run's own words stated at
  the point where the run writes them; 30 September 2026, version 0.120.0.**
  On `task/question-pulls`, off `4a2ef85`.

  **What the two runs produced.** The first, in `devloop-test-q` under
  0.118.0, the entry of 30 September 2026 above records: thirteen points, four
  lines in a form of three tabs, and a route named where there was no stack.
  The second, in `devloop-test-r` the same day under 0.119.0, with the
  question cut to the four
  points that carry the decision: the bold heading of the third point
  transcribed as a statement, "Ein Ja hält nichts zurück", which is false,
  since a yes still blocks `sudo`, a script piped from the network into a
  shell, and any place the record does not name — the three causes
  `hooks/pre-tool-use-install-guard.sh` names under a record saying yes; the
  boundary of the third point, that compilers and runtimes stay theirs,
  arrived and the leak did not, so what the person read was an assurance the
  guard does not give; and in the options, "bleibt offen" where a declined
  check class goes `skipped` with that reason, the check class written as an
  issue where it is the task that becomes one, and the no labelled "jedes Mal
  fragen", which promises a question that never comes with nobody there. The
  second run's transcript was not read for this entry; what it produced is
  taken from the order this branch follows, which read it. Two texts, and
  neither arrived as written.

  **The pulls as the cause.** The reading of that day, carried in the same
  order, established that the surroundings pull the question and not its
  wording, and named five; each was established again on the text as it stood
  at 0.119.0. Question 3's last sentence, "From the next session on the record
  decides; question 4 writes it, and step 6 puts it into `environment.md`",
  announced question 4 before it was read, in terms of the missing tools of
  question 3's own sub-question. `shared/backed-command.md`, inserted between
  question 3 and question 4 since 18 September 2026, stood in front of
  question 4 as twenty-five lines on `go install` and a scanner's module path.
  In point 4, the first consequence of a no with nobody there was a check
  class, the task second. In point 1, the first example of a program that runs
  and ends was a checker. And the bold headings of the four points read as
  sentences: "What a yes does not hold back", read as a statement, says that
  a yes holds nothing back.

  **What was done with each.** The announcement is cut: question 3 ends at
  "From the next session on the record decides", the record having been named
  in full two sentences earlier, and where it is written question 4 and step 6
  say. The backed-command block is moved into "A guard's block is not a
  decline", after the sentence that tells the two blocks apart: that section
  is where the setup hands a command over, with the user there through
  question 3 and with nobody there as an issue, and question 3 already points
  at it — "handed over, backed, as 'A guard's block is not a decline' above
  says". What the move changes: what stands in front of question 4, which is
  now question 3 alone; the numbered list of step 4, inside which the insert
  line had stood since 18 September 2026; and the unit whose runs the shared
  text's lines are held against, since an insert line brings the file into
  the range of its unit. What it does not change: the block's text, which is
  the same in the three skills that insert it, so the scanner and `go install`
  stay in this skill, above question 3 instead of below it, and a run reaching
  for a route where there is none can still find one there; the block in
  `build-work` step 3, between point 7 and point 8, where point 8 reads the
  backed command off point 7; and the block in `setup-checks` step 3, after
  the paragraph that runs the install under a yes, where the sentence after
  it says why that step is where a wrong path gets typed. Neither of those two
  needs the treatment: in both the block stands where its rule is applied,
  what follows it is about the block, and no question to a person follows it.
  Point 4 puts the task first and the check class second; point 1 puts the
  checker last. The heading of the third point is now "What a yes also lets
  through, in the message": true read as a statement, naming the leak rather
  than the boundary, and carrying the slot the other three headings carry,
  since the point that had none was among those that did not arrive in the
  first run. Nothing was added telling the run not to narrow: two approved
  wordings had not held it, and a third sentence would be the same sentence.
  The approved wording of the four points stands, reordered where it is
  reordered and rewritten nowhere.

  **Point 3 asked for two things at once.** The leak — through a package
  manager a yes to tools also passes a command installing a runtime — and the
  boundary, that compilers and runtimes stay theirs. Both times the boundary
  arrived alone. As written the point could not carry both: the boundary was
  the last clause, whole on its own, and the reassuring half of a pair
  survives compression where the qualifying half does not. Which of the two
  the person needs was decided by what each costs when it is the one that
  goes missing. The leak missing is what happened: the person answers yes
  believing the guard walls off runtimes, and under that yes nothing stops
  `brew install node` but a rule on the run — "A limit that reads like a
  safeguard and is not one is worse than no limit at all" in
  `docs/skill-conventions.md` is that case. The boundary missing costs nothing
  the leak does not say: the leak's own clause, "a rule on the run and not a
  wall", is the boundary stated as what it is. So the point carries the leak,
  and the boundary inside it as the leak's object — "that compilers and
  runtimes stay theirs under every answer is a rule on the run and not a
  wall". The words are the approved ones; the boundary is no longer a clause
  that can be lifted out whole. Whether that holds under compression is not
  known from this branch.

  **The three things in the options.** Held against what the skill said at
  point 4, where the run writes them. `skipped` with that reason was stated,
  in the skill's own status word; that the word settles the class rather than
  leaving it open was said only in question 3, "not `empty`", of question 3's
  own no. The task becoming an issue was stated, and the check class going
  skipped beside it, two consequences with "or" between them, which the run
  merged into one. That nothing is asked with nobody there was stated in "A
  guard's block is not a decline" and nowhere at point 4. Now point 4's no
  says: with nobody there nothing is asked; the task becomes an issue carrying
  the exact command, or a check class goes `skipped` with that reason, not
  `empty` and not open.

  **The question read as the person receives it, after the change.** Reader:
  the person at a first setup, in their language, with the run's message in
  front of them and nothing else. Form: prose in the run's own message, and a
  widget after it with a question line and two answers, named in step 4's
  opening and in question 4. Every part held to the three tests under "A text
  is as long as what carries the decision" in `docs/skill-conventions.md`.
  The subject, in the question line: they answer differently knowing what
  kind of program is meant, meet it nowhere before, true — stays, the examples
  reordered. What a yes means, in the yes: stays as it was. What a yes also
  lets through, in the message: they answer differently knowing the guard
  cannot tell a tool from a runtime through a package manager, meet it nowhere
  before, true — stays, with the boundary inside it. Where a no leads, in the
  no: they answer differently knowing that with nobody there no question comes
  and the work goes the recorded way, meet it nowhere before — the guard-block
  section is the skill's text and not theirs — true; stays, with the task
  first and nothing asked said. What came in: "nothing is asked", "not `empty`
  and not open", and the slot name in one heading. What came out of the
  question: nothing. Out of question 3: its last clause, whose content stands
  at question 4 and in step 6. Nothing here reaches the form: whether a run
  puts the question in prose before the widget is read off the transcript and
  off nothing in the repository, as the entry of 30 September 2026 above says;
  what this branch took out is read off the skill, and whether taking it out
  is enough is read off the next run. A skill text can take out what pulls a
  question; it cannot make a run deliver a form, and it was not asked to.

  **Read through afterwards.** Step 4 read whole: its opening names the two
  forms and which question takes which, questions 1 to 7 stand under their
  conditions, question 3 ends on the record and question 4 follows it
  directly. What each question has in front of it: question 1 the opening of
  step 4; question 2 question 1; question 3 the gate reading of question 2;
  question 4 question 3's mapping and its sub-question on missing tools;
  questions 5, 6 and 7 the one before. In front of question 3 nothing about
  backing stands any more; the word "backed" in it points at the section
  above, where the block now stands after the two cases of a block.
  `grep -rn "question 4 writes\|between question 3 and question 4\|checker, a
  code generator\|does not hold back" docs README.md skills shared`: the
  entry of 30 September 2026 above, "inserted between question 3 and question
  4" and "what a yes does not hold back", dated and standing; this entry and
  the note of the re-sited defect row, which quote them; nothing else.
  `grep -rn "stay theirs under every answer\|says the boundary" docs
  README.md skills shared`: `docs/skill-conventions.md` under "Runtimes are
  not a kind the permission may cover", "question 4 of `setup-project` step
  4, which says the boundary as this ruling asks", which still holds, the
  boundary standing inside the leak; question 4 itself; this entry; nothing
  else. `grep -rn "under every answer" skills shared hooks docs README.md`
  finds the same boundary said of the run, "stay the user's under every
  answer", in `build-work` step 3 point 7 and `setup-checks` step 3, in two
  causes of the guard's block message, and as the ruling's own words in
  `docs/plan.md` and `docs/skill-conventions.md`; those are rules on the run,
  the guard's causes and the ruling, not a question to a person, and they
  stand. The defect row on the unbacked command in `docs/stock-take.tsv`
  named the block's site in this skill as "setup-project step 3", which it
  never was — the block stood in step 4 after question 3 — and names the new
  site now. The not-a-thing row on the third point's heading is re-anchored
  to the new heading, its note saying what the point carries now. No sentence
  in a changed file says the opposite of what stands.

  Built: the five pulls answered in `setup-project`, since 30 September 2026,
  version 0.120.0 — the announcement cut, the block moved, the task and the
  checker moved, the heading changed — and point 3 carrying the leak with the
  boundary inside it; the three wrong options stated at point 4 in the
  skill's words. Nothing has run on a bench: the two runs milestone 3 ends
  with have not happened, and the question has been put twice, both times
  before this build.

  **Records.** The tool, run in this tree at 0.120.0, `BROKEN RECORDS: 0`,
  `UNCOVERED LINES OF THE SEARCH SET: 0 of 1917` and exit 0, recorded on its
  exit 0 outcome. The self-test at 0.120.0, `SELF-TEST PASSED: 88 cases; of
  the 74 messages this tool rejects, refuses or answers with, read off its own
  source, 74 are asserted by a case and 0 by none`, recorded on its outcome.

- **The two runs milestone 3 ends with, both on 30 September 2026 under
  0.120.0 and both attended: the record saying yes in `devloop-test-s`, the
  record saying no in `devloop-test-t`; what they establish, what they do
  not, and the findings read off them; 30 September 2026, version 0.120.1.**
  On `task/milestone-3-runs`, off `cd043f1`.

  **What ran, and what this entry was read off.** The installed copy that
  ran both was 0.120.0: `installed_plugins.json` carries that version with
  `gitCommitSha` `cd043f1` and a last update at 07:57:58 UTC on 30 September
  2026, eight seconds before the first repository was created, and the diff
  under "Before you change anything, run this" over the five shipped
  directories is silent against the tree at `cd043f1`, read again for this
  entry. Both repositories are private, on GitHub, and still stand; this
  entry read them through `gh` on 30 September 2026: metadata, commits, pull
  requests with bodies and commits, issues with bodies and comments, labels,
  and the files on `main`. The transcripts of the two sessions were not read.
  What only a transcript carries — what the run said, in which form, and in
  which order — stands here as the order's account and is marked as such;
  what the repositories and this machine show stands as read.

  **The yes run, `devloop-test-s`.** Created at 07:58:06 UTC with a Go
  skeleton, `go.mod` and `cmd/wordcount/main.go` printing a placeholder. The
  person answered yes to the install permission, yes to installing the two
  missing tools, no to auto-merge. The order's account of the sequence:
  `setup-project` filled the check classes itself, `gofmt`, `go vet`, `go
  test` and `gitleaks` standing on the machine already; `govulncheck` and
  `gosec` were missing and were installed under the permission; the setup
  landed; `plan-work` produced a spec; `cut-into-tasks` made two tasks;
  `build-work` built the first test-first; `review-changes` ran five lenses;
  the findings were fixed or filed; the pull request was handed to the person
  because auto-merge is off. What the repository shows, in the order of its
  timestamps. Pull request #1, "Set up devloop for this repository", one
  commit at 08:05:58 UTC, merged at 08:09:29 UTC by hand, its body naming six
  classes filled — `format`, `lint`, `unit`, `secrets`, `dependencies`,
  `code-security`, with `gofmt`, `go vet`, `go test`, `gitleaks`,
  `govulncheck`, `gosec` — `types` skipped since Go typechecks at build and
  test time, `integration` and `end-to-end` skipped, auto-merge declined, no
  protection and no required check on `main`. `checks.md` on `main` carries
  those nine rows, `dependencies` at five seconds and `code-security` at one,
  and under "What these checks do not cover" the line that `gosec` and
  `govulncheck` were only just installed and have not been exercised against
  real findings. The `Makefile` calls `govulncheck ./...` and `gosec ./...`
  by their bare names. `environment.md` carries the gate reading — the
  classic endpoint answering "Branch not protected", the rulesets endpoint
  answering none, auto-merge off, merges held by the question at the end of a
  build — and the record, read back:

      install-tools: yes
      install-place: /usr/local/bin
      install-place: /usr/local/sbin
      install-place: /opt
      install-place: ~/.local/bin
      install-place: ~/bin
      install-place: ~/go/bin
      install-route: go
      install-answered: 2026-09-30

  The seven labels of `issue-tracker.md` stand beside GitHub's ten defaults.
  Issue #2, "Word count CLI tool", opened at 08:10:49 UTC, carries the spec
  in its body and three stage comments, Stage 1 at 08:17:36 UTC, Stage 2 at
  08:17:49 UTC, Stage 3 at 08:18:36 UTC; the tasks #3 and #4 at 08:19:55 UTC.
  Pull request #7 for task #3, two commits at 08:22:58 and 08:28:13 UTC,
  merged at 08:32:54 UTC by hand: its body carries a `Guarded conditions`
  list of six, each with the break, the red and the restore; the five
  applicable lenses named as run; the findings fixed in the branch; two
  filed as issues #5 and #6, both carrying `raised-here` and each saying why
  it exceeds the task; and task #4 narrowed, its file-error half having
  landed with #3. On this machine `~/go/bin/govulncheck` and `~/go/bin/gosec`
  carry the timestamp 10:04 CEST, 08:04 UTC, two minutes before the commit of
  pull request #1. The PATH of the shell the harness runs commands in carries
  no `~/go/bin`, read for this entry, and `command -v` finds neither tool in
  it today.

  That timestamp settles one thing the order's account leaves open. The two
  tools were installed before the record had landed: the commit that carries
  the record came two minutes later, the merge four minutes after that, and
  `hooks/pre-tool-use-install-guard.sh` reads the record off `origin/main` as
  last fetched and nowhere else. So the guard did not pass those installs
  under a record saying yes. It produced one of its two other outcomes: a
  silent exit where `docs/agents` did not yet exist in the tree, which
  `setup-project` step 6 creates after the questions, or a block naming no
  `environment.md` on `origin/main`, after which the commands were run by
  someone — which of the two is in the transcript. Pull request #7 carries no
  install report beside its `Guarded conditions`, which `build-work` step 3
  point 7 requires where the build installs, so the build installed nothing.
  No install in this run met the guard with the record in front of it.

  **The no run, `devloop-test-t`.** Created at 08:33:32 UTC, the same shape
  with `cmd/greet`. The order's account: `govulncheck` and `gosec` were moved
  aside on the machine first, so they were genuinely missing; the person
  answered no to the install permission, no to installing the two tools, no
  to auto-merge; the run handed over both commands, backed, naming where they
  land, and carried on. What the repository shows: pull request #1, "Set up
  project for devloop", one commit at 08:38:52 UTC, merged at 08:40:58 UTC by
  hand, its body saying `dependencies` and `code-security` are skipped
  because the two tools are not installed and the permission was declined,
  and that auto-merge cannot be armed and the merge is by hand. `checks.md`
  on `main`:

      | dependencies | - | - | - | - | no | skipped: govulncheck not installed, install permission declined |
      | code-security | - | - | - | - | no | skipped: gosec not installed, install permission declined |

  `types` is `filled` there with `go build ./...`, where the yes run skipped
  it; both readings stand under `setup-checks` step 1, which skips a type
  class where another class already catches the same errors, and the two
  runs judged that differently on the same stack. The record on `main`
  carries `install-tools: no`, the same six `install-place` lines, `install-
  route: go` and `install-answered: 2026-09-30`. No issue and no other pull
  request exist: the run ended at the setup. The directory `~/go/bin` carries
  a modification time of 10:41 CEST, 08:41 UTC, right after that merge, which
  fits the two tools being moved back. So nothing in this run met the guard
  with a record saying no in front of it: no command reaching outside the
  repository was run after the record landed, and the block the guard
  produces on `install-tools: no` fired nowhere. The decline the run walked is
  question 3's, with the person there, before any record existed, and the two
  commands handed over backed are in the transcript alone.

  **What the two runs establish.** The question of `setup-project` step 4,
  put twice and answered once each way, and the record written by step 6 and
  landed by step 8 in the shape `bin/devloop-install-record` reads, both
  answers read back off `main`. A yes at setup followed by the two tools
  standing under `~/go/bin`, the directory `install-route: go` opens on this
  machine, and the check classes they fill written `filled`. A no at setup
  followed by the two classes written `skipped` with that reason, not `empty`
  — written by `setup-project` itself, since `setup-checks` was never called.
  Everything after the setup in the yes run: a spec, two tasks, a build
  test-first with the six conditions broken and restored, five lenses, two
  findings filed, a pull request handed over under auto-merge off. And that
  the whole of it ran from the installed copy at 0.120.0, identical to the
  tree.

  **What they do not establish, said plainly.** The unattended half of
  milestone 3 was never exercised: the mode was never offered, for the reason
  under C below, so no install with nobody there has happened and no record
  has been read by a run with nobody there. The guard's pass under a record
  saying yes was not exercised, since the installs ran before the record
  landed. The guard's block under a record saying no was not exercised, since
  nothing ran after the record landed. No build installed a tool: the setup
  did, in the window before the record. The session-start line printing the
  record was not read: whether the second session of the yes run printed it
  is in that transcript. And the form the question arrived in did not hold,
  under G below. So milestone 3's end — "the record saying yes, a build
  installing a tool unattended, the guard passing, the tool standing at the
  path; the record saying no, the guard blocking, the decline path as today"
  — is met by these two runs in neither half. What they walked is the
  question, the record and the two decline paths at setup, with a person
  there, and that is what the milestone can claim; the guard against the
  record, the build's install and the unattended install it cannot.

  **The findings.** Eleven were handed to this order and each was
  established against the files; two were already recorded and stand, nine
  are recorded here, and one more was found while establishing the yes run.
  Nothing is repaired in this change.

  **A. The boundary sentence arrived as an assurance again, twice.** The
  order's account: both runs produced a sentence of the shape "compilers and
  runtimes stay your decision" right after the sentence naming the leak, and
  cancelling it. The entry of 30 September 2026 above, version 0.120.0,
  rewrote the third point of question 4 so that the boundary stands inside
  the leak as its object — "that compilers and runtimes stay theirs under
  every answer is a rule on the run and not a wall" — and said that whether
  that holds under compression was not known from that branch. It is known
  now: both runs, under 0.120.0, lifted the boundary out again as a sentence
  of its own. The skill's text is the repaired one; the defect the repair
  answered stands recorded in the entry above with its evidence on the
  repaired heading, and the tool reads it as built. Recorded, not built: the
  repair of point 3 of question 4 made on 30 September 2026 did not hold in
  either run of that day at 0.120.0, the boundary arriving lifted out of the
  leak as an assurance the guard does not give; what should hold is that the
  leak reaches the person or nothing about runtimes does, which no wording of
  the prose above the widget has managed in four runs. The roadmap, searched
  for `lifted`, `did not hold` and `under compression`, names this nowhere
  but in the sentence of the entry above that left it open.

  **B. A tool can be installed and still not runnable.** The order's account:
  both tools stood in `~/go/bin` and `command -v` found them, but that
  directory was not on the PATH of the shell `make` runs in, so the check
  chain was red with "No such file or directory" while nothing was missing.
  Established: `~/go/bin` is what `go env GOPATH` plus `bin` answers here,
  the PATH of the harness's shell carries no such entry, and `make` runs its
  recipes in a shell inheriting that PATH, so `govulncheck ./...` in the
  `Makefile` fails before the tool runs, with `make`'s own message. Whether
  the run's `command -v` found them is the transcript's; in the harness's
  shell today it does not. The duty about a red that does not come from the
  broken code stands in `setup-checks` step 5: "And the red has to come from
  the broken code. A target that goes red because the tool is not installed,
  or because the command was refused before it ran, proves nothing about the
  target"; read the output before writing `filled`, and where the command did
  not run, say so with the command and the message. It was never in front of
  the run: `setup-checks` was not called, under C. Where the run stood, the
  nearest duties are `setup-project` step 6, `filled` only where the target
  "calls a real checking tool, and you have run it once", and
  `shared/command-does-not-answer.md`, an error is an answer read for what it
  says. What the repository shows: both classes stand `filled` with a
  duration, which step 6 lets the run write only after running the target
  once, so either the targets ran at some moment in a shell where the two
  names resolved or the rows were written without it; the `Makefile` still
  calls the bare names, `environment.md` says nothing about `~/go/bin` or
  PATH, and pull request #1's body says nothing about the red. So the red
  was got past in the session and left in the repository for the next shell,
  and the standing fact — that the two tools are found only where `~/go/bin`
  is on PATH — was written nowhere,
  which `build-work` step 3 point 8 and `setup-checks` step 3 both put into
  `environment.md`. Not discharged where it counts. Recorded, not built: the
  yes run's check chain went red on `govulncheck` and `gosec` not found on the
  PATH `make` runs under, was got past in the session, and left `Makefile`
  and `environment.md` of `devloop-test-s` saying nothing about how the two
  are found; what should hold is that a red from a tool not on the PATH is
  read as that, and the fact that closes it — the directory on the PATH, or
  the target naming the path the installer wrote to — lands in the repository
  where the next shell and the next person meet it. The roadmap, searched for
  `PATH of the shell`, `No such file or directory` and `not runnable`, names
  this nowhere: the first finds the guard's own PATH under the eleven routes,
  the second the installed-copy check, the third nothing.

  **C. The unattended mode cannot be reached in a project like this.** The
  offer stands in `setup-checks` step 8 and nowhere else — `grep -rn -i
  "offer.*unattended" skills shared` finds that heading alone. `setup-project`
  step 9 calls `setup-checks` where classes are still `empty` and enough code
  is there to check, and otherwise carries on into planning; step 6 lets the
  setup write `filled` itself where the target exists, calls a real tool and
  has run once. A project whose setup decides every class, as both runs did,
  never calls `setup-checks`, and the offer never comes; `plan-work` at the
  end of Stage 1 then reads the four preconditions, finds no gate, and does
  not ask, and says the question is not asked where the mode was never
  offered. The one later route to the offer is a build calling `setup-checks`
  for a single class with the person there, since that call skips step 7 and
  nothing says it skips step 8; nothing says that route is meant, and neither
  run met it. What else is lost with the offer, read off `setup-checks`:
  step 3's naming of the check commands as something to grant, which the
  permissions passage of
  `setup-project` step 0 says that skill does where it writes them; step 4's
  introduction of a class in stages; step 5's proof that every target can
  fail — break, red, restore — and its duty about a red that does not come
  from the code, under B; step 6's duration from the run just made and the
  rewrite of "What these checks do not cover" against the table as it stands;
  step 8's reading of the gate, its refusal to build one without a blocking
  class, the six things a yes leads to, the hint on keeping the machine awake,
  the record of the answer in `environment.md` either way, and on a yes the
  workflow file, the protection and auto-merge. Recorded, not built: a
  project whose setup fills every class itself never reaches `setup-checks`,
  so the offer of the unattended mode in its step 8 and the duties of its
  steps 3 to 8 are never met, and the mode cannot be reached from that
  project afterwards; what should hold is that the offer and those duties
  stand on the path every project takes whose suite is complete, whichever
  skill completed it. The roadmap, searched for `never called`, `fills the
  classes` and `offer never`, names it nowhere.

  **D. The planning issue was empty at re-entry.** The order's account: a
  session worked through Stage 1 in the chat, the next session read the
  issue, found nothing, and began again without noticing it was beginning
  again. What the repository shows: issue #2 opened at 08:10:49 UTC, its
  first comment, Stage 1's, at 08:17:36 UTC, seven minutes later and thirteen
  seconds before Stage 2's. What `plan-work` says: "After each stage, post
  that stage's output as a comment", and Stage 1 posts once, at its end,
  after the mode question and the mark — "Post the settled answers and the
  hard core as a comment on the planning issue before moving on". So by the
  skill's own order nothing of Stage 1 is on the issue until the whole stage
  is closed, and a session ended anywhere inside it leaves the issue as the
  placeholder. Whether that session ended before that point or the run
  skipped the post is not established: the transcript was not read, and the
  repository cannot tell the two apart. Recorded that way. The second half
  stands either way: "Picking up an interrupted plan" says to read the issue
  and its comments, say which stage was last finished, and continue at the
  next; an issue with no comment means no stage was posted, and the skill
  asks for that to be said — the account says it was not, and that nothing
  was drawn from it. Recorded, not built: `plan-work` posts Stage 1 to the
  planning issue once, after the mode question, so a session ended inside
  Stage 1 leaves the issue empty, and the pick-up in `devloop-test-s` on 30
  September 2026 found it empty and began Stage 1 again without saying that
  it was — whether the post was skipped or the session ended first is not
  established; what should hold is that the settled answers reach the issue
  before the mode question, and that a pick-up which finds a `being-planned`
  issue with no stage comment says so and says it is starting Stage 1 again,
  so that whoever sat through it once can say so. The roadmap, searched for
  `empty issue`, `began again` and `no stage comment`, names it nowhere.

  **E. The record carries the six places and the route under a no.** By
  design: step 6 says the six `install-place` lines are "written as they
  stand here under either answer, so that the file says what a yes would open
  where the answer is no", and the route lines "are written under either
  answer, like the places". The session-start line then prints, under a no,
  `tools: no | places: /usr/local/bin … ~/go/bin | routes: go`, and nothing
  in the line or the record says that those are what a yes would open. They do
  nothing under a no, since the guard blocks on `install-tools: no` before it
  reads a place. Recorded, not built: under `install-tools: no` the record
  and the session-start line list six places and a route with nothing saying
  they are closed, so the line reads as though something were open; what
  should hold is that under a no the record and the line say the places and
  routes are what a yes would open, or carry none. The roadmap, searched for
  `under either answer` and `as though something`, names it nowhere.

  **F. The permissions passage at the start of `setup-project`.** Three
  things in the order's account: it explains confirmations that may come
  later and is forgotten by the time one does, the run carrying on without a
  pause since there is nothing to decide; it says "this is not the unattended
  mode" where no mode has been mentioned; it came out differently in each of
  three runs. Established: the passage stands under "Permissions, before the
  first command", says of itself that it is not a question and is said as
  preparation, and puts its advice — choose "always allow" if a confirmation
  comes up, or set it in `/config` — before the first command, because
  "advice that arrives afterwards is too late"; so the moment it is said is
  by design the moment nothing happens on it. Its last paragraph, "Say what
  this is not, in the preparation itself", requires the words "this is not
  the unattended mode" in a passage that stands before any mention of the
  mode, so the term is introduced there to be denied. The recorded defect on
  this passage, from the audit of 26 September 2026, was that it spoke of its
  options and its yes while being no question, repaired at 0.119.0; neither
  of these two is that. That it came out differently three times is the
  transcripts', and "Describe what must be said; never dictate wording"
  allows it; what the three deliveries had in common is not known here.
  Recorded, not built: the permissions passage of `setup-project` step 0
  arrives before anything can happen on it and is gone by the time a
  confirmation comes, and it names the unattended mode only to deny it where
  nothing has introduced the mode; what should hold is that the passage says
  what a confirmation is and where the grant is set at the moment one can
  come, and names no mode the person has not met. The roadmap, searched for
  `Permissions, before the first command`, `preparation` and `introduce a
  term`, finds the audit's defect on the options and nothing on these.

  **G. The form did not hold.** The requirement since 0.119.0: question 4 in
  prose, in the run's own message, and a choice widget after it carrying its
  two answers and no other question. The order's account: in three runs — the
  run in `devloop-test-q` under 0.118.0, recorded above, and these two under
  0.120.0 — the question came as a tab beside "Auto-Merge", one submit. The
  entry of 30 September 2026 above established that no text in the skills,
  the shared files or the conventions reaches the form, that the transcript
  alone shows it, and that a bench run reading the transcript is what catches
  a run that does not meet it. That has now happened, twice, and both times
  the requirement was not met. What that means for the requirement as it
  stands: it is a sentence in the skill that a run meets or does not, with
  nothing in the repository able to tell, and measured twice since it was
  written it was met neither time; by the fifth of the five sentences of
  `docs/plan.md`, a rule that does not hold in a run is rewritten, not
  appended to, and a third approved wording of the same rule is the same
  rule. Recorded, not built: the form named for question 4 on 30 September
  2026 — prose in the run's message, a widget carrying its two answers and no
  other question — was met in neither run of that day under 0.120.0, the
  question arriving as one tab of a form beside auto-merge, and nothing in
  the repository can read whether it was met; what should hold is a form the
  run cannot fail to deliver, the four points written for the widget's own
  slots and the call carrying this question alone, or a mechanism at the
  call, since a sentence about the form has now been measured not to hold.
  The roadmap, searched for `one submit`, `tab beside` and `did not hold`,
  finds the entry above, which foresaw the measurement, and nothing that
  records its outcome.

  **H. Auto-merge is offered with a recommendation.** "Ja, einschalten
  (Empfehlung)" in all three runs, by the order's account. Established: step
  4's opening says "Lead with your recommendation so a single word can
  answer; question 4 gives none", so the recommendation on question 2 is what
  the skill asks for. The order calls it the set's rule that nothing reaching
  past the project is recommended; no sentence of the set says that. What
  stands is three instances: question 4 gives none; `setup-checks` step 8,
  "Do not recommend a yes on a first project"; and `shared/how-to-ask.md`,
  which says what reaches outside the repository is never cheap and is a rule
  on asking, not on recommending. Question 2 reaches past the project — a
  setting of the repository — and is one half of what the unattended mode
  needs, which the question says itself, so a recommended yes is a
  recommended step toward the mode, the confusion the permissions passage
  above spends a paragraph preventing. Recorded, not built: question 2 of
  `setup-project` step 4 leads with a recommendation to switch auto-merge on,
  under the opening line of the step, while question 4 and the offer of the
  mode give none, and the rule the order names is written nowhere; what
  should hold is that question 2 gives no recommendation, as the two other
  questions reaching past the project do, and that the step's opening says
  so. The roadmap, searched for `Empfehlung`, `recommend` with `auto-merge`
  and `reaching past the project`, names it nowhere.

  **I. "Our labels."** Twice, by the order's account. The source is the
  skill: question 6 says "map onto the existing ones, or add ours alongside",
  and the person does not know who "we" is, for the same reason "A skill's
  name is not said to the user" gives. Recorded, not built: the run of 30
  September 2026 spoke of "our labels" to the person, and question 6 of
  `setup-project` step 4 says "add ours alongside"; what should hold is that
  the labels are named as this workflow's and by what they do, and the word
  leaves the skill. The roadmap, searched for `ours alongside` and `our
  labels`, names it nowhere; the defect that question 6 names five labels
  where `issue-tracker.md` names seven stands recorded already and is a
  different one.

  **J. Reporting that the repository does not carry this workflow's labels is
  noise.** Read here as the repository being set up, which has never met this
  workflow; it is true of every such repository and step 6 creates the seven
  in every setup, so the sentence changes nothing. Established: step 1 lists
  "Existing labels in the tracker, if one is reachable" and step 2 says "Say
  explicitly what you did not find", which produces it; what step 4 reads off
  the labels is question 6's condition, labels with overlapping meaning, and
  both repositories have GitHub's ten defaults, `wontfix` and `question`
  among them. Recorded, not built: step 2 of `setup-project` reports that the
  repository carries none of this workflow's labels, which holds for every
  repository before its setup and changes nothing; what should hold is that
  step 2 says what step 4 will act on — whether labels with overlapping
  meaning exist — and not the absence of what step 6 creates. The roadmap,
  searched for `did not find` with `labels` and `noise`, names it nowhere.

  **K. `setup-checks` step 8 tells the person the run keeps going until
  nothing it raised against its own work is still waiting**, while a declined
  install becomes a `needs-human` issue that is still open when the run ends.
  Already recorded: a finding of the stock-take made on 28 September 2026 on
  that line of step 8, in `docs/stock-take.tsv`, with its should. Neither run
  reached it: the mode was never offered, no build declined an install, no
  `needs-human` issue exists in either repository. The runs change nothing it
  says; it stands as written.

  **L. Found while establishing the yes run: question 3 promises a block the
  guard does not make before step 6.** Question 3 of `setup-project` step 4
  says of a tool that lands outside the repository, during a first setup:
  "the install record the guard reads … has not landed yet, so the guard
  blocks the command and it is handed over, backed". The guard exits 0 before
  reading anything where `docs/agents` does not exist — recorded in the
  table as the silent pass where the project is not set up — and
  `docs/agents` is created by step 6, after the questions. So an install
  run between question 3's answer and step 6 meets no guard at all, and the
  sentence is untrue for that window; and where step 6 has run, the guard
  blocks with the reader's cause, no `environment.md` on `origin/main`, which
  is a block and not the decline question 3 describes. Which of the two the
  yes run met is the transcript's; that the tools were installed before the
  record landed is the repository's. Recorded, not built: question 3 of
  `setup-project` step 4 says the guard blocks an install during a first
  setup, while `hooks/pre-tool-use-install-guard.sh` is silent until step 6
  has created `docs/agents`, so the installs of the yes run of 30 September
  2026 ran with no record landed and no guard established to have seen them;
  what should hold is that a first setup hands the install over on the
  ground question 3 gives, no record having landed, without leaning on a
  block that comes only after step 6, or that the run installs nothing before
  step 8 has landed the record, so that the first install a project meets is
  one the guard reads. The roadmap, searched for `before step 6`, `docs/agents
  does not yet exist` and `silent pass where the project is not set up`,
  names it nowhere: the third finds the table's own row.

  **Four more, from the same stretch of work, checked against the table.**
  The merge guard's block message: `hooks/pre-tool-use-merge-guard.sh`
  prints 618 words on `gh pr merge`, counted for this entry with `wc -w` over
  the heredoc, the arming sequence, the three refusal cases, every value of
  `mergeStateStatus` with what to do on each, `BEHIND`, the two gate queries,
  and the handover; the same shape the install guard's message had at 337
  words before the cut of 29 September 2026, and the rule drawn from that cut
  covers what a hook prints into a session. Not recorded: the roadmap,
  searched for `618` and for `merge guard` beside `words`, names it nowhere,
  and the entry of 30 September 2026 on the rule names two texts, the install
  guard's message and question 4. Recorded, not built: the block message of
  `hooks/pre-tool-use-merge-guard.sh` stands at 618 words, grown the way the
  install guard's grew and never read as a whole for the run that receives
  it; what should hold is what "A text is as long as what carries the
  decision" in `docs/skill-conventions.md` asks — read for the reader with
  nothing else in front of it, held part by part, and cut to what the run
  does differently for it. The seven causes of the install guard that join
  the fixed text on two colons: recorded already, in the entry of 29
  September 2026 on the cut and as a defect thing in the table; stands. That
  `shared/how-to-ask.md` requires every question to say why it comes up now,
  which the shortened question 4 does not: recorded already, in the entry of
  30 September 2026 on the rule and as a defect thing in the table; stands.
  The session-start line carrying the record reaches the run as context, not
  the person: `docs/skill-conventions.md` says under "A hook cannot force
  wording" that `SessionStart` stdout arrives as context, and the same file
  under "The install guard reads a record" and the comment in
  `hooks/session-start.sh` both say the line is what a second person who
  cloned this repository meets before the first install; a person who clones
  the project meets it only where the run repeats it, and nothing says the
  run does. Not recorded: the roadmap,
  searched for `as context`, `context, not the person` and `second person`,
  names it nowhere. Recorded, not built: the session-start line printing the
  install record arrives in the run's context and not in front of the person,
  while the conventions and the hook's own comment call it what a second
  person who cloned the repository meets; what should hold is either a place
  where the run says it to the person, at its first turn in a project with a
  record, or the three sentences saying that the run meets it and the person
  does not. The stock-take rejecting evidence under `.github/`: recorded
  already, as a finding in the table on the tool's location rule, from the
  entry of 29 September 2026 on the merge gate; stands.

  **Milestone 3 in `docs/plan.md`.** Its two sentences saying the runs have
  not happened now say they ran on 30 September 2026, attended, and what of
  the milestone the runs walked and what they did not; the sentence in
  `docs/skill-conventions.md` under "The install guard reads a record" that
  said still nothing on a bench now says the same. What of the milestone is
  done: the question, twice, in a form that did not hold; the record, written
  and landed under both answers and read back; the decline at setup, with a
  person there, ending in `skipped` with the reason. What is not: the guard
  against a landed record, under either answer, on a bench; a build
  installing under the record; the unattended half whole; the refresh; the
  drivers half. The milestone has not landed.

  **Read through afterwards.** `docs/plan.md` read whole after the change:
  "Where the set ends" says a tool landing outside the repository lands under
  permission asked once at setup and recorded, which the two runs walked and
  which stands; milestone 3's five parts stand as written with the account
  beside them; milestone 4's "After 3, because the interface shape needs a
  driver" stands, the drivers half being unbuilt; nothing else in the file
  speaks of the runs. `grep -rn "not happened\|nothing on a bench\|put to
  nobody" README.md docs skills shared`: the two sentences of milestone 3,
  changed; the sentence of the conventions, changed; the sentence of 28
  September 2026 in the conventions that the question "has been put to
  nobody", inside a paragraph headed "Measured on 28 September 2026", which
  stands as dated; `README.md` and `start-work` on other matters. `grep -rn
  "the guard passing\|guard passing" docs README.md`: milestone 3's end
  condition, as written on 19 September 2026, which this entry holds the
  runs against and does not change. The dated entries of 28 to 30 September
  2026 above that say the two runs have not happened stand as dated.

  **Records.** A defect thing for each finding recorded here, sited and
  evidenced on its line of this entry. The runs of 30 September 2026 under
  0.120.0, source entry, on the things the repositories evidence: question 4
  answered yes, in `devloop-test-s`; question 4 answered no with the person
  there, in `devloop-test-t`; missing tools asked about separately, in both;
  missing tools declined and the classes skipped with that reason, in
  `devloop-test-t`; step 6's five files, the record among them, in both;
  the route of the stack read and its line written, `install-route: go`, in
  both; auto-merge found off and offered, in both, and declined in both,
  every merge by hand since; both gate queries negative, no gate, in both;
  step 8's
  arming refused with auto-merge off, the case named and the merge handed
  over, in both; and, from pull request #7 of `devloop-test-s`, a review
  finding that exceeds the task filed as an issue with `raised-here`, twice.
  Not recorded as runs, since the repositories cannot show them: the guard's
  outcomes, the reader's, the session-start line's, the labels question, and
  every line of the two sessions' own words. The thirty notes of the table
  that said the two runs the milestone ends with have not happened now say
  what each thing met on 30 September 2026: exercised, for the four the runs
  walked, and walked the setup and not this, for the twenty-six they did not
  reach. The tool, run in this tree at 0.120.1 after this entry, `BROKEN
  RECORDS: 0`, `UNCOVERED LINES OF THE SEARCH SET: 0 of 1931` and exit 0,
  recorded on its exit 0 outcome; its counts over all files, things 1265,
  straight paths 181, branches 582, other kinds 502, not-a-thing 979,
  findings 6. The self-test at 0.120.1, `SELF-TEST PASSED: 88 cases; of the
  74 messages this tool rejects, refuses or answers with, read off its own
  source, 74 are asserted by a case and 0 by none`, recorded on its outcome.

- **The consistency audit before the handover, run on 30 September 2026
  against `f4f4dc9`, the tree at 0.120.1, and its fourteen disagreements
  mended the same day, version 0.121.0.** On `task/audit-mends-0930`, off
  `f4f4dc9`. The audit read `docs/plan.md`, `docs/skill-conventions.md`,
  `README.md`, the undated parts of this file and the header of
  `scripts/devloop-stock-take` against the skills, the hooks, `bin/`,
  `scripts/` and the workflow, in both directions, and the notes of
  `docs/stock-take.tsv`; its report stands outside the repository. What held:
  the tool green with six findings; the self-test at 88 cases; eighteen
  command blocks under "Before a handover, run these" and one under "Before
  you change anything, run this", counted with `awk` over the indented blocks;
  eleven named skills and nine names as notes against the twenty rows of the
  table; the four greps of the handover section printing what the text beside
  them says; main protected by the required check `stock-take`, `strict` and
  `enforce_admins` on, read with `gh api
  repos/jayjay-create/claude-devloop/branches/main/protection`; and every
  cross-reference by step number. What did not, by weight: three wrong, eight
  stale, three worded so they mislead. Each is mended where it stood, in that
  document's words, against the command or the file that shows what holds, and
  carries below the state the tool computes for it: a defect thing sited on
  its line here, with the mended line as its evidence, which for a sentence in
  a document reads recorded and not built, a document being a rule and not a
  mechanism.

  **Wrong.**

  - The first asking of question 4 was placed in `devloop-test-p` on 30
    September 2026 by three entries above and two notes of the table, and the
    second on the same day. Established off the session logs under
    `~/.claude/projects/`, by the rule under "A run's date is copied from the
    session log of that run": `devloop-test-p` opened at 20:33 UTC on 29
    September 2026 under 0.117.2, put one question, auto-merge, and skipped
    the rest, and its open pull request carries the 0.117.2 marker and an
    install-permission section reading "Not asked yet"; `devloop-test-q`
    opened at 21:49 UTC the same day under 0.118.0, one minute after pull
    request #145 merged, and put the three-tab form "Auto-Merge", "Labels",
    "Tool-Installation" at 21:51 UTC; `devloop-test-r` opened at 23:18 UTC the
    same day under 0.119.0, 42 seconds after #146 merged, and put the two-tab
    form "Auto-Merge", "Install-Rechte" at 23:19 UTC, which is 01:19 CEST on
    30 September, the log's own clock being UTC. Neither q nor r was named
    anywhere in this repository before this entry, and each holds its initial
    commit and nothing else. Seven places carried the wrong bench or the wrong
    day, one more than the audit counted: the observation of the skip in the
    entry of 29 September 2026 on the empty case, dated 30 September there;
    the run and the bench in the entry of 30 September 2026 on the widget; the
    head and the two benches in the entry of 30 September 2026 on the pulls,
    whose defect thing in the table carried the date in its name and is
    renamed with it; the bench under G in the entry of 30 September 2026 on
    the two runs; and the notes of the widget defect and of the form defect in
    `docs/stock-take.tsv`.
    Recorded, not built: the first asking of question 4 stood in the wrong
    bench on the wrong day in three entries, a thing name and two notes,
    mended in all seven.
  - The defect on the merge gate read as open, and both halves stand. The
    workflow has run five times, on pull requests #144 to #148, every run
    green in twelve to sixteen seconds; the check `stock-take` is required on
    main since 29 September 2026 at 23:34 CEST, with `strict` and
    `enforce_admins`, and held the merges of #145 to #148, `gh pr view` on
    each showing `stock-take:SUCCESS`. What was open is narrower: the tool
    rejected an evidence under `.github/`, so the workflow had no thing of its
    own and its runs nowhere to go, the finding of 29 September 2026 on the
    tool's location rule. Decided: `.github/` is a shipped directory for the
    tool, a workflow being a program the platform runs on every pull request
    as a hook is one the harness runs on every tool call, so a fix standing in
    one is built; a workflow's outcomes are things of kind program outcome,
    what the platform's run of it produces; and its lines enter the search set
    by the keys that decide what it runs and when, `run:`, `branches:`,
    `timeout-minutes:` and `cancel-in-progress:`, beside the five shell words.
    Not a kind of its own, because the header already says an outcome is what
    a program produces, and not a check command, because nobody runs it by
    hand. The header's sections A, D and E say so. Nine things stand for the
    workflow: it runs on every pull request into main, on the merge ref; a
    later push cancels the run in progress; the stop at ten minutes; the
    checkout step's printing of git, python, HEAD with its parents and
    `origin/main`; its two refusals, a shallow checkout and no `origin/main`;
    the check green; and the two reds, the tool's and the self-test's. The
    tool's own `run:` line repeats the self-test's opening and can carry no
    anchor, so the tool lists it, as the header says of such a line. The first
    run, read off `gh run view 36626615781` and its log for this entry, as the
    entry of 29 September 2026 asked: on pull request #144 at 20:28 UTC on 29
    September 2026, the job `stock-take` green in 12 seconds, the step "what
    the checkout holds" printing `git version 2.55.0`, `Python 3.12.3`, HEAD
    `a4144d2` with the parents `5e8c6d2` and `50116dc`, and `origin/main
    5e8c6d2`; the stock-take step ending in `BROKEN RECORDS: 0`, `FINDINGS: 6`
    and `UNCOVERED LINES OF THE SEARCH SET: 0 of 1900`; the self-test step
    ending in `SELF-TEST PASSED: 88 cases; of the 74 messages this tool
    rejects, refuses or answers with, read off its own source, 74 are asserted
    by a case and 0 by none`. That run is recorded on the three things it
    walked and on the defect, under version 0.117.2, which the tree carried at
    `6e06fbf`, the squash that landed the merge ref's tree. The defect's site
    moves onto the line of the entry of 29 September 2026 that said half
    built, so that line stays covered and the entry stands as written, and its
    evidence onto the workflow's `branches:` line; the required check, being
    no file, stands in the defect's note with the reading of this day. What
    stays open: the two reds have never been produced, since no red pull
    request has met the gate, and only one proves it catches; and the workflow
    rule of the search set has no case of its own in the self-test, which
    builds no workflow.
    Built: the tool reads `.github/` as shipped and the workflow's lines as
    the search set since 30 September 2026, version 0.121.0, and the defect of
    the merge gate reads walked.
  - `build-work` under "With nobody there" said the rule was written in four
    places and named five, the install bullet having come in on 28 September
    2026, and the paragraph after them called the question about the work
    itself the fourth case, which by number was the install and by text the
    question; the conventions under "Runtimes are not a kind the permission
    may cover" pointed at "the fourth case". Read against the section as it
    stands: five bullets, and the question is the fifth.
    Built: the section counts five and the question is the fifth case, in
    `build-work` and in the conventions, since 30 September 2026.

  **Stale.**

  - `build-work` step 3 point 7 and `setup-checks` step 3 said the guard
    passes a command only where every place it lands is one the record names,
    and that anything landing outside the places the record names stays the
    user's under every answer. Since 29 September 2026 a route the record
    names opens whatever that route answers on the machine, `~/.cargo/bin`,
    `~/.bun/bin`, `~/Library/pnpm`, outside the place list, and pull request
    #141 touched neither skill; a run reading either would hand over a `cargo
    install` the guard lets through.
    Built: both sentences in both skills name the answer of a route the record
    names, since 30 September 2026.
  - The ruling "A named install command may enter the verb list" in the
    conventions said the question names the kind of place and the record
    carries the list. Since version 0.119.0 the question names no kind of
    place, only that such programs land outside the project on this machine;
    milestone 3 of `docs/plan.md` said so already.
    Recorded, not built: the ruling says the record carries the list, and what
    the question said from 28 to 30 September 2026 and says since.
  - Where the tool runs. The header of `scripts/devloop-stock-take` said it
    runs where the table is used and after every rebase; "Registering a skill"
    in the conventions named the version guard and not the gate; and "Working
    on devloop itself" in `README.md` said to raise the version, push and
    update, and nothing of a check a pull request has to pass. The gate is a
    setting on this repository, not something a user of the set gets, so the
    README says it under that heading and nowhere else.
    Built: the header names the workflow and the required check since 30
    September 2026, and the conventions and the README say the same under
    their headings.
  - "Six benches" held nowhere: eleven `devloop-test-*` repositories stand on
    GitHub, read with `gh repo list`. Decided that no number replaces the
    number. `README.md` said the set was exercised on six throwaway projects,
    where the count carried nothing, and says throwaway projects; milestone 4
    of `docs/plan.md` said none of the six benches has an interface, and says
    no bench has one; the entry on throwaway projects above said the other
    four have no gate, the only one of the six records the mode, and the only
    project where an install was declined, and says the others, the only one,
    and the first, with `devloop-test-t` named as the second, dated; and it
    gains a paragraph naming the five since 29 September 2026, each with its
    date and what it holds, since the entry's title promises what each is good
    for.
    Recorded, not built: the count is gone from the three places and the five
    benches are named with their dates.
  - The entry on five stacks said Go, Java, Python, TypeScript and Rust are
    installed, as are `gitleaks` and `gosec`, and that a project in any of
    those cannot be used to exercise an install. Read with `command -v` on 30
    September 2026: `shellcheck`, `pipx`, `yarn`, `bun` and `pnpm` came on 28
    and 29 September, `gosec` and `govulncheck` stand under `~/go/bin` off
    every `PATH`, and `java` answers only with the system's stub asking for a
    runtime; and the decline of 30 September 2026 in `devloop-test-t` was
    produced by moving two tools aside first.
    Recorded, not built: the paragraph carries the reading of this day and how
    a decline is produced on this machine.
  - The tally of `check-docs-consistency` rounds ended at five on 9 September
    2026, beside its own warning that the sentence had stopped short once
    before. Decided: the findings of the stock-take's close on 23 September
    2026 are not a round of this check, since they were read against the
    tool's states over the whole set and stand in the table with a count the
    tool prints, and a second copy of that count is what the bullet warns
    against; the audit of 26 September 2026, sixteen places, and this one,
    fourteen, are rounds, both read by hand over the control documents against
    the tree.
    Recorded, not built: the tally names both rounds and says why the
    stock-take is not one.
  - The note of the widget defect in `docs/stock-take.tsv` said the question
    had been put once, before that build; it has been put twice more since,
    both under 0.120.0, both after.
    Recorded, not built: the note says three times, once before and twice
    after, with the benches, and its evidence is this line, the table being
    where the mend stands.
  - "What is shared today is of two kinds" in the conventions named the
    byte-identical moves and the settled wordings of 18 September 2026;
    `shared/rule-not-written-down.md` of 27 September is neither.
    Recorded, not built: the section names three kinds, the third a rule
    written once for the skills that share its situation.

  **Worded so it misleads.**

  - Milestone 3 of `docs/plan.md` spoke of the four skill places running the
    install under a yes and reporting it in two places. Two do, `build-work`
    step 3 point 7 and `setup-checks` step 3; question 3 of `setup-project`
    hands the install over at a first setup, no record having landed, and the
    guard's message says the install is the user's to run.
    Recorded, not built: the sentence names the two and says what the other
    two do.
  - The entry above on devloop's own repository not being set up with devloop
    said the hooks this plugin ships stay inert here, the main-branch guard
    included, which is true of the plugin's hooks and read as nothing guarding
    work on the plugin.
    Recorded, not built: the entry says what guards it, the version guard in
    `.claude/settings.json` after every edit and the required check on main,
    since 29 September 2026.
  - `setup-project` step 0 said the setup takes two or three questions.
    Question 4 comes always, questions 3 and 5 with code, the rest under their
    condition: three at least with code, up to seven. The entry of 29
    September 2026 on the empty case judged the sentence as holding; it
    understates, and a person told two or three who meets five reads the setup
    as having gone off its script. Decided to mend it.
    Built: the step says a few questions, since 30 September 2026.

  **Read through afterwards.** `skills/build-work/SKILL.md` and
  `skills/setup-checks/SKILL.md` read in full; the changed regions of
  `README.md`, `docs/plan.md`, `docs/skill-conventions.md`,
  `skills/setup-project/SKILL.md` and the header of
  `scripts/devloop-stock-take` read with their sections; the changed lines of
  this file read with their entries, and this entry whole. Two sentences of
  `docs/plan.md` under milestone 1 said the opposite of the decision above,
  naming the five shipped directories as where a state reads built and as the
  search set; both name `.github/` beside them now, and a third names the
  workflow among the things. Nothing else in a changed file says the opposite
  of what stands. `grep -rn` over `README.md`, `docs/`, `skills/`, `shared/`,
  `hooks/`, `bin/` and `scripts/` for the mended phrases, "six benches", "six
  throwaway", "the other four have", "only one of the six", "four places
  already", "fourth case", "two or three questions", "is of two kinds", "names
  the kind of place and the record", "every place it lands is one the record
  names and blocks" and "outside the places the record names stay", finds them
  in dated entries of this file and in this entry alone, and "the fourth case
  of this convention" in the conventions counts something else and stands;
  `devloop-test-p` stands only where the skip run is meant; "main is
  unprotected" stands only in the dated reading of 29 September 2026. The
  eighteen checks under "Before a handover, run these" ran on 30 September
  2026 after the change: the fourteen that are silent when green were silent,
  the locked-skill check printed its one line, the offer check fifteen lines,
  the handover check seven lines over six sites and the second-statement check
  two, as the text beside each says.

  **Records.** A defect thing for each of the fourteen, sited on its status
  line above with the mended line as its evidence, and the head of this entry
  as no defect; the finding of 29 September 2026 on the tool's location rule
  replaced by its defect thing, sited on the line of the merge gate above; the
  merge gate's defect re-sited and re-evidenced as that line says, with the
  first run of the workflow recorded on it and on the three things of the
  workflow it walked, under version 0.117.2, source entry, on the line above
  that carries the run's figures; nine things for the workflow; five
  not-a-thing rows for the lines the mends of `build-work`, `setup-checks` and
  the tool brought into the search set, and one for the line of the entry of
  29 September 2026 that said nothing was built, the defect's site having left
  it. The notes of the widget defect, of the form defect and of the
  not-a-thing on the widget's rationale in `setup-project` name
  `devloop-test-q` and 29 September 2026 now. The tool, run in this tree at
  0.121.0 after this entry, `BROKEN RECORDS: 0`, `UNCOVERED LINES OF THE
  SEARCH SET: 0 of 1957` and exit 0, one line more under the lines that can
  carry no unique anchor, the workflow's `run:` line, recorded on its exit 0
  outcome; its counts over all files, things 1288, straight paths 181,
  branches 582, other kinds 525, not-a-thing 986, findings 5. The self-test at
  0.121.0, `SELF-TEST PASSED: 88 cases; of the 74 messages this tool rejects,
  refuses or answers with, read off its own source, 74 are asserted by a case
  and 0 by none`, recorded on its outcome.

- **The check classes get one owner: `setup-project` fills none and calls
  `setup-checks` in every project with code, the nine canonical target names
  stand in `shared/canonical-targets.md`, the answer "none" leaves
  `setup-checks` step 2, the step after a merge brings a project set up
  without code to the whole check setup, and `start-work` sends a set-up
  project with no class filled there first; 1 October 2026, version 0.122.0.**
  On `task/checks-in-setup-checks`, off `9fa10a7`. The order behind it was a
  draft, walked through five situations before anything was built; its report
  stands outside the repository.

  **What changed, and where.** `setup-project`: the opening and step 0 promise
  five files recording where tasks live and name no count of questions; step
  3's empty case skips one question, not two; step 4 has six questions, the
  mapping of tools to classes and the question about missing tools gone, the
  install permission question 3, local environment 4, labels 5, glossary 6, and
  its opening says that no question here is about check classes; step 5 makes
  the runner, `check`, `test-one`, `services-up`, `fmt-write` and the
  `.gitignore` lines and no target for a class, `check`, `test-one` and
  `fmt-write` failing and naming what is not configured until the check setup
  fills the class; step 6 writes `checks.md` with the nine rows `empty` and
  `-` in every other cell, `filled` and `skipped` being the check setup's
  words, and `Blocking` takes `-` on a row that is not filled; the
  `environment.md` note says nothing is installed during the setup; step 8
  fetches, fast-forwards and switches to the main branch once the merge is
  proven; step 9 says that the setup is done and the checks follow as a step
  of their own and runs `setup-checks` wherever there is code, and without
  code carries on to planning as before. `setup-checks`: the opening names the
  three routes in and what each decides about the branch and the close, the
  single-class route from a build skipping steps 7 and 8; "With nobody there"
  says the route after a merge for `empty` classes never arrives with nobody;
  step 2 asks all or some first, and a class not wanted is `skipped` with the
  person's reason; step 3 says where the record is read in the session that
  landed it; step 4 makes the targets under the canonical names and gives
  `test-one` and `fmt-write` their commands; step 6 gives `Blocking` its third
  value and makes `check` this skill's to keep true; step 7 names the branch
  on the route after a merge; step 9 routes by the way in. `start-work` step 4
  meets a set-up project with no class filled and code, says three things and
  runs `setup-checks`. `build-work` step 6 reads the table after a merge for a
  class still `empty` with code and calls `setup-checks` whole. The new shared
  file carries the table of the nine classes and the four targets beside them.
  `docs/skill-conventions.md` and `docs/plan.md` say where the question moved
  and what number it carries; `README.md`, `plan-work`, `untangle-idea` and
  `shared/checks-owner.md` were read and stand: the README names the setup
  and the check suite without saying which skill fills a class, the two skills
  call `setup-project` where `docs/agents/` is missing and nothing there
  depends on what it fills, and the shared block sends a build to
  `setup-checks`, which is still the owner.

  **Where the draft broke, and what stands instead.** Four places. The draft
  said that where nobody is there, the step after a merge raises an issue with
  `raised-here` instead of calling the skill; that branch cannot be reached:
  the mode refuses to start while a class is `empty`, precondition 1 in
  `build-work` under "Unattended mode", read again by `plan-work` before the
  question, and nothing but `setup-project` and `setup-checks` writes `empty`.
  So `build-work` step 6 and `setup-checks` under "With nobody there" say that
  a run reading `empty` there has a person in it, and no issue stands in for
  the call — a rule for a state no run reaches would be the safeguard that is
  none. The draft listed `test-one` and `fmt-write` among what the setup
  creates without a class decision, and neither has a command before the unit
  or the format tool is chosen; what stands is a target that exists under its
  canonical name and fails naming the class not configured, the way `check`
  already did, so that the names say what is missing rather than being
  missing, and the check setup fills each with its class. The draft said
  nothing about the record reaching the guard between the two skills: the
  guard reads `origin/main` as last fetched, `setup-project` step 8 proved the
  merge at the platform and fetched nothing, and a yes landed and not fetched
  blocked on 28 September 2026; so step 8 fetches and switches to the main
  branch before the close, and `setup-checks` step 3 names that fetch as where
  the record is read in the session that landed it. And the draft's question
  4, the install permission, now stands after question 2, the auto-merge
  reading, where the entry of 30 September 2026 on the pulls had it after the
  mapping; nothing about check tools stands in front of it any more, which is
  the direction that entry pulled in.

  **The two points to decide.** The answer "none" in step 2: it is gone, and
  step 2 says why. `empty` means nobody decided, in `setup-project` step 6,
  `setup-checks` steps 1 and 6 and "A class is one of the nine kinds of check"
  in `docs/skill-conventions.md`, and every step that asks whether the suite
  is complete reads that word and nothing else — the mode's first
  precondition, the `check` target, the close of `setup-checks`, and since
  this change the step after a merge. A "none" written as nine `empty` rows is
  a decision the file cannot carry, so it is asked again at each of those
  places; with the step after a merge reading `empty` now, the other answer
  would ask again at every merge, which is what "asking again hands back a
  decision the user already made" in step 2 forbids. A class the person does
  not want is `skipped` with their reason, named as theirs, and read again
  after a merge like any reason. The should of the stock-take of 23 September
  2026 on that line offered both, and this takes the second. The `filled` rows
  of a project set up before this version, written by `setup-project` without
  the red of `setup-checks` step 5: nothing catches them up, and this change
  builds nothing for it. Recorded, not built: a project set up before 0.122.0
  carries `filled` rows that `setup-project` wrote without the red proof of
  `setup-checks` step 5, and the refresh leaves them as they are; what should
  hold is that the refresh, reading a `checks.md` whose marker is older than
  0.122.0, names its `filled` rows as written without that proof and calls
  `setup-checks` step 5 over each once, with the person there, the way the
  step after a merge calls it for a class, so that a row reads `filled` only
  where its target has been seen going red. Until then such a row is read as
  it is by every hook and every build, and the proof each build makes per
  condition is the only red those targets ever produce.

  **The five situations, on paper.** Code and every tool on the machine: the
  setup lands with nine `empty` rows, `setup-checks` judges, asks all or some,
  makes the targets, proves each red, lands the suite, offers the mode — one
  landing more than before, which is the price, and the offer on the path of
  every project, which is what finding C of 30 September 2026 asked. Code and
  two tools missing under a yes: the record has landed and been fetched
  before `setup-checks` step 3 runs the backed command, so the guard passes it
  under the record, the pass finding L of that entry asked for, and pull
  request body and `environment.md` carry the report. The same under a no:
  the guard blocks on `install-tools: no`, "A guard's block is not a decline"
  hands the command over with the person there, and a decline makes the class
  `skipped` with that reason, as step 3 says. No code, then code: the setup
  leaves nine `empty` rows and goes to planning; the first build meets a
  `check` that fails saying the suite is not configured, as before this
  change; after its merge `build-work` step 6 reads `empty` with code and
  calls `setup-checks` whole, which lands the suite and offers the mode. Set
  up before this version: `start-work` step 1 refreshes the files, the
  refresh rewrites the header and the column rules and leaves the rows, so a
  project with `filled` rows keeps them without the red proof, as the point
  above records, and a project with a class the setup left `empty` beside
  code reaches `setup-checks` from `start-work` step 4 or from the step after
  its next merge. Nothing in `docs/plan.md`, `docs/skill-conventions.md` or the
  should-states of this file stands against any of the five: the one
  should-state that names the "none" answer offers both ways out.

  **Should-states met by this change**, each on the line of the entry that
  recorded it, its defect thing re-evidenced on the built line:
  - Built: `setup-project` fills no class and runs `setup-checks` in every
    project with code, so the offer of the mode and the duties of steps 3 to 8
    stand on the path every project with code takes, finding C of 30
    September 2026.
  - Built: nothing is installed during the setup and the first install a
    project meets comes after step 8 has landed and fetched the record,
    finding L of 30 September 2026, its second way out.
  - Built: `setup-checks` step 2 offers no "none", the finding of the
    stock-take of 23 September 2026 on step 9 overriding it.
  - Built: `setup-checks` step 9 routes by the way in, back to the build on
    the single-class route, the finding of the same day on the close.
  - Built: the single-class route from a build skips step 8 with step 7, the
    finding of the same day on the offer standing in a first setup.
  - Built: the route after a merge cuts its own branch and lands it in step 7,
    the finding of the same day on which branch that call runs on.
  - Built: `Blocking` takes one value on a row that is not filled, `-`, in
    the rule, the column and the template, the finding of the same day.
  - Built: `checks.md` is empty until `setup-checks` fills it, the sentence
    under "Permissions, before the first command" being true on every path,
    and the check commands are named as something to grant where they are
    written, `setup-checks` step 3, the finding of the same day on the
    permissions passage.
  - Met in part: finding B of 30 September 2026, a red from a tool off the
    PATH read as that and the fact landing in the repository. `setup-checks`
    step 5's duty about a red that does not come from the code now stands on
    the path every project takes; nothing new says how a tool found only
    under `~/go/bin` is reached by the shell `make` runs in, and that half
    stays recorded.
  - The finding of the stock-take on the roadmap line naming question 6 for
    the glossary, question 7 from 0.115.0: question 6 again since this
    version, so the line holds and the finding leaves the table.

  **Read through afterwards.** `grep -rn -i 'question [0-9]\|questions [0-9]'
  skills/ shared/ hooks/ bin/ scripts/ README.md docs/plan.md
  docs/skill-conventions.md .github/` finds every place naming a question of
  `setup-project` by its number: in the skill itself, all renumbered; in the
  conventions, four sentences amended with the number since 1 October 2026
  and two left as history, "grew to thirteen points" and "named by question 4
  until 30 September 2026"; in the plan, one sentence amended and three left as
  the milestone's text of 19 September 2026 and the account of 28 September
  2026, with the sentence of this day added to the milestone. The dated
  entries of this file stand as written. `grep -rn 'Present your
  mapping\|missing tools should be installed\|Canonical targets in the task
  runner' skills shared README.md docs/plan.md docs/skill-conventions.md`
  finds the mapping nowhere but in the conventions' account of 28 September
  2026, amended to say where it went. The eighteen checks under "Before a
  handover, run these" ran after the change; what each printed is in the
  order's report.

  **Records.** The things of question 3 of `setup-project` step 4 and of the
  step-5 table leave the table with the lines, the two runs of 30 September
  2026 on the missing-tools question with them, standing in that entry; the
  nine table rows stand under `shared/canonical-targets.md`; new things for
  the routes, the placeholders, the fetch, the close and `start-work` step 4;
  the defect things of the eight should-states above re-evidenced on the built
  lines, sited on the status lines they leave; a defect thing for the
  unproven `filled` rows, sited on its line above; the finding on question 6
  gone. The tool, run in this tree at 0.122.0 after this entry, `BROKEN
  RECORDS: 0`, `UNCOVERED LINES OF THE SEARCH SET: 0 of 1988` and exit 0,
  recorded on its exit 0 outcome. The self-test at 0.122.0, `SELF-TEST
  PASSED: 88 cases; of the 74 messages this tool rejects, refuses or answers
  with, read off its own source, 74 are asserted by a case and 0 by none`,
  recorded on its outcome.


- **The branch cut of both setup skills stands behind the last question, the
  branches carry fixed names, `devloop-setup` and `devloop-checks`, and a
  branch of that name with nothing written on it is deleted and cut afresh,
  the checked-out one included; 1 October 2026, version 0.123.0.** On
  `task/branch-cut-after-last-question`, off `62f5ed4`. Builds the should of
  the entry of 9 September 2026 on the setup cutting its branch before the
  first question, for both skills. Nothing ran on a bench.

  **Where the cut stands now, and the case it had to settle in each skill.**
  The rule: behind the last question of the skill and before its first write
  to the repository. In `setup-project` the last question is step 4's
  question 6, where the glossary and the decision records live, and the first
  write stood inside that same question: it created `CONTEXT.md` and
  `docs/adr/README.md` itself. So the question only decides now, and the two
  files are made in step 6 under `domain.md`, which already said "the two
  places step 6 just created" of places step 4 had made; the cut stands
  between step 4 and step 5, whose `.gitignore` lines and task runner are the
  first write. In `setup-checks` the last question is step 3's, whether a
  tool landing outside the repository may be installed where the record does
  not say yes, and the first writes stood in the same step: the standing fact
  into `environment.md`, and the manifest line a tool inside the project
  takes. Step 3 now decides and asks and writes nothing; the install, its
  report and the manifest line open step 4, where the targets are made; the
  cut stands between step 3 and step 4, and the single-class route from a
  build skips it, said under the heading, as the opening says. The refresh in
  `setup-project` asks nothing, so its cut is its first act, under the same
  name and rule. The heading reads "Cut the branch, after the last question
  and before the first write" in both skills. Step 4 of `setup-checks` reads
  "Put each class in place: its tool, its target, its findings in stages"
  since the second addendum of this order, "Introduce each class in stages"
  having named only its last part once the targets, on 1 October 2026 under
  0.122.0, and now the install stood under it; nothing outside the skill
  names that step by its title or its number, read with `grep -rn 'Introduce
  each class in stages\|setup-checks.*step 4' skills shared docs README.md`,
  which finds the heading, the table and the entry of 30 September 2026 that
  quotes the old title as a record.

  **The names, and what the shared text does with an existing branch.**
  `shared/cut-branch.md` names `devloop-setup` for the setup of the project
  and `devloop-checks` for the check setup and reads three cases off git
  before cutting. No branch of the name: cut from the main branch. The branch
  there with nothing written on it, read as the entry of 9 September 2026
  read it — it stands on the main branch, its tip a commit the main branch
  holds, and `git status --short` prints nothing — deleted and cut afresh,
  stepping onto the main branch first, since `git branch -D` refused the
  checked-out branch in the measured case. The branch there with something
  written on it, a commit of its own or an unclean tree: switched to, as
  before; taking up what stands there is not built. "Stood on exactly the
  then-current main" in that entry is read as the tip being a commit the main
  branch holds, which is the same test once the main branch has moved on
  since the break-off, the then-current main being an ancestor of today's.

  **The text the user sees is new, and its form.** One text is added that a
  person reads: the line or two in the run's own message in the deletion
  case. Reader: the person at the keyboard, in a first setup or a check
  setup, the setup's opening already said. Form: prose in the run's own
  message, no widget. What it carries, each part deciding what they read
  next: that a branch of this name was already there, left by an earlier
  setup broken off; that nothing had been written on it; that it was removed
  and cut again. Nothing came out, nothing having stood there before. The
  order's approved sentence reached this build cut off after its first word,
  so the three parts are taken from the should of 9 September 2026 and stand
  to be read against that sentence.

  **The branch guard is not changed, and two readings about it.** The guard
  exits 0 while `docs/agents/` is missing, so the write that creates that
  directory goes through on the main branch too; this change closes nothing
  there. First reading: after this change, is there a path in the set on
  which the first file under `docs/agents/` is written with the run on the
  main branch? `grep -rn 'docs/agents' skills shared bin scripts hooks
  README.md` lists every place naming the directory. Of those, the writers
  are `setup-project` step 6 and its refresh, `setup-checks` steps 4 and 6,
  `build-work` step 3, `review-changes` and `build-work` through
  `shared/rule-not-written-down.md`, and `record-lessons`. `setup-project`
  step 6 writes the first file on a first setup, after the cut; the refresh
  rewrites files that exist, after its cut; `setup-checks` reads `checks.md`
  in step 1 before it writes anything; `build-work` and `review-changes` read
  the control documents first, and the shared block writes nothing where
  `standards.md` does not exist. `grep -rn 'mkdir\|git switch\|git checkout'
  skills shared` finds no other place creating the directory or switching
  branches. One path stands: `record-lessons`, typed by a person, in a
  project that is not set up — no `docs/agents/`, no plugin manifest — follows
  its table into `docs/agents/standards.md` with no check that the project is
  set up and no branch cut before the write, so that file is the directory's
  first and lands on whatever branch the run stands on, the main branch
  included, with the guard silent. Recorded, not built: what should hold is
  that `record-lessons`, where `docs/agents/` is missing in a project that is
  not this plugin's own repository, says the project is not set up and what
  would set it up, by what it does and not by name, and writes nothing. What
  the guard does there separates in two: the write reaches the working tree
  unseen, the directory then exists, and the same hook blocks `git commit`
  and `git push` on the main branch, `hooks/pre-tool-use-branch-guard.sh`
  from its line 36, so the file lands in the working tree and nothing reaches
  the main branch through this workflow's commands. The
  other way onto the main branch is a run reading past the cut step, the
  failure the shared text names; the guard would not see it until the second
  file under `docs/agents/` goes through the editing tool, from which point it
  blocks, since the directory exists. Second reading: whether the silence
  without `docs/agents/` stands
  as a rule anywhere. `grep -n 'docs/agents' hooks/*.sh` finds the line
  `[ -d "docs/agents" ] || exit 0` in the branch guard, the merge guard and
  the install guard, the same test as an `if` in `hooks/session-start.sh`,
  which prints "devloop: not set up here" for it, and the two checks hooks
  testing `docs/agents/checks.md` instead. `docs/skill-conventions.md` orders
  it nowhere: `grep -n 'docs/agents' docs/skill-conventions.md` finds the
  control documents, the install record, and the measurement of 28 September
  2026 that the install guard exits 0 without the directory, a measurement
  and not a rule. Outside the conventions it stands as a consequence twice:
  `record-lessons` under "When this repository is the workflow", "devloop's
  own hooks stay inert in it", and the entry of this section on devloop's own
  repository not being set up with devloop. Nothing orders it; it stands in
  the code lines and is recorded from them.

  **Read through afterwards.** `grep -rn 'cut-branch\|Cut the branch\|git
  switch' skills shared hooks bin scripts README.md docs/plan.md
  docs/skill-conventions.md` finds the insert line and the heading in the two
  setup skills, both moved, the refresh paragraph, amended, and nothing else:
  `README.md`, `docs/plan.md` and `docs/skill-conventions.md` name neither
  the step nor the branch, and `start-work`, which routes into both setups,
  says nothing about branches. `build-work` step 3 cuts the task branch
  inside the build subagent and `build-prototype` commits to a throwaway
  branch, as the entry of 9 September 2026 already says; neither is this
  pattern and neither changes. The eighteen checks under "Before a handover,
  run these" ran after the change; what each printed is in the order's
  report.

  **Records.** The two defect things of the entry of 9 September 2026
  re-evidenced on the moved headings and sited on the status line they
  leave; the two cut headings renamed in their things; `shared/cut-branch.md`
  holds five things now, the straight path, the name by the skill and the
  three cases, the switched-to case keeping its run of 30 August 2026, which
  no longer counts, since its lines changed; the thing of the glossary places
  moved from step 4 to step 6 of `setup-project`, step 4 keeping a thing for
  the decision; the install-under-a-yes thing of `setup-checks` moved from
  step 3 to step 4 with its lines, step 3 keeping a thing for a yes asking
  nothing; a thing for the single-class route under the cut heading of
  `setup-checks`; a defect thing for `record-lessons` sited on its line
  above. The tool, run in this tree at 0.123.0 after this entry, `BROKEN
  RECORDS: 0`, `UNCOVERED LINES OF THE SEARCH SET: 0 of 2000` and exit 0,
  recorded on its exit 0 outcome. The self-test at 0.123.0, `SELF-TEST
  PASSED: 88 cases; of the 74 messages this tool rejects, refuses or answers
  with, read off its own source, 74 are asserted by a case and 0 by none`,
  recorded on its outcome.

- **Four things an earlier order left undone: two places of the documents
  dated, the finding on `shared/cut-branch.md` given its history, and the
  findings of two reports of 1 October 2026 held against the table and the
  files; 2 October 2026, version 0.124.0.** On `task/four-leftovers`, off
  `2a6e713`. No skill, hook or program changes, and no text a user reads.
  Nothing ran on a bench.

  **The two places.** `docs/skill-conventions.md` under "A rule holds only on
  the path it is written on" said the check table's format rules sat with "the
  two skills that create the file"; since 1 October 2026, version 0.122.0,
  `setup-project` alone creates `checks.md`, so the clause reads as the past
  now, "created the file then — one does since 1 October 2026". Under "A text
  is as long as what carries the decision, and written for its form" the
  question that grew to thirteen points stood as question 4 of `setup-project`
  with no date, and question 4 is the local environment since 1 October 2026;
  the line carries "question 3 since 1 October 2026" now, as the other mentions
  of that number in the file do. `grep -rn 'question [0-9]' docs/ README.md
  skills/ shared/` was read whole: `docs/plan.md` milestone 3 named question 3
  of `setup-project` among four places saying the person runs the install, the
  question that left for `setup-checks` on 1 October 2026, and says so now;
  every other mention in that file, in the conventions and in the skills
  carries its date or names today's numbering, and the entries of this file
  are dated by their heads; two notes of the table, on the record's form under
  `environment.md` and on the subject of the install question, named question
  4 without a date and carry "until 1 October 2026 and question 3 since" now.
  Read through afterwards, no sentence of either document directs anything
  differently; `grep -rn 'skills that create\|two skills that' docs/ README.md
  skills/ shared/` finds the amended line, this entry's quotation of the old
  one and the command itself, and, in this file, "the two skills that wrote"
  the unattended state file, which is another file and stands.

  **The finding on `shared/cut-branch.md`.** The finding of 1 October 2026
  that its commands write `main` literally where the hooks resolve the main
  branch from `origin/HEAD` lacked when the commands came in. `git show
  62f5ed4:shared/cut-branch.md | grep -n main` prints two lines, 3 and 10,
  "main-branch guard" and "Never commit to the main branch directly", prose
  both: before the branch cut of 1 October 2026, version 0.123.0, the file
  named the main branch in no command, and the three commands carrying the
  literal came with that change. The note says so now.

  **The findings of two reports.** `~/devloop-gegenprobe-2026-10-01.md`, read
  against `9fa10a7`, closes on fourteen lines;
  `~/devloop-checks-umbau-2026-10-01.md`, written on `9f40379`, on seven. Both
  are a model's output and were held against the table and against the files
  of this tree, never taken on their word; the list of
  `~/devloop-zweigschnitt-2026-10-01.md` was taken up by the order of 1 October
  2026 and stayed out. Thirteen fall away. Ten stand in the table as defects
  of entries under this heading: the branch guard's silence before
  `docs/agents/` exists, read in the entry of 1 October 2026 on the branch
  cut; the session-start line reaching the run and not the person;
  `start-work` step 1 reading a file; question 2's recommendation; the bench's
  `Makefile` naming tools under `~/go/bin`; the places and routes listed under
  a no; the `filled` rows written without the red proof; the check commands
  named as something to grant with nobody there; and two repaired on 1 October
  2026 under 0.122.0, the single-class route skipping step 8 with step 7 and
  step 2 of `setup-checks` losing the "none" answer. One is an observation the
  entry of 30 September 2026 carries and the report itself calls no rule, the
  two benches deciding `types` opposite ways. One is the state of this machine
  on that day, the installed copy a version behind the tree, and stands in no
  file. One is the question numbers without a date, the first part of this
  order. Eight remain, each read anew at the files and recorded as a finding
  row of `docs/stock-take.tsv` — on `skills/setup-checks/SKILL.md` twice,
  `skills/setup-project/SKILL.md` three times, `skills/build-work/SKILL.md`,
  `skills/start-work/SKILL.md` and `README.md` — in the form of the rows of 1
  October 2026, repaired nowhere on this branch, each note carrying the search
  of this file that came back without a match. The tool lists them, and this
  entry names none, so that each stands once.

  **Records.** The three notes amended; eight finding rows; the head of this
  entry as no defect. The tool, run in this tree at 0.124.0 after this entry,
  `BROKEN RECORDS: 0`, `UNCOVERED LINES OF THE SEARCH SET: 0 of 2001` and
  exit 0, recorded on its exit 0 outcome. The self-test at 0.124.0, `SELF-TEST
  PASSED: 88 cases; of the 74 messages this tool rejects, refuses or answers
  with, read off its own source, 74 are asserted by a case and 0 by none`,
  recorded on its outcome. The eighteen checks under "Before a handover, run
  these" ran after the change; what each printed stands in the session and
  not here.

- **A program answers how far the setup of a project has got,
  `bin/devloop-setup-state`, read off the default branch as last fetched and
  never off the working tree; the places that read it off the tree read
  through it, the status line has three states, and the guards keep their
  directory test; 3 October 2026, version 0.125.0.** On `task/setup-state`,
  off `3d6bc6a`. The order was a draft, walked through eight situations before
  anything was built; its report stands outside the repository, at
  `~/devloop-setup-state-2026-10-03.md`. Nothing ran on a bench: the program
  and the hook ran against scratch repositories, below.

  **The situation it closes.** Whether a project was set up was read off
  `docs/agents/` in the working tree, in `hooks/session-start.sh`,
  `start-work` step 1 and step 4, `plan-work` and `untangle-idea` before their
  first write, and `setup-project` before its refresh; `grep -rn 'docs/agents'
  skills shared hooks bin scripts README.md` lists every place that names the
  directory. The directory is what the setup writes in step 6, before step 8
  lands it, so a setup broken off between the two counted as set up in the
  next session while the main branch held nothing: the status line said `set
  up`, `start-work` ran the in-flight query and asked what to build, and a
  task branch cut from the main branch carried no `docs/agents/`.

  **What was built, and where.** `bin/devloop-setup-state`, in the form of
  `bin/devloop-install-record`: off `refs/remotes/origin/<default>`, the
  default branch resolved as the branch guard resolves it, nothing written
  into the project, every call afresh; on exit 0 one key and one value per
  line, `ref:`, `fetch:`, one `present:` or `missing:` line per file of the
  setup, one `marker:` line per present file with the version its marker
  carries or `none`; on exit 1 one `cause:` line, four causes, the directory
  cannot be entered, not a git repository, no default branch, the ref not
  fetched. `--fetch` fetches first, bounded by `DEVLOOP_FETCH_SECONDS`, thirty
  where unset, with a watchdog that kills the fetch and what it started; a
  fetch that fails or does not answer is said on the `fetch:` line and the
  state as last fetched is read, and where no state was ever fetched the cause
  names the fetch's message beside its own. `--self-test` builds repositories
  under a temporary directory outside the project and produces every outcome
  once. `hooks/session-start.sh` reads it without the flag. `start-work` step
  1 runs it with the flag as its one command and compares the `marker:` line
  of `issue-tracker.md`, reading no file; step 2 says what each of the three
  states means for the introduction and the in-flight query; step 4 runs
  `setup-project` where a file is missing. `plan-work` and `untangle-idea` run
  it before their first write. `setup-project` runs it before deciding between
  a refresh and a first setup. `docs/skill-conventions.md` carries the rule
  under "The setup state is read off the default branch", the check holding
  the default-branch resolution covers three files, and the paragraph under
  "The install guard reads a record" says so; the comment in
  `bin/devloop-install-record` names the third copy. Nothing else decides the
  same thing: the three guards keep `[ -d "docs/agents" ] || exit 0` and the
  two checks hooks their test on `checks.md`, on purpose, since that test is
  what leaves the hooks of this plugin inert where the workflow is not set up,
  and a guard reading the branch would be silent through a first setup, where
  step 8 holds an unmerged pull request with "Never merge yourself" and no
  hook behind it; `record-lessons` says of this repository that the hooks need
  the directory, which stays true; `shared/rule-not-written-down.md` reads
  `standards.md` at the review's close on a branch cut from the main branch
  and writes nothing without it; `diagnose-bug` under "When this runs" hands
  over a missing control document; `start-work` step 4's second paragraph
  reads the rows of `checks.md`, the state of the check suite and not of the
  setup. Each read and left.

  **What the program reads, and what it cannot.** The five files
  `setup-project` step 6 writes under fixed names, `checks.md`,
  `issue-tracker.md`, `domain.md`, `standards.md`, `environment.md`, each by
  name, present or missing; nothing is counted. The setup makes more, and none
  of it can be asked for by name on a branch: `CLAUDE.md` is appended to where
  it exists and created where not, so its presence says nothing about the
  setup; the task runner is a `Makefile` only where no runner stood and thin
  targets in whatever stood otherwise; the two `.gitignore` lines go into a
  file most repositories have; `CONTEXT.md` and `docs/adr/README.md` are made
  only where question 6 found nothing living elsewhere; the seven labels live
  in the tracker, and the branch `devloop-setup` is gone after the merge.

  **The status line, and the combination.** Three states since this version.
  The branch alone cannot tell a project never set up from a setup written and
  not landed, so the hook reads the directory in the working tree beside the
  program's answer. Every file on the branch: `set up`. Some file on the
  branch, or none and `docs/agents/` in the tree: `set up in part | on
  origin/main as last fetched: <present files by name> | missing: <missing
  files by name>`, the ref as the program prints it, so `origin/master` where
  that is the default branch. Nothing on the branch and no directory: `not set
  up here`, as before. Where the program cannot read the branch, no default
  branch or never fetched, the order's three states had no place for it; what
  stands is the middle state with the cause in place of the files, `on the
  default branch as last fetched: not read, <cause> | missing: not read`,
  where the directory is in the tree, and `not set up here` where it is not.
  The `[InstallRecord]` line is unchanged and is printed in the second state
  as in the third. One consequence stands: a working tree without
  `docs/agents/`, a task branch cut before the setup landed, reads `set up`
  while the guards are inert in it, since the line reads the branch and the
  guards the tree; the order fixed both halves.

  **Where the draft broke, and what stands instead.** Five places. The version
  marker: no place orders a first setup to write it. The paragraph describing
  it stands under "Refreshing an existing setup", whose steps a refresh does
  not run, and `grep -n 'devloop: \|marker' skills/setup-project/SKILL.md`
  finds that paragraph and the template line below it and nothing in steps 5
  to 9; the benches carry markers all the same, read on 19 September 2026 off
  the platform, since a run reads the whole skill. The program prints `marker:
  <file> none` for such a file, `start-work` step 1 treats `none` as older and
  refreshes, so a project set up fresh is refreshed at its next start, a
  refresh that writes the markers and changes nothing else. A finding row of
  `docs/stock-take.tsv` carries it, sited on that paragraph, and nothing here
  builds it. The second: a setup written and not landed. The program reads it
  as not set up, which is the point, and the next run takes the first-setup
  path: `start-work` step 2 skips the introduction and the query and step 4
  runs `setup-project`, which asks the questions again, their answers standing
  in files on a branch nothing reads, and meets the branch `devloop-setup`
  with something written on it at the cut, the third case of
  `shared/cut-branch.md`, which switches to it and describes nothing further,
  as the entry of 1 October 2026 records. Recorded, not built: a first setup
  finding that branch with commits of its own, or `docs/agents/` in the tree
  with nothing on the main branch, should read the answers off the files that
  stand there and ask only what they do not answer, then land what stands, so
  that a broken-off setup costs the landing and not the questions; until then
  the questions are asked again, step 6 overwrites the files on the branch and
  step 7 appends the pointer block to `CLAUDE.md` a second time. The third: a
  read that fails, above. The fourth: the order wrote `origin/main` into the
  middle line, and the program prints the ref it resolved, which is the branch
  guard's reading; the line carries that. The fifth: the skills run the
  program through the Bash tool, and no grant is added to `allowed-tools`,
  whose third line the convention under "Frontmatter" fixes and the check over
  insert lines holds; outside auto mode the call prompts once, as the `ls` it
  replaces did. `${CLAUDE_PLUGIN_ROOT}` is substituted in a skill's body, read
  on 3 October 2026 off `code.claude.com/docs/en/skills.md`, "The skill's
  markdown content (SKILL.md body)" and "Bash rules in the allowed-tools
  frontmatter", and the manifest reference says the variable is not in the
  environment of a Bash tool call; so the skills write the reference in their
  body, where the path lands at load, and no command expands it. One sentence
  of the order is read two ways and answered for both: "sein Selbsttest deckt
  die Ausgänge des neuen Programms ab". The self-test of
  `scripts/devloop-stock-take` produces that tool's own outcomes and reads its
  own source for its messages, as its header says, and cannot produce a
  program's under `bin/`; so the new program carries a self-test of its own,
  which produces every one of its outcomes once, and the stock-take covers
  those outcomes as things, every line of the program's search set covered.

  **The eight situations, measured on 3 October 2026 against scratch
  repositories**, each a bare origin and a clone under a temporary directory,
  the hook run with `CLAUDE_PROJECT_DIR` set and the program run directly;
  what each printed stands in the order's report, the lines here copied from
  it. (a) A first setup, nothing on the main branch and nothing in the tree:
  the hook printed `[ProjectStatus] devloop: not set up here`, the program
  five `missing:` lines, with `--fetch` the line `fetch: done` before them.
  (b) The setup written on `devloop-setup`, committed, pushed, not merged, the
  next session in the same directory: the hook printed `devloop: set up in
  part | on origin/main as last fetched: none | missing:` and the five names,
  and the install record line `none: no docs/agents/environment.md on
  origin/main as last fetched`; the same with the tree on the main branch and
  the files uncommitted. (c) A project set up before this change, every file
  on the main branch with the marker 0.100.0: the hook printed `devloop: set
  up`, the program five `present:` lines and `marker: docs/agents/checks.md
  0.100.0` with its four siblings, which `start-work` step 1 reads as older
  and refreshes; the same project on a branch without `docs/agents/` printed
  `set up` too, the consequence named above. (d) A repository the workflow was
  never used in: `not set up here`, the program five `missing:` lines and exit
  0. (e) The fetch not answering: with a transport that never answers and the
  bound at two seconds the program printed `fetch: no answer within 2 seconds,
  reading origin/main as last fetched` and the five present files after it,
  exit 0; with the origin moved away, `fetch: failed (fatal: '...' does not
  appear to be a git repository), reading origin/main as last fetched`, exit
  0; the hook, which does not fetch, printed `set up` either way. (f) Files
  from an older version, four of five on the main branch with the marker
  0.50.0: `set up in part | on origin/main as last fetched:` the four names `|
  missing: docs/agents/environment.md`, the program four `present:` lines, one
  `missing:` and four `marker:` lines at 0.50.0. (g) This plugin's own
  repository: `not set up here`, the program five `missing:` lines off
  `origin/main`. (h) No `origin/main`: with no remote and no directory, `not
  set up here` and `cause: the ref refs/remotes/origin/main cannot be read:
  the default branch main has not been fetched`, exit 1; with the directory in
  the tree, `set up in part | on the default branch as last fetched: not
  read,` that cause `| missing: not read`, and with `--fetch` the cause ending
  `, and the fetch failed (fatal: 'origin' does not appear to be a git
  repository)`; a remote added and never fetched read the same, and after
  `--fetch` printed `fetch: done` and every file present, the hook then `set
  up`; a repository on a branch `trunk` with no `origin/HEAD` printed the
  middle state with `cause: no default branch: origin/HEAD names none and
  neither main nor master exists`. Nothing in `docs/plan.md`,
  `docs/skill-conventions.md` or the should-states of this file stands against
  any of the eight, read with `grep -n 'should' docs/roadmap.md`, 142 lines on
  3 October 2026, the two on this reading being that step 1 reads a file and
  that the setup cuts its branch behind the last question, the first met here
  and the second untouched.

  **Texts proposed and not built.** Two lines a person would read came out of
  the eight situations and stand in the report as proposed wordings: what
  `start-work` says in the middle state before it runs the setup, and what a
  skill says where the `fetch:` line reports a failed fetch; the skills carry
  the state and the program's line and no duty to say either.

  **Should-states met.** Built: the defect of the stock-take on `start-work`
  step 1, which said one command and no file read while the paragraph after it
  read `issue-tracker.md` for the marker; the one command answers the marker
  now, its thing re-evidenced on the command line and sited on the status line
  it leaves.

  **Records.** Fourteen things for the program's outcomes, with their
  self-test lines as part of them; the hook's three states as things, `not set
  up here` re-sited on its new condition; the branches of the five skill units
  re-anchored and the new branches added, `start-work` step 1's fetch line and
  its missing line, step 2's middle state and the older reading,
  `setup-project`'s first setup whatever the tree holds and its refresh with a
  file missing; the check's red row re-anchored; the defect of step 1
  re-evidenced; the defect of the branch takeup sited on the status line
  above; two finding rows, on `setup-checks` step 1 for the `types` rule two
  runs read opposite ways on one stack, which the entry of 30 September 2026
  carries as an observation and the entry of 2 October 2026 called no rule,
  and on the marker paragraph of `setup-project`; this entry names neither
  beyond this sentence, so that each stands once. The runs: the program's
  self-test, run in this tree at 0.125.0, `SELF-TEST PASSED: 15 cases`, one
  case per outcome and one for the tree saying the opposite of the ref,
  recorded on every outcome it produced; the hook's four outcomes, recorded on
  them with the situations above as their line; the check holding the
  default-branch resolution printed `1` over three files, recorded on its
  green outcome. The tool, run in this tree at 0.125.0 after this entry,
  `BROKEN RECORDS: 0`, `UNCOVERED LINES OF THE SEARCH SET: 0 of 2047` and exit
  0, recorded on its exit 0 outcome. The self-test at 0.125.0, `SELF-TEST
  PASSED: 88 cases; of the 74 messages this tool rejects, refuses or answers
  with, read off its own source, 74 are asserted by a case and 0 by none`,
  recorded on its outcome. The eighteen checks under "Before a handover, run
  these" ran after the change; what each printed stands in the order's report.

  **Addendum of the same day: the text for a failed fetch, built once, and the
  two others left as proposals.** Of the three texts proposed above one is
  built, the one for a fetch that failed or did not answer, in the wording
  approved that day: "Der Hauptzweig lässt sich gerade nicht holen (<Meldung
  von git>). Ich arbeite mit dem Stand vom letzten Mal weiter; er kann
  veraltet sein." The four places that read with the flag would have said it
  in four wordings, which "Text shared between skills" rules out, so it stands
  once, in `shared/fetch-failed.md`, inserted with its line in `start-work`
  step 1, in `plan-work` and `untangle-idea` before their first write and in
  `setup-project` under "Refreshing an existing setup", each directly after
  the sentence that runs the program and before the sentence that acts on the
  answer; the skill says what must be said, not the wording, and what follows
  from the state read stays each skill's own text, under the inserted line.
  The sentence `start-work` step 1 carried on the `fetch:` line went, since
  the inserted text decides the same thing. The shared form fits: the
  statement has to stand in four skills in the same words, carries no
  consequence of its own, and is the third kind under "What is shared today",
  a rule written once for the skills that share its situation; that paragraph
  names it beside `shared/rule-not-written-down.md` now, and the paragraph on
  the setup state names where it stands. The two other texts, what
  `start-work` says in the middle state and what `setup-project` says on
  taking up a written branch, stay as proposals in the report and are not
  built: each promises that the answers already given are taken up, and
  nothing takes them up, so a run saying either would say something untrue,
  which "A text is as long as what carries the decision" rules out before
  length. The fifth fetch, `setup-project` step 8, "Once the merge is proven,
  fetch, fast-forward the local main branch and switch to it", describes no
  path for a fetch that fails, and the shared statement does not belong there:
  going on with the state as last fetched would go on without the setup, the
  check setup cutting its branch from a main branch that lacks it and the
  guard reading no record; `build-work` step 6 says of its own fetch and
  fast-forward "If that fails, say so and stop", and
  `shared/command-does-not-answer.md`, inserted in `setup-project`, reads an
  error as an answer and not as a missing one, so nothing covers it. A finding
  row of `docs/stock-take.tsv` carries it, sited on that sentence, repaired
  nowhere; that sentence came on 1 October 2026 and not in this order. Of the
  checks under "Before a handover, run these", those over shared text and
  insert lines ran after the change: no shared line written out in a skill,
  every insert line in the granted form and resolving, every inserting skill
  carrying the grant, the language block at its two places in all twelve, one
  checksum of the notice and a count of twelve, every skill expanding; all
  silent or at their green form. The tool, run again at 0.125.0 after this
  addendum, `BROKEN RECORDS: 0`, `UNCOVERED LINES OF THE SEARCH SET: 0 of
  2048` and exit 0, recorded on its exit 0 outcome; its self-test unchanged,
  its source untouched. The version stays at 0.125.0: one raise per branch.

- **The install question's points stand in the fields of the harness's choice
  widget — the question line carrying the subject, its scope and the leak, the
  yes and the no each a label and a line — the form rule rewritten so that
  prose before the widget carries only a point no field can carry, and the
  boundary on runtimes and the unattended half of the no out of the question
  as rules on the run; 3 October 2026, version 0.126.0.** On
  `task/question-in-widget-fields`, off `0d3ff6e`. The order was a draft,
  walked through five situations before anything was built. Nothing ran on a
  bench: the question has not been put since 30 September 2026.

  **The situation it closes.** Question 3 of `setup-project` step 4 required
  since 30 September 2026, version 0.119.0, that the question stand in prose
  in the run's own message and that a widget after it carry its two answers
  and no other question. Nothing in the repository read whether a run met it,
  and three runs did not — `devloop-test-q` on 29 September 2026 under
  0.118.0, before the form was named, and `devloop-test-s` and
  `devloop-test-t` on 30 September 2026 under 0.120.0: the question came as
  one tab of a form beside another question each time, and the points that
  stood only in prose did not arrive, findings A and G of the entry of 30
  September 2026 on the two runs. The fifth of the five sentences of
  `docs/plan.md` says what becomes of a rule that does not hold in a run:
  rewritten, not appended to, with every place deciding the same thing named
  in the same change.

  **What goes in which field.** The entry of 30 September 2026 on the first
  asking measured the widget: one to four questions in a call, each a
  question line, a header and options of a label and a line, and content
  that does not fit a field arrives cut to it. Every point that carries the
  decision has a field now, and question 3 names it, so that a reader of the
  skill sees whether a point has a place at all. In the question line, the
  subject and its scope — tools landing outside the project on this machine,
  the answer holding for this project — and, directly behind the subject and
  not at the end of the line, where a cut strikes first, what a yes also
  lets through: through a package manager the guard sees the verb and not
  what is installed, so a yes to tools also lets through a command that
  installs a runtime. That point reached the person in none of three runs:
  not at all in `devloop-test-r`, and in the two runs of 30 September 2026
  named and then cancelled by the assurance that followed it. In the yes,
  label and line, what a yes means; in the no, label and line, where a no
  leads with them there; in the header a word for the subject, carrying no
  point. The examples of such a tool — a code generator, a migration
  command, a checker — carry no decision and have no field. Each field holds
  a short line, the question line two sentences.

  **Two contents left the question, on purpose.** The boundary, that
  compilers and runtimes stay theirs under every answer, "as a rule on the
  run and not a wall": both runs of 30 September 2026 lifted it out of the
  leak and delivered it as an assurance the guard does not hold, and finding
  A's should is that the leak reaches the person or nothing about runtimes
  does. It is built the first way: the leak is said and the assurance is
  not, and "Runtimes are not a kind the permission may cover" in
  `docs/skill-conventions.md` stays the rule, saying now that the question
  does not say the boundary. The unattended half of the no — nothing asked,
  the task an issue carrying the exact command or a class `skipped` with the
  reason — names a mode the person has not met at that point, the pattern
  finding F of the same entry records of the permissions passage. It stands
  whole as a rule on the run where it is applied: `build-work` step 3 point
  7, "With nobody there, a no on record is the decline, and the paragraph
  below applies", that paragraph carrying the two outcomes, the class
  `skipped` through `setup-checks` and the task an issue with `raised-here`
  and `needs-human`; and `setup-checks` step 3, "or, with nobody there, the
  record says no — that class becomes `skipped` with that reason — not
  `empty`". Question 3 names both places and says the half is not said to
  the person; the no's line says that nothing is installed without them,
  which holds in both cases.

  **The form rule, rewritten and not appended to.** The rule since this
  version: the content of a question stands in the widget's fields, and
  prose in the run's own message before the widget carries only a point no
  field can carry, and nothing else. The widget carrying this question alone
  stays required, for another reason than before — two decisions in one
  submit, the case `start-work` step 1 gives against a second question in
  the same reply, where a bare yes stops being an answer to either. Every
  place deciding the same thing, read and changed or left: `setup-project`
  step 0's last paragraph, which scoped the reading about options to a
  choice two lines carry — it says now that the fields are what is read and
  that step 4 names the field of each point; step 4's opening, which named
  two forms and sorted the questions between them — now one form for a
  choice with its content in the fields, the exception for a point no field
  carries, question 4 open and in prose, and the call of question 3 alone;
  question 3 itself, which required prose and a widget after it; "A text is
  written for the form that carries it" in `docs/skill-conventions.md`,
  which said step 4 names its two forms — now that it names the field of
  each point; `plan-work` Stage 1, "in a message of its own" for the mode
  question — the one other sentence of the set that put that form, and the
  wording a tab of its own met at the install question — now "in a widget
  call that carries this question and no other", the three answers already
  a label and a line each; `shared/three-questions.md`, "something that
  needs weighing goes alone", which decides the same in the same direction,
  left; `start-work` step 1's reason against a second question in the same
  reply, the reason the rule now rests on, left; `shared/how-to-ask.md`, "A
  question has to be answerable by what it offers", which decides the shape
  of a question and not its form, left; and `setup-checks` step 8's offer of
  the mode, which names no form and is left — what its six things a yes
  leads to would do in a widget's fields is not this entry's. `docs/plan.md`
  milestone 3 carries the change in its account.

  **The five situations, on paper.** (a) A project with code: the question
  is put, every point in a field, the record written in step 6 and landed in
  step 8, the check setup after it; nothing stands in prose, so nothing is
  lost to the form. (b) A project without code: step 3 puts question 3 as
  before, and no field depends on a stack — the yes says what the run does
  from then on, the no what the person gets where a tool is missing — and
  the record carries no route line, as the entry of 29 September 2026 on the
  empty case says. (c) The run puts the question in one form beside
  auto-merge: every point of question 3 arrives, since every point has a
  field, which is the gain over the three runs; what is lost is one submit
  for two decisions, the half of the rule nothing reads, the finding below;
  auto-merge carrying a recommendation beside a question that gives none
  stands recorded as finding H of 30 September 2026. (d) The user's language
  is not German: the skill says what each field carries and not the words,
  "Describe what must be said; never dictate wording", and
  `shared/language-opening.md` holds the question line, the labels and the
  lines to the user's language; the approved wording below is the German
  reference. (e) A field does not carry its content: the rule says prose
  before the widget for that point and nothing else, and "A text is written
  for the form that carries it" says a text and a form that do not fit are
  one thing wrong — the text is cut to what the field holds or goes to a form
  that holds it, and is never made shorter in the hope that it gets through.
  Of the approved fields, the two labels are four words each against the
  widget's one to five, the header a word against its twelve characters, and
  the question line and the two answer lines have no documented limit and
  wrap in the terminal; which of them a run compresses is read off the next
  bench run and nothing else. Nothing in `docs/plan.md`,
  `docs/skill-conventions.md` or the should-states of this file stands
  against any of the five, read with `grep -n 'should' docs/roadmap.md`, 145
  lines on 3 October 2026: finding A's should is met its first way, finding
  G's in its first half, and "Where the set ends" in the plan, that a
  compiler or interpreter is the person's under every answer, stands as a
  ruling and not as something the question says.

  **The finding, and what the documentation says.** That the widget carries
  this question alone cannot be checked mechanically today: the repository
  reads no widget call. Read on 3 October 2026 off
  `code.claude.com/docs/en/plugins/mods/reference.md`: `AskUserQuestion` is
  a render site, one of the sites Claude Code draws itself, keyed by the
  tool call id and carrying "the question and options" as its props, so the
  `ui.render` event of the mods system sees the call's content as it is
  drawn; the same page lists `tool.call`, which fires as a tool is about to
  run, and `tool.check`, decided "after the `tool.call` and `PreToolUse`
  hooks". `code.claude.com/docs/en/hooks.md` names `AskUserQuestion`
  nowhere, and the one tool it names as skipping `PreToolUse` is
  `EndConversation`. The order behind this entry said the widget is a
  surface site and not a tool site and that `PreToolUse` does not reach it;
  the reference says the first and not the second, and the hooks page's one
  general sentence points the other way. So the candidates are a
  `PreToolUse` hook matching the question tool and counting the questions in
  its input — the mechanism this plugin's three guards already use — and a
  mod's `ui.render` or `tool.call` hook; which of them sees the call is
  measured with a throwaway plugin, as the entry of 17 September 2026 built
  `probe`. A finding row of `docs/stock-take.tsv` carries it, on the rule's
  line in step 4, repaired nowhere: what should hold is that a measured
  mechanism holds this half of the rule, or it is dropped.

  **The approved wording**, the record of what was approved on 3 October
  2026; the skill says what is said and not the words, as the entry above
  does with the sentence for a failed fetch. The question line: "Darf ich
  für dieses Projekt künftig Werkzeuge installieren, die außerhalb des
  Projekts auf diesem Rechner landen? Ein Ja lässt über den Paketmanager
  auch einen Befehl durch, der eine Laufzeitumgebung installiert." The first
  answer, label "Ja, Werkzeuge selbst installieren", line "Ab jetzt
  installiert der Lauf solche Werkzeuge selbst, mit dir und ohne dich, ohne
  erneut zu fragen." The second answer, label "Nein, nicht selbst
  installieren", line "Nichts wird ohne dich installiert. Wo ein Werkzeug
  fehlt, bekommst du den Befehl dafür und entscheidest selbst."

  **Read through afterwards.** `grep -rn "in prose\|message of its own\|two
  option lines\|choice widget\|two lines carry" skills shared docs/plan.md
  docs/skill-conventions.md README.md`: in `setup-project`, question 4 in
  prose and the two accounts of the forms that stood before, dated; in
  `docs/plan.md` and the conventions, the account of 30 September 2026,
  dated, and the amended sentence under "A text is written for the form that
  carries it"; `plan-work` Stage 3 comparing drafts in prose and
  `setup-checks` step 6 on a column, which are not questions; nothing
  requiring prose for a choice. `grep -rn "says the boundary\|as a
  boundary\|under every answer" skills shared docs/plan.md
  docs/skill-conventions.md hooks README.md`: the boundary as a rule on the
  run in `build-work` step 3 point 7 and `setup-checks` step 3, in two causes
  of the install guard, in the ruling and in the plan, and in question 3's
  paragraph on what stays out; no question says it to a person. `grep -rn
  "no other question\|and no other" skills shared`: step 4's opening and
  question 3 of `setup-project`, and `plan-work` Stage 1. No sentence in a
  changed file says the opposite of what stands.

  **Should-states met.** Built, the first of its two ways: finding A of 30
  September 2026, the leak said and the assurance not, the defect thing
  re-evidenced on the line of question 3 that says so. Built in part: finding
  G of the same entry, the points written for the widget's own fields, the
  defect thing re-evidenced on the line of question 3 that names them; the
  call carrying this question alone stays the finding above. The defect of
  29 September 2026 on the first asking and the defect of the pulls of 30
  September 2026 stand re-evidenced on the lines that carry their repairs
  now, the form rule and the leak in the question line; the defect of the
  three things in the options on the paragraph that holds them as a rule on
  the run.

  **Records.** The things of question 3 re-anchored on the four fields and
  the two paragraphs, the yes and the no keeping their names and their runs
  of 30 September 2026, which no longer count, since their lines changed;
  the thing for the clause that did not fit the question line gone with its
  line; the two form things of step 4 renamed to the one form and its
  exception, and a thing for question 4 in prose; the mode question of
  `plan-work` renamed to its call and its lines re-anchored; the not-a-thing
  of step 0 re-anchored; one finding row; the head of this entry as no
  defect. The tool, run in this tree at 0.126.0 after this entry, `BROKEN
  RECORDS: 0`, `UNCOVERED LINES OF THE SEARCH SET: 0 of 2058` and exit 0,
  recorded on its exit 0 outcome. The self-test at 0.126.0, `SELF-TEST
  PASSED: 88 cases; of the 74 messages this tool rejects, refuses or answers
  with, read off its own source, 74 are asserted by a case and 0 by none`,
  recorded on its outcome. The eighteen checks under "Before a handover, run
  these" ran after the change; what each printed stands in the session.

  **Addendum of the same day: the name taken out of the reason.** The opening
  of step 4 named `start-work` as the source of its reason for the call
  carrying question 3 alone, and the check on locked skills under "Before a
  handover, run these" printed that line beside the one it has printed
  since, `start-work` in `build-work` — a second line to be judged anew at
  every run, which is noise in a check. The name is out: the skill carries
  the reason in its own words, two decisions put in one submit coming back as
  one answer, and this entry says above where the reason comes from. No
  other sentence of the skill changed what it directs, the lines after it
  only rewrapped; no other file carries the reason by reference — `plan-work`
  Stage 1 puts the mode question alone and gives no reason, and the
  conventions name none — so nothing else moves with it. The check prints
  its one line again. The eighteen checks ran after the addendum; the tool,
  run again at 0.126.0, `BROKEN RECORDS: 0`, `UNCOVERED LINES OF THE SEARCH
  SET: 0 of 2057` and exit 0 — one line fewer in the set, the rewording having
  taken the word "either" off a line — its self-test unchanged, its source
  untouched.
  The version stays at 0.126.0: one raise per branch.

- **The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both
  with the person there: the record saying yes in `devloop-test-u`, the record
  saying no in `devloop-test-v`; the guard read against a landed record under
  both answers, the install with nobody there not reached, and fifteen defects
  read off them; 4 October 2026, version 0.127.0.** On
  `task/record-the-october-runs`, off `e484536`. Nothing is repaired here, and
  nothing in either project was changed: pull request #2 of `devloop-test-v`
  stands open on purpose.

  **What ran, and what this entry was read off.** This order's account: both
  runs used the installed copy at version 0.126.0, commit `e484536`, and that
  copy was held against the tree at that commit on the machine the runs ran on
  and found identical; the order gave that holding as not reproducible here. It
  is reproducible, since this entry was read on that machine — the install of
  the yes run stands on it, below — and read again it holds:
  `installed_plugins.json` carries 0.126.0 with `gitCommitSha` `e484536` and a
  last update at 20:36:56 UTC on 3 October 2026, fifteen minutes before the two
  repositories were created, and the diff under "Before you change anything,
  run this" over the five shipped directories is silent against the tree at
  `e484536`. Both repositories are private, on GitHub, and still stand; this
  entry read them through `gh` on 4 October 2026 — metadata, commits, pull
  requests with bodies and commits, issues with bodies and comments, labels,
  branch protection, workflow runs and the files on `main` — and through a
  clone of each in a scratch directory, which changes nothing in either. Every
  commit the runs made carries `Co-Authored-By: Claude Sonnet 5`. The
  transcripts of the two sessions were not read. What only the runs' own
  account carries stands here as this order's account and is marked as such;
  what the repositories and this machine show stands as read. The platform
  gives UTC, and the times below are its; the dates are this machine's, CEST,
  two hours ahead, which puts the setup of the yes run on 3 October and
  everything after 22:00 UTC on 4 October, and is why the record of
  `devloop-test-v` carries `install-answered: 2026-10-04`.

  **The yes half, `devloop-test-u`.** Created at 20:51:54 UTC with a Rust
  skeleton, one commit printing a greeting. What the repository shows, in the
  order of its timestamps. Pull request #1, "Set up devloop for this
  repository", one commit at 21:03:18 UTC, merged at 21:08:36 UTC by the
  account with no auto-merge request on it, its body ending "Install
  permission: yes, for this project. Auto-merge switched on. No required check
  exists on `main`, so merges are done by hand." The other questions of the
  setup, as the files show their answers: the tracker is the one GitHub remote;
  auto-merge was switched on, `allow_auto_merge` reading true on the platform;
  the local environment is `cargo run`, with nothing in a second terminal, no
  service and no cost; the seven labels of this workflow stand beside GitHub's
  ten defaults, `wontfix` and `question` among them, and whether question 5 was
  put is not shown; `CONTEXT.md` and `docs/adr/` stand at their default places.
  The record on `main`, read back through `bin/devloop-install-record`:

      install-tools: yes
      install-place: /usr/local/bin
      install-place: /usr/local/sbin
      install-place: /opt
      install-place: ~/.local/bin
      install-place: ~/bin
      install-place: ~/go/bin
      install-route: cargo
      install-answered: 2026-10-03

  Then the check setup, three pull requests. #2, "Fill format, lint and secrets
  check classes", one commit at 21:11:20 UTC standing on the merge of #1, so
  the clone carried the record by then, merged at 21:14:16 UTC by hand:
  `format`, `lint` and `secrets` filled, each proven red on a deliberate break;
  the six others skipped, `dependencies` with "skipped: no third-party crates
  yet" and, under "What these checks do not cover", "Dependencies: no
  third-party crates yet, so nothing to audit. Expires once a crate is added."
  #3, the workflow `.github/workflows/checks.yml`, a job `checks` running `make
  check`, merged at 21:22:02 UTC by hand. #4, merged at 21:24:37 UTC by
  auto-merge, records the gate: protection on `main` requires `checks` with
  `enforce_admins` on, read off the platform for this entry, and
  `environment.md` says "Unattended mode: available in this repository. Set up
  on 3 October 2026 after the user chose it." So the mode was offered and taken
  here, which neither run of 30 September 2026 reached, finding C of that
  entry: there the setup filled every class itself and never called
  `setup-checks`, and since 1 October 2026, version 0.122.0, it fills none.

  The work. Issue #5, the spec of a command-line tool that stores measurements
  in SQLite, opened at 21:27:16 UTC; its Stage 1 comment at 21:30:23 UTC, its
  Stage 3 comment at 21:34:28 UTC, which ends "No draft carries story 4 in
  full, so none is taken. Every draft needs one code line for a new migration.
  This is a question about the user story itself and goes back to the user.";
  story 4 of the spec carries "(Amended by the user on 3 October 2026: one code
  line is accepted; a file alone is not enough.)"; the four tasks #6 to #9 at
  21:53:01 to 21:53:08 UTC, eighteen and a half minutes after the Stage 3
  comment. Pull request #14, task #6, seven commits from 21:54:01 to 21:58:23
  UTC, merged at 22:00:48 UTC by auto-merge behind `checks`: four guarded
  conditions, each with its break, its red and its restore; "Installed nothing
  outside the repository"; the crates `rusqlite` and `clap` added; four review
  findings filed, #10, #11 and #13 with `raised-here` and #12 with
  `needs-human`. Pull request #17, task #7, two commits, merged at 22:09:58 UTC
  the same way, "Installed nothing outside the repository" again, #15 and #16
  filed. Tasks #8 and #9 and the spec stand open. That the two builds ran with
  nobody there is this order's account; the repository shows the mode set up
  and both merges made by auto-merge behind the required check, which a merge
  with a person there would show the same way. No build installed anything.

  The install. Pull request #18, "Fill the dependencies check class with cargo
  audit", from the branch `devloop-checks`, two commits at 22:18:10 and
  22:18:37 UTC, opened at 22:18:46 UTC, merged at 22:20:05 UTC by auto-merge,
  closing #13. Its body says "The skip reason ("no third-party crates yet") had
  expired when rusqlite and clap were added" — the reason as #2 wrote it, not
  as it stood on `main` by then, defect 1 below — and carries the install
  report: "Command as run: `cargo install cargo-audit --locked`", `cargo-audit`
  0.22.2 written to `~/.cargo/bin`, and "The install record (environment.md,
  `install-route: cargo`) answered this with yes." The row stands `filled` on
  `main` with `scan-deps`, not blocking, and `environment.md` names the tool,
  the command and the path. On this machine `~/.cargo/bin/cargo-audit` carries
  00:18:01 CEST on 4 October 2026, 22:18:01 UTC, nine seconds before the first
  commit of #18. That #18 ran with the person there is this order's account.

  **Before or after the record.** After. The record reached `main` at 21:08:36
  UTC with the merge of #1, and every later branch of the run stands on a merge
  that carries it, #18's on the merge of #17; the binary was written at
  22:18:01 UTC, an hour and nine minutes later. The guard reads the record off
  `origin/main` as last fetched. The yes run of 30 September 2026 installed in
  the window before its record landed; this run does not repeat that. Which
  outcome of `hooks/pre-tool-use-install-guard.sh` the command met is read off
  the record and the hook, the transcript not being read: the record names
  `install-route: cargo` and no `install-place` naming `~/.cargo/bin`, so the
  pass is the one under a yes where a route the record names by its name opens
  what that route answers on this machine, and not the one where the places
  name every destination. Fed to the guard for this entry, the same command
  against the record on that project's `origin/main`, in the clone, exits 0,
  silent.

  **The no half, `devloop-test-v`.** Created at 20:52:00 UTC with a Go
  skeleton, `go.mod` and `cmd/greet/main.go`. Pull request #1, "Set up devloop
  for this project", one commit at 22:28:06 UTC, merged at 22:30:08 UTC by the
  account with no auto-merge request on it, its body saying "Repository
  settings: auto-merge switched on. No branch protection and no ruleset exist
  on `main`, so there is no gate for auto-merge to wait on yet; the merge is
  held by the person at the keyboard." and "Install permission: answered no.
  Nothing is installed by devloop without asking." The record on `main`, read
  back the same way:

      install-tools: no
      install-place: /usr/local/bin
      install-place: /usr/local/sbin
      install-place: /opt
      install-place: ~/.local/bin
      install-place: ~/bin
      install-place: ~/go/bin
      install-route: go
      install-answered: 2026-10-04

  Then the check setup: one commit on `devloop-checks` at 22:35:25 UTC,
  standing on the merge of #1, and pull request #2, opened at 22:35:32 UTC and
  open since, on purpose, mergeable, with no auto-merge request, no check run
  and no protection on `main`. It fills `format` with `gofmt -l`, `lint` with
  `go vet`, and `secrets` with gitleaks v8.30.1 through `go run
  github.com/zricethezav/gitleaks/v8@v8.30.1`, its body saying "Red on a
  realistic AWS access key in the working tree. The run downloads the module
  into the Go cache; nothing is installed system-wide."; `types` skipped, "Go
  compiler type-checks on every build, and lint covers the rest";
  `dependencies` and `code-security` skipped on reasons about the code and not
  about an install. No issue exists. Steps 7 and 8 of `setup-checks` were not
  reached, the suite not having landed.

  The guard's block. This order's account: with the record saying no on
  `origin/main`, the guard blocked an install. The command is in neither
  repository. The cause the guard names on that record is "the record says no
  (install-tools: no on origin/main)": read off the hook, and produced for this
  entry by feeding the guard an install of this entry's own choosing, `go
  install github.com/zricethezav/gitleaks/v8@v8.30.1`, against the record on
  that project's `origin/main` in the clone — exit 2, that cause. The decline
  path, as this order gives it: the person was handed the command and decided,
  and was asked separately whether a fetch of the module into Go's own cache
  may happen, and said yes, defect 8 below. The guard does not see that fetch:
  `go run github.com/zricethezav/gitleaks/v8@v8.30.1 version`, fed the same
  way, exits 0 without reading the record, the silent pass where the command
  matches no install pattern. On this machine the module had stood in Go's
  module cache, `~/go/pkg/mod`, since 25 August 2026, so the run fetched
  nothing new here; and `gitleaks` 8.30.1 stood at `~/.local/bin` throughout,
  its change time 30 June 2026, which the yes run's `Makefile` calls by its
  bare name and the no run's does not, for no reason its repository gives.

  The block on text. This order's account: the run met a block on a command
  that was not an install, where a guard matched on text, and put the text
  through the editing tool rather than the shell — the second bullet of `## A
  guard's block is not a decline` in `setup-checks` — and the class was not
  skipped. The command is kept nowhere, in either repository or here. What the
  branch shows fits the last half: no class stands `skipped` on a block.

  **What the two runs establish against milestone 3, and what they do not.**
  The milestone ends with "the record saying yes, a build installing a tool
  unattended, the guard passing, the tool standing at the path; the record
  saying no, the guard blocking, the decline path as today". The no half ran:
  the record saying no landed and read back, which the repository shows; the
  guard blocking with that record in front of it and the decline path walked
  with the person there, which this order's account carries and the guard's own
  message on that record bears out. The yes half ran with the person there: a
  record saying yes landed, an install after it, the guard passing by the route
  the record names, the tool standing at the path that route answers — the
  record, the times and the binary read here, the pass established from the
  record and the hook. But that install was `setup-checks`' with the person
  there, not a build's with nobody there. The yes half with nobody there did
  not run, and not because it cannot: the two builds met the `dependencies`
  class at the moment its reason expired, task #6 having added the crates, and
  filled nothing, for defects 1 and 11 below — the review's finding on the
  stale reason had no route of its own, the run rewrote the reason before the
  merge, and so the re-read after the merge had nothing expired to read. With
  those two repaired, the class would have been filled under the record without
  asking — `setup-checks` step 2 fills a class whose own reason expired, and
  its "Ask anyway" does not reach an install the record allows — and the
  install would have been the build's, with nobody there. So milestone 3 cannot
  close on these two runs: its yes half asks for an install with nobody there,
  and the one install was made with the person there; and the refresh and the
  drivers half stay unbuilt besides. The milestone has not landed.

  **The fifteen defects.** Each was established against the files of this tree
  on 4 October 2026, and against the repositories where they carry it. None is
  repaired here: each repair changes text a person reads, whose wording is
  settled separately, and the header of `scripts/devloop-stock-take` requires
  that a defect read on a branch is repaired nowhere on it. The first version
  of this entry named ten; a second order of the same day read it back, rewrote
  2, 3 and 4, which were wrong or too narrow, and added 11 to 15, reading 11
  and 12 out of `devloop-test-u` through `gh`. Each search below was run before
  the text that names it was written.

  **1. A review finding whose object is `docs/agents/checks.md` has no route.**
  `skills/build-work/SKILL.md` step 4: "Each finding goes one of two ways:" —
  "**Fix now** if the fix is obvious and touches nothing that was decided" and
  "**File as an issue** if fixing it would revisit a design decision, change
  the interface, or exceed the task." Neither is open to a finding about a file
  only `setup-checks` may write: `shared/checks-owner.md`, inserted into step 3
  of the same skill, says "**Do not edit `docs/agents/checks.md` yourself.** If
  this work creates or changes a check target — a test runner, a linter, a
  formatter — call `setup-checks` for that class instead", and a stale skip
  reason is none of those three. In `devloop-test-u` the review of task #6
  filed #13 at 21:58:12 UTC — "`docs/agents/checks.md` still says there are no
  third-party crates, which is no longer true", its acceptance "the
  `dependencies` row in `checks.md` is filled or has a true reason" — and
  eleven seconds later, at 21:58:23 UTC, commit `3af8a2d` on the task's branch,
  "Make the dependencies row state the real gap", took the first way. The row
  before it and after it:

      | dependencies | - | - | - | - | - | skipped: no third-party crates yet |
      | dependencies | - | - | - | - | - | skipped: rusqlite and clap not audited yet, see issue 13 |

  and the line under "What these checks do not cover" from "Dependencies: no
  third-party crates yet, so nothing to audit. Expires once a crate is added."
  to "Dependencies: rusqlite (bundled SQLite) and clap are used and not audited
  yet. No audit tool is set up. Tracked in issue 13." Both stood on `main` from
  the merge of #14 at 22:00:48 UTC until #18. That the run reported the rewrite
  among the fixes made in the task is this order's account; the body of #14
  does not name the commit. The nearest recorded defect is "record-lessons
  writes into checks.md, which checks-owner.md forbids", in the entry of 23
  September 2026 on the close of the stock-take: under "Where it goes" of
  `skills/record-lessons/SKILL.md`, "this row has the run write the lesson into
  docs/agents/checks.md, while shared/checks-owner.md … says 'Do not edit
  docs/agents/checks.md yourself'". The same shape at another place, and so the
  second instance of one pattern: a run's own write lands in the one file the
  shared prohibition reserves. They differ in that `record-lessons` names
  `checks.md` as the destination, while step 4 names no destination for such a
  finding at all and the run took the nearest of the two it has. Searched with
  `grep -n 'third destination\|reason cells\|stale skip reason'
  docs/roadmap.md`: no match.
  Three more places decide the same thing and are named here under the fifth of
  the five sentences of `docs/plan.md`, as the audit of the same day found. Two
  are the defects of 23 September 2026 on the single-class route of
  `setup-checks`, the route a third destination would run through: "on the
  single-class route the caller is a build that continues with its task, and
  this line sends the run to the first piece of work", its should to return to
  the build, and "the offer is said to stand in a first setup, while the
  single-class route skips step 7 only and step 8 applies there unchanged", its
  should to skip step 8 on that route as well; both were repaired on 1 October
  2026, and `scripts/devloop-stock-take` reads them as built and never walked.
  The third is `README.md` under "Review": "Obvious fixes are made; anything
  that would revisit a decision is filed as an issue." Those are the two ways
  of step 4 told to the person, and a third destination makes them three.
  Recorded, not built: a review finding whose object is `docs/agents/checks.md`
  goes neither way of `build-work` step 4, and in `devloop-test-u` the run took
  the first and rewrote the `dependencies` reason itself; what should hold is
  that the prohibition of `shared/checks-owner.md` covers every cell of the
  table, reason cells included, and that step 4 carries a third destination for
  a finding whose object is that file — `setup-checks` for that class, which
  reads the install record — named together with the single-class route of
  `setup-checks` it runs through and changed together with the two ways
  `README.md` gives under "Review".

  **2. Under "With nobody there" in `setup-checks`, the case of a class whose
  fill needs the person's say opens with "There", which can be read as the
  whole route after a merge.** The first two versions of this defect read four
  places of the set as disagreeing on what a run with nobody there does with a
  check class that needs filling, and `setup-checks` as giving two answers in
  one file. The audit of the same day, in the entry after this one, read the
  sentence with the condition standing before it, and the file gives one
  answer. `skills/setup-checks/SKILL.md` under "With nobody there": "And from
  the step after a merge that re-reads expired skip reasons, where "Ask anyway
  where filling it changes their project" in step 2 can meet nobody to ask.
  There the class stays as it is — `skipped`, with the expired reason and a
  note that filling it needs their say — and an issue carrying `raised-here`
  and `needs-human` says what filling it would add to their manifest or put on
  their machine." "There" stands behind "where … can meet nobody to ask", and
  the issue it names carries the two things step 2 puts under "Ask anyway": "A
  dependency added to their manifest, or anything installed on their machine
  that the install record does not already allow, is theirs to allow". So the
  file says to fill a class back only because its own reason expired — "**A
  class that is only back because its own reason expired is not that
  question.**" — unless filling it adds to their manifest or installs what the
  record does not allow; and under a record allowing the install, as
  `install-route: cargo` allowed `cargo-audit` in `devloop-test-u`, "Ask
  anyway" does not reach it. The "**Missing checks**" item of `plan-work`
  answers another question, "whether landing this work requires filling it
  first", that is whether the work waits on the class; `build-work` step 6
  calls `setup-checks` and decides nothing itself. What is left is the word:
  "There" can be read as the route the sentence before it opens, every expired
  reason re-read after a merge, rather than as the case that sentence names,
  and a run reading it so leaves every expired class as it is with nobody there
  and files an issue. That is not why the class went unfilled in
  `devloop-test-u`: the build met no expired reason after the merge of #14, for
  defects 1 and 11. Searched for the correction with `grep -n 'There the class
  stays' docs/roadmap.md`: this entry alone.
  Recorded, not built: under "With nobody there" in `setup-checks` the case of
  a class whose fill needs the person's say opens with "There", which can be
  read as the whole route of an expired reason after a merge rather than as the
  case where "Ask anyway" meets nobody to ask; what should hold is that the
  sentence names its case in its own words — a fill that would add to their
  manifest, or put on their machine what the install record does not allow — so
  that the route itself reads as step 2 has it, the class filled.

  **3. With nobody there `plan-work` stops where a draft fails an item of the
  list it was drafted against, and that is no decision for the person.** There
  is a written rule, and the run followed it. `skills/plan-work/SKILL.md` under
  "With nobody there": "a design choice where the check leaves nothing
  standing, or takes away the draft the comparison recommended: alone, that is
  a stop with the reason named." The comment of Stage 3 on #5, quoted above,
  ends on that stop, "No draft carries story 4 in full, so none is taken … This
  is a question about the user story itself and goes back to the user."; story
  4 carries the person's amendment, and the tasks followed eighteen and a half
  minutes after that comment. That the person was not there is this order's
  account. The rule is what is wrong. Stage 3 of the same file, from the line
  "any design has to carry and what is out of scope" through the checking step,
  writes one list first — what every design has to carry, what is out of scope,
  what the code requires: "This is one list, not a second one" — drafts on it,
  and then checks each draft against the same list, item by item, by an agent
  of its own. A draft that fails an item was built against a list it had. Two
  cases follow, and neither is a decision for the person. One draft fails and
  others pass: the drafting agent did not hold to the list, and it runs again,
  with the failed items named, until a draft carries them. Every draft fails
  the same item: that alone does not show the item cannot be met, while a run
  left free to call an item unsatisfiable has a cheaper way out than drafting
  again, with nothing holding it. The line this defect gave to going back to
  where the item was settled falls, since Stage 1 stays with the person:
  `skills/plan-work/SKILL.md` says "Stage 1 stays with the user, because it is
  the only part that needs something only they have", so with nobody present
  that return is the stop this defect removes. The run in `devloop-test-u` was
  the second case, every draft failing story 4 on the one code line a new
  migration needs. A second place decides the same thing: Stage 3 with the user
  there, "they may still choose a draft that failed an item, and the spec then
  records that item as knowingly given up"; and Stage 3's own line for the case
  alone, "Where the recommended draft failed an item, or no draft passed, the
  run stops", points at the section above and goes with it. Two more decide the
  same thing, named by the audit of the same day: Stage 3's checking step, "A
  draft that fails an item is recorded as failing it; no agent decides what
  follows from that.", where the second case below has an agent decide; and
  Stage 1, where the cost of the mode is said to the person, "where no draft
  carries the stories the run stops rather than guessing", which turns false
  with the stop. The fifth of the five sentences of `docs/plan.md`, "A rule
  that does not hold in a run is rewritten, not appended to, and every place
  deciding the same thing is named in the same change", requires them to be
  changed together. Settled with defect 14 by the audit of the same day: the
  two triggers are different, and neither sentence takes the other's case. This
  one is an item every draft fails twice; the stop of defect 14 is a question
  the whole of the work hangs on. Where the pair named below takes the whole of
  the work, nothing being left to cut out, the requirements contradict each
  other — a case nobody had named — and that ending gets a place of its own in
  the list under `## Unattended mode` of `build-work` that collects where the
  mark is deleted. The nearest recorded defects are two: "when the recommended
  draft falls, who chooses among the survivors and what happens when all fall
  is not decided", in the entry on the planning fence, today a stop; and
  finding 6 of the entry of 14 September 2026 on the first planning run alone,
  the recommended draft revised three times alone where the text says to stop,
  its should left open between the stop and a redraft. This run is the second
  measurement of that case and the first where the run kept to the text; the
  two cases above settle it. Searched with `grep -n 'own draft\|drafts
  again\|absent person' docs/roadmap.md` before the first version of this
  entry, and with `grep -n 'knowingly\|drafted against' docs/roadmap.md` for
  this one: no match for either.
  Recorded, not built: where a draft fails an item of the list it was drafted
  against, `plan-work` stops with nobody there; what should hold, changed
  together with the line of Stage 3 letting the person knowingly take a draft
  that failed an item, the line of its checking step that no agent decides what
  follows from a failed item, and the cost of the mode said in Stage 1, as the
  fifth of the five sentences of `docs/plan.md` requires, is that the stop
  falls away and the text says instead:
  - where one draft fails an item and others pass, its drafting agent runs
    again with the failed items named, until a draft carries them;
  - where every draft fails the same item, a second drafting round runs first,
    given that item and the verdicts against it;
  - only where that second round fails the same item may the item be treated as
    unsatisfiable, and not by an agent that drafted it: an agent that has not
    drafted holds the item against the other items of the list and names the
    two that cannot both hold, and no run calls an item unsatisfiable without
    that second round and that named pair — that it could not be done is no
    reason;
  - with the pair named, the part of the work hanging on the item is cut out of
    the scope and filed as an issue carrying both names, and the rest is
    planned and built — the second step of the order under "With nobody there",
    so nothing new is invented, and the issue is what lets the person see the
    ground for the cut and overturn it;
  - the run never goes back to the person in the middle, Stage 1 being theirs;
    only where the named pair takes the whole of the work, nothing being left
    to cut out, does it end, the requirements contradicting each other, and
    then as a report, which is what defect 15 asks for, at a place of its own
    in the list under `## Unattended mode` of `build-work`.

  **4. No sentence of the set says that a question about how this workflow runs
  carries no recommendation.** `shared/how-to-ask.md` rules out one case only:
  "A recommendation attached to a question with no second sensible answer is
  not a courtesy: it is a stop they have to clear". Finding H of the entry of
  30 September 2026 records that question 2 of `setup-project` step 4 leads
  with a recommendation to switch auto-merge on; its should is that question 2
  gives none, "as the two other questions reaching past the project do", and it
  says of the rule itself that "the rule the order names is written nowhere".
  By this order's account both October runs attached a recommendation to a
  question about how the workflow runs, one of them the question about fetching
  the secrets scanner into Go's own cache. That question reaches past the
  project as well: the module cache lies outside the repository, `~/go/pkg/mod`
  on this machine, read with `go env GOMODCACHE`, so the criterion H uses would
  have covered it too, and the case says nothing about the width of H's scope.
  What it shows is that the criterion is the wrong one: whether a question
  carries a recommendation turns on what the person is deciding about, not on
  what the command behind it touches. H's effect on question 2 stays, since
  auto-merge is a question about the workflow either way; its reason goes, and
  since H's should carries that reason in its own words, "as the two other
  questions reaching past the project do", H is rewritten in the same change
  rather than built as it stands. Searched with `grep -n 'how the workflow
  runs\|carries no recommendation\|secrets scanner' docs/roadmap.md` before the
  first version of this entry: no match. Three places decide the same thing and
  change with it, named by the audit of the same day.
  `skills/setup-project/SKILL.md` opens step 4 with "Lead with your
  recommendation so a single word can answer; question 3 gives none." — an
  order for every question of the step, so that sentence has to say which
  questions carry one rather than be deleted. `skills/setup-checks/SKILL.md`
  step 8, "**Do not recommend a yes on a first project.** … Say that, so the
  recommendation is theirs to weigh rather than a door being held open.",
  forbids one only on a first project. And `shared/how-to-ask.md` carries a
  neighbouring category already, "What is a convention of this workflow is not
  theirs to decide either; it gets created and reported.", which is not asked
  at all. The boundary between the two: a question is put where the answer
  changes something of the person's — their machine, their repository's
  settings, their project's dependencies, or how they want to be worked with —
  and carries no recommendation there; what is this workflow's own convention
  is created and reported. Decided with this correction: no marking of each
  question and no hook refusing a question by its recommendation will be built,
  since a recommendation the person can decline costs less than a guard that
  refuses wrongly and ends a run. What is taken instead is the repair of the
  check under "Before a handover, run these" that says it looks for a question
  put as an either-or, a defect of the entry after this one.
  Recorded, not built: no sentence of the set says that a question about how
  this workflow runs carries no recommendation, and by this order's account
  both October runs attached one to such a question; what should hold is that a
  question carries a recommendation only where the person is deciding about the
  product being built; that a question about how this workflow runs — the
  install permission, auto-merge, the unattended mode, which tool a check class
  is built on — carries none, whatever the command behind it touches, a
  question being put only where the answer changes their machine, their
  repository's settings, their project's dependencies or how they want to be
  worked with, while this workflow's own convention is created and reported and
  not asked; that this stands in `shared/how-to-ask.md`, the block on asking,
  beside its sentence on a convention of this workflow; and that the opening of
  `setup-project` step 4 says which of its questions carry a recommendation and
  `setup-checks` step 8 gives none on any project, both in the same change.

  **5. A `gh` call whose title is several unquoted words hangs, and a hung
  command ends a run with nobody there.** `shared/body-through-file.md` says
  "**A title names the problem; it does not quote the command.** The title
  stays on the command line — `gh` has no `--title-file`", and says nothing
  about passing the title as one argument and nothing about where the call's
  input comes from. A command that hangs is moved to the background after 120
  seconds, by this order's account, which ends a run that has nobody to restart
  it. That a call of that shape hung is the order's account too, and so is that
  the runs used `< /dev/null` later on; the issues and pull requests that exist
  carry their titles whole. Searched with `grep -n 'unquoted\|120
  seconds\|title as one' docs/roadmap.md`: no match; `/dev/null` alone finds
  the hooks' own input and the guard's routes.
  One place decides the same thing and is named here under the fifth of the
  five sentences, as the audit of the same day found:
  `docs/skill-conventions.md` under "And a narrowing names every channel",
  "where one cannot be closed — a title that has to stay on the command line,
  because there is no flag to read it from a file — the rule is about what the
  text says rather than about how it travels". That sentence speaks of the
  guard and this defect of quoting and input, but a text saying how the title
  travels contradicts it in its wording; the entry after this one records the
  sentence as a defect of its own.
  Recorded, not built: a `gh` call whose title is several unquoted words hangs
  waiting for input, and `shared/body-through-file.md` keeps the title on the
  command line without saying how; what should hold is that the text says the
  title travels as one quoted argument and that the call takes its input from
  `/dev/null`, so that a call that waits for input fails instead of hanging,
  and that the sentence of `docs/skill-conventions.md` under "And a narrowing
  names every channel" is bounded to the guard in the same change.

  **6. Nothing says where the body file goes.** `shared/body-through-file.md`
  requires the body to go through a file with `--body-file` and names no place
  for that file. By this order's account both runs wrote it inside `.git/`,
  which is git's own directory. Searched with `grep -n -F -e 'body file' -e
  '.git/' docs/roadmap.md`: no match.
  Recorded, not built: `shared/body-through-file.md` names no place for the
  body file, and both runs wrote it inside `.git/`; what should hold is that
  the text names the place, outside `.git/` and outside the tree the commit is
  built from.

  **7. The red proof of the secrets class needs a break that looks real, and
  nothing keeps it out of the index.** `skills/setup-checks/SKILL.md` step 5:
  "can fail: break something on purpose, watch it go red, put it back." The
  scanner ignores the documented example value, so the break has to be a value
  that looks like a real key; pull request #2 of `devloop-test-v` says it was
  "Red on a realistic AWS access key in the working tree." By this order's
  account a `git reset` there failed without saying so and left that file in
  the index as intent-to-add; it reached no commit, which the repository bears
  out, the one commit of the branch carrying `Makefile` and
  `docs/agents/checks.md` alone. Searched with `grep -n 'intent-to-add\|looks
  like a real key\|untracked file' docs/roadmap.md`: no match.
  Recorded, not built: the red proof of the secrets class needs a break that
  looks like a real key, and nothing in step 5 of `setup-checks` keeps that
  break out of the index; what should hold is that step 5 says the break of the
  secrets class stands in an untracked file and never enters the index, and
  that the run queries the index after restoring.

  **8. The record does not spell what the conventions decided about a fetch
  into a language's own cache, and a second question asked a permission that
  counts for nothing.** The record `skills/setup-project/SKILL.md` step 6
  writes carries `install-tools`, `install-place` and `install-route` lines and
  says nothing about a command that downloads a module into the language's own
  cache without putting anything on a path. In `devloop-test-v` the record said
  no, and by this order's account the run asked separately and got a yes for
  exactly such a command. The repository shows the command, the `Makefile`'s
  `go run $(GITLEAKS) git --redact --no-banner .` under `GITLEAKS :=
  github.com/zricethezav/gitleaks/v8@v8.30.1`, and the pull request's "The run
  downloads the module into the Go cache; nothing is installed system-wide."
  The guard passes it without reading the record, above. Whether such a fetch
  falls under the permission is not open, as the first version of this defect
  had it: `docs/skill-conventions.md` decided it under "It does not cover
  tools", "A tool that lands outside the repository — a linter, a driver,
  whatever a wrapper downloads on first use — is the person's, and it lands
  there under their explicit permission only: asked once at setup, with them
  there, and held as recorded state that a hook can read. Nothing else counts
  as that permission". What is left is two things. The record does not spell
  it: the key list under "The install guard reads a record" — "`install-tools:
  yes` or `install-tools: no`; one `install-place:` line per place a yes opens
  in this version … one `install-route:` line per route the stack has …
  `install-answered:` with the date the question was answered" — names nothing
  a wrapper fetches, so a run reading the record does not see the case covered.
  And under a record saying no the run asked a second permission, which the
  conventions say counts for nothing, and whose answer stands nowhere but in
  the body of an open pull request. Two more places decide the same thing,
  named by the audit of the same day under the fifth of the five sentences:
  `docs/plan.md` under "Where the set ends", "Anything that lands outside the
  repository lands there under the person's explicit permission only, asked
  once at setup under milestone 3 and recorded"; and
  `docs/skill-conventions.md` under "A named install command may enter the verb
  list", whose refusal "holds for `./gradlew build`, for `mvnw`, and for `npm
  install puppeteer`, whose named act is project-local and whose download is a
  side effect", which is why the guard does not see the fetch. Searched with
  `grep -n 'own cache\|module cache\|go run' docs/roadmap.md` for the first
  version: no match; the decision stands in the conventions, which that search
  did not read.
  Recorded, not built: the install record does not spell what
  `docs/skill-conventions.md` decided under "It does not cover tools", that
  what a wrapper downloads on first use lands under the one permission asked at
  setup, and in `devloop-test-v`, by this order's account, a second question
  under a record saying no asked a permission that counts for nothing; what
  should hold is that the record spells the case, its key list under "The
  install guard reads a record" gaining the line, that the question at setup
  says it in the same words, and that no run asks a second permission, the
  record's answer being the only one.

  **9. The auto-merge question says what a no costs and not what a yes still
  leaves to be done.** `skills/setup-project/SKILL.md` step 4 question 2: "Say
  what a no costs, at the moment of asking: the workflow still runs, but every
  merge from then on stops and hands the pull request to the user to merge by
  hand", and further down that the setting "is only half of what an unattended
  run needs; the other half cannot be built yet". It never says the consequence
  for the person: with auto-merge on and no required check yet, the first pull
  request is still theirs to merge by hand. In `devloop-test-v` auto-merge was
  answered yes — the body of #1 and `allow_auto_merge` reading true on the
  platform — and #1 was then handed over and merged by the account at 22:30:08
  UTC with no auto-merge request on it, its body saying the merge "is held by
  the person at the keyboard"; #2 stands with no auto-merge request and no gate
  to wait on. `devloop-test-u` shows the same: auto-merge on, and #1 to #3
  merged by hand before the check setup set the required check. Finding H of 30
  September 2026 stands on the same question and is another defect, its
  recommendation. Searched with `grep -n 'still leaves\|merged by hand\|what a
  yes still' docs/roadmap.md`: no match.
  Recorded, not built: the auto-merge question says what a no costs and not
  that a yes still leaves the first pull request to be merged by hand; what
  should hold is that the question says, at the moment of asking, that a yes
  still leaves the first pull request to be merged by hand, because the gate it
  waits on does not exist until the check suite does.

  **10. The labels question asks about this workflow's own labels, against a
  rule that stands.** `skills/setup-project/SKILL.md` step 4 question 5:
  "**Labels** — only if the tracker already has labels with overlapping
  meaning. Then ask: map onto the existing ones, or add ours alongside."
  Finding J of the entry of 30 September 2026 establishes that both benches of
  that day had GitHub's ten defaults, `wontfix` and `question` among them, so
  the condition fires in every fresh repository; both projects of October carry
  the same ten beside the seven, read for this entry. Mapping this workflow's
  vocabulary onto someone else's labels would break the vocabulary the skills
  read, and step 6 of the same file creates all of them regardless, "Create all
  seven". Whether question 5 was put in either run is not in the repositories.
  This is not a sentence missing, as the first version of this defect had it:
  `shared/how-to-ask.md`, inserted into `setup-project` under "## How to ask",
  says "What is a convention of this workflow is not theirs to decide either;
  it gets created and reported." `git log -S` dates the rule to 17 August 2026
  in `setup-project` itself, commit `9d7a784`, as "What is a convention of this
  workflow gets created and reported, not asked.", to 22 August 2026 in the
  block on asking, `fcd0ce9` of pull request #59, and to 18 September 2026 in
  `shared/how-to-ask.md`, `ca0ff3a` of pull request #123. So question 5 is the
  competing sentence "A rule holds only on the path it is written on" warns of,
  in a skill that inserts the rule it breaks. The first version searched
  `docs/roadmap.md` alone, with `grep -n 'should exist at all\|not asked
  about\|created and reported' docs/roadmap.md`, and the rule stands in
  `shared/`. The recorded defects on the same question are findings I and J of
  the entry of 30 September 2026: I on the word "ours", its should that the
  labels are named as this workflow's and the word leaves the skill; J on step
  2 reporting that the repository carries none of this workflow's labels, its
  should that step 2 says what step 4 will act on. Building either first writes
  text this defect then deletes, so the order between them is settled when they
  are built.
  Recorded, not built: question 5 of `setup-project` step 4 asks about this
  workflow's own labels, against the rule of `shared/how-to-ask.md`, inserted
  into the same skill, that a convention of this workflow gets created and
  reported, and its two answers are not a decision; what should hold is that
  question 5 goes, this workflow's labels created and reported and not asked
  about, and that where the tracker has labels of overlapping meaning, that is
  said in the report.

  **11. A run rewrote a skipped cell's reason, and the rewrite removed the
  trigger the re-read after a merge looks for.** In `devloop-test-u` the
  `dependencies` reason went from one naming a state of the project, with its
  expiry written beside it, to a permanent one naming an issue. Read through
  `gh` for this order: on `main` after the merge of #2, at `c4c71fa`, the cell
  read "skipped: no third-party crates yet" and its line under "What these
  checks do not cover" "Dependencies: no third-party crates yet, so nothing to
  audit. Expires once a crate is added."; commit `3af8a2d` on the branch of
  #14, at 21:58:23 UTC, "Make the dependencies row state the real gap", turned
  them into "skipped: rusqlite and clap not audited yet, see issue 13" and
  "Dependencies: rusqlite (bundled SQLite) and clap are used and not audited
  yet. No audit tool is set up. Tracked in issue 13.", and that is what `main`
  carried after the merges of #14 at `ebcf9e8` and #17 at `9a8cb34`, until #18
  at `1a4bc47` filled the row. The first names a state that a merge turns false
  and says which; the second names an issue and no state, and no merge turns it
  false. `skills/build-work/SKILL.md` step 6 reads those reasons, and nothing
  else does: "Nothing else ever reads those reasons". Nothing forbids a run
  that is not `setup-checks` from rewriting one, and nothing tells a reason a
  run wrote from a decision the person made: the rewritten cell reads like any
  skip. Defect 1 asks where the review finding that led to the rewrite goes;
  this one asks who writes a reason and what the re-read after a merge looks
  for. The second half of the should this defect first carried, that step 6
  read the state of the project against the class rather than the prose of the
  reason, falls, as the audit of the same day found:
  `skills/setup-checks/SKILL.md` step 2, as the entry of 1 October 2026 on the
  check classes decided under "The two points to decide", puts a class the
  person does not want into the cell "as `skipped` with their reason, named as
  theirs, and is read again after a merge like any reason", and says of asking
  again "Asking again hands back a decision the user already made, with nothing
  new to make it on." A declined class names no state of the project, so a step
  6 reading the state alone would raise every declined class again after every
  merge it applies to. Step 1 of the same file decides the other kind, "A
  reason that will expire is still a reason: no third-party packages yet, no
  entry point yet. It goes in as `skipped` with that state named, and the step
  after a merge re-reads these and fills the class once the state has changed";
  both are named here under the fifth of the five sentences. That a skipped
  cell's reason is written only by `setup-checks` is a rule on the run and not
  a guard, since no hook can tell which skill is running, and
  `docs/skill-conventions.md` says of such a rule "A limit the limited party
  maintains is not a limit". What a hook can see is the cell, and the cell's
  form is fixed by `docs/skill-conventions.md` under "The `checks.md` parsers
  are shell scripts", "The `Status` column takes only `filled`, `empty`,
  `skipped: <reason>` — spelled exactly", which the entry after this one
  records as a defect of its own. Searched with `grep -n 'written only
  by\|state of the project against' docs/roadmap.md`: no match; the search the
  first version of this entry ran on the same rewrite, `grep -n 'erases the
  trigger\|rewritten skip reason\|rewrites a skipped' docs/roadmap.md`, had
  found none either; neither reached the entry of 1 October 2026, which words
  the subject as "named as theirs, and read again after a merge".
  Recorded, not built: a run that is not `setup-checks` rewrote a skipped
  cell's reason in `devloop-test-u` and so removed the trigger `build-work`
  step 6 reads, and nothing tells a reason that expires from one the person
  decided; what should hold, changed together with steps 1 and 2 of
  `setup-checks`, is two things. Every skipped reason carries one of two forms,
  one naming what makes it expire and one naming that the person decided it,
  and the re-read after a merge looks for the first and never puts the second
  back. And a hook refuses a write that leaves a reason in neither form, while
  a target in the project's own check suite finds one that got in another way.

  **12. A task's own text instructed the run to write
  `docs/agents/checks.md`.** Task #6 of `devloop-test-u`, "record stores a
  checked value with its time", opened at 21:53:01 UTC, says under "Solution":
  "Unit class: add `test-unit` (runs `cargo test`) and make `test-one
  NAME=<name>` run one test. Fill the unit class in `docs/agents/checks.md`,
  and make sure `make check` runs it." The run did as it said: commit `0990164`
  on the branch of #14, at 21:55:49 UTC, "Mark unit class filled in checks and
  note the new dependency", turned the `unit` row from "skipped: no logic to
  test yet, main.rs only prints" into `test-unit`, `filled`, and rewrote its
  line under "What these checks do not cover"; both read through `gh` for this
  order. `shared/checks-owner.md`, inserted into `build-work` and
  `diagnose-bug`, forbids it: "**Do not edit `docs/agents/checks.md`
  yourself.**" Nothing holds a task text or a spec against that. `grep -n
  'checks.md' skills/cut-into-tasks/SKILL.md` comes back empty, and `grep -n
  'checks.md' skills/plan-work/SKILL.md` answers

      323:stays at the build. The other four can be read now: no class in `checks.md` is
      467:- **Missing checks** — any class in `checks.md` this work would need and that is

  the file named twice, at the reading of the classes before the question of
  the mode and at the spec's "**Missing checks**" item, neither saying who may
  write it. Searched with `grep -n 'another skill owns\|instructs a write\|Fill
  the unit class' docs/roadmap.md`: no match.
  Recorded, not built: a task's own text in `devloop-test-u` instructed the run
  to fill `docs/agents/checks.md` directly, and neither the skill that writes
  the spec nor the one that cuts the tasks says that a task may not; what
  should hold is that `plan-work` and `cut-into-tasks` say that no task
  instructs a write to a file another skill owns, and name `checks.md` as one,
  so that the instruction cannot be written in the first place.

  **13. Two of the seven skills the unattended mode reaches have no section for
  the case, and one of them runs on every task.** `python3
  scripts/devloop-stock-take`, run for this order, prints under its heading for
  the reached set:

      SKILLS THE UNATTENDED MODE REACHES: 7
        build-prototype    per plan-work / With nobody there / a question needing something built to answer, alone: the throwaway built, driven and read by the run, question and answer recorded on the planning issue
        build-work         root: build-work / Unattended mode / straight path
        cut-into-tasks     per plan-work / Close / straight path
        diagnose-bug       per build-work / Step 1 — Check the base / red base in a test class, diagnose-bug
        plan-work          root: plan-work / With nobody there / straight path
        review-changes     per build-work / Step 4 — Review it / straight path
        setup-checks       per build-work / Step 3 — Build it / install declined for a check class, setup-checks records it skipped

  and `grep -l '^## With nobody there' skills/*/SKILL.md` answers five files:

      skills/build-prototype/SKILL.md
      skills/cut-into-tasks/SKILL.md
      skills/build-work/SKILL.md
      skills/plan-work/SKILL.md
      skills/setup-checks/SKILL.md

  Held against each other, `diagnose-bug` and `review-changes` are reached and
  carry no such section, and neither inserts `shared/how-to-ask.md` either:
  `grep -c 'how-to-ask' skills/review-changes/SKILL.md
  skills/diagnose-bug/SKILL.md` answers 0 for both, so they carry neither the
  section nor the rules on asking. `shared/how-to-ask.md` says what follows for
  such a skill: "A skill without such a section has no unattended path; should
  it meet the case anyway, it stops with the question named rather than
  deciding it." `review-changes` is reached from `build-work` step 4, which
  runs on every task — "Unattended this step never falls away" — so, concluded
  from that sentence and not measured, a review that meets a question ends the
  run; `diagnose-bug` is reached from step 1, a red base in a test class.
  `docs/skill-conventions.md` requires the section already, under "A hook that
  says "hand this to a person" assumes there is one": "every skill on a path
  that can run unattended has to say what that message means when nobody is
  there." Searched with `grep -n -i 'without such a section\|has no
  section\|carries no section\|no section of its own\|no such section'
  docs/roadmap.md`: no match; `grep -n 'diagnose-bug' docs/roadmap.md | grep -i
  'section\|unattended\|nobody'`: no match, and that empty answer is the wrap
  of the paragraphs and not an absence, as the audit of the same day found. Two
  defects of 23 September 2026, in the entry on the close of the stock-take,
  name `diagnose-bug` already: under "When this runs", "a missing control
  document is handed to the user as the command that should have created it,
  and no line says what a run with nobody there does", and under "Step 6 —
  Clean up, or hand it over", "step 6 hands over and waits for a person, and no
  line says what a run with nobody there does", each with the should "a
  sentence for the unattended case, here or in build-work's section for it".
  This defect stands beside them and narrows their should to a section of each
  skill's own; the two stay, each a case that section has to answer. The same
  search for `review-changes` finds three lines on its lenses run unattended,
  none on a section for the case. The finding row of `docs/stock-take.tsv` on
  `setup-project`, at "With nobody there, there is no one to ask: it becomes an
  issue", names `setup-project` as a skill without the section; that is a
  different defect, since the mode does not reach `setup-project`.
  Recorded, not built: `diagnose-bug` and `review-changes` are reached by the
  unattended mode and carry no section for the case, and neither inserts
  `shared/how-to-ask.md`; `review-changes` runs on every task, so by conclusion
  and not by measurement a review that meets a question ends the run; what
  should hold, beside the two defects of 23 September 2026 on `diagnose-bug`
  and narrowing their should, is that both carry a section for the case, in the
  words of their own work, as `docs/skill-conventions.md` requires under "A
  hook that says "hand this to a person" assumes there is one", that neither
  ends a run over a question, and that the fallback sentence of
  `shared/how-to-ask.md` then covers no skill the mode reaches, which that text
  says where it stands.

  **14. Two sentences write what a run does in cases the unattended mode cannot
  reach.** Both stand as what a run does, and neither can happen in one. The
  first, `skills/setup-checks/SKILL.md` under "A guard's block is not a
  decline": "`secrets` is the exception it always is — it is never `skipped`,
  so there the run stops with the reason named instead." Held against condition
  1 of `## Unattended mode` in `skills/build-work/SKILL.md`, "No class in
  `checks.md` is `empty`. Every one is `filled` or `skipped` with a reason.", a
  class that may never be `skipped` is `filled` before an unattended run
  starts, so its install cannot be blocked during one. The second,
  `skills/plan-work/SKILL.md` under "With nobody there": "Where the whole of
  the work hangs on the question and no option is less committing, the run
  stops, with the question named, the mark deleted and the planning issue left
  `being-planned`." Four things have to hold at once — no answer to look up,
  expensive to get wrong, no option less committing, and nothing left over that
  is a result on its own — and no entry and no run has named a case where they
  do. Settled with defect 3 by the audit of the same day: the two triggers
  differ, and neither sentence takes the other's case. The drafts route of
  defect 3 ends where the pair of items it names takes the whole of the work,
  nothing being left to cut out, and that ending gets a place of its own; the
  stop here is for a question the whole of the work hangs on, and stays as this
  defect has it, a real case named or the sentence gone. Searched with `grep -n
  'exception it always is' docs/roadmap.md` for the first and `grep -n 'whole
  of the work hangs' docs/roadmap.md` for the second: no match for either.
  Recorded, not built: two sentences write what a run with nobody there does
  where the mode cannot arrive, the `secrets` exception under a guard's block
  in `setup-checks` and the stop of `plan-work` where the whole of the work
  hangs on one question; what should hold is that the first says this case
  arrives only with the person there, or goes, and that the second goes unless
  a real case is named, the three steps of the order above it standing as
  covering every case until one is.

  **15. Nothing says that an unattended run which ends says so as a report, and
  never as a question.** Two kinds of place end the unattended part, and each
  stays. `skills/build-work/SKILL.md` step 6: "**Three rounds on the same
  signature is standstill**: end the run with a finding, say what stood still
  and what was tried against it, leave the pull request open and armed, and
  delete the mark"; the refusal there, "A refusal there is a stop with the
  reason named, and the mark is deleted with it"; and the wait for a required
  check to register, "running out there is a stop with the reason named". And
  the list under `## Unattended mode` of the same file that collects them,
  "**And where the mark is deleted**, so that creation and deletion stand in
  one place". The first version of this defect named
  `skills/setup-checks/SKILL.md` at "Three rounds against the same failing
  checks is a standstill, and there the run stops and says so" as one of the
  places; that sentence stands in step 8, in what is said to the person at the
  offer of the mode, and ends no run, as the audit of the same day found.
  Neither place is a question for the person: the platform will not take the
  work, and building on would build on something unmerged. What no line says is
  the form. `skills/plan-work/SKILL.md` says "A stop with a reason is allowed;
  a wait for a person is not", and an ending delivered through the harness's
  choice widget is a wait: it names the question and offers answers, and the
  run ends with nobody to pick one. By this order's account that is what the
  run did; neither repository shows it. A hook can hold this where a sentence
  cannot: the mark is `.claude/unattended.local`, and a hook refusing the
  question tool while the mark stands with this run's commit needs no marking
  of questions. The one thing it has to get right is a mark another run left:
  `shared/mark.md` says "A mark carrying any other commit is another run's",
  and such a mark must not block a question with the person there. Searched
  with `grep -n 'wait for a person' docs/roadmap.md`: no match. `grep -n 'stop
  with a reason' docs/roadmap.md` finds two lines, both on a standstill in the
  middle of a task, neither this:

      1107:  standstill — not a stop with a reason, but a halt in the middle of a task that
      3220:    is not a stop with a reason — it is a standstill in the middle of a task that

  Recorded, not built: no line says the form in which an unattended run that
  ends says so, and by this order's account a run ended through the question
  widget, which is a wait; what should hold is that `build-work` step 6 and the
  list under `## Unattended mode` that collects where the mark is deleted say
  that an unattended run that ends says it in its own message — what is
  finished, what it was held on, what the person has to do — and never through
  the question widget, and that a hook refuses the question tool while the mark
  stands with this run's commit, never on a mark another run left.

  **Five that are recorded already, and occurred again.** None gets a record of
  its own here, and none a should of its own.

  `types` decides nothing: the finding row of `docs/stock-take.tsv` on
  `setup-checks` step 1, at "**format, lint, types** — apply to any project
  with source code", names the two runs of 30 September 2026 that decided it
  opposite ways on one stack. The Rust run decided it on a second stack and on
  a third reasoning, "skipped: covered by lint, clippy compiles the crate and
  reports type errors"; the Go run skipped it on the reasoning of
  `devloop-test-s`, "Go compiler type-checks on every build, and lint covers
  the rest". The row's note carries both now.

  The question in a call beside another: the finding row on `setup-project`
  step 4, at "question and no other: two decisions put in one submit come back
  as one", whose should is that a measured mechanism holds this half of the
  rule or it is dropped. By this order's account the yes run put the install
  question in one call beside another and the no run put it alone: the first
  reading on a bench since the rule was rewritten on 3 October 2026. Neither
  repository shows a call. The row's note carries it.

  The runtime assurance lifted out again: finding A of the entry of 30
  September 2026, counted there across four runs. By this order's account the
  yes run lifted it out a fifth time, the first under 0.126.0, where the
  boundary no longer stands in the question at all.

  `git reset --hard` and a proof that does not say how to put it back: the
  entry of 6 September 2026 that begins "`git reset --hard` without looking
  first" names it with its should, and it stands unanswered. By this order's
  account it happened again, a second occurrence, and later in the same run the
  run worked around it by committing before it broke anything; the order does
  not say which run, and neither repository shows it.

  Five labels against seven: recorded in the close of the stock-take on 23
  September 2026, question 5 of `setup-project` step 4 saying "the five
  standard labels" where step 6 says "The seven labels" and "Create all seven".
  It stands, and it is apart from defect 10, which asks whether the question
  belongs in the setup at all.

  **Milestone 3 in `docs/plan.md`.** The sentence that said the refresh and the
  drivers half stay unbuilt and that of the two runs on a bench only the setup
  half of each had happened is rewritten, its second half being false now: the
  refresh and the drivers half unbuilt; both halves of both runs walked on 3
  and 4 October 2026 with the person there; the yes half with nobody there not
  walked, this entry naming why. One other place said the same thing, the
  paragraph on the runs of 30 September 2026, which called the guard against a
  landed record what the milestone "still cannot claim"; it reads "could not
  claim on them" now, an account of those two runs. `grep -n -i 'bench\|has
  happened\|have happened\|not walk\|still cannot\|attended\|setup half\|two
  runs' docs/plan.md` was read whole: the five sentences and the other
  milestones speak of benches to come; milestone 3's end condition, as written
  on 19 September 2026, which this entry holds the runs against and does not
  change; and the two places above. The paragraph of
  `docs/skill-conventions.md` under "The install guard reads a record" that
  ends on the runs of 30 September 2026, "the guard against a landed record
  not", is dated and true of those runs, and stands.

  **Records.** A defect thing for each of the fifteen, sited and evidenced on
  its status line; the head of this entry as part of defect 2. Five runs under
  0.126.0, source entry: the guard's block on a record saying no, in
  `devloop-test-v`, the first this outcome carries from a real project rather
  than a fed string; the guard's pass under a yes by a route the record names,
  in `devloop-test-u`; the block on text in `setup-checks`, in
  `devloop-test-v`; and the yes and the no to the install permission of
  `setup-project`, the yes walked with the person there and not with nobody
  there. The two finding rows above, their notes extended; no defect of this
  entry is a finding row. The tool and its self-test under 0.127.0 are recorded
  as runs only once a commit carries the raise: under an uncommitted raise the
  tool rejects such a run, `version 0.127.0 was never introduced into
  .claude-plugin/plugin.json on this history`, measured for this entry, and the
  two records follow the commit that carries it. The eighteen checks under
  "Before a handover, run these" ran after the change; what each printed stands
  in the order's report.

  **Addendum of the same day: the tool's two runs under 0.127.0.** Run in
  this tree after the commit that carries the raise, with the entry standing
  at fifteen defects. The tool at 0.127.0, `BROKEN RECORDS: 0`,
  `UNCOVERED LINES OF THE SEARCH SET: 0 of 2073` and exit 0, recorded on its
  exit 0 outcome. The self-test at 0.127.0, `SELF-TEST PASSED: 88 cases; of
  the 74 messages this tool rejects, refuses or answers with, read off its
  own source, 74 are asserted by a case and 0 by none; the lines of the
  report are not in that count`, exit 0, recorded on its outcome.

- **The consistency audit of 4 October 2026, read against the entry beside it:
  two counts on its fifteen defects, those fifteen corrected there in place,
  and twenty defects of its own; 4 October 2026, version 0.128.0.** On
  `task/audit-and-corrections`, off `5380134`.

  **What was read, and how.** The audit ran on 4 October 2026 on `main` at
  `5380134`, version 0.127.0, with the working tree clean, and wrote nothing
  into the repository; in the bench projects it only read, through `gh api`,
  `gh pr view` and `gh issue view`. It read whole `docs/plan.md`,
  `docs/skill-conventions.md`, `README.md` and the entry beside this one;
  `docs/roadmap.md` up to the first entry under `## Known gaps`, and from the
  end of the last entry on, `## Decisions taken against` and `## Names that
  were rejected`; the table through `scripts/devloop-stock-take`; and the
  places of the skills and the shared texts the fifteen defects point at. The
  rest of the roadmap it reached by search: per defect one `grep -n -E` per
  name — the skill or the shared file, the heading, the words of the target
  state — and a script in a scratch directory that printed the paragraph around
  each hit outside the entry beside this one wherever that paragraph carried a
  should or a status, every paragraph so printed read. Its report stands on
  this machine as `~/devloop-konsistenz-2026-10-04.md`, written in German, and
  is not in the repository; this entry names its sections rather than repeating
  them. The commands its findings rest on, run again for this entry at
  `5380134` with the same answers. The lines carrying the phrase that opens a
  status line, `grep -c 'Recorded, not[ ]built' docs/roadmap.md`, written here
  with the space in brackets so that this line stays out of the set it counts:
  152, the last fifteen the status lines of the entry beside this one; of the
  137 before them four quote the phrase in prose, so the older status lines are
  133. The lines carrying a should after a dash, `grep -c -- '—[ ]should:'
  docs/roadmap.md`: 66, every one in the entry of 23 September 2026 on the
  close of the stock-take, in its list of findings. `python3
  scripts/devloop-stock-take`: exit 0, `BROKEN RECORDS: 0`, `FINDINGS: 20`, `0
  of 2073` uncovered lines of the search set, and under `SKILLS THE UNATTENDED
  MODE REACHES: 7` the seven `build-prototype`, `build-work`, `cut-into-tasks`,
  `diagnose-bug`, `plan-work`, `review-changes` and `setup-checks`. And `grep
  -l '^## With nobody there' skills/*/SKILL.md`: five files, those of
  `build-prototype`, `cut-into-tasks`, `build-work`, `plan-work` and
  `setup-checks`.

  **What it found about the entry beside it, on two separate counts.** The
  first count is whether a defect is right. Of the fifteen, one is wrong in
  substance: defect 2 read a sentence of `setup-checks` without the condition
  standing before it and found two answers in a file that gives one. Six name a
  real gap and claim wrongly beside it: defect 4, that the should of finding H
  of 30 September 2026 stays as it is, where that should carries the very
  reason defect 4 replaces; defect 8, that whether a fetch into a language's
  own cache falls under the permission is open, where the conventions decided
  it; defect 10, that a sentence is missing, where a rule has stood since 17
  August 2026; defect 11, a reading of the skip reasons that a decision of 1
  October 2026 rules out; defect 13, that nothing on its subject was recorded,
  where two defects of 23 September 2026 stand; and defect 15, a place that
  ends no run. The second count is a different one: whether a defect names
  every place deciding the same thing, which the fifth of the five sentences of
  `docs/plan.md` requires — "A rule that does not hold in a run is rewritten,
  not appended to, and every place deciding the same thing is named in the same
  change". Nine of the fifteen do not, defects 1, 3, 4, 5, 8, 10, 11, 13 and
  15, listed with their missing places under section 3.3 of the report; six do,
  2, 6, 7, 9, 12 and 14. A defect may stand on one count and fall on the other:
  defect 2 names its places and is wrong, defects 1, 3 and 5 claim nothing
  wrongly and miss places.

  **Four causes, named separately.** Three — the defects on recommendations, on
  a language's own cache and on the labels question, 4, 8 and 10 — because the
  orders that wrote them required a search of `docs/roadmap.md` alone, as this
  order gives it, and each search the entry names runs over that file only,
  while the rules of this set also stand in `skills/`, `shared/` and
  `docs/skill-conventions.md`; the third rule under "A field is not an answer
  to a question it was not asked" runs the search over `skills/`, `hooks/`,
  `docs/`, `README.md`, `shared/`, `bin/` and `scripts/`. Two — the defects on
  the rewritten skip reason and on the two skills without a section, 11 and 13
  — because the search ran on the right file and answered nothing although the
  older text stands there. For 13, `grep -n 'diagnose-bug' docs/roadmap.md |
  grep -i 'section\|unattended\|nobody'` asks for two words on one physical
  line of hard-wrapped prose, and the defects of 23 September 2026 carry them
  on other lines. For 11, the needles were the words of its own target state,
  which found nothing but the entry itself, run across lines for this entry;
  the entry of 1 October 2026 on the check classes words the subject as "named
  as theirs, and read again after a merge like any reason", and the last half
  of that straddles a line break, so even that phrase searched plain answers
  nothing. One — defect 2 — is a sentence read without the condition standing
  before it. One — defect 15 — is a place named that is not where the rule
  stands: the sentence of `setup-checks` it named stands in step 8, in what is
  said to the person, and the rule that ends a run stands in `build-work` step
  6.

  **The twenty defects.** Each was established against the files of this tree
  on 4 October 2026 and against the report, and none is repaired here: nothing
  under `skills/`, `shared/`, `hooks/`, `bin/` or `scripts/` changed, and
  neither did `README.md` or `docs/skill-conventions.md`. Every search named
  below was run before the text that names it was written; across lines means
  `## Known gaps` of `docs/roadmap.md` at `5380134` with its line breaks
  joined, the entry beside this one left out.

  **1. No shared text says how the mark is deleted, and three files word it
  each in their own way.** The mark's creation has one,
  `shared/mark-command.md`, inserted where `plan-work` and `build-work` write
  the mark; its deletion has none. `skills/build-work/SKILL.md` collects the
  places under `## Unattended mode`, "**And where the mark is deleted**, so
  that creation and deletion stand in one place", and its sites word it "Then
  delete the mark with a shell command and say so", "and delete the mark — the
  run is over" and "the mark is deleted with it".
  `skills/cut-into-tasks/SKILL.md`, at the halt before the first build: "Then
  delete the mark with a shell command, say that you did, and stop."
  `skills/plan-work/SKILL.md`: "the run stops, with the question named, the
  mark deleted and the planning issue left `being-planned`", and under "The
  mark." "It is deleted wherever the unattended part ends". So no one search
  finds every ending without a person. `setup-checks` and `setup-project` hold
  no such ending: `setup-project` names `unattended.local` once, in step 5, as
  one of the two files of local state `.gitignore` has to cover, and runs with
  a person only; `setup-checks` names the mark through `shared/mark.md` and the
  line after it, "This skill is reached with nobody there from two places, and
  the mark says so", and no line of it ends a run. Against the copy check under
  "Before a handover, run these", `cat shared/*.md | awk 'length >= 40' | grep
  -Fl -f - skills/*/SKILL.md`, which prints a skill keeping a line of forty
  characters or more of a shared file word for word: measured for this entry
  with a scratch file read beside `shared/*.md`, a text written fresh printed
  nothing, and one put together from the lines `cut-into-tasks` and
  `build-work` carry today printed both files. Searched across lines for
  `delete[sd]? (the|its|a|such a) mark|mark (is |was )?deleted|mark left
  standing`: three entries on a deletion, the planning fence, the first
  planning run alone and the close of the stock-take, none on its wording; for
  `where the mark is deleted|creation and deletion|deleting the
  mark|mark-command`: no entry.
  Recorded, not built: no shared text says how the mark is deleted, and
  `build-work`, `plan-work` and `cut-into-tasks` word it each in their own way,
  so no one search finds every ending without a person; what should hold is
  that one shared text says it, inserted at each place the unattended part
  ends, and that it replaces the wording of those places rather than standing
  beside it, since a line a skill keeps word for word is what the copy check
  prints.

  **2. The list of where the mark is deleted misses the stops of `plan-work`.**
  `skills/build-work/SKILL.md` under `## Unattended mode` lists "at the
  finishing sentence at the end of this section; at the standstill after three
  rounds in step 6, and at a refused arming there that ends the run; at a
  refusal above, where the run came through planning and wrote a mark that a
  refusal here ends; on the user's word to stop; and at the halt before the
  first build, which the cut does before this section is ever reached", and
  says "Each of those sites says so where it stands". It names the cut's halt,
  so it means to reach past `build-work`. `skills/plan-work/SKILL.md` deletes
  the mark where it stops with nobody there: "Where the whole of the work hangs
  on the question and no option is less committing, the run stops, with the
  question named, the mark deleted", and under "The mark." it names "a stop
  with a reason" among the places the mark is deleted, its stop at a design
  choice, "alone, that is a stop with the reason named", being one. None of
  them is in the list. Defect 3 of the entry beside this one, as corrected,
  adds an ending to the same route, where the pair of items it names takes the
  whole of the work. Searched across lines as for defect 1.
  Recorded, not built: the list under `## Unattended mode` in `build-work` that
  collects where the mark is deleted misses the stops of `plan-work` under
  "With nobody there", which delete it where they stand; what should hold is
  that the list names them, and the ending of defect 3 of the entry beside this
  one where nothing is left to cut out, at a place of its own.

  **3. The table holds no thing for an install with nobody there under a yes
  that succeeds.** `docs/stock-take.tsv` carries the case without a person in
  `build-work` step 3 as one thing, "build-work / Step 3 — Build it / install
  with nobody there: a no on record is the decline, a record never written a
  block", its two blocks and nothing else. The success sits in two things that
  bundle both halves: in `build-work`, "install under a record saying yes: the
  run runs the backed command itself, with the user there and with nobody
  there, …", sited on "7. Installs a tool that lands outside the repository";
  and in `setup-project`, "yes to the install permission: from then on the run
  installs such a tool by itself, with them there and with nobody there,
  without asking again, …", which the tool reads as walked since the run of 3
  October 2026 in `devloop-test-u`, made with the person there. So the half
  milestone 3 ends with, "a build installing a tool unattended", was invisible
  in the tool: no thing of it stood as never walked. Step 3 point 7 carries a
  line the success can be anchored on, "user there and with nobody there,
  without asking again; the guard passes it", which no record names and which
  stands once in the file, `grep -c` answering 1. Searched: the names of the
  table's things holding both "nobody there" and "install", nine, read one by
  one, none the success; across lines for `with nobody there under a
  yes|installing a tool unattended|install(s|ed)? (a tool )?with nobody
  there|unattended install`: the entry of 30 September 2026 on the two runs,
  which says no install with nobody there has happened, and nothing on the
  table.
  Recorded, not built: `docs/stock-take.tsv` holds no thing for an install that
  runs with nobody there under a yes on record and succeeds, the thing for the
  case without a person carrying only its two blocks and the two things for the
  yes bundling both halves, so the open half of milestone 3 was invisible in
  the tool; what should hold is a thing of its own, "the install runs with
  nobody there under a yes on record and the tool stands at the path", sited on
  the line of `build-work` step 3 point 7 that says it, and the outcome of
  `setup-project` that names both halves split the same way, so that a run with
  the person there walks only its own half.

  **4. The rule that keeps the runtimes out of the install question was
  delivered as an assurance again, the fifth time in five runs.**
  `skills/setup-project/SKILL.md` step 4, since 3 October 2026: "That compilers
  and runtimes stay theirs under every answer is a rule on the run … and not an
  assurance the guard holds; both runs of 30 September 2026 lifted it out of
  the leak and delivered it as one, so the leak is said and the assurance is
  not." The entry beside this one, among the five recorded already: "By this
  order's account the yes run lifted it out a fifth time, the first under
  0.126.0, where the boundary no longer stands in the question at all." It
  writes no record, and the table shows that repair as built and never walked,
  its thing, "the repair of point 3 of question 4 made on 30 September 2026 did
  not hold in either run …", carrying in its note "not exercised: the question
  has not been put since". Five deliveries in five runs, the last after the
  boundary had left the question: by the fifth of the five sentences a rule
  that does not hold is rewritten, and a rewording was tried each time. What is
  left is a mechanism at the call. `code.claude.com/docs/en/hooks.md`, read on
  4 October 2026 by the audit, names `AskUserQuestion` under `PreToolUse` with
  `questions` in its input, so a hook of this plugin could read the question's
  fields before they reach the person; nothing has measured it, and which
  mechanism, if any, is a choice this entry does not make. Searched across
  lines for `fifth time|wording is spent|no wording|did not hold in`: the rule
  on a skill's name, the widget's first asking and the two runs of 30 September
  2026, none on the repair of 3 October 2026.
  Recorded, not built: the rule of `setup-project` step 4 that the leak is said
  and the assurance on runtimes is not, built on 3 October 2026, was delivered
  as an assurance again in the yes run of that day, by the account of the order
  that recorded it, the fifth time in five runs, and the table shows the repair
  as never walked; what should hold is that no further wording is taken as the
  repair, and that a mechanism at the question tool holds it or the rule goes,
  the choice of mechanism open and its first measurement the one the finding on
  `setup-project` at "question and no other" names.

  **5. `docs/plan.md` carries a measurement record in milestone 3, which its
  opening says the plan holds none of.** The opening of `docs/plan.md`: "This
  is the plan and not a measurement record: what was measured stands in
  `docs/roadmap.md` under `## Known gaps`"; and the roadmap entry of 19
  September 2026 on the plan: "This file stays the measurement record and
  `docs/skill-conventions.md` the rules; the plan holds neither." Against them
  milestone 3, not landed: "The two runs above ran on 30 September 2026, both
  attended, under 0.120.0 from the installed copy …", "What they walked: …",
  "What they did not walk, and so what the milestone could not claim on them:
  …", and "both halves of both runs on a bench, the setup and the guard against
  the landed record, were walked on 3 and 4 October 2026 under 0.126.0 with the
  person there". The opening knows only a landed milestone, which "keeps its
  text and gets a line saying when it landed"; milestone 3 gathers versions,
  dates, benches and what ran, and grew by the runs of 3 and 4 October 2026.
  The sentence this entry rewrote there, on which projects carry a record, is
  another such line. Searched: `grep -n 'not a measurement record'
  docs/roadmap.md docs/stock-take.tsv`: no match; across lines for `measurement
  record|holds neither|plan holds`: the entry of 19 September 2026 alone, which
  says it.
  Recorded, not built: milestone 3 of `docs/plan.md`, not landed, carries
  versions, dates, benches and what its runs walked, where the opening of that
  file and the roadmap entry of 19 September 2026 say the plan holds no
  measurement record; what should hold is that the record stands in the roadmap
  entries that carry it already and milestone 3 keeps what it covers and what
  ends it, moved by an order of its own that passes over every line of the file
  naming a version or a date.

  **6. `README.md` says no question about the process is asked, and the set
  puts several.** `README.md` under "What it is for": "1. **No question about
  the process, only about the thing.**" The same file under "Attended and
  unattended": "Without the flag you are asked once, at the end of the
  sharpening, how this piece of work should run"; `setup-project` step 4 asks
  about auto-merge, the install permission and the labels, and `setup-checks`
  step 8 about the mode; and defect 4 of the entry beside this one, as
  corrected, bounds where such a question is put. The property's example,
  ""What do you want to do next?" is a failure", means the question about the
  next step; its words say more. Section 4.2 of the report. Searched: `grep -c
  'question about the process' docs/roadmap.md docs/stock-take.tsv`: 0 and 0;
  across lines for `question about the process|only about the thing`: no entry.
  Recorded, not built: property 1 of `README.md`, "No question about the
  process, only about the thing", is contradicted by the same file and by the
  questions of `setup-project` and `setup-checks`; what should hold is that the
  property says what it rules out, a question about which step comes next, and
  that the questions about how the person wants to be worked with stand beside
  it as the corrected defect 4 of the entry beside this one bounds them.

  **7. `README.md` states the finish of an unattended run in the words
  `build-work` names as the cause of a halt.** `README.md` under "Attended and
  unattended": "it runs until nothing in scope is ready any more, and picks up
  work that turns up along the way". `skills/build-work/SKILL.md` under `##
  Unattended mode`: "**Do not phrase the finish in the readiness query's terms
  alone.** … the sentence here used to read that the run works until nothing in
  scope is ready any more and that this was the only finish, and on 9 September
  2026 a run read it, closed its spec, and halted with three loose issues lying
  open." The finish has two conditions there, nothing ready in scope and no
  loose `raised-here` issue waiting. The check under "Before a handover, run
  these" that looks for a competing finish reads `skills/` and `shared/`, not
  `README.md`. Section 4.2 of the report. Searched: `grep -c 'ready any more'
  docs/roadmap.md docs/stock-take.tsv`: 0 and 0; across lines for `ready any
  more|nobody watching`: no entry.
  Recorded, not built: `README.md` says an unattended run goes until nothing in
  scope is ready any more, the finish `build-work` records as the cause of a
  halt on 9 September 2026; what should hold is that `README.md` states the
  finish with both its conditions, as `build-work` has them.

  **8. `README.md` says the set was exercised once with nobody watching.**
  `README.md`: "It has been exercised on throwaway projects across five stacks
  — Python, TypeScript, Kotlin, Go and Rust — once with nobody watching.",
  standing since 18 August 2026, `git log -S'once with nobody watching' --
  README.md` naming `97babda` and `de71f73`. The roadmap's own heads: "The
  unattended run narrowed the review from five lenses to three, measured on 6
  and 7 September 2026", "The unattended run put the landing question to the
  user, measured on 13 September 2026 in `devloop-test-o`", "The first planning
  run alone, measured on 14 September 2026 in `devloop-test-o`"; and the two
  builds of 3 October 2026 in `devloop-test-u`, with nobody there by the
  account of the order that recorded them. Read as once, the sentence is false
  by the dated entries; read as one project, false only by that account.
  Section 4.2 of the report. Searched across lines for `ready any more|nobody
  watching`: no entry.
  Recorded, not built: `README.md` says the set was exercised once with nobody
  watching, where the roadmap dates at least three such runs; what should hold
  is that `README.md` says how often by pointing at the dated entries rather
  than by a count of its own.

  **9. `README.md` lets the install record open `sudo` and a piped installer.**
  `README.md` under "The check suite": "a guard that stops a command installing
  outside the repository — a package manager, `sudo`, a copy into a bin
  directory, an installer piped from the network — and hands it to you to run,
  unless a record in `docs/agents/environment.md` on the main branch says tools
  may be installed and names the place this one lands, or the route it comes
  through, in which case the run installs it itself".
  `docs/skill-conventions.md` under "The install guard reads a record": "`sudo`
  and a script piped from the network into a shell stay blocked under every
  answer." The "unless" hangs on the whole list, so `sudo brew install …`,
  which comes through a named route, reads as opened by a yes and stays
  blocked. Section 4.2 of the report. Searched across lines for `piped from the
  network|under every answer`: eight entries, on the guard and on the install
  question, none on this sentence of `README.md`.
  Recorded, not built: the sentence of `README.md` on the install guard hangs
  its "unless" on a list that includes `sudo` and an installer piped from the
  network, which `docs/skill-conventions.md` keeps blocked under every answer;
  what should hold is that the sentence says those two stay blocked whatever
  the record says.

  **10. A sentence of the conventions says a title's rule is about what the
  text says and not how it travels, and defect 5 of the entry beside this one
  needs how it travels.** `docs/skill-conventions.md` under "And a narrowing
  names every channel": "where one cannot be closed — a title that has to stay
  on the command line, because there is no flag to read it from a file — the
  rule is about what the text says rather than about how it travels."
  `shared/body-through-file.md` bounds the same thought to the guard, "what
  keeps it clear of a guard is what it says, not how it travels", as did the
  entry of 6 September 2026 it came from, "what keeps it clear is what it
  says". Defect 5 of the entry beside this one asks that the text say "the
  title travels as one quoted argument" and take its input from `/dev/null`,
  how it travels, for quoting and input rather than for the guard; as written,
  that repair contradicts the conventions in their wording. Section 5.1 of the
  report, which says the rule requires a change. Searched across lines for `how
  it travels|names every channel`: the entry of 6 September 2026 alone.
  Recorded, not built: the sentence of `docs/skill-conventions.md` under "And a
  narrowing names every channel" says, unbounded, that the rule for a title is
  about what the text says rather than how it travels, where defect 5 of the
  entry beside this one asks how it travels; what should hold is that the
  sentence is bounded to the guard, in the same change as that repair.

  **11. The rule on the `Status` column of `checks.md` spells one shape for a
  reason that expires and one the person decided.** `docs/skill-conventions.md`
  under "The `checks.md` parsers are shell scripts": "The `Status` column takes
  only `filled`, `empty`, `skipped: <reason>` — spelled exactly, ASCII only."
  Defect 11 of the entry beside this one, as corrected, asks that every skipped
  reason carry one of two forms, one naming what makes it expire and one naming
  that the person decided it, and that a hook refuse a write leaving a reason
  in neither form. A hook can tell the two apart only where the cell spells
  them, and the rule spells one shape for both. Section 5.6 of the report left
  this open on whether step 6 judges from the repository or from the cell; the
  correction of defect 11 settles it for the cell. The other rule section 5 of
  the report names, the key list under "The install guard reads a record", is
  named in the corrected defect 8 of the entry beside this one as the place
  that gains a line, and is no defect of its own here. Searched across lines
  for `spelled exactly|Status column|status column`: no entry.
  Recorded, not built: the rule of `docs/skill-conventions.md` on the `Status`
  column of `checks.md` spells one shape, `skipped: <reason>`, for a reason
  that expires and for one the person decided, which the corrected defect 11 of
  the entry beside this one needs a hook to tell apart; what should hold is
  that the rule spells the two forms exactly, in the same change as that
  repair.

  **12. Milestone 7 of `docs/plan.md` names the places that count five control
  documents, and misses three added on 3 October 2026.** `docs/plan.md`,
  milestone 7: "The sixth file moves every place that counts five: `README.md`,
  `setup-project` in three places, and the pointer block it writes into
  `CLAUDE.md`." `grep -rn -i -E '\bfive\b' README.md skills shared bin hooks
  docs/skill-conventions.md docs/plan.md | grep -i -E
  'file|document|docs/agents'` finds those and three more, all added on 3
  October 2026 with pull request #153, version 0.125.0:
  `skills/start-work/SKILL.md`, "one file or all five";
  `bin/devloop-setup-state`, its header "the five setup-project step 6 writes"
  and its `FILES=` line naming five; and `docs/skill-conventions.md`, "the five
  of `setup-project` step 6". The pointer block lists five paths and counts
  nothing. Section 7.2 of the report. Searched across lines for `counts
  five|sixth file|sixth control`: the audit of 30 September 2026, on another
  count.
  Recorded, not built: milestone 7 of `docs/plan.md` names the places that
  count the five control documents and misses `start-work`,
  `bin/devloop-setup-state` and `docs/skill-conventions.md`, which count them
  since 3 October 2026; what should hold is that the milestone names those
  places by the search that finds them, run when it is built, rather than by a
  list that goes stale.

  **13. The conventions say three shared words carry real weight and define
  four.** `docs/skill-conventions.md` under "Shared words are defined in one
  place": "Three carry real weight here." Four definitions stand under it, a
  seam, a condition, a class and a lens, and the fourth says "**This one was
  added after the fact, and why says something about the other three.**" The
  count stayed when the lens was added. `awk '/^## Shared words are defined in
  one place/{f=1;next} /^## /{f=0} f && /^\*\*A [a-z]+ is/'
  docs/skill-conventions.md` prints four. Section 7.2 of the report. Searched:
  `grep -n 'carry real weight' docs/roadmap.md docs/stock-take.tsv`: no match;
  across lines for `carry real weight|Three carry`: one entry, on a check that
  could not fail, using the words for another thing.
  Recorded, not built: `docs/skill-conventions.md` says three shared words
  carry real weight and defines four, the count left behind when the lens was
  added; what should hold is that the sentence counts four or counts nothing.

  **14. The check that looks for an either-or question does not find the labels
  question.** `docs/skill-conventions.md` under "Before a handover, run these":
  "No sentence tells a run to ask for permission to reach the next stage, or to
  put a question as an either-or." Its command, `grep -rn 'Ask whether\|offer
  to\|Offer to\|on a yes\|offering the next' skills/*/SKILL.md shared/*.md`,
  prints in `setup-project` only "offer to create one" and "Offer to switch it
  on", run for this entry. `skills/setup-project/SKILL.md` step 4 question 5,
  "Then ask: map onto the existing ones, or add ours alongside.", is an
  either-or the check says it looks for and does not find. The corrected defect
  4 of the entry beside this one takes the repair of this check instead of a
  marking of each question or a hook. Section 5.8 of the report. Searched
  across lines for `either-or|either or|map onto`: finding I of 30 September
  2026, on the word "ours", nothing on the check.
  Recorded, not built: the check under "Before a handover, run these" that says
  it looks for a question put as an either-or does not find question 5 of
  `setup-project`, "map onto the existing ones, or add ours alongside"; what
  should hold is that the check finds an either-or by its shape, two answers
  joined by "or" after a word that asks, and prints that line.

  **15. The head of the entry beside this one says its fifteen defects were
  read off the runs, and two were not.** The head: "and fifteen defects read
  off them". Defect 13 was read off the tool and the files, "holding the
  reached set this tool prints … against grep -l" as its note has it; defect 14
  off two files, "no entry and no run has named a case where they do". The
  bodies say so; the head claims more. Section 6.1 of the report.
  Recorded, not built: the head of the entry of 4 October 2026 on the two runs
  says its fifteen defects were read off them, where defects 13 and 14 were
  read off the files and the tool; what should hold is that the head says what
  the defects were read off, or counts only those the runs carry.

  **16. Status lines and record names of the entry beside this one drop the
  mark of what only the order's account carries.** That entry's rule: "What
  only the runs' own account carries stands here as this order's account and is
  marked as such; what the repositories and this machine show stands as read."
  Its status lines, as written, dropped the mark where the body carries it:
  defect 4, "both October runs attached one to such a question", the body "By
  this order's account"; defect 5, "a `gh` call whose title is several unquoted
  words hangs waiting for input", the body "That a call of that shape hung is
  the order's account too"; defect 6, "both runs wrote it inside `.git/`", the
  body "By this order's account"; defect 15, "a run ended through the question
  widget", the body "By this order's account … neither repository shows it";
  and the head of defect 2, "The unattended build", the body "That the two
  builds ran with nobody there is this order's account". The record names of 5
  and 6 drop it too; the notes carry it. This entry's corrections rewrote the
  head of defect 2 and the status lines of 4 and 15, which now carry the mark
  where they state the account; the status lines of 5 and 6 and the names of
  both stand as they were. Section 6.2 of the report.
  Recorded, not built: the status lines and record names of the entry of 4
  October 2026 on the two runs drop the mark its own rule asks for where they
  state what only the order's account carries, which stands after this entry's
  corrections in the status lines of defects 5 and 6 and in the names of both;
  what should hold is that they carry the mark, as the bodies and the notes do.

  **17. Nothing in a repository tells `setup-checks` called for one class from
  a build that wrote the cell itself.** Read in `devloop-test-u` by the audit:
  commit `0990164`, 21:55:49 UTC on 3 October 2026, "Mark unit class filled in
  checks and note the new dependency", turned the `unit` row from "skipped: no
  logic to test yet, main.rs only prints" to `test-unit`, `filled`; before it
  in #14, `a4624ba`, "Run unit tests in check and make test-one take NAME"; and
  the body of #14 names four guarded conditions, no call of the check setup and
  no red proof of `test-unit`. `skills/setup-checks/SKILL.md` on the
  single-class route keeps the build's branch, "the one the run was called on
  is kept", builds the target, proves it red and writes the row: the same
  artefacts a build leaves that writes the cell itself. No commit carries a
  skill's name, and `setup-checks` names a place for its report only for an
  install, step 4's "in the pull request body that lands the class, step 7's or
  the build's where this skill was called for one class"; step 5's red proof
  has none. So whether defect 12 of the entry beside this one is a build
  writing the cell or the check setup called for it, the repository cannot say;
  the message, the order after the task and the missing red proof of
  `test-unit` point at the build, and only the session log could tell. Section
  8.1 of the report. Searched across lines for `single-class route|single
  class`: the entries on that route, none on telling the two apart.
  Recorded, not built: nothing in a repository tells `setup-checks` called for
  one class from a build that wrote `checks.md` itself, since no commit carries
  a skill's name and `setup-checks` names no place for the red proof of a class
  filled without an install; what should hold is that the single-class route
  reports its red proof in the pull request body that lands the class, as step
  4 does for an install, so that a row filled with no proof in that body reads
  as written by something else.

  **18. Stage 2 of `plan-work` skips on "no code yet", which a skeleton leaves
  undetermined, and says to report the skip without saying where.** Read on
  issue #5 of `devloop-test-u` by the audit: the comments "## Stage 1:
  sharpened" at 21:30:23 UTC and "## Stage 3: drafts and checks" at 21:34:28
  UTC, none for Stage 2; the Stage 3 comment carries "Constraint breaks: none
  real. The constraint "no dependencies" was an error on our side: rusqlite and
  clap are planned."; the repository held a Rust skeleton printing a greeting.
  `skills/plan-work/SKILL.md`: "**After each stage**, post that stage's output
  as a comment on the issue."; and Stage 2, "Skip this stage if there is no
  code yet, and say that you skipped it." and "Post that report as a comment on
  the planning issue." Either Stage 2 ran and its comment was not posted, which
  a constraint read off the code in the Stage 3 comment suggests; or the run
  took the skeleton as no code yet, and then nothing decides: "no code yet" is
  undetermined against a stub — `setup-checks` judged the same project "no
  logic to test yet, main.rs only prints" — and "say that you skipped it" names
  no place, the conversation or the issue. The repository does not show which.
  The run of 30 September 2026 in `devloop-test-s` posted a Stage 2 comment.
  Section 8.2 of the report. Searched across lines for `no code yet|say that
  you skipped|skipped it`: the entry of 30 September 2026 on the two runs, on
  the `types` class, nothing on Stage 2.
  Recorded, not built: Stage 2 of `plan-work` skips "if there is no code yet",
  which a skeleton leaves undetermined, and asks the run to say that it skipped
  without saying where, and issue #5 of `devloop-test-u` carries no Stage 2
  comment; what should hold is that Stage 2 says what counts as code for its
  skip, as `setup-checks` step 2 says a stub turns no reason false, and that a
  skip is posted on the planning issue as the stage's comment.

  **19. A spec assigned the filling of a check class to its first task, where
  `plan-work` alone raises an issue.** Issue #5 of `devloop-test-u`, under "##
  Missing checks", read by the audit: "The first task fills the unit class: a
  `test-unit` target that runs `cargo test`, and `test-one` runs a single test.
  Nothing else is held on it." Task #6 was cut from it.
  `skills/plan-work/SKILL.md`, the "**Missing checks**" item: "Alone, that
  second half goes through the order under "With nobody there" and lands on its
  first step: the class is named here and raised as an issue carrying
  `raised-here`, and the work is not held on it — filling a class binds every
  later task to it, not filling it binds nothing." Whether that stage ran alone
  is not in the repository; with the person there the item says nothing about
  who fills the class. Defect 12 of the entry beside this one asks that no task
  instruct a write to `checks.md`; this one is the step before it, the spec.
  Sections 8.1 and the closing lines of the report. Searched across lines for
  `Missing checks|first task fills|fills the unit class`: no entry.
  Recorded, not built: the spec of issue #5 in `devloop-test-u` assigned the
  filling of the unit class to its first task, where the "Missing checks" item
  of `plan-work` raises the class as an issue alone and says nothing of who
  fills it with the person there; what should hold is that the item says, in
  both modes, that a class is filled by `setup-checks` and never assigned to a
  task as its own work.

  **20. The premise of defect 5 of the entry beside this one is a claim about
  the platform with no evidence behind it.** Defect 5: "A command that hangs is
  moved to the background after 120 seconds, by this order's account, which
  ends a run that has nobody to restart it. That a call of that shape hung is
  the order's account too". `docs/skill-conventions.md`, the second rule under
  "A field is not an answer to a question it was not asked": "**A claim about
  the platform's behaviour holds only with evidence**: a measurement carrying a
  date, or a primary source from the vendor." Neither stands behind the hang,
  the 120 seconds, or what follows them. The closing lines of the report.
  Searched across lines for `primary source|measurement carrying a
  date|title-file|hangs? waiting`: the entry of 6 September 2026 on the title
  and the first planning run alone, on other sources, nothing on this hang.
  Recorded, not built: defect 5 of the entry of 4 October 2026 on the two runs
  rests on a claim about the platform, that a `gh` call with a title of several
  unquoted words hangs waiting for input and is moved to the background after
  120 seconds, with neither a dated measurement nor a vendor's line behind it;
  what should hold is that one of the two stands behind it before its repair is
  written, or that the defect says it rests on the account alone.

  **What this entry corrected in the entry beside it.** The fifteen stay where
  they stand, each with its status line and its record; the corrections change
  paragraphs and records, and no status line of that entry moves into this one.
  Defect 2 is rewritten to what is left, the word "There", its four-places
  claim and its should dropped, and the paragraph on what the two runs
  establish names defects 1 and 11 as the reason no install with nobody there
  arose. Defect 11 loses the second half of its should and carries instead two
  forms of a skipped reason, a hook and a target, with the owner sentence named
  as a rule and not a guard. Defect 4 keeps its target state, names the three
  places that decide the same and the boundary between a question and a
  convention, says why finding H is rewritten with it, and records that no
  marking of each question and no hook on recommendations will be built. Defect
  15 gets its place, `build-work` step 6 and the list under `## Unattended
  mode`, loses the sentence of `setup-checks` it named, and names a hook on the
  question tool and the one thing such a hook has to get right. Defects 3 and
  14 are settled together: different triggers, neither sentence taking the
  other's case, the ending of the drafts route where nothing is left to cut out
  given a place of its own, and the line of defect 3 on going back to where the
  item was settled dropped. Defect 8 drops its "whether" and names the two
  things left and the key list that gains a line. Defect 10 is a breach of a
  rule that stands, dated, beside findings I and J. Defect 13 names the two
  defects of 23 September 2026 it stands beside, the missing insert of
  `shared/how-to-ask.md` and the convention that requires the section, and says
  that a review meeting a question ends the run is concluded and not measured.
  Under the fifth of the five sentences, twenty-two places were added to the
  nine that missed some: three to defect 1, the two defects of 23 September
  2026 on the single-class route and `README.md` under "Review"; two to defect
  3, its checking step and the cost said in Stage 1; three to defect 4, the
  opening of `setup-project` step 4, `setup-checks` step 8 and the sentence of
  `shared/how-to-ask.md` on a convention of this workflow; one to defect 5, the
  sentence of the conventions on how a title travels; four to defect 8, three
  places of the conventions, the key list among them, and "Where the set ends"
  in the plan; one to defect 10, `shared/how-to-ask.md`; three to defect 11,
  steps 1 and 2 of `setup-checks` and the rule on the `Status` column; three to
  defect 13, the two defects of 23 September 2026 on `diagnose-bug` and the
  convention on a hook that hands over; and two to defect 15, `build-work` step
  6 and the list under `## Unattended mode`.

  **A finding's note corrected.** The finding on `setup-project` at "question
  and no other: two decisions put in one submit come back as one" said that
  `code.claude.com/docs/en/hooks.md` names `AskUserQuestion` nowhere. Read on 4
  October 2026 at 10:25 UTC by the audit, under Claude Code 2.1.289, the page
  names it under `PreToolUse` among the tools that event matches and gives its
  input field `questions`, so that premise no longer holds; whether the page
  changed or the reading of 3 October 2026 missed it neither reading says. A
  page is not a measurement, and the note now says what the measurement would
  take, off section 8.4 of the report: a throwaway plugin like `probe` of 17
  September 2026 registering a `PreToolUse` hook on `AskUserQuestion` whose
  script writes its input unchanged to a file outside the project and exits 0
  in silence, installed with nothing else beside devloop; one session in which
  two questions are put in one call and one alone; and the file read for
  whether the hook fired, whether the input carried both questions, and how
  many questions each call held, with the date and the version written beside
  it. Not measured here.

  **Milestone 3 in `docs/plan.md`.** One sentence was false: "no project
  carries a record yet all the same, none having been set up with it, so the
  guard blocks every install naming that cause." It is rewritten in place, off
  section 8.3 of the report and read again through `gh` for this entry off the
  default branch of every bench of this account: no project carried a record
  until 30 September 2026; four carry one now, `devloop-test-s` saying yes and
  `devloop-test-t` saying no, both answered on 30 September 2026,
  `devloop-test-u` saying yes on 3 October and `devloop-test-v` saying no on 4
  October 2026; the nine others carry none, and the guard blocks every install
  naming that cause there and in any project set up before 0.115.0, or set up
  empty before 0.118.0. Nothing else in the file changed; that milestone 3
  carries such lines at all is defect 5 above, and the order that moves them
  may take this sentence with them.

  **Records.** A defect thing for each of the twenty, sited and evidenced on
  its status line; the head of this entry as part of defect 1. Of the fifteen
  records of the entry beside this one, eleven are rewritten in name, anchor or
  note and the rest stand. The head of that entry stays part of defect 2, its
  note naming the new name. The note of the finding above corrected; no finding
  added. The tool and its self-test under 0.128.0 are recorded as runs once a
  commit carries the raise, as the entry beside this one did under 0.127.0. The
  check under "Before you change anything, run this" and the eighteen under
  "Before a handover, run these" ran after the change; what each printed stands
  in this order's report.

  **Addendum of the same day: the tool's two runs under 0.128.0.** Run in
  this tree after the commit that carries the raise, with this entry standing
  at twenty defects. The tool at 0.128.0: `BROKEN RECORDS: 0`, `UNCOVERED
  LINES OF THE SEARCH SET: 0 of 2094`, exit 0, recorded on its exit 0
  outcome. The self-test at 0.128.0: `SELF-TEST PASSED: 88 cases; of the 74
  messages this tool rejects, refuses or answers with, read off its own
  source, 74 are asserted by a case and 0 by none; the lines of the report
  are not in that count`, exit 0, recorded on its outcome.

- **The status of a check class takes four forms and a guard holds the table
  to them, the unattended mode starts on two permissions more and is set up
  in `setup-checks` step 8 or through `--auto`, a state is read before a task
  is released, and a review finding about the table goes a third way; 5
  October 2026, version 0.129.0.** On `task/check-table-forms`, off
  `bf6e0f3`. The order behind this entry was its third version, and before
  anything was written it was held against the code: the places each decision
  touches were searched by subject, the situations the decisions have to show
  in were written out, and what was found stands at the end of this entry.
  Nothing ran on a bench. The repairs answer four defects of the entry of 4
  October 2026 on the two runs, 1, 2, 11 and 12, four of the audit of the
  same day, 9, 11, 17 and 19, three findings of the table and two defects of
  the close of the stock-take.

  **Four forms, and nothing carried over.** The `Status` column takes
  `filled`, `empty`, `skipped (state): <the state that keeps the class off>`
  and `skipped (user): <the user's reason>`; `skipped: <reason>` is gone. The
  one shape for both kinds of skip was what let a run rewrite a reason in
  `devloop-test-u` and take away, with it, what the reading after a merge
  looked for, defect 11 of the entry of 4 October 2026 and defect 11 of the
  audit. The sentence naming the four stands once, in
  `shared/status-forms.md`, inserted into `setup-checks` step 6 and
  `setup-project` step 6, and the rule in `docs/skill-conventions.md` under
  "The `checks.md` parsers are shell scripts" spells them. Every judgement of
  a run is a state — no entry point, no third-party packages, a language
  without a type checker, the errors caught by another class's tool, a
  runtime this machine lacks — and every state is read again before a task is
  released; only what the user decided is `(user)`. No existing table is
  rewritten beforehand. The existing benches are neither used nor measured
  any more, and every further run gets a fresh project: `docs/plan.md` says
  so now under "Open", where "Every bench is refreshed before a run on it"
  stood, and in milestone 9, whose full run "on the gated bench" is one on a
  fresh project on which the gate is set up. A table in the old form is
  caught by the guard below at the first commit, and `setup-checks` step 1
  says what such a row becomes: meant as `filled`, the target proven red and
  then `filled`; a state named, `skipped (state)` where it still holds and
  the class filled where it does not; a decision of the user's named,
  `skipped (user)` with their reason; and where the text does not say whose
  decision it was, they are asked, and with nobody there the row becomes
  `skipped (user)` and the pull request names it. One ruling changes with
  this, the one the entry of 1 October 2026 on the check classes took under
  "The two points to decide": a class the user does not want went into the
  cell "as `skipped` with their reason, named as theirs, and is read again
  after a merge like any reason". For a `(user)` row that reading is gone.
  Its reason is read before the release and not after the merge, only where
  it says something about the project that can be checked, and the row is
  never changed without them; the reason for the change is that a reading
  after the merge ran with nobody there as well and reached a step that
  presupposes a person, below.

  **A second permission, for the dependency file.** New, and decided on 5
  October 2026: whether a run may itself enter check tools in the project's
  dependency file — `pyproject.toml`, `package.json`, `Cargo.toml` and the
  like — is asked in `setup-checks` step 3, with the person there, wherever
  no record stands, a dependency file existing or not, and recorded in
  `docs/agents/environment.md` as `## Dependency permission` with
  `dependency-tools:` and `dependency-answered:`, written by `setup-checks`
  in step 4. The ground is the sentence step 2 has carried all along, "Ask
  anyway where filling it changes their project": a line in their dependency
  file is theirs to allow. It covers the tools this workflow enters for its
  checks; what a task enters is that task's work. Under a yes the run enters
  the tool, with the person there and without; under a no it asks about each
  tool that can be entered, and after a no to one it installs that tool
  outside the project where the install record says yes and hands the
  command over where it does not, the class going `skipped (user)` only
  where no candidate is left or the command is not run. No hook holds it,
  since tasks change the dependency file all the time and a guard on it
  could not tell the two apart, so it stands as a rule and is said as one in
  step 3 and in the conventions, under "It does not cover tools". The skills
  read the record with `git show` off the main branch as last fetched; no
  reader under `bin/` and no line at the session start are built. Asked on
  the single-class route, because the person is there and no record stands,
  the answer stands in `environment.md` on the build's branch and lands with
  its pull request. Step 3 also says now, under a no and with no record,
  what the no of the install question says, the command handed over and the
  class `skipped (user)` on a decline, in one form.

  **The questions, and two departures from what stood.** Four questions are
  new or reworded, each a choice through the harness's widget, alone in its
  call, every point in a field of its own, no recommendation, and each
  described field by field and never worded in a skill: the question on the
  dependency file and the one on a single tool, in `setup-checks` step 3;
  the install question, whose description and whose record's form stand once
  under `shared/`, as `install-question` and `install-record`, inserted into
  `setup-project` and `setup-checks`; and the question on a class the user
  switched off, in `build-work` step 4. The first departure is from the
  wording approved on 3 October 2026 for the install question: the sentence
  on what a yes also lets through, a runtime through a package manager, and
  the words "mit dir und ohne dich" in the yes are out. The question says
  nothing about runtimes now, which is the second of the two ways the should
  of finding A of 30 September 2026 leaves, "the leak reaches the person or
  nothing about runtimes does", where the entry of 3 October 2026 built the
  first; "Runtimes are not a kind the permission may cover" stays the rule
  and says so. The second departure is from "Every offer says where a no
  leads", which asks that a later consequence of a no be said at the moment
  of asking. A no to either permission leaves the unattended mode
  unavailable, and neither question says so the first time: with the person
  there the no costs nothing that is not said, the run handing the command
  over or asking each time, and for work without them the question is put a
  second time where the mode is set up, with that consequence in the line
  under its no. The convention carries the case now, as a consequence said at
  the question that decides it. What left the install question and where it
  went: the leak, to the ruling on runtimes, a rule on the run in
  `build-work` step 3 point 7; "with them there and with nobody there", gone,
  since with nobody there the record says yes by the start conditions below;
  the paragraph on where a no leads with nobody there, gone with the case;
  and the pointers to step 2's report, step 6's reading of the routes and
  step 9, which were `setup-project`'s own and do not hold in the second
  skill that now puts the question.

  **The approved wording, 5 October 2026, amended the same day and on 6
  October 2026**, the German reference; the skills say what is said and not
  the words. The question on the dependency file, in the wording of the
  second approval of 5 October 2026: header "Pakete"; question "Darf ich
  künftig Prüfwerkzeuge selbst zu den Paketen dieses Projekts hinzufügen?";
  first answer, label "Ja, selbst hinzufügen", line "Ich füge solche
  Werkzeuge ab jetzt selbst hinzu und frage nicht noch einmal."; second
  answer, label "Nein", line the first time "Ich füge nichts selbst hinzu und
  frage dich jedes Mal.", and in step 8 "Ich füge nichts selbst hinzu. Der
  Lauf ohne dich geht dann nicht, jede Arbeit läuft mit dir." The first
  approval of that day read: header "Abhängigkeit"; question "Darf ich für
  dieses Projekt künftig Prüfwerkzeuge selbst in die Abhängigkeitsdatei
  eintragen?"; "Ja, selbst eintragen", "Ich trage solche Werkzeuge ab jetzt
  selbst ein und frage nicht noch einmal."; "Nein", "Ich trage nichts selbst
  ein und frage dich jedes Mal." and "Ich trage nichts selbst ein. Der Lauf
  ohne dich geht dann nicht, jede Arbeit läuft mit dir." — replaced because
  a run on German writes "in die Abhängigkeitsdatei eintragen" from the
  skill's "enter check tools in the dependency file", and that word tells a
  person nothing; the fields say now what goes where. The install question: question "Darf ich
  für dieses Projekt künftig Werkzeuge installieren, die außerhalb des
  Projekts auf diesem Rechner landen?"; first answer, label "Ja, Werkzeuge
  selbst installieren", line "Ab jetzt installiert der Lauf solche Werkzeuge
  selbst, ohne erneut zu fragen."; second answer, label "Nein, nicht selbst
  installieren", line the first time "Nichts wird ohne dich installiert. Wo
  ein Werkzeug fehlt, bekommst du den Befehl dafür und entscheidest selbst.",
  and the second time "Nichts wird ohne dich installiert. Der Lauf ohne dich
  geht dann nicht, jede Arbeit läuft mit dir." The question on a single
  tool, under a no to the packages, in the wording of the second approval of
  5 October 2026: header "Pakete"; question "Darf ich `<Werkzeug>` für die
  Prüfung <Prüfung in Worten> zu den Paketen des Projekts hinzufügen?", as
  in "Darf ich `pip-audit` für die Prüfung auf bekannte Sicherheitslücken zu
  den Paketen des Projekts hinzufügen?"; first answer, label "Ja,
  hinzufügen", line "Ich füge es hinzu und richte die Prüfung damit ein.";
  second answer, label "Nein", with one of three lines: where installing is
  allowed, "Dann installiere ich es außerhalb des Projekts auf diesem
  Rechner."; where it is not, "Dann bekommst du den Befehl, um es außerhalb
  des Projekts selbst zu installieren."; where there is no way outside,
  "Dann bleibt diese Prüfung aus." The first approval read: header
  "Abhängigkeit"; question "Darf ich `<Werkzeug>` für die Prüfung <Prüfung
  in Worten> in die Abhängigkeitsdatei eintragen?", as in "Darf ich
  `pip-audit` für die Prüfung der Abhängigkeiten in die Abhängigkeitsdatei
  eintragen?"; "Ja, eintragen", "Ich trage es ein und richte die Prüfung
  damit ein."; the three lines under the no as they stand. Where the tool
  has no way outside the project and another tool is left for the same
  check, the question has three answers, approved in the second approval of
  5 October 2026: "Ja, hinzufügen" with its line; "Nein, stattdessen
  <anderes Werkzeug>" with one of three lines — where the install record
  says yes, "Ich installiere `<anderes Werkzeug>` außerhalb des Projekts auf
  diesem Rechner und richte die Prüfung damit ein."; where it says no or
  none stands, "Du bekommst den Befehl, um `<anderes Werkzeug>` außerhalb
  des Projekts selbst zu installieren."; where the other tool too can only
  be added to the packages, "Dann frage ich dich, ob ich `<anderes
  Werkzeug>` zu den Paketen des Projekts hinzufügen darf."; and "Nein,
  Prüfung aus" with "Dann bleibt diese Prüfung aus." An example is "Darf ich
  `Error Prone` für die Prüfung auf typische Programmierfehler zu den
  Paketen des Projekts hinzufügen?" with the middle answer "Nein,
  stattdessen PMD": Error Prone runs only through a build system or
  `javac`, `errorprone.info/docs/installation` read on 5 October 2026
  naming Bazel, Maven, Gradle, Ant, IntelliJ IDEA, Eclipse and Command
  Line; PMD installs outside the project, `brew install pmd`, and its
  formula lists `openjdk` among its dependencies,
  `formulae.brew.sh/api/formula/pmd.json` read the same day, so where that
  install would bring a runtime in, the line under the middle answer is the
  one that gives the command, by the sentence step 3 carries since 6
  October 2026. The two lines of prose before the second questions in step
  8, in the wording of the second approval: "Damit Arbeit ohne dich laufen
  kann, brauche ich dein Ja zum Installieren von Werkzeugen außerhalb des
  Projekts." and "Damit Arbeit ohne dich laufen kann, brauche ich dein Ja,
  Prüfwerkzeuge selbst zu den Paketen des Projekts hinzuzufügen.", each
  followed by "Dazu hast du Nein gesagt." only where the record says no.
  The first approval read "Damit Arbeit ohne dich laufen kann, brauche ich
  dein Ja zum Installieren von Werkzeugen außerhalb des Projekts. Dazu hast
  du Nein gesagt." and "Damit Arbeit ohne dich laufen kann, brauche ich
  dein Ja zum Eintragen von Prüfwerkzeugen in die Abhängigkeitsdatei. Dazu
  hast du Nein gesagt." The sentence after a no in step 8: "Mit `--auto`
  kannst du den Lauf ohne dich später einrichten." The question on a class
  the user switched off: header "Prüfung"; question "Du hast die Prüfung
  <Prüfung in Worten> abgeschaltet, weil <Grund>. <Was jetzt gilt>. Soll ich
  sie einschalten?", as in "Du hast die Prüfung der Abhängigkeiten
  abgeschaltet, weil es nur zwei Pakete gab. Jetzt sind es dreißig. Soll ich
  sie einschalten?"; first answer, label "Ja, einschalten", line "Ich richte
  die Prüfung jetzt ein."; second answer, label "Nein, aus lassen", line
  "Sie bleibt aus, und ich frage nicht noch einmal." New in the second
  approval of 5 October 2026: the question on a row in no allowed form
  whose text does not say whose decision it was, in `setup-checks` step 1:
  header "Prüfung"; question "Die Prüfung <Prüfung in Worten> ist
  abgeschaltet. In der Tabelle steht als Grund: ‚<alter Text>'. Hast du das
  so entschieden?", as in "Die Prüfung, ob mehrere Teile richtig
  zusammenarbeiten, ist abgeschaltet. In der Tabelle steht als Grund: ‚not
  needed for now'. Hast du das so entschieden?"; first answer, label "Ja,
  meine Entscheidung", line "Sie bleibt aus, bis du es änderst."; second
  answer, label "Nein, nicht von mir", line "Dann richte ich sie ein, außer
  es gibt in diesem Projekt nichts für sie zu prüfen." The line at the end
  of Stage 1 of `plan-work` where the mode is not set up, no record says no
  and no class is `empty`: "Der Lauf ohne dich ist in diesem Projekt nicht
  eingerichtet. Mit `--auto` kannst du ihn einrichten." What step 8 says
  after a red from the code on the platform, beside what failed: "Sobald die
  Prüfungen auf GitHub durchlaufen, kannst du den Lauf ohne dich mit
  `--auto` einrichten." Approved on 6 October 2026: the line at the end of
  Stage 1 where the mode is not set up, no record says no and a class is
  `empty`, in two forms since the second addendum of that day, by whether
  the repository has code — without code, "Der Lauf ohne dich geht in
  diesem Projekt noch nicht: Ohne dich sichern nur die Prüfungen die Arbeit
  ab, und die lassen sich erst einrichten, wenn es Code gibt. Ist die erste
  Arbeit gemergt, richtet devloop sie ein und fragt dich dann, ob es auch
  ohne dich arbeiten darf."; with code and classes still open, "Der Lauf
  ohne dich geht in diesem Projekt noch nicht: Ohne dich sichern nur die
  Prüfungen die Arbeit ab, und noch sind nicht alle eingerichtet. devloop
  holt das nach dem nächsten Merge oder beim nächsten Start nach und fragt
  dich dann, ob es auch ohne dich arbeiten darf." Both replace the one form
  approved first that day, "Der Lauf ohne dich geht in diesem Projekt noch
  nicht, weil noch nicht alle Prüfungen eingerichtet sind. devloop richtet
  sie beim nächsten Start ein, sobald es Code gibt.", which said nothing of
  why and named only the next start, where the step after a merge sets the
  suite up as well; and what `start-work` step 4 says before
  it calls the check setup, "Das Projekt ist eingerichtet, aber noch nicht
  alle Prüfungen sind entschieden. Das kommt zuerst."

  **Two more start conditions.** New: `install-tools: yes` and
  `dependency-tools: yes` are conditions 6 and 7 of the list under
  "Unattended mode" in `build-work`, read where the others are read, at the
  offer in `setup-checks` step 8, at the end of Stage 1 in `plan-work` and
  where an unattended build starts. For these two the record on the main
  branch is the state itself and no account of it, so the sentence of
  `plan-work` not to read `environment.md` does not hold for them and says
  so. The ground: with nobody there an install the record does not allow
  becomes an issue that holds its task, and the task and everything built on
  it is never built in that run; a check class whose tool may not be
  installed or entered stays off. This changes a ruling of milestone 3 in
  `docs/plan.md`, "where the record says no, the decline path stays what it
  is": the unattended mode does not start under a no, the milestone says so
  in place, and the decline path is walked with the person there only. Three
  places that described a no on record with nobody there describe a case the
  mode no longer reaches and are rewritten rather than left: `build-work`
  step 3 point 7 and its list under "With nobody there", `setup-checks` step
  3, and the paragraph of the install question on where a no leads with
  nobody there, which is out. What stays: with both saying yes a run can
  still stop at a runtime, or at a command the install guard blocks under
  every answer, and there the way stands as it did — the task an issue, a
  check class `skipped (state)` with what this machine lacks.

  **Setting the mode up: step 8, and `--auto`.** The unattended mode is set
  up in a repository only where the answer to whether work may run there with
  nobody there is yes, a gate stands and binds, auto-merge is on and both
  permissions say yes; `shared/mode-set-up.md` says it once, for step 8, the
  end of Stage 1 and the start of a build. New in step 8: the answer has a
  record, `## Unattended mode` with `unattended-mode:`, `unattended-reason:`
  under a no and `unattended-answered:`, in the shape of the install record,
  which `plan-work` reads as a line and not as a sentence every run words
  differently — the finding on step 8 recording the answer with no heading
  and no line, of 2 October 2026. On a yes each permission whose record does
  not say yes is put a second time, the install question first, with a line
  of prose before each widget naming the permission and, where the record
  says no, that they said no; after a no the other is not put; every yes
  holds for its permission. Then, in order: the changed records land through
  a pull request and are fetched before anything is installed under them;
  under a yes to the dependency file every check tool installed outside the
  project that can be entered there is entered and its class proven red
  again; every class that was off only for an earlier no is filled, which
  changes `(user)` rows with the person there and having just said yes; and
  only where every answer is yes the gate is set up. What step 8 writes
  lands through a branch of its own, `devloop-unattended`, the third fixed
  name in `shared/cut-branch.md`, cut after a fetch and a switch to the main
  branch and deleted after every proven merge, so that step 8 no longer
  stands on the branch step 7 landed. The workflow file installs before it
  checks, the project's dependencies and then every tool a blocking check
  needs that exists only outside a project, each by its vendor's line for
  the platform's machine, and runs `check`; a red there for a missing tool
  is the file being wrong and is corrected, and only a red from the code is
  the answer. And `--auto`, typed where the mode is not set up, calls step 8
  alone, from the end of Stage 1 and from the start of a build on the direct
  route, the person being there at both: with the gate standing the flag is
  their yes, with no gate the question is put all the same, since it is what
  says what setting one up costs. Five rulings change. "Where the gate is
  already there and binding, say the mode is available and skip the rest of
  this step" holds only where the mode is set up by all five; with the gate
  standing and a record not saying yes, or auto-merge off, the question is
  put, and auto-merge is switched on — the defect of 23 September 2026 on
  that early exit. Point 1 of the yes ran "exactly the blocking targets
  `checks.md` names and nothing else"; it runs `check` after installing, so
  that a class that becomes blocking later runs on the platform, and
  `setup-checks` enters the installation line of a tool such a class needs
  in the same commit. The shorter offer `build-work` made under "Unattended
  mode", of the workflow and the protection without the permissions and
  without a record, is gone, the call of step 8 standing in its place. The
  sentence of the entry point that without a mode set up "nothing runs alone
  whatever was typed" is gone, and with it the defect of 23 September 2026
  that it held on the planning route only: both routes read the recorded
  answer now, and the flag sets the mode up on both. And `setup-checks`
  writes the install record as well, where until now only `setup-project`
  did: `install-tools` and `install-answered` where a record stands, the
  whole section where none does. What holds a record that opens a guard is
  unchanged, that it is written with the person there only, since step 8
  runs with them on the way through `--auto` too; milestone 3 of
  `docs/plan.md` says so beside "since setup never runs unattended". What
  stays a refusal with its reason, no question being able to put it right: a
  class `empty`, a task in range blocked from outside it, command kinds not
  approved, a protection the platform does not allow, and a pull request
  open while a protection would be set.

  **A state is read before the release, not after the merge.** `build-work`
  reads every `skipped (state)` cell at the end of step 4, before the gate of
  step 5, against the branch of the task, a state of the machine on the
  machine; the findings of the review go first, every call of `setup-checks`
  opens a second round, and the table is read once more after it. A `(user)`
  row is read only where its reason can be checked, and where it no longer
  holds the person is asked, before the question of step 5 and not with it;
  with nobody there the row stays and the run's last message names it once.
  This moves a ruling. Since pull request #51, 21 August 2026, step 6 read
  the `skipped` reasons again after every merge and called `setup-checks`
  for a class whose reason had expired, and `setup-checks` cut a branch of
  its own on that route and landed it in step 7 — a step that says of itself
  "This step does not wait inside its answer, because there is a person
  here", and that was reached with nobody there through exactly that route.
  The reading after the merge is out of step 6, the half of the route for an
  expired reason is out of `setup-checks`, and with them the issue carrying
  `raised-here` and `needs-human` for a fill that needs the person's say,
  which cannot arise with nobody there now that both records say yes. With
  nobody there `setup-checks` is reached on the branch of a skill that
  commits and nowhere else, and step 7 never. Two things differ from before
  for the person: the reason is read before the release, and a class they
  switched off is not filled without a question where its reason no longer
  holds.

  **A third way for a finding about the table.** A review finding whose
  object is `docs/agents/checks.md`, and every state found ended, is neither
  fixed on the spot nor filed: it goes to `setup-checks` for that class on
  the branch of the task, through the single-class route, and what
  `setup-checks` commits there is read by a second round of the review,
  where a fix made inside the review step counted as read. The third way
  stands once, in `shared/finding-on-check-table.md`, inserted beside the two
  in `build-work` step 4 and in `review-changes`; `shared/checks-owner.md`
  says that the prohibition covers every cell, the reason beside `skipped`
  included; and `README.md` under "Review" ends on the three. The route a
  change to the check targets takes with nobody there is the build's branch
  alone now, and the review reads it there, which is what the should of the
  entry on a change to the check chain landing unreviewed, measured on 12
  September 2026, asked for the unattended side; the standalone route of
  step 7 stays unread by a review, with the person there.

  **The guard on the table, and two things built otherwise than asked.**
  `bin/devloop-check-table` names every cell of the `Status` column in none
  of the four forms, strict where the two parsers strip backticks, and two
  hooks call it: `hooks/post-tool-use-table-guard.sh` reports with exit 2
  once the editing tool has written the table, and
  `hooks/pre-tool-use-table-guard.sh` refuses a `git commit` while the table
  in the working tree carries such a cell, on every branch. Read off
  `code.claude.com/docs/en/hooks.md` again on 5 October 2026 at 15:56 UTC:
  for exit 2 on `PostToolUse`, "Shows stderr to Claude; the tool already
  ran"; for the `if` field, "each subcommand is checked", and "When Claude
  Code can't determine which commands the Bash input runs, it runs your hook
  regardless of the pattern", so the hook reads the command for `git commit`
  itself. The should of defect 11 asked for a hook that refuses the write and
  for a target in the project's own check chain; neither is built that way.
  No target, because the refusal before the commit stands at one place in
  the plugin, holds in every project and catches a write through the shell
  as well. And the commit is refused rather than the write, because
  `PostToolUse` cannot refuse and the refusal before the commit catches
  every way to the table at one place. Both grounds hold with a gap: a shell
  command that writes the table and commits in one go is read before it
  runs, so that one commit goes through and the next is refused. `git -C
  <directory> commit` is not seen, as with the guard on the main branch, and
  a commit made outside a session's Bash tool is read by no hook. A refused
  commit is answered by the skill that wanted it calling `setup-checks` for
  the row, on the branch it stands on, and committing again, in both modes;
  it is no block in the sense of `build-work`'s section on a guard's block,
  and that section and the list under "With nobody there" say so. A
  nineteenth check under "Before a handover, run these" holds the hooks'
  copy of the sentence on the four forms to the shared file.

  **Who writes the table.** A task never says to write
  `docs/agents/checks.md`, in `cut-into-tasks`; the "Missing checks" item of
  `plan-work` names every class the work needs that is not `filled`, with
  where it stands, says that `setup-checks` fills a class and never a task
  as work of its own, and raises no issue — it would be built as a task
  whose own work is the filling; and the red proof of step 5 goes into the
  pull request that switches the class on, step 7's, the build's on the
  single-class route, step 8's own.

  **What the texts of `README.md` and `hooks/hooks.json` said before.** Under
  "Attended and unattended", that the mode question "is only asked where
  this repository allows the mode at all — the check setup offers it once
  and records your answer"; it is offered again by the flag now. That the
  run refuses to go alone unless every class is "configured or explicitly
  recorded as not applicable", a failing gate blocks and the repository can
  merge without a person: three conditions, where the text names five of
  seven now, the two permissions among them, and still not that no task in
  range is blocked from outside and that the command kinds are approved. Under
  "The check suite", "the check suite after every file change and at the end
  of every turn", where the per-file checks follow a change made with the
  editing tool and the blocking checks the end of a turn; "a guard that
  blocks file writes, `git commit` and `git push` on the main branch", where
  a file written through the shell is not stopped and a push from another
  branch is not read; the merge guard leaving "only the arming of
  auto-merge", with no word on a merge through `gh api`; no guard on the
  check table; an "unless" on the install guard hanging over `sudo` and a
  piped installer, which stay blocked whatever the record says; and "so a
  project whose setup did not put it — set up before 0.115.0, or set up
  empty before 0.118.0 — carries no record and hands every one to you",
  which is out. The description in `hooks/hooks.json` named the guards "on
  the main branch, on merging, and on installing outside the repository" and
  names the one on the check table with them.

  **Three findings of the table that are repaired here.**
  Built: `README.md` separates what the guard on the main branch stops from
  what it does not, a file written through the shell reaching the working
  tree and no commit or push reaching the branch — the finding of 1 October
  2026 on `hooks/hooks.json`.
  Built: step 8 of `setup-checks` names the heading and the lines the answer
  about the mode takes, and `setup-project` names the section in its account
  of `environment.md` — the finding of 2 October 2026 on step 8.
  Built: step 3 of `setup-checks` says under a no and under no record what
  the no of the install question says, in one form — the finding of 2
  October 2026 on step 3.

  **What the attack found.** By decision, each place with what was done
  there or why nothing was. The four forms: the opening, the guard-block
  section, steps 1, 2, 3 and 6 of `setup-checks`, changed; its step 9, which
  counts `skipped` without a form, left; `setup-project` step 6, changed;
  `build-work` at the decline for a check class and at condition 1, changed,
  at "The nine classes" and at the comparison with a `skipped` class in the
  proof section, left, naming no form; the two parsers, left, reading only
  `filled`; `README.md` at "recorded as skipped, with the reason", left,
  true of both forms; the ruling "The first kind is a tool" and the account
  of the runs in milestone 3, left as dated. The dependency file: steps 2, 3
  and 4 of `setup-checks`, `setup-project` at the refresh and at
  `environment.md`, the conventions and "Where the set ends" in the plan,
  changed; `cargo add` in the install guard and point 8 of `build-work` step
  3, left, the first writing a manifest and being no install, the second a
  task's own entry. The questions: question 3 of `setup-project` and step 6
  there, moved to `shared/`; the opening of its step 4 and the form rule
  under "A text is written for the form that carries it", left, the fields
  being named as before; `shared/how-to-ask.md` and
  `shared/three-questions.md`, left. The start conditions: the list in
  `build-work`, `plan-work` Stage 1, `cut-into-tasks` and the entry point,
  changed; "Start condition 5" in `build-work` step 6 and the three mentions
  of preconditions in `setup-project`, left, each still true; the install
  guard's message, left, "with nobody there, the issue or the skip reason
  carries the cause above" holding for a block under a yes. The setup of the
  mode: the opening, the cut, steps 8 and 9 of `setup-checks`,
  `shared/cut-branch.md`, `build-work` under "Unattended mode", `plan-work`
  and the entry point, changed; the session-start hook, left, no line being
  built; "asked once at setup" in the conventions and in the plan, changed to
  the second asking, which the order behind this entry did not name; defect
  8 of the entry of 4 October 2026, "no run asks a second permission", left,
  the question put a second time writing the same record. The reading before
  the release: steps 4, 5 and 6 of `build-work` and four places of
  `setup-checks`, changed. The third way: seven statements of the two ways
  were expected and found — `build-work` step 4 at the list and at the
  second round, `review-changes` under "What happens to a finding",
  `shared/criterion.md`, `shared/rule-not-written-down.md` twice, and
  `README.md` — and all carry the third; two more name both ways and carry
  it too, `build-work` step 5 at what is shown and `record-lessons` under
  "What counts as a lesson"; "the first way out" in `build-work` and "the
  first half" in `review-changes` mean the first way and are left, and so is
  the short form in the offer of step 8. The guard: `hooks/hooks.json` and
  the conventions, changed. Who writes the table: `cut-into-tasks`,
  `plan-work`, steps 5 and 7 of `setup-checks` and step 6 of `build-work`,
  changed; `record-lessons` at the section on what the checks do not cover,
  left, standing as a defect of 23 September 2026.

  **What the attack found against the order itself**, none of it built
  around. The line of prose before a second question says that they said no,
  while the question is put for every record that does not say yes, a record
  that was never written included; the skill says the half about their no
  only where a record says no, and no wording is approved for the other
  case. The third line under the no of the question on a single tool, that
  the check stays off, is untrue while another candidate is left for the
  class; the skill says the line is where a no leads as it stands at that
  moment and gives the three, and no fourth is approved. The question on
  whose decision an old row was has no form and no wording. `docs/plan.md`
  says at two more places what the benches going out of use touches,
  milestone 3 ending "with two runs on one bench" and milestone 7 "on the
  interface bench from milestone 4"; neither is changed. And step 7 of
  `setup-checks` still neither fetches nor leaves the branch it landed,
  which step 8 does now only where it writes something. Each is a finding
  row of `docs/stock-take.tsv`. Read on the vendor's page beside the two
  statements above and not built on: `PostToolUse` on a Bash call receives
  the files that call changed, in `tool_response.bashEditDiff`, since Claude
  Code 2.1.269, which would let a write to the table through the shell be
  reported after the command and before the next — on a condition, read on
  5 October 2026 at 19:05 UTC: the changelog of Claude Code says under
  2.1.269 "Added a diff of the files a Bash command changed to the Bash tool
  result when the Bash tool handles file edits (setting
  `bashEditDiffEnabled`)", and the Claude Agent SDK, version 0.3.289,
  `sdk.d.ts` at `bashEditDiffEnabled`, says "Default: on when the Bash tool
  handles file edits. Only user, flag or policy settings can turn it on
  outside auto and bypassPermissions modes.", so the field arrives only
  where that setting is on, and a plugin cannot turn it on; and
  `FileChanged`, whose
  exit 2 "Shows stderr to user only".

  **Records.** The defects named at the head carry their evidence on the
  lines that repair them; the three findings above are defect things sited
  on their lines here. The things of the branches that fell — the reading
  after a merge, the route for an expired reason, the issue with nobody
  there, the shorter offer in `build-work` with its three answers — are out
  with their runs; the things of the install question stand under
  `shared/install-question.md` and `shared/install-record.md`; the two
  hooks, the program and the nineteenth check have their things. Three
  entries whose evidence stood on the rewritten lines of question 3 have new
  sites, and none of them counts as repaired by it: the defect of 29
  September 2026 on the question coming out wrong twice, the defect of 30
  September 2026 on the three things in the options, whose rule on the run
  is out of the text since with nobody there the record says yes, and the
  defect of the same day on the boundary lifted out of the leak, where the
  second way of its should stands in the text now instead of the first.
  Defect 4 of the audit, that no further wording is taken as the repair of
  the assurance on runtimes, stands as it stood.

  **Addendum of the same day: every outcome of the program and of the two
  hooks, measured once.** After the commit that carries the raise, `9a6f33a`,
  with the tree clean, on 5 October 2026 at 16:47 UTC, in a throwaway
  repository under a scratch directory outside this one: the program handed a
  table, each hook fed the JSON of its event with `CLAUDE_PROJECT_DIR` set,
  the exit code and both streams read. Nothing of it ran through the harness,
  whose installed copy is 0.126.0: that the two hooks fire on their events,
  and what a run does with their messages, is not measured.
  `bin/devloop-check-table`: a table whose five statuses carry the four
  forms, one padded with blanks, and a file with no row, each exit 0 with
  nothing printed; a table carrying `skipped: no entry point yet`, `filled` in
  backticks, `Filled`, `skipped (state):` with no state and a row too short to
  have the cell, found through `CLAUDE_PROJECT_DIR`, exit 1 with those five
  named one per line; two arguments, exit 2 with its line on stderr; a file
  that is not there, and one with mode 000, exit 2 with its line on stderr.
  `hooks/post-tool-use-table-guard.sh` passed in silence, exit 0, six times:
  a project directory that cannot be entered; a repository with no
  `docs/agents/`; a JSON naming no file; another file written while the table
  carried the five cells; the table written with all four forms in it; and
  the table written while the program could not read it. It reported, exit 2
  with the message quoted in the entry above and the five cells joined by
  "; ", for the table written through `Edit`, and again for `MultiEdit`
  naming the table through a symbolic link.
  `hooks/pre-tool-use-table-guard.sh` passed in silence, exit 0, seven times:
  the project directory not to be entered; no `docs/agents/` in the
  repository; a tool that is not Bash; a command holding no `git commit`
  while the table carried the five cells; `docs/agents/` standing with no
  table in it; `git commit` over a table in order; and `git commit` while the
  program could not read the table. It refused, exit 2 with "Commit refused"
  and the five cells, for `git commit -m`, for `git add -A && git commit`
  with a quoted quote in its message, and on a branch other than main. The
  two gaps came out as the entry names them: `git -C <directory> commit`
  passed, exit 0, with the five cells standing; and a command that rewrote a
  cell with `sed` and committed in one go passed, exit 0, the table being in
  order when the hook read it, then ran and committed `skipped: later`, and
  the next `git commit` was refused, exit 2, naming that cell. No measurement
  led to a change. Nineteen runs stand in `docs/stock-take.tsv` under
  0.129.0, one for each outcome.

  **Addendum of the same day: the tool's two runs and the nineteenth check
  under 0.129.0.** Run in this tree after the commit that carries the raise.
  The tool at 0.129.0: `BROKEN RECORDS: 0`, `FINDINGS: 22`, `UNITS WITHOUT A
  STRAIGHT PATH: 0`, `UNCOVERED LINES OF THE SEARCH SET: 0 of 2234`, exit 0,
  written down on its exit 0 outcome; the twenty-two findings are the
  seventeen that stood and the five of this entry. The self-test at 0.129.0:
  `SELF-TEST PASSED: 88 cases; of the 74 messages this tool rejects, refuses
  or answers with, read off its own source, 74 are asserted by a case and 0
  by none; the lines of the report are not in that count`, exit 0, written
  down on its outcome; the tool's source is untouched. The nineteenth check
  printed `1` for each of the two hooks, which its section calls green, and
  the eighteen beside it ran after the change: what each printed stands in
  the report of the order. The check on handovers prints eight lines over
  seven sites, one more than before, step 3 of `setup-checks` handing a
  command over under a record that says no; its section names the eighth.

  **Addendum of 6 October 2026: what this entry left open, decided and
  built.** On the same branch, the version unchanged at 0.129.0. The five
  gaps and two of the eight things the order's report put back were decided
  in an addendum to the order of 5 October 2026, and the addendum was held
  against the code before anything was written, as the order had been:
  places searched by subject, situations written out, grounds held against
  the code. Seven places came out where the addendum decided nothing or two
  places ran against each other, and they were put back before the build
  and answered on 6 October 2026; the answers stand built here with the
  rest. Nothing ran on a bench. Six findings of this entry are repaired, two
  of its open things become findings, one case gains a finding of its own,
  and the two guards on `git commit` and `git push` are repaired.

  **The line of prose before a second question, and what "a second time"
  covers.** The short wording of the line is approved, the second approval
  of 5 October 2026 under "The approved wording": the first sentence names
  the permission, and "Dazu hast du Nein gesagt." follows only where the
  record says no, as step 8 was built; where no record stands on the main
  branch, the line is the first sentence alone. Its case is not a project
  set up before this version: in every project set up from 0.129.0 on both
  permissions are asked before step 8 — the install question by
  `setup-project` question 3, in the empty case too, the question on the
  packages by `setup-checks` step 3 wherever no record stands — and step 8
  comes only once no class is `empty`; the existing benches are out of use.
  Its case is a record that never landed, a pull request carrying the
  answer closed unmerged, say. So "a second time" stays where it stands, in
  step 8, `plan-work`, `build-work` and `shared/install-question.md`, and
  in the conventions and the plan, and the fourteen places the addendum
  would have reworded are left. The finding of 5 October 2026 on the line
  is repaired.

  **"To the project's packages" in the fields.** The two questions of
  `setup-checks` step 3 and the line of prose in step 8 describe their
  fields as adding a check tool to the project's packages, where they said
  entering it in the dependency file: a run on German wrote "in die
  Abhängigkeitsdatei eintragen" from that, which tells a person nothing,
  and the fields say now what goes where. The header is described so that
  a run arrives at "Pakete". The rule in step 3 on which file that is keeps
  "dependency file", and so do `README.md`, the record's name `## Dependency
  permission`, start condition 7 in `build-work`, `shared/mode-set-up.md`
  and the conventions: none of them is a field, and the change is scoped to
  the fields. Two places where a run still says "dependency file" to a
  person, start condition 7 read out at a refusal and the refusal of
  `build-work` on the way from planning, stay as they are.

  **The question on a single tool has three answers in one case, and a
  command handed over and not run ends the class.** Where the tool asked
  about can only be added to the packages, having no way outside the
  project, and another tool is left for the same check, the question offers
  three answers — the tool, the other tool instead, the check off — since a
  tool other than the one proposed needs their yes; the second answer's line
  is where the other tool goes, by the install record or, where that tool
  too has only the packages, by this question again; under the third the
  class goes `skipped (user)` with a reason naming both tools and what was
  declined. Step 8 point 3 then reads the reason: after a yes to the
  packages the class is filled with the tool first asked about, after a yes
  to installing alone it stays off, since the other tool was declined. The
  finding of 5 October 2026 on the third line is repaired. The line that
  the run installs a tool outside the project comes only where it may
  install that tool itself and the install brings no compiler and no
  runtime along: `brew install pmd` brings `openjdk`, read off the formula
  on 5 October 2026, and a runtime stays the person's under every answer,
  so there the line is the one that gives the command; the example in the
  approved wording holds as wording. Where a command handed over is not
  run, the class goes `skipped (user)` whether or not another tool would be
  left, its reason naming the tool and the command not run — what this
  entry said above, "the command is not run", said in the skill now — and
  that the other tool is then put to them is a finding of this addendum,
  with a wording the person approves as its should.

  **The question on an old row, and `secrets`.** A row in no allowed form
  whose text does not say whose decision it was is put to the person field
  by field like the other questions of that day, in the second approval's
  wording: header, the check in words, the old text quoted as the table's
  reason, and whether they decided that; a yes makes the row
  `skipped (user)` with that text, a no has the run decide the row as a
  judgement of its own, `skipped (state)` where the class would find
  nothing here and filled otherwise. With nobody there the row goes as
  built on 5 October 2026. The finding on step 1 is repaired. Beside it one
  sentence: `secrets` is never skipped on a run's own judgement, no state
  switches it off, and only the person can, in `skipped (user)`; with
  nobody there the run stops, as the guard-block section had it. Until then
  "`secrets` is never skipped" stood against the five places where a
  decision of the person's writes `skipped (user)` for any class.

  **No announcement before the question on the mode.** Decided: the
  permission questions come directly after the yes, each with its line of
  prose, and nothing before the question on the mode announces them. The
  open thing of the order's report on that point is closed without a
  finding.

  **The line at the end of Stage 1.** Where the mode is not set up and no
  flag was typed, `plan-work` says one of three things, in this order:
  where the record of the answer says `no` — their no, a refused
  protection, checks red on the platform — nothing, and nothing about the
  other conditions either; otherwise, where a class is `empty`, that work
  cannot run without them yet because not every check is decided and that
  the check setup decides them at the next start once there is code, with
  no word on the flag, since step 8 is not reached while a class is
  `empty`; otherwise one line, that the mode is not set up and `--auto`
  sets it up, listing nothing. Until then the line stood after every
  sharpening, after a no as well, and after a refused protection it said
  the flag sets the mode up, where step 8 says what would change it. Its
  case is a yes with something fallen away since, auto-merge switched off
  on the platform, say, or a setup broken off before the question. The
  paragraph further down, on the six preconditions read before asking, said
  the same decision a second time — "say which one failed and what would
  change it ... that typing `--auto` sets it up" — and names now only the
  two conditions the setup of the mode cannot put right, a class `empty`
  and the kinds of command, and what helps there. The refusal of
  `build-work` on the way from planning stays.

  **A red from the code on the platform is a no.** Where the workflow goes
  red on the main branch from the code itself, the record of the answer
  goes to `unattended-mode: no` with that as its reason, through a pull
  request of its own since the yes has landed by then, as after a refused
  protection; the workflow file stays, since `--auto` needs it once the code
  is green; and the run says what failed and that once the checks pass on
  GitHub the mode can be set up with `--auto`, in the second approval's
  wording. The reading of the order's report that the record stays on yes
  with the gate missing is out. A consequence, not built: `--auto` typed
  while the main branch is still red lands a yes and then the no again, two
  pull requests, which a reading before the question would save — the
  finding below on reading the platform before the question is the place
  for it.

  **Step 7 fetches, switches and deletes, and a landed branch is read as
  such.** Once the merge is proven, on either way to it, `setup-checks`
  step 7 fetches, fast-forwards the main branch, switches to it and deletes
  `devloop-checks` locally and on the remote, as `setup-project` step 8 does
  since the same day for `devloop-setup` and as step 8 of `setup-checks`
  did for its branch already. The deletion came out of a measurement: with
  git 2.50.1 on 5 October 2026, in a scratch repository, after a squash
  merge of `devloop-checks` into `main`, `git merge-base --is-ancestor
  devloop-checks main` exits 1 while `git status --short` prints nothing,
  so `shared/cut-branch.md` read a landed branch as one with something
  written on it and switched back to it — which the second round of step 9,
  "More classes while any is still `empty`", and the refresh of the setup
  would have met, the arming command merging by squash. And since the setup
  that lands by the person's hand deletes the branch only once they have
  said it landed, a session ending before that leaves it: so the cut reads
  a fourth case, off the platform — `gh pr view <branch> --json
  state,headRefOid` answering `MERGED` with a head that is the branch's tip,
  and a clean tree — deletes and cuts afresh, and tells the person in a
  line. Read on 6 October 2026 with gh 2.96.0: `gh pr view
  task/audit-and-corrections --json number,state,headRefOid,mergedAt`
  answered `{"headRefOid":"b8d1ba3…","mergedAt":"2026-10-04T12:23:05Z",
  "number":156,"state":"MERGED"}`, and `gh pr view task/check-table-forms
  --json state` answered `no pull requests found for branch
  "task/check-table-forms"`. The finding on step 7 is repaired; the one on
  `setup-project` step 8 describing no path for a fetch that fails covers
  step 7 of `setup-checks` as well now, and its note says so. The reason
  clause of step 8's own fetch, that the tree may still stand on the branch
  step 7 landed, is replaced: step 7 has done so where it ran, and reached
  alone through `--auto` step 8 stands wherever the run stood.

  **README, and the two guards repaired.** Three changes to `README.md` in
  the approved wording: the conditions name all seven, with the two
  consequences of the two that were missing, waiting at a prompt and
  starting a task it cannot finish, and the sentence after them says that
  all but the one about the tasks are read where the person is asked, since
  the tasks do not exist yet — the addition had made "They are read where
  you are asked" untrue for that one, as `plan-work` and `start-work` say;
  the guard on the main branch and the guard on the table each gain that a
  commit or push run through a git alias is not read. The halves on `git
  -C <directory>` the addendum had asked for are not written, because the
  gap went instead: measured on 5 October 2026 at 19:05 UTC with the hooks
  fed their JSON, both guards let `git -c user.name=x commit`, `git
  --no-pager commit` and, the one on the main branch, `git -c a=b push
  origin main` through, exit 0, as they had let `git -C`; both wanted `git`
  directly before the verb. Since 6 October 2026 both read git's own
  options between `git` and its command — `-C <path>` and `-c
  <name>=<value>`, the six options that take a value of their own,
  `--git-dir`, `--work-tree`, `--namespace`, `--super-prefix`,
  `--config-env` and `--exec-path`, any other `--option`, `-p` and `-P` —
  and a word that is no option ends the match, so that `git log --grep
  commit` passes. And `hooks/hooks.json` starts both on `Bash(git *)` where
  it started them on `Bash(git commit*)` and `Bash(git push*)`: read off
  `code.claude.com/docs/en/permissions.md` on 6 October 2026 at 06:56 UTC,
  "Claude Code matches everything before the first `*` as written", and off
  `code.claude.com/docs/en/hooks.md` the same minute, "`\"Bash(git *)\"`
  runs when any subcommand of the Bash input matches `git *`" and "When
  Claude Code can't determine which commands the Bash input runs, it runs
  your hook regardless of the pattern", so that a hook started on
  `Bash(git commit*)` would not have seen a command with an option in
  between where the harness could tell what it runs. The comment in each
  hook says so, the conventions name the three gaps that stand — a write
  and a commit in one command, a git alias, a commit outside the session —
  and the measurement with the repaired hooks stands in the addendum
  below. The finding on `README.md` is repaired.

  **The plan.** Under "Open", the rule: every run gets a fresh test project,
  except that a run may reuse a project an earlier run from 0.129.0 on
  created where it builds on its content or checks more that way, the
  milestone then naming the project and the reason; the existing benches
  stay out. Milestone 3 ends with two runs on one fresh project, in this
  order — the install record saying no with the person there, a build
  needing a tool, the guard blocking, the command handed over; then
  `--auto`, the question put a second time, a yes, and the build with
  nobody there installing a tool itself, the guard passing, the tool at the
  path — with two different tools a task needs and no check tool, a code
  generator such as `sqlc`, whose formula lists no dependency,
  `formulae.brew.sh/api/formula/sqlc.json` read on 6 October 2026: two,
  because a command handed over and run has installed its tool, and a
  task's, because a check class off for the first no is filled in step 8
  with the person there. The milestone names what stands before that run:
  the question of step 8 described field by field, the platform read before
  it, and start condition 4 — the kinds of command approved, which nothing
  in the tree can read, the defect of the entry read on 11 September 2026
  — read off `permission_mode`, a field of every hook's input in the Claude
  Agent SDK, `sdk.d.ts` of version 0.3.289 at line 179, read on 6 October
  2026, and off the allow rules in the settings files, and said to be
  unreadable where it is. Milestones 4 and 7 stay; 7 builds on 4's
  interface project, which the rule allows. The finding on milestone 3 is
  repaired.

  **The field with the changed files has a condition.** The paragraph above
  on `tool_response.bashEditDiff` carries it in place now, read off the
  changelog and the SDK on 5 October 2026: the field arrives only where
  `bashEditDiffEnabled` is on, by default where the Bash tool handles file
  edits, and outside auto and bypassPermissions modes only user, flag or
  policy settings can turn it on — a plugin cannot.

  **What lay beside.** The sentence that the run stops at `secrets` with
  nobody there, under "A guard's block is not a decline", stays: since the
  third way a run with nobody there reaches `setup-checks` for `secrets`
  too, through a finding about its row, so the case the first half of
  defect 14 of the entry of 4 October 2026 holds unreachable exists now,
  and the note on that defect says so. Two findings: the question of step
  8 on the mode has no form, no field naming the points of the decision,
  which the entry of 3 October 2026 left standing; and step 8 learns that
  the platform refuses the protection only after the question, the records
  and the workflow file — GitHub, under "About protected branches", read on
  5 October 2026 at 19:05 UTC: "Protected branches are available in public
  repositories with GitHub Free and GitHub Free for organizations. Protected
  branches are also available in public and private repositories with
  GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise
  Server." — where it should read that before the question and say so
  instead of asking, what the platform answers there measured once first.
  Without change and without a finding: two open pull requests filling the
  same class, a conflict like any other; the standalone route of step 7
  without a review, which milestone 5 names; the route line in the empty
  case, under milestone 3. And `start-work` step 4 calls the check setup
  wherever a row reads `empty` and the repository has code, where it did so
  only with no row `filled`: it catches a session that ended after a merge
  before `build-work` step 6 read the table, and a project in which the
  person chose some of the classes first in `setup-checks` step 2 — not, as
  this paragraph said until the second addendum of 6 October 2026 below, a
  project set up without code whose first work filled only the classes its
  tasks needed and which step 4 never brought to step 8: step 6 calls the
  check setup whole after every merge wherever a class is still `empty` and
  the repository has code, so such a project reaches step 8 after its first
  merge that lands code; what the run says before the call is approved on 6
  October 2026.

  **What a command printed.** The third rule under "A field is not an
  answer to a question it was not asked" in `docs/skill-conventions.md`
  says now that what a command printed is taken from its output in the same
  session, never from memory: on 5 October 2026 four notes of findings
  described what a search of the roadmap had returned, written from
  recollection, and two said something the command had not printed,
  corrected in `ff8f355`.

  **What the attack found, by decision.** The line of prose: step 8,
  changed; step 3's "step 8 puts this question a second time", the two
  sentences of `setup-project` on the second asking, `shared/install-question.md`,
  the conventions at three places and the plan at two, left, the second
  asking standing. The packages: the fields in step 3 and step 8, changed;
  the rule in step 3, the record, condition 7 of `build-work`,
  `shared/mode-set-up.md`, `shared/finding-on-check-table.md`, the
  conventions and `README.md`, left, none a field. The single tool: step 3,
  changed at the fields, the three-answer case, the sentence on a runtime
  and the end of the paragraph on a tool outside; step 8 point 3, changed;
  the conventions under "It does not cover tools", changed. The old row:
  step 1, changed; "With nobody there" in the same skill, left, the case
  with nobody there as built. The line at the end of Stage 1: both places
  of `plan-work`, changed; `build-work` on the way from planning and
  `start-work`, left. The red from the code: the record's reasons and gate
  step 2 of `setup-checks`, changed; `shared/mode-set-up.md`, left. Step 7:
  `setup-checks` step 7 and the reason clause of step 8, `setup-project`
  step 8, `shared/cut-branch.md`, changed; `build-work` step 6, left,
  deleting its branch already; step 9 of `setup-checks`, left, the tree
  being on the main branch now where it says so. The README: the three
  sentences and the one after the conditions, changed; the two hooks and
  `hooks/hooks.json`, changed; the conventions under "A third reader",
  changed; the comment in the table guard, changed. The plan: "Open" and
  milestone 3, changed; milestones 4, 5, 6, 7, 8, 9 and 11, left, naming no
  second run on one project or naming 4's bench, which the rule allows.
  Grounds of the addendum that did not hold as written: the install record
  is missing not only in a project set up before 0.115.0 but in one set up
  empty before 0.118.0, which the plan says; the person agrees to the tool
  in step 2 at a first setup only, the single-class route not putting that
  question, so the three answers rest on the other tool needing their yes
  and not on step 2; and the PMD example brings a runtime along on this
  machine, above. The searches and every place looked at stand in the
  report of the order, `~/devloop-nachtrag-2026-10-05-bau.md`.

  **Records.** The six findings above are defect things sited on the lines
  of this addendum that say what was built, with their evidence on the
  repairing lines; three findings are new, on the command handed over and
  not run with another tool left, on the form of step 8's question, and on
  reading the platform before it; the note on defect 14 of the entry of 4
  October 2026 says its first case exists; the note on the finding of 3
  October 2026 on `setup-project` step 8 says it covers step 7 of
  `setup-checks` too. The outcomes of the two repaired guards standing on
  changed lines lose their runs under 0.129.0 until the merge lands the
  version on the main branch, the header of `scripts/devloop-stock-take`
  saying why, and are measured again below.

  **Addendum of 6 October 2026: the two repaired guards, every outcome
  measured once.** After the commit that carries the build, `adfec5d`, with
  the tree clean, on 6 October 2026 at 07:16 UTC, in a throwaway repository
  under a scratch directory outside this one, each hook fed the JSON of its
  event with `CLAUDE_PROJECT_DIR` set, the exit code and both streams read,
  thirty-three cases; nothing ran through the harness, whose installed copy
  is 0.126.0, so that `Bash(git *)` starts the hooks where `Bash(git
  commit*)` did not is read off the vendor's pages above and not measured.
  `hooks/pre-tool-use-table-guard.sh` passed in silence, exit 0, nine times:
  a project directory that cannot be entered, then a repository with no
  `docs/agents/`; a tool that is not Bash while the table carried
  `skipped: later`; `git status` and `git log --grep commit` over that
  table, neither holding `git commit`; `git commit` and `git -C . commit`
  over a table in order; `git commit` while the program could not read the
  table, mode 000; and `docs/agents/` standing with no table in it. It
  refused, exit 2 with "Commit refused" naming `lint: skipped: later`, nine
  times: `git commit -m x`; `git add -A && git commit` with a quoted
  apostrophe in its message; `git commit` on the branch `task-1`; and, new
  since this day, `git -C . commit`, `git -c user.name=x commit`, `git
  --no-pager commit`, `git --git-dir=.git --work-tree . commit` and `git
  -C/tmp -p commit`. `hooks/pre-tool-use-branch-guard.sh`, with the
  project standing on `main`, passed in silence, exit 0, seven times: `git
  status` and `git log --grep commit`, neither a commit nor a push; `git -C
  . push origin feature`, `git -c a=b push origin HEAD:refs/heads/feature`,
  `git push origin feature` and `git -C . push --delete origin feature`,
  each naming another branch as its destination; and `git -C . commit` on
  the branch `task-2`, not the default one. It blocked, exit 2 with
  "Blocked: committing on the main branch", `git commit -m x`, `git -C .
  commit`, `git -c user.name=x commit` and `git --no-pager commit`, and
  with "Blocked: pushing to main" `git push origin main`, `git -C . push
  origin main`, `git -c a=b push origin main` and `git --no-pager push`
  naming no destination. No measurement led to a change. Thirteen runs
  stand in `docs/stock-take.tsv` under 0.129.0, one for each outcome
  measured, eight of the table guard and five of the branch guard. Ten count
  now; the three on outcomes whose lines this build changed — the pass of
  the table guard where the command holds no `git commit`, the pass of the
  branch guard for a command that is neither, and its block of a commit —
  count once the merge lands the version on the main branch, the lines being
  changed after the commit that raised it, as the header of
  `scripts/devloop-stock-take` says.

  **Second addendum of 6 October 2026: six decisions of a second addendum
  to the order, held against the code and built.** On the same branch, the
  version unchanged at 0.129.0. The places of each decision were searched
  by subject before anything was written, with short search texts, and
  nothing undecided and no two places against each other came out, so
  nothing was put back; what was added beside the six is named where it
  stands. Nothing ran on a bench.

  **A reason that did not hold.** The paragraph above under "What lay
  beside" said that in a project set up without code `start-work` step 4
  never called the check setup again, so that step 8 was never reached
  there. It did not hold: `build-work` step 6 calls the check setup whole
  after every merge wherever a class is still `empty` and the repository
  has code, so such a project reaches step 8 after its first merge that
  lands code. The widening of step 4 stays, with the reason that holds: it
  catches a session that ended after the merge before step 6 read the
  table, and a project in which the person chose some of the classes first
  in `setup-checks` step 2 and whose session ended before step 9 took up
  the rest, which that step does in the same run. The paragraph is
  corrected in place, the three ways in step 4 read so now, and step 2 of
  `setup-checks` names the start of a session among the places where a row
  left `empty` is asked again. The reason stood nowhere else: searched
  over `skills`, `shared`, `README.md`, `docs/skill-conventions.md` and
  `docs/plan.md` for "never reached", "no row `filled`", "never called" and
  "never came", which printed the two lines of step 4, two lines of
  `setup-checks` on the case with nobody there and one of
  `shared/command-does-not-answer.md`, none of them it; and for "without
  code", "has no code" and "no code yet", which printed step 4, `build-work`
  step 6, the opening of `setup-checks` and its step 2, and one line of
  `plan-work`, none of them it.

  **The line at the end of Stage 1, in two forms.** Where a class is
  `empty` and no record says no, `plan-work` says one of two things, by
  whether the repository has code, counted as the setup counts it: without
  code, that the run without them does not go in this project yet, because
  without them only the checks secure the work and those can be set up only
  once there is code, and that once the first work has merged devloop sets
  them up and then asks whether it may work without them too; with code
  and classes still open, the same ground, that not all of them are set up
  yet, and that devloop catches that up after the next merge or at the
  next start and then asks. Both say why, which the one form approved first
  that day did not; the ground is the one `build-work` states, "`--auto`
  replaces the user's approval with a green check suite". The German
  wording of both stands under "The approved wording" above, the replaced
  form beside. One finding: the form without code says once the first work
  has merged, while step 6 sets the suite up only after a merge that lands
  code.

  **A fresh cut is made from the main branch as the remote holds it.** In
  `shared/cut-branch.md`, in the three cases that cut afresh — no branch of
  the name, nothing written on it, landed — the run fetches, reads whether
  the main branch stands on the remote, and where it does switches to it
  and fast-forwards it before the cut: `git fetch -q origin`, `git
  rev-parse -q --verify origin/main`, `git switch main && git merge
  --ff-only origin/main`. Where the fetch, the switch or the fast-forward
  fails, for whatever reason — a commit of its own on the local main
  branch, a working tree that is not clean — it stops and says why, with
  git's message, and cuts nothing on top of it. Where no main branch stands
  on the remote yet, as in a repository `setup-project` created without a
  commit, nothing is fast-forwarded and the cut is made from the main
  branch as it stands. The ground: in the landed case the session ended
  before the fetch after the merge — at a first setup the person merges by
  hand — and `git switch main` alone cut from the state before it. Step 8
  of `setup-checks` points to the cases for the fetch it described itself.
  The finding on `main` written literally extends to the new commands, and
  the finding on a fetch that fails in `setup-project` step 8 notes that
  the cut says since this day what its own failing fetch leads to, while
  that step and step 7 of `setup-checks` still do not.

  **`build-work` step 1 fast-forwards a main branch that is only behind.**
  Where the local main branch has no commit of its own and the remote has
  commits it lacks, step 1 fast-forwards it and goes on, since the task is
  cut from the current main branch and a session that ended after a merge
  before step 6 fast-forwarded leaves it behind; where they have diverged,
  it says so and stops as before, the reverse no longer among what the
  user clears. The handover check prints its eight lines over seven sites
  as before, the diverged base among them; what a fast-forward that fails
  here leads to is not said, and the finding on `setup-project` step 8
  names this place too.

  **Condition 7 is named by what it allows.** "The record on whether the run
  may add check tools to the project's packages says yes", where it read
  "The record on check tools in the dependency file says yes"; the record,
  `dependency-tools: yes` under `## Dependency permission`, is unchanged,
  and the refusals that name a missing condition take the name from the
  list. `README.md` stands as it is.

  **A halt of the check setup with nobody there deletes the mark.** The
  list in `build-work` of where the mark is deleted names a halt of
  `setup-checks` called with nobody there on the branch of a task —
  `secrets` whose tool cannot be installed among them, under "A guard's
  block is not a decline" there — where the run ends with the reason
  named; that place says so, and so does the stop under it, where the
  editing tool does not reach a text the guard matched, since the list
  covers both.

  **Records.** Thirteen records re-anchored or renamed to the changed
  lines, with their notes; six things new — the fast-forward of a main
  branch only behind, the line without code, and in `shared/cut-branch.md`
  the fetch before a fresh cut, its failure and the remote without a main
  branch; twelve lines of the search set as parts or rationale; two
  findings extended, one new. A run of 7 September 2026 on step 1 of
  `build-work` stops counting, its unit changed.

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
