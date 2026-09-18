---
name: start-work
description: Take a piece of work from idea to merged
disable-model-invocation: true
allowed-tools: Bash(${CLAUDE_PLUGIN_ROOT}/bin/devloop-text *)
---

# Start a piece of work

**If `[shell command execution disabled by policy]` stands anywhere in this
file, stop before anything else.** The rules this skill shares with the others
are inserted when it loads, and that text standing where a rule should be means
they were not. Tell the user, in the language they write in, three things: that
this workflow cannot work right now because its shared rules were not loaded;
that the cause is the setting `disableSkillShellExecution`, which switches off
the commands in skills; and that it stops here rather than carrying on without
those rules. Then do nothing else.

## Step 1 — Look

Run exactly one command and nothing else:

    ls docs/agents/ 2>/dev/null

Do not read files. Do not check git. Do not look at the tracker. One command,
then go to step 2.

If it lists files, find the version marker in `docs/agents/issue-tracker.md` —
the line matching `<!-- devloop: ` — and compare it with the running version.
Search the file for that line rather than assuming which one it is; in a file
with a frontmatter block it sits below that, not on line one. Older means
these files were written from templates this workflow has since changed. Say in
one line, in ordinary words, that the setup files here are from an older version
of this workflow and that you are bringing them up to date, then run
`setup-project`. **Do not ask.** The refresh touches nothing the project decided
for itself, so a no protects nothing — and the question costs a second decision
in the same reply, which is how a bare "yes" stops being an answer to either
one. When `setup-project` returns, **carry on with step 2 as if nothing had
happened** — the refresh is an errand, not the answer to why they are here.
Reporting what is in flight is the thing they came for, and it is exactly what
gets dropped when a detour ends and the run picks up wherever it left off. A
file with no marker at all predates the marker; treat it as older.

## Step 2 — Orient them, if the status line says this project is not set up

Write a short introduction in your own words — at most four sentences, not
counting the closing line, in their language — covering these and nothing else:

- Where this ends up, in one clause: code that is built, checked and merged.
  Where it ends up, never how it gets there.
- One promise: an idea is all they need to bring, and the rest is guided.
- That they have to remember nothing — no commands, no steps.
- That asking what is happening, at any point, gets an explanation.

**Name no stages.** Not sharpening, designing, speccing, cutting, building or
reviewing, and no counts of anything. A list of what is coming reads as a process
to learn, which is the opposite of the promise just made, and they meet each
stage when it arrives anyway.

Close on this line, exactly as written, in English even when the rest is not:

    devloop - from idea to built.

This is the one fixed wording in the set, and it is fixed because it is a
signature rather than a paragraph — six words a model transcribes, not a text it
would paraphrase.

Then ask what they would like to build, and **stop.** Nothing else in this reply:
no repository findings, no offer to set anything up.

**If the status line says the project is set up**, skip the introduction. Run the
in-flight query from `docs/agents/issue-tracker.md` and say what it found, in at
most five lines. **Name the work; do not number it.** Someone back after a week
remembers what they were building, not that it was issue nine.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text refer-by-name`

- **An open pull request comes first**, ahead of every issue. It is work that is
  built and has not landed — closer to done than anything else on the list, and
  the one thing that must not be started a second time. That is the ordinary end
  of a session with somebody in it, not an exception: a build opens the pull
  request and then hands the merge over, and nothing moves until the user says it
  has landed. **Unattended it is not the ordinary end** — there the run waits for
  the merge in the same answer, so a pull request still open at the start of an
  unattended session is one whose wait ran out or whose checks went red, and it
  is still armed. Read the platform for where it stands before deciding anything
  about it, and do not arm it a second time. Name it by title and say which of
  these it is, read off the query's own columns and not off its branch name:
  - **`mine: true`, not a draft, `closes:` an open issue** — built, and waiting
    to land. This is the normal case.
  - **`mine: true`, and the issue it closes reads `CLOSED`** — the two
    disagree. Say so. The pull request is the part that has not landed, and a
    closed issue is not evidence that it did.
  - **`draft: true`** — built and not offered yet. It is neither waiting on a
    merge nor finished, and saying either of those about it is wrong.
  - **`mine: false`** — somebody else opened it. Report it and leave it, the way
    a loose issue from outside is reported and left: do not take it up, do not
    offer to land it, do not count it as the work in flight.
  - **`closes: -`** — it names no issue. Say it is open and that it does not say
    which work it belongs to. Do not read its branch name as the answer: a
    branch named after a task is a string this workflow writes, and a pull
    request from anywhere else carries whatever its author chose.
  - **Several at once** — name them, ready ones before drafts and yours before
    anyone else's. Past three or four, name the newest and say how many others
    there are, the same as for loose issues.
  - **None** — say nothing about pull requests at all and carry on down this
    list. Silence is the report here; a line saying there are none spends one of
    five on nothing.
- A spec with open tasks: its title, and how far it got — two of five tasks
  done reads as progress; "has open tasks" reads as a warning.
- A planning left unfinished: its title, and which stage it last got through —
  read its comments, one is posted per finished stage.
- Loose issues nobody has picked up: their titles, and which carry
  `raised-here` — those came out of earlier work here and are waiting to be
  taken up, while the rest arrived from outside as suggestions. Past three or
  four, name the newest and say how many others there are.

**If nothing is in flight**, ask the same open question: what would they like to
build? Nothing in flight now means both halves of the query empty — no open
issue and no open pull request.

**If an open pull request of yours is waiting to land, that comes before all of
it.** It is one command from done and nothing else on the list is, and starting
something new leaves it sitting there for another week. Say it is waiting and
offer to land it. On a yes, that is `build-work` at step 6 and nothing before
it — their yes here is the gate, rather than an inference about what some
earlier session did before opening it. On a no it stays open and nothing is
lost, because the state is in the tracker and in git; say so, take the next
thing on the list, and say which. **A draft is not this case** — it was never
offered, so there is nothing to land, and it is reported and left where it is.
**Neither is one that reads `mine: false`** — that is somebody else's to land.

**If a map or a spec is in flight, do not ask a question at all.** Name the free
tickets or tasks by title, say which one comes next and what it unblocks, in one
line, and start it. "Eleven open decisions" is a number, not a handhold: the user
cannot act on a count. And do not ask whether to carry on — typing the command in
a project with work already in flight is the answer to that, the way saying what
you want built is the answer everywhere else. Asking again treats what they just
did as if it had not happened. Say which one you are taking so they can name a
different one instead.

Reporting is not proposing, and the difference is which of the two cases you are
in. Proposing is intrusive when it tells the user what to want; it is help when
it tells them where they stopped and what comes next.

- **A stray open issue somebody filed.** Say what is there and stop — do not
  rank it, do not recommend one, do not offer to pick it up. An open issue is
  somebody's suggestion, not an instruction, and someone coming back after a
  week needs to see where they stood before they can answer at all.
- **A ticket or task on something they started themselves.** This is the
  exception, and it is a real one: rank it, recommend one, offer to pick it up.
  That is the paragraph above, and none of the three refusals in the case above
  apply here.

If both halves of the query come back empty, say the tracker is clear and ask the
question on its own.

**Both halves empty is an answer; a query that did not come back is not.** Where
the command was refused or errored, say so with the command and the message it
returned, and ask the open question without claiming the tracker is clear — a
run that reports nothing in flight when it could not look sends the user to
start work that may already be sitting in a pull request.

**Stop here until they answer — but only where a question was asked.** Nothing
in flight means a question and a stop. Something in flight means no question,
so there is nothing to wait for: report where they stopped, say which piece you
are taking, and take it.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text missing-command`

## When a command does not answer

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text command-does-not-answer`

## Step 3 — Judge what they asked for

If it is too large to see the end of — where the questions are not "how do we
build this" but "what are we even building" — **say so and start mapping. Do not
ask.** You have just made that judgement yourself, on what they told you; asking
now invites them to overrule it with no more information than you have, and the
usual answer to a question with one sensible answer is that it gets waved
through. Say what happens next in one line: the open decisions get mapped first,
one session at a time, and this picks up again when the path is clear. That is
`untangle-idea`.

Otherwise carry on.

## Step 4 — Set up, if it is not set up

If `docs/agents/` was missing, run `setup-project` now, then continue. Do not ask
the user to run it.

## Step 5 — Build it

Which stage you enter depends on what step 2 found, and getting it wrong costs a
skill load and a correction the user watches happen:

- **An open pull request of yours they said to land** — nothing new starts on
  top of it. `build-work` picks up at its step 6, which is where reading the
  gate, arming the platform and handing the merge over already live; none of it
  is repeated here.
- **A ready task under a finished spec** — no planning is left to do. Go
  straight to `build-work`.
- **A planning left unfinished** — `plan-work` picks it up at the stage its
  comments say it reached.
- **Loose issues carrying `raised-here`, with no task left open under a spec** —
  work this project already raised against itself, and it goes to `build-work`,
  which is where the ordering of loose issues is written. **Not to `plan-work`.**
  An issue that already says what is wrong does not need a spec written around
  it, and sending it there stands a fresh candidate beside it as an equal choice
  — measured on 9 September 2026, that is exactly the pair a run put to the user
  instead of naming the issue it was taking. Loose issues from outside are
  reported and left, the way step 2 reports them.
- **Anything else, including a fresh idea** — `plan-work` from the start. It
  carries through to the tasks and into the build.

Each stage says what it is doing next and does it. None of them asks permission
to reach the following one; the decisions sit inside the stages. The one question
a stage puts at a boundary — how the work runs on from the end of the sharpening
— is not permission to go on: it goes on whatever the answer.

**`--auto` travels with that choice.** Where it was typed, say in the same line
that the run goes on alone from where the idea stands, or, on the route straight
to a build, that the build runs alone; that is the word the stage reads, and the
section at the end of this file says what it means. The stage then writes the
mark that carries it further, so the word need not survive past that point.

## How to talk while doing all this

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text language-opening`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text skill-name`

## Unattended

    /devloop:start-work --auto

The flag means: do alone everything that can be done alone. Sharpening the idea
is the one part that cannot — it needs what only the user knows — so it runs
with them whatever was typed. From the point where the idea stands, everything
after it can: reading the code, the drafts, the design choice, the seams, the
spec, the cut, the build, the merge. Each of those has something to be checked
against instead of somebody to ask — the design against the user stories and
exclusions settled in the sharpening, by an agent per draft; the seams against
the code; the cut against the spec; the build against the check suite — and that
check, not a claim that a mistake stopped costing anything, is what carries them
alone.

Without the flag, the planning stage asks once, at the end of the sharpening,
how this piece of work should run from there, with three answers that differ by
where the user is needed: everything built without them; the plan made without
them and seen before anything is built; or everything put to them as it arises.
With the flag that question is not asked — the flag is its answer — so the flag
and an answer can never disagree. On the route that goes straight to a build,
because a finished spec already has ready tasks or because an earlier run halted
before its first build, there is no sharpening and no question, and the flag is
the only thing that sets the mode there.

Either stage checks the mode's preconditions before going alone and refuses,
saying which failed, where one is missing: the planning stage reads the four it
can before a cut exists, the build reads all five. Where the repository has not
been set up for the mode at all — the check setup offers it once and records the
answer — nothing runs alone whatever was typed, and the run says so once and
carries on with them.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text mark`

---

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text closing`
