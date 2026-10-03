---
name: setup-project
description: Set up this repository for devloop
allowed-tools: Bash(${CLAUDE_PLUGIN_ROOT}/bin/devloop-text *)
---

# Set up a project

**If `[shell command execution disabled by policy]` stands anywhere in this
file, stop before anything else.** The rules this skill shares with the others
are inserted when it loads, and that text standing where a rule should be means
they were not. Tell the user, in the language they write in, three things: that
this workflow cannot work right now because its shared rules were not loaded;
that the cause is the setting `disableSkillShellExecution`, which switches off
the commands in skills; and that it stops here rather than carrying on without
those rules. Then do nothing else.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text language-opening`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text skill-name`

Produces five short files under `docs/agents/`, the task runner with its fixed
targets, and a pointer block in `CLAUDE.md`. It fills no check class:
`checks.md` leaves here with all nine `empty`, in a project with code as in one
without, and where there is code the check setup follows as a step of its own,
from the close.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text project-language`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text body-through-file`

## When a command does not answer

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text command-does-not-answer`

## A guard's block is not a decline

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text guard-block-intro`

- **The command really is an install.** The guard did what it was built for.
  No step of this setup needs one — nothing is installed here, the check setup
  being where a tool is installed under the record — so the command is one
  this run reached for on its own. With the user there, hand it over backed
  and carry on without it: the record has not landed yet, and once it has, the
  check setup decides. With nobody there, there is no one to ask: it becomes an issue
  labelled `needs-human` carrying the command and the message, and the report is
  written and the run stops there rather than carrying on past a step that did
  not run.
- **The command is not an install and the guard matched on text.** Then nothing
  needs a human decision, and raising one would put a question to somebody that
  has no answer to give. Do not raise it. Put the text through the editing tool
  rather than through the shell, and where that does not reach, the report is
  written and the run stops there.

What tells the two apart is what the command would have done, not what the guard
matched.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text backed-command`

## How to ask

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text how-to-ask`

## Refreshing an existing setup

Run `${CLAUDE_PLUGIN_ROOT}/bin/devloop-setup-state --fetch` before anything
else. It reads the main branch as last fetched, fetching first, and never the
working tree: `docs/agents/` in the tree is what this setup writes before it
lands, so a setup broken off after the write and before the merge looks set up
there and is not.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text fetch-failed`

Where no `missing:` line stands in the answer, every file is
on the main branch and this is not a first setup. Do not run the steps below:
they ask questions that were answered once already, and re-asking them is how
a working project gets talked into changing its mind. Where every file is
missing, this is a first setup, whatever the tree holds, and the steps below
run; a branch `devloop-setup` an earlier run left with something written on it
is met at the cut, which says what happens with it. Where some file is present
and some missing, this is a refresh all the same, and a file missing there is
written from its template in step 6 the way a first setup writes it; the two
or three lines below name it.

Cut the branch first, under the same name and rule as a first setup — the step
below that stands between the last question and the first write. A refresh asks
nothing, so here it is the first thing done. Skipping the steps below skips
where that rule is written, which is how the first refresh ran straight into
the main-branch guard.

The files hold two kinds of content, and only one of them is yours:

- **This workflow's**: the tracker commands, the label vocabulary, the check
  table's header and the rules for its columns, and the fixed section headings.
  These come from the templates below and go stale when the workflow changes.
- **The project's**: the rows of the check table with their real targets and
  statuses, the glossary, the coding rules, the notes on running it locally.
  These were decided here and are never overwritten.

Rewrite the first kind from the current templates, leave the second untouched,
and say in two or three lines what actually changed — named, not counted. One
thing outside those files is this workflow's too: the two paths under `.claude/`
that Step 5 keeps out of the repository. Check `.gitignore` covers both, since a
project set up before one of them existed has only the other. If nothing
changed, say that and stop. Then land it the way Step 8 describes.

Each file records the plugin version it was last written from, on its own line.
Put it directly above the top heading — below the frontmatter block where a file
has one, since that block is read by scripts that split on `---`:

    <!-- devloop: 0.0.0 -->

Write the running version there, taken from `.claude-plugin/plugin.json`. Nothing
reads it but this skill and the entry point, and it is what makes a stale file
visible without diffing every line.

## Step 0 — Say what is about to happen, then get on with it

Do this before any tool call, including reading files. Someone seeing this for the
first time should not watch six commands run before learning what is going on.

If you cannot tell what language the user speaks — they have typed nothing but the
command — ask that first, in English, as a single question. Everything after runs
in their language.

Say what is about to happen here, in one or two sentences: you set this
repository up — look at what is already in it and write five short files
recording where tasks live — that it takes a few minutes, and that along the
way you ask wherever something is theirs to decide. Name no count of
questions.

**Do not introduce the workflow itself, and name no stages.** Whoever arrives
here either typed the command or said what they wanted built one message ago,
and in the second case the introduction has already been given. A second one,
laid out as a numbered list of what is coming, turns a promise that nothing has
to be remembered into a process to learn.

Then get on with it. **Do not ask whether to proceed.** Reaching this skill means
the user either said what they want built or typed the command themselves; a
question with one sensible answer is noise, and it teaches them that their
answers do not matter.

Stop only where something is genuinely undecided and you would otherwise guess:
this is not a git repository, there is no remote, or the working directory does
not look like the project they meant. Then say what is wrong and ask about that.

### Permissions, before the first command

**This is not a question, and must not be put as one.** You cannot record the
grant, the tool owns that file, and the real answer is given later at the tool's
own confirmation prompt. There is nothing here to wait on and nothing that
changes on an answer, so a question produces one that gets no reply and then
looks ignored when the run carries straight on. It is preparation, and it is
said as preparation.

**Say it before running anything, at the end of this step.** Exploring the
repository is what triggers the first round of confirmations — reading git state,
listing labels, querying the tracker — so advice that arrives afterwards is too
late, every time. None of those is a decision. Confirming them one by one
contradicts what they were promised at the start, and it gets worse later: an
unattended run needs those permissions granted up front, because nobody is there
to answer.

So say it once, here, while they are present. Name the command patterns this
workflow uses on every run, in plain words — **reading git
state and writing to it** (cutting a branch, staging, committing, pushing,
fetching), reading and writing issues, opening and merging pull requests, and
asking the platform about the repository. Do not stop at reading: every run cuts
a branch and pushes it, and a grant that covers only reads leaves the user
confirming the same four commands by hand on their first real task.

**The test for what belongs here is what this workflow itself runs, in every
project, whatever the language.** That set is git and the platform, nothing
else — the same in C++, Kotlin, Java or anything not written yet. So nothing
about the project has to be known at this point.

What the project itself runs is its check commands, and those are not known
yet — `checks.md` is empty until `setup-checks` fills it, so that skill adds
them where it writes them, whether they read `make check`, `./gradlew check`,
`mvn verify` or `npm run check`. **Only the check commands, never what was
needed to install them** — a compiler or an analyser reaching beyond this
project keeps its own confirmation, and a wrapper that downloads on first use
does too.

Anything outside those two sets stays a confirmation prompt, and that is the
right outcome rather than a gap: a command built with a loop or a variable
cannot be expressed as a pattern at all, and a one-off deserves to be seen.

**You cannot record the grant yourself, so do not say that you will.** The
permissions file belongs to the tool, not to this project, and writing it is
refused — measured, not assumed: a run tried and was blocked by the platform's
own classifier. So say what will happen either way and leave it with them:
granting means choosing "always allow" the first time each pattern comes up, or
setting them in `/config`, and any of it can be taken back in the same place;
not granting means a confirmation prompt per command kind, in every session, for
as long as that stands. **Say the first half conditionally, because the prompt
may never come.** With auto mode on there are no confirmations to answer, so
"confirm it the first time it comes up" describes something that will not
happen, and they wait for a window that never opens — measured, in a session on
25 August 2026. Put it as: if a confirmation does come up, this is what to do
with it, and `/config` is where it can be set either way. Claiming to have recorded something leaves them looking
for a file that was never written. **Do not name the unattended mode as one of
the costs.**
It is true that this grant is one of that mode's preconditions, and saying so
here turns a yes into a step towards it — which is exactly the confusion the
next paragraph exists to prevent. If they ask about it, say it is asked for
separately, by name.

**Say what this is not, in the preparation itself.** This passage has no
options, being no question, so both halves stand in its own words: that the
real decisions still come to them one at a time, **and that this is not the
unattended mode**. Naming it is the part that gets dropped, and dropping it is
what leaves the two looking like the same thing — and they are easy to confuse,
because both sound like "stop asking me". This settles which commands may run
without a prompt, nothing more.
It changes nothing about who decides: every question this workflow puts to them
— sharpening the idea, choosing the design, the go-ahead before anything merges
— still comes to them, one at a time, exactly as before. The unattended mode is
the separate thing that lets a piece of work run alone from the point where the
idea stands, with a check standing in for each of those decisions; it has to be
asked for by name, it has its own preconditions, and each piece of work is asked
separately whether to use it. Granting permissions here does not switch it on
and does not bring it closer.

Where a question does have options, a caveat in the paragraph above them does
not get read and the two lines the user chooses between do — which holds for a
choice two lines can carry and not for a question that needs more said than
that, and step 4 says which of its questions is which.

## Step 1 — Explore, change nothing

- Git: remote, branch, whether there is any commit at all
- Whether `gh` is installed and signed in (`gh auth status`). It is not, and no
  amount of setting up gets around it: a tracker account is a prerequisite, the
  sign-in needs the user's own browser, and creating an account is a web signup.
  Name `gh auth login` and stop — say what it is for, and that everything else
  waits on it.
- Is there code? Count source files outside config and docs
- Existing control documents: `CLAUDE.md`, `AGENTS.md`, `CONTEXT.md`, `docs/adr/`, `README.md`
- Task runner: `Makefile`, `justfile`, `Taskfile.yml`, `scripts` in `package.json`
- Languages and manifests: `pyproject.toml`, `package.json`, `go.mod`, `Cargo.toml`, `pom.xml`
- Existing checks: config for formatting, linting, types; test directories; `.github/workflows/`
- Existing labels in the tracker, if one is reachable
- How the project runs locally: `docker-compose.yml`, `.env.example`, README

## Step 2 — Report what you found

Ten lines at most. Say explicitly what you did **not** find.

## Step 3 — The empty case

Finding no code is not an obstacle. `checks.md` leaves this skill with all
nine classes `empty` in every project, so here it is what it is everywhere;
what differs is the close: say at the end that the check suite gets built once
there is something to check. Step 4 is not skipped: it skips the one question
that needs code to answer, and that question says so in its own condition.
Question 4 needs code: nothing runs yet, and `environment.md` says so. Every
other question is put under its condition, as with code, question 3 among
them: nothing it covers needs a stack. Yes, no and the record are as with
code, written in step 6 and landed in step 8, with no route line, since step 6
reads the routes off a stack and there is none, so that the first install this
project meets finds an answer and not the absence of one.

## Step 4 — Questions

Only these, each only under its condition. Lead with your recommendation so a
single word can answer; question 3 gives none. Two forms, and which one a
question takes follows from what it has to carry, not from what the harness
offers. A choice that two option lines carry — questions 1, 2, 5 and 6 — puts
what counts in the options themselves, because a caveat in a paragraph above
them does not get read; several such choices may share one form. A question
that needs more said than two lines hold — the permission of question 3, and
question 4, which is open and has no options — is put in prose, in the run's
own message, and a widget that follows carries that question's answers and no
other question: it shares a form with nothing. Nothing here asks about check
classes or the tools that fill them: that mapping, and whether a missing tool
gets installed, is the check setup's own question, put once the record this
step writes has landed.

1. **Issue tracker** — only if there is no remote, or several candidates.
   With exactly one remote: state it and move on.
   The tracker must *support* blocking relationships between issues; GitHub
   Issues and comparable trackers do, whether or not any exist yet. A text file
   never does — `build-work` picks the next task by which blockers are closed.
   If there is no remote at all, do not stop yet — offer to create one, since
   that is a single command and the user is right here. Ask for the name and
   whether it should be private, then `gh repo create NAME --private --source=.
   --push`. On a no, say plainly that the workflow cannot run without a tracker
   and stop, rather than merging straight to the main branch as a substitute.
   If no suitable tracker is available at all, stop the setup and say exactly
   that: every later step publishes specs and tasks there and picks up work from
   there.
2. **Auto-merge** — only if the remote has it switched off
   (`gh api repos/OWNER/REPO -q .allow_auto_merge` returns false). Every later
   step opens pull requests and sets them to merge once the gates pass; direct
   merges are refused. Offer to switch it on:
   `gh api -X PATCH repos/OWNER/REPO -f allow_auto_merge=true`. Say what a no
   costs, at the moment of asking: the workflow still runs, but every merge from
   then on stops and hands the pull request to the user to merge by hand. Either
   way this setting is only half of what an unattended run needs; the other half
   cannot be built yet, because nothing has decided what a required check would
   run, and it is offered once the check suite exists.

   **That setting alone is not the gate, and reporting only that setting is how
   a run comes to a halt in the middle of a task.** Auto-merge can only be
   switched on for a pull request that cannot already be merged — something has
   to be outstanding for it to wait on. With no required check and no required
   review there is nothing outstanding, the request is refused, and the merge
   step has nowhere to go. Read what this repository can actually do:

   - `gh api repos/OWNER/REPO -q .visibility` — public or private.
   - `gh api repos/OWNER/REPO/branches/main/protection` — classic branch
     protection. A 404 means none only where the message in the body says
     "Branch not protected"; the endpoint needs admin on the repository, so any
     other message is a query that did not answer.
   - `gh api repos/OWNER/REPO/rules/branches/main` — rulesets, at repository and
     organisation level, needing no special rights. It is blind to classic
     protection as the one above is blind to rulesets, so a gate found by either
     is a gate and only both coming back negative means there is none.
   - **Whether the gate found above binds the account this runs as** — and this
     decides whether any of it applies here. This workflow runs as whatever
     account the tooling is authenticated with, and a gate that account can step
     past is not a gate; it is a gate for everybody else. Reporting the
     protection without this reports something that is not true where it
     matters. Each kind of gate answers it in its own place, and the classic
     endpoint can no more answer for a ruleset than it can see one:
     - Classic protection: `gh api repos/OWNER/REPO/branches/main/protection -q
       .enforce_admins.enabled`, with `gh api repos/OWNER/REPO -q
       .permissions.admin` for whether this account is one of those that would
       walk past it. Off and admin means it does not bind here.
     - A ruleset: each rule `rules/branches/main` returns carries a
       `ruleset_id`; read `gh api repos/OWNER/REPO/rulesets/RULESET_ID -q
       .current_user_can_bypass`. It answers for the account asking, which is
       the account that would merge. `never` binds. Anything else does not, and
       `pull_requests_only` least of all: in GitHub's words that actor "can then
       choose to bypass any branch protections and merge that pull request",
       which is the step this gate exists to hold. Name the value either way.
       Do not reach for `bypass_actors` instead — measured on 31 August 2026 it
       read `null` on a ruleset that answered everything else, and a run reading
       it would take that for nobody. The list at `repos/OWNER/REPO/rulesets`
       does not carry the field at all; only the single-ruleset reply does.

     Neither ruleset reading needs admin, where the classic endpoint does.
     Measured on 31 August 2026 on `github/docs`, a repository this account has
     no admin on: `rules/branches/main` returned rules from two rulesets, one
     `Repository`- and one `Organization`-sourced, and both single-ruleset
     replies carried `current_user_can_bypass: never`. GitHub says the same in
     prose — "Anyone with read access to a repository can view its active
     rulesets."
   - **Put the two sides together the way the existence question is put
     together.** Classic protection and rulesets "work alongside each other, and
     all applicable rules are enforced", so a gate binds here if either side
     binds, and only both sides coming back bypassable means this account walks
     through. Where a side did not answer — `protection` needing admin and
     returning anything but "Branch not protected", or a ruleset reply that does
     not come back — that is a third outcome and not a quiet no: say the binding
     could not be determined and which query failed, rather than claiming a gate
     or ruling one out.

   Whether a plan allows protection on a private repository has changed before
   and will again, so do not carry a table of it: those two queries answer it
   for this repository, today. If protection is wanted and refused, the message
   says why and that is the answer to report.

   Report it in step 8 and write it into `environment.md`. Never withhold
   anything over it and never make it a condition — the user decides what their
   repository is for, and this step's job is that they decide it knowing what
   holds.
3. **Install permission** — always. Put it in prose, in the run's own message
   and in the user's language: the question is what that message says, and a
   choice widget that follows carries its two answers and no other question,
   everything above the answers having been said by then. "In a message of
   its own" was the rule until 30 September 2026, and the first run to put the
   question met it with a tab of its own in a form holding three questions,
   where the ten points that were prose had no slot and did not arrive; the
   roadmap entry of that date says what this rule is worth and what tells the
   two apart afterwards.

   What the question covers, and nothing else:

   - **The subject, in the question line.** Programs that run and end — a
     code generator, a migration command, a checker — landing outside the
     project on this machine. The answer holds for this project, so for
     anyone who builds on it with this set and not for this machine alone;
     where that last part does not fit the line, it goes rather than crowd
     out what follows.
   - **What a yes means, in the yes itself.** From then on the run installs
     such a tool by itself, with them there and with nobody there, without
     asking again.
   - **What a yes also lets through, in the message.** Through a package
     manager the guard sees the verb and not what is installed, so a yes to
     tools also lets through a command that installs a runtime; that compilers
     and runtimes stay theirs under every answer is a rule on the run and not
     a wall.
   - **Where a no leads, in two halves, in the no itself.** With them there
     the run hands them the command and they decide; with nobody there
     nothing is asked: the task becomes an issue carrying the exact command,
     or a check class goes `skipped` with that reason, not `empty` and not
     open.

   These four carry the decision. The standard is that nothing in the
   question implies something untrue, not that everything true is said: what
   the project declares stands in step 2's report, which kind of place each
   route reaches is the run's own reading in step 6, and where the record is
   written and that every session reads it is said in step 9. Give no
   recommendation. The answer goes into `environment.md` in step 6, as the
   section the guard reads; nothing is installed on it here.
4. **Local environment** — always where there is code, unless you could read it
   all from `docker-compose.yml` or the README. Which processes, in what order,
   on what ports.
5. **Labels** — only if the tracker already has labels with overlapping meaning.
   Then ask: map onto the existing ones, or add ours alongside. Otherwise create
   the five standard labels and report it.
6. **Where glossary and decision records live** — only if something already lives
   elsewhere. Otherwise `CONTEXT.md` at the root and `docs/adr/`. Decide it
   here and create nothing yet: this is the last question of the setup, the
   branch is cut once it is answered, and the two places are made in step 6,
   under `domain.md`, on that branch.

Never ask about the user's preferred language or tone here — that belongs to the
plugin's one-time setup, not to a per-project run.

## Cut the branch, after the last question and before the first write

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text cut-branch`

## Step 5 — The task runner and its fixed targets

This workflow keeps two files of local state under `.claude/`:
`check-attempts.local`, written and read by the turn-end hook, which is the only
hook that reads a file of its own; and `unattended.local`, the mark an unattended
run writes for itself where it steps out of the flow and reads at every place it
forks on the mode. Neither belongs in the repository. Make sure `.gitignore`
covers both — add the paths if it does not, create the file if there is none —
and do it here, where it is known, rather than leaving a later step to notice. A
refresh does the same, since a project set up before the second file existed has
only the first.


If there is no task runner, create a `Makefile`. If there is one with
different names, add thin targets that call the existing commands; leave the
existing ones untouched. What this step creates is what stands without a
decision about any class: the runner itself, `check`, `test-one`,
`services-up`, `fmt-write` and the two `.gitignore` lines above. No target for
a check class: those are the check setup's, made one per class it fills under
the names in the table below, and a class it does not fill gets **no** target.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text verdict-target`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text canonical-targets`

While no class is filled, `check` must fail rather than pass, and say that the
check suite is not configured. A green `check` over nothing is a false all-clear.
`test-one` and `fmt-write` are made the same way — each a target that fails
and says that the class it belongs to, unit and format, is not configured — so
that the names exist from here on and say what is missing rather than being
missing; the check setup gives each its command when it fills that class.
`services-up` comes from the answer to question 4, and where nothing has to
run it says so.

## Step 6 — The five files under `docs/agents/`

### `checks.md`

Read by shell scripts. Keep the column count and order exactly. This skill
writes the header and the nine rows, every one of them `empty`, in a project
with code as in one without; no other status comes from here. `filled` and
`skipped: <reason>` are the check setup's to write, and its rules for them
stand there.

    ---
    runner: make
    all: check
    ---

    # Checks

    | Class | Per-file | Whole | Files | Duration | Blocking | Status |
    |---|---|---|---|---|---|---|
    | format | - | - | - | - | - | empty |
    | lint | - | - | - | - | - | empty |
    | types | - | - | - | - | - | empty |
    | unit | - | - | - | - | - | empty |
    | integration | - | - | - | - | - | empty |
    | end-to-end | - | - | - | - | - | empty |
    | secrets | - | - | - | - | - | empty |
    | dependencies | - | - | - | - | - | empty |
    | code-security | - | - | - | - | - | empty |

    ## Running a single test

    make test-one NAME=<test name>

    ## What these checks do not cover

    - <one line per gap>

    ## Services that must be running

    make services-up

- The two target columns hold **bare target names** — `lint`, not `make lint` and
  not `` `lint` ``. A shell script reads this column and puts the runner in front.
  `-` means the class has no target that way, which is every row written here.
- `Files`: comma-separated glob patterns; `-` means it applies to everything.
- `Duration`: rough, like `<1s`, `20s`, `4min`. It decides where the class runs.
- `Status` takes only `filled`, `empty`, or `skipped: <reason>`. `empty` means
  nobody has judged the class yet, and it is what every row says when this
  file is written, with code as without. `filled` and `skipped` are decisions
  the check setup records, under its own rules — a target that exists, calls a
  real checking tool and has been seen going red, or a reason the class finds
  nothing here; a reason is one line, plain ASCII, no `|`, because the parsers
  split the row on it by position. Never guess a status, and never write one
  here.
- `Blocking` is `yes` or `no` on a row whose `Status` is `filled`, and `-` on
  every other row, since a class with no target cannot block anything: one
  value for a row that is not filled, in this rule, in the column and in the
  rows above.
- The section "What these checks do not cover" is mandatory. Written here it
  carries one line: that no class is decided yet. The check setup rewrites it
  from the table it writes.

### `issue-tracker.md`

Where issues live, and the exact commands — including the one that asks what is
open, which covers pull requests as well as issues. The seven labels and what
they mean:
`needs-triage` (new), `needs-info` (waiting on an answer), `being-planned` (a
spec is being written into it right now — nobody acts on it, not an agent and
not a human), `ready-for-agent` (a standalone issue a human has judged buildable
as written — never on a task under a spec, where readiness is the blocker query
instead), `needs-human` (needs a human decision), `wont-do` (declined, with a
reason), `raised-here` (this workflow raised it against work in this project,
rather than somebody filing it from outside).

Create all seven in the tracker as part of this step. A label that only exists in
this document is not a label.

`raised-here` exists because nothing else in an issue can carry that fact. The
author is the account the tooling runs as, which is the user's either way, so it
cannot tell one from the other — and how a loose issue gets treated turns
entirely on which it is. Anything without the label is from outside, and that is
then a reading rather than a guess.

For GitHub, write these in verbatim, with OWNER and REPO filled in. Later steps
read them from here; do not leave the reader to guess the API.

    ## Ordering work

    Tasks are sub-issues of their spec. Dependencies are real, queryable
    relationships — never prose in the body.

    Get an issue's node ID:

        gh api graphql -f query='{repository(owner:"OWNER",name:"REPO"){issue(number:N){id}}}' -q '.data.repository.issue.id'

    Attach a task to its spec:

        gh api graphql -f query='mutation{addSubIssue(input:{issueId:"PARENT_ID",subIssueId:"CHILD_ID"}){issue{number}}}'

    Record that one task waits for another:

        gh api graphql -f query='mutation{addBlockedBy(input:{issueId:"WAITING_ID",blockingIssueId:"MUST_FINISH_FIRST_ID"}){issue{number}}}'

    Ask which task is ready — open, zero open blockers, and no open pull
    request already building it:

        gh api graphql -f query='{repository(owner:"OWNER",name:"REPO"){issue(number:SPEC){subIssues(first:20){nodes{number title state blockedBy(first:10){nodes{number state}} closedByPullRequestsReferences(first:10){nodes{number state}}}}}}}' -q '.data.repository.issue.subIssues.nodes[] | select(.state=="OPEN") | "\(.number) \(.title) | open blockers: \([.blockedBy.nodes[] | select(.state=="OPEN")] | length) | open pull requests: \([.closedByPullRequestsReferences.nodes[] | select(.state=="OPEN")] | length)"'

    Ask what is in flight — every open issue **and** every open pull request,
    in one command. Two commands would be two things to remember, and the
    second is the one that gets forgotten:

        gh api graphql -f query='{repository(owner:"OWNER",name:"REPO"){issues(states:OPEN,first:50){totalCount nodes{number title parent{number} subIssues(first:50){totalCount nodes{state}} labels(first:10){nodes{name}}}} pullRequests(states:OPEN,first:50){totalCount nodes{number title isDraft viewerDidAuthor author{login} closingIssuesReferences(first:10){nodes{number state}}}}}}' -q '"open: \(.data.repository.issues.totalCount) issues, \(.data.repository.pullRequests.totalCount) pull requests (50 of each shown)", (.data.repository.issues.nodes[] | "issue \(.number) | parent: \(.parent.number // "-") | tasks open/total: \([.subIssues.nodes[] | select(.state=="OPEN")] | length)/\(.subIssues.totalCount) | labels: \([.labels.nodes[].name] | join(",")) | \(.title)"), (.data.repository.pullRequests.nodes[] | "pull request \(.number) | draft: \(.isDraft) | mine: \(.viewerDidAuthor) | by: \(.author.login) | closes: \(if (.closingIssuesReferences.nodes|length)==0 then "-" else ([.closingIssuesReferences.nodes[] | "\(.number) \(.state)"] | join("; ")) end) | \(.title)")'

    A spec is an open issue with children. An unfinished planning carries
    `being-planned`. A loose issue has neither. **An open pull request is work
    that is built and has not landed** — the ordinary way a session ends, not an
    exception, because a build opens the pull request and then either arms the
    platform or hands the merge over, and nothing moves until the user says it
    has landed.

    What those two return, beside what each value is read for:

    - `issues` returns issues and never pull requests. Its nodes are of type
      `Issue`, and `PullRequest` is a different type — GitHub's live GraphQL
      schema, read 31 August 2026 — so no filter and no state makes a pull
      request appear there. The REST endpoint `repos/OWNER/REPO/issues` does mix
      the two, measured the same day on `cli/cli` where six of ten open entries
      carried a `pull_request` key, which is where the expectation that one
      query covers both comes from.
    - `states:OPEN` on `pullRequests` is read for "not landed yet", and that is
      what it says. **A draft is inside it**: measured on `cli/cli` on 31 August
      2026, 64 open pull requests of which 25 read `isDraft: true`, and a
      draft's own `state` reads `OPEN`. Draft is a separate field, not a state.
    - `viewerDidAuthor` says whether the account this runs as opened the pull
      request, which is what "is this ours" asks. Measured the same day: true on
      a pull request this account opened, false on one from `cli/cli`. It does
      not say whether the branch sits on a fork — that is `isCrossRepository`.
    - `closingIssuesReferences` says which issues this pull request would close
      on merging, each with its own `state`, and it is read for "which work is
      this". It is filled from a closing keyword in the body or the commits and
      is empty without one: measured on `cli/cli`, pull requests 10783 and 11388
      returned nothing, and 11388's title carries a bare "#326" that is text and
      not a link. Empty means the pull request names no work, not that it has
      none — and a branch name is not this field.
    - `closedByPullRequestsReferences` is the same relationship read from the
      issue, and it is read for "is this task already built". Its
      `includeClosedPrs` argument defaults to false, which does **not** mean
      only open ones come back: measured on 31 August 2026 in `devloop-test-l`,
      the tasks under spec 2 returned pull requests 7, 11 and 13, every one of
      them `MERGED`. Filter on each node's own `state`; never on the argument
      name.

    Ask which `raised-here` issues carry a given line of `standards.md`. The
    close of a review asks this of every rule there before it takes one out,
    and a rule any issue cites stays; the line goes in verbatim, as it stands
    in the file:

        gh issue list --label raised-here --state all --limit 500 --json number,body -q 'map(select(.body | contains("THE LINE")) | .number)'

The mutation is `addBlockedBy` with the fields `issueId` and `blockingIssueId`.
There is no `addIssueBlockedBy`; guessing that name fails.

For any other tracker, work out the equivalent and write it down the same way.
If it has no queryable blocking relationship, stop the setup — see above.

### `domain.md`

First the two places question 6 of step 4 decided on, where nothing lived
elsewhere: **create both as files that git can carry, and say you did.**
`CONTEXT.md` gets a heading and a line saying it stays empty until the first
term comes up; `docs/adr/` gets a `README.md` saying what belongs in it. A bare
`mkdir` leaves an empty directory, git does not track one, and nobody who
clones the repository ever sees it. Then where the glossary and the decision
records live — the two just created, or what question 6 found living elsewhere
— checked to be there before the pointer is written: a pointer to something
that does not exist is the one outcome to avoid. That terms go into
the glossary the moment they come up, not collected later. The three tests for writing a
decision record: hard to reverse, surprising without explanation, the result of a
real trade-off. The format: title, context, decision, binding consequences, status
only for superseded or deprecated, rejected options only when the rejection is not
obvious, and one line — "What would make this decision invalid".

### `standards.md`

Coding rules of this project beyond what a tool already enforces. If you find
none, write that down — empty is more honest than invented. Write it as the
file's state and not the repository's — none recorded yet, rather than there
is no code — because that line stands until the first rule replaces it: from
here on the file is written at the close of every review, where a finding no
written rule would have caught adds one.

### `environment.md`

Processes, order, ports, which terminal window stays occupied. What to pull after
which kind of change: new dependency, schema change, new setting, server code,
frontend only. Which runs cost money and which path is free.

Also **what checks a merge, and who**, from step 2 — the one property of this
repository that decides whether anything besides the person at the keyboard is
watching. Whether a required check exists on the default branch and which one;
if none, that merges are held by the question at the end of a build and by
nothing else, so the user performs them; and what would change that, where
anything would.

Also the answer to question 3 of step 4, under a heading of its own, `## Install
permission`, in the shape the install guard and the session-start hook read it —
one key and one value per line, spelled exactly, ASCII only, since a script
reads the start of each line:

    ## Install permission

    install-tools: yes
    install-place: /usr/local/bin
    install-place: /usr/local/sbin
    install-place: /opt
    install-place: ~/.local/bin
    install-place: ~/bin
    install-place: ~/go/bin
    install-route: cargo
    install-route: pip
    install-answered: YYYY-MM-DD

`install-tools` is the answer, `yes` or `no` and nothing else. The six
`install-place` lines are the places a yes opens in this version, written as
they stand here under either answer, so that the file says what a yes would
open where the answer is no. The `install-route` lines are the routes this
project's stack has, read here by the run off what the project declares and
the lockfiles beside it, one line per route and none for a route the stack
does not have, the two above standing as an example; with no stack, none. The
reading is this run's own work and is not put to the user: ask each route
where it puts things, as the guard does, and write its line either way, since
the guard asks again at the moment of every command; a route of the stack
that does not answer on this machine is named in the pull request body of
step 8, so that the fact is known before the first install meets it as a
block. Each is a name from the eleven the guard resolves, `brew`, `go`, `npm`,
`pnpm`, `yarn`, `bun`, `cargo`, `gem`, `pipx`, `uv`, `pip`. A route named
here opens the directory that route answers on the machine the run is on, read
at the moment of the command and written nowhere, so that the answer holds on
another machine and under another version of the tool; a route not named here
is held against the `install-place` lines.
The route lines are written under either answer, like the places.
`install-answered` is the date the question was answered. The guard and the
session-start hook read this section off the default branch as last fetched,
never off the working tree, so it counts once step 8 has landed it there and
fetched it back. Nothing is installed during this setup — no class is filled
here — so the first install a project meets is the check setup's, after step
8, with the record in front of the guard.

## Step 7 — Pointer block in CLAUDE.md

Append to an existing `CLAUDE.md`, delete nothing. Create it if absent.

    ## Control documents

    - docs/agents/checks.md — how to check this project
    - docs/agents/issue-tracker.md — where issues live
    - docs/agents/domain.md — glossary and decision records
    - docs/agents/standards.md — coding rules
    - docs/agents/environment.md — running it locally

## Step 8 — Land the setup on the main branch

The setup must be on the main branch before any other work starts. A task branch
cut afterwards would not carry `docs/agents/`, and every other skill would find
nothing.

**Never merge yourself.** Open a pull request and arm the platform to merge it
once the gates pass — performing the merge is a shared-state action, and the same
rule holds in every later stage. Arming is a mutation of its own and cannot
merge:

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text arming-command`

`gh pr merge --auto` is not a substitute: the tool drops that flag whenever the
pull request is already mergeable and merges on the spot.

Commit, open a pull request, arm it, and then prove the merge where it happens —
`gh pr view --json state,mergedAt`, `MERGED` with a time in it — before offering
anything on top of it. A report of success is not evidence, and the git log
immediately after arming is not evidence either: the platform has not merged at
that moment, so the log can only carry it after a fetch, once the platform says
it did. **Once the merge is proven, fetch, fast-forward the local main branch
and switch to it, before anything follows.** The check setup that follows in a
project with code cuts its branch from there, and the install guard reads the
record off the main branch as last fetched — a merge proven at the platform is
not yet fetched, and measured on 28 September 2026 a yes landed on `origin` and
not yet fetched blocked, then passed after the fetch. If a check gate blocks
the merge, say so and stop here; do not offer the next step on top of unmerged
setup. **This step does not wait inside its
answer**: nothing reaches it unattended — that mode refuses to start while any
class in `checks.md` is `empty`, and this setup is what makes a `checks.md`
possible at all — so there is a person here, and the waiting form in `build-work`
step 6 is written for the case where there is not.

Arming can also be refused, and for three different reasons. Auto-merge may be
switched off on the repository — `gh api repos/OWNER/REPO -q .allow_auto_merge`
returns false, and that is the only one this field answers; measured on 30 August
2026 it read true in a repository with a required check and in one without alike.
Or there may be no gate for it to wait on at all. Or there is a gate and this
pull request is already past it: the required check has gone green, nothing is
outstanding, and GitHub will not arm what it would merge on the spot. Read `gh pr
view --json mergeStateStatus -q .mergeStateStatus` immediately before arming.
`BLOCKED` is the state that accepts it, while `CLEAN`, `HAS_HOOKS` and `UNSTABLE`
mean nothing is outstanding — which is either everything having run or nothing
having started, and a freshly pushed branch is the second. `gh pr view --json
statusCheckRollup` separates them: it sees Actions check runs and older commit
statuses alike, since `StatusCheckRollupContext` is a union of `CheckRun` and
`StatusContext` (GitHub's live GraphQL schema, 31 August 2026). The required
names come from the same two gate queries — `required_status_checks.contexts` for
classic protection, `parameters.required_status_checks[].context` for a ruleset.
A required name with no entry, an entry whose `status` is not `COMPLETED`, or a
status context still `PENDING` or `EXPECTED`, means the check has not run yet:
not a refusal case, so wait ten seconds and read again, up to two minutes, then
arm on the `BLOCKED` it moves to. Only every required check `COMPLETED` makes
this a pull request past its gate; two minutes run out is said as that and not
as a gate already passed. `UNKNOWN` is a missing answer rather than a state:
GitHub computes mergeability when it is asked for, so read again a few seconds
later and use that second value; a second `UNKNOWN` is not read a third time.
`BEHIND` means the branch is behind the base and the required check ran against a
state that is not what would be merged — fetch, rebase onto the base and
force-push, which lands nothing anywhere and is not the merge this step may not
perform, and the next reading is `BLOCKED` with arming accepted. Measured on 30
August 2026 on a pull request seven days old: `UNKNOWN` first, `BEHIND` on the
second reading.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text empty-read`

The same distinction holds one step earlier: a required name missing from the
rollup is an answer and waiting helps, a rollup query that did not answer is not
and waiting does not.

A value in none of those groups is put in none of them: name it
as it read and say it cannot be placed, rather than turning it into one of the
three cases. Then read whether a gate exists from both queries in step 4: `branches/main/protection`, where a 404 means none only with
"Branch not protected" in the body, and `rules/branches/main`, which is blind to
classic protection. A gate found by either is a gate. Where neither query
answered, say the rights did not allow finding out rather than naming a case.
None of the three is something this step changes. Say which one it was, hand the
user the one command that lands it, and say that this picks up as soon as they
say it has — the same rule the build step follows. Do not leave them holding a
pull request with no idea what comes next.

## Step 9 — Close

Five lines at most: which files you wrote, which targets you created, that
every check class is `empty`, and where the install answer stands: the section
`## Install permission` of `environment.md`, which carries the answer, the
places a yes opens and the routes of the stack, and which every session reads
at its start once step 8 has landed it on the main branch.

Then name **no command**, and do not ask permission to carry on. Say what
happens next, in plain words, and do it. What it buys and what it costs still
gets said; the question is what goes, because nothing here is the user's to
decide:

- Code in the repository: say that the setup is done and that the checks are
  now set up as a step of their own, then run `setup-checks`. Every project
  with code takes this route, since no class is filled here; which classes,
  with what tools and at what cost is that skill's to present, not this
  close's.
- No code: say the check suite is better built once there is something to
  check, and that it comes up by itself once code has landed. Then, if they
  have already said what they want built, say the setup is done and carry
  straight on into planning it; if they have not, say the setup is done and
  ask what to build — that one is a real question, and it is the only one
  here. Either way the next stage is `plan-work` — never send them back to the
  entry point they came from, which would run this setup again.

---

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text closing`
