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
| `record-lessons` | Write down what went wrong so it does not repeat — built, never run |
| `diagnose-bug` | Find what actually causes a bug |

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
and
`build-prototype` got built.

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
  is the one moment the workflow looks back at all; it already closes the spec
  there, without asking. A second trigger worth measuring: the same file touched by
  several tasks in a row.
- **`check-docs-consistency`** — before a handover, which is where the checks in
  `docs/skill-conventions.md` run; the count belongs there and is not repeated
  here, because a second copy of it is what went stale. Done by hand several
  times and never as a step, and every round has found false statements in this
  file. The rounds, by date rather than by "the round before this one": three in
  the first; four in a later one, three of those work recorded as run that had not
  run; sixteen on 7 September 2026; five on 9 September 2026. **This sentence used
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
  and 7 September and again on 8 and 9 September: the only project whose gate this
  workflow built itself, classic protection over the required check `checks` with
  `enforce_admins` on, auto-merge on, private. It is the bench for anything to do
  with the unattended mode, and the only one of the six where the mode is recorded
  as available in `environment.md`.

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
  Recorded, not built.

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
  Recorded, not built.

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

  *Should:* what should hold so that a recurring failure picture lands there,
  in three sentences. The close of the review — where each finding is announced
  under fix or file, `build-work:692` and `review-changes:284` — carries a third
  duty, not a third way out: a finding announced as the second of its kind in
  this run is written as one rule into `standards.md` in the same change as its
  fix, and before the fix, so that the next build reads the rule and the next
  review reads a breach of a written rule rather than judging sameness a third
  time. The threshold and the destination are `record-lessons:102` and `:115`,
  said again where the close is, since `docs/skill-conventions.md:1095` to
  `:1098` says a locked skill cannot be run by another and the alternative —
  taking the lock off — puts the description into every session's context for
  the sake of one call; `record-lessons` stays the typed command for what a
  person notices, and the two lines then stand in two places, which by the
  entry above on unheld copies owes its guard in the same change. Two things
  the repair has to know: the check at `docs/skill-conventions.md:1203` prints a
  line for a locked skill named in backticks by another file, so the close
  says the rule and not the skill's name; and what stays open is what the
  entry above left open, narrowed by one step — two findings are "the same" by
  a judgement once, at the second, and never again after the rule is written,
  and where that one judgement is kept when the two findings sit in different
  tasks is not settled here.

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
  The six findings and the second wording are recorded and not built.

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
