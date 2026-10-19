---
name: plan-work
description: Turn an idea into a specced piece of work
allowed-tools: Bash(${CLAUDE_PLUGIN_ROOT}/bin/devloop-text *)
---

# Plan a piece of work

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

Four stages, each building on what the previous one established. Run them in one
session where you can. The issue tracker carries the state between them, so an
interrupted session costs the stage you were in, not all four.

The output is a spec in the issue tracker. No code is written here.

Run `${CLAUDE_PLUGIN_ROOT}/bin/devloop-setup-state --fetch` before anything
else. It reads the main branch as last fetched, fetching first, and never the
working tree.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text fetch-failed`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text set-aside-at-start`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text set-aside-back`

Where its answer carries a `missing:` line, this project is not set up on the
main branch — never set up, or written and not landed, which the working tree
cannot tell apart. **Run `setup-project`, and say nothing before it. Do not
ask.** Why its questions come now stands in its first question, as its step
0 says, since 17 October 2026. There is nothing to decide: without a tracker
there is nowhere to put a spec, so the only other answer is to abandon what
the user just asked for. Do not improvise around it either.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text project-language`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text body-through-file`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text missing-command`

## When a command does not answer

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text command-does-not-answer`

## When the main branch cannot be fetched or fast-forwarded

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text fetch-three-times`

## Before anything: what is already built

**Run the in-flight query from `docs/agents/issue-tracker.md` — the whole
command, both halves.** Not only the label query below. An open pull request is
work that is already built and has not landed, and it is the one thing a fresh
plan must never be written on top of. Measured on 31 August 2026 in a test
project, twice in a row: a run asked only for open issues, reported that nothing
was open, and opened a planning issue for work whose finished pull request was
sitting open against the very issue it duplicated.

**And a query that did not answer is not "nothing is in flight".** An empty
result is an answer, and the planning goes on on it without a word, since 17
October 2026; a command that was refused or errored
is not, and reporting it as an empty tracker is the same duplicate-planning
failure by another route. Name the command and the message that came back
instead, and do not open a planning issue on it.

Read it off the query's own columns, never off a branch name — a branch named
after a task is a string this workflow writes, and a pull request from anywhere
else carries whatever its author chose.

- **A pull request whose `closes:` names the issue this work is about** — the
  work is built, not unplanned. Name it, say it is waiting to land, and stop.
  Do not open a planning issue for it and do not plan it again. Offer to land
  it instead; on a no it stays open, nothing is lost, and say what you are doing
  next.
- **The same, but `draft: true`** — built and not offered yet, so there is
  nothing to land. Say that, and ask whether this is the same work before
  writing anything into the tracker.
- **`closes: -`** — it names no issue, so it cannot say what it belongs to. Ask
  whether it is this work. That question has no right answer to look up, which
  is what makes it one.
- **`mine: false`** — somebody else opened it. Carry on; it is not this work
  and not yours to land. It is named on the planning issue, as a comment once
  the issue stands, and not said, since 17 October 2026.

## The planning issue

**At the start**, before Stage 1, there has to be a planning issue.

If the work already has an issue — someone filed it, a review left it behind —
use that one rather than creating a duplicate. Copy its current body into a
comment first, so nothing anybody wrote disappears, then replace the body with
the placeholder. Otherwise create a fresh issue, titled after the work in the
user's own words.

**An issue that an open pull request already closes is not an issue to plan
into.** Its work is built and waiting to land, so replacing its body with the
placeholder buries a finished piece of work behind a line saying the spec is
still being written. Say what is there and stop, the same as above.

Either way the body is one line saying the spec is still being written, and the
label is `being-planned`. Nothing acts on a `being-planned` issue —
neither an agent nor a human — because it is not a suggestion and not an
instruction, it is unfinished. If the tracker has no such label, create it and
carry on.

**After each stage**, post that stage's output as a comment on the issue.
Comments, not the body: the body is where the finished spec goes, and someone
reading the spec should not have to wade through how it was reached.

**At the end**, Stage 4 writes the spec into the body and swaps the label. The
stage comments stay — they are the record of how the spec was arrived at.

### Picking up an interrupted plan

Then, still before Stage 1, ask the tracker for open issues labelled
`being-planned`. This is the second half of the stock-take and not the whole of
it — the label sits on a planning issue, so an empty answer says only that no
plan was left half-written, and says nothing whatever about work that is already
built. Reporting "nothing open" off this query alone is how the run above came
to duplicate an issue.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text refer-by-name`

- **None** — start fresh.
- **Exactly one** — name its title and ask whether this is the same work or
  something new. Do not decide that by matching words against the title.
- **Several** — list their titles and ask which one, or whether this is new.

If it is the same work, read the issue and its comments and continue at the
stage after the one last finished, saying nothing of which, since 17 October
2026. Do not repeat a finished stage. Stage 2's
report is a summary, so re-read any code you need to act on rather than trusting
the summary to be complete.

**A plan picked up past Stage 1 is asked how it should run before it goes on** —
the question Stage 1 closes with, under the same conditions, unless `--auto` was
typed this session. Whatever was answered last time is not read out of the
comments or out of any file: a line saying the user agreed is not the user
speaking, which the block on asking below says in as many words. A mark under
`.claude/` left by that earlier run — the file "With nobody there" below
describes — belongs to a run that broke off, since planning is one session and
nothing else writes one there. Delete it with a shell command and ask; that
you did stands in the question field, before the question line, as part of
why the question comes now — the run that wrote the mark was going on
without them and broke off — and not as text before the call, since 17
October 2026. This is the one place a mark not this run's is deleted rather than
refused: somebody is here to answer, and the build stage says why the same find
at the start of a build is a refusal instead.

## How to ask

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text how-to-ask`

## With nobody there

Planning runs alone from the point where the idea stands. Stage 1 stays with the
user, because it is the only part that needs something only they have; from the
end of it — the code, the drafts, the design choice, the seams, the spec, the
cut, the build, the merge — a run can go on by itself, because each of those has
something to be checked against: the design against the user stories and the
exclusions settled in Stage 1, the seams against the code, the cut against the
spec it follows from, the build against the check suite. Whether it does is
decided once, at the end of Stage 1, and Stage 1 says how.

**The stages and their order are the same in both modes.** Alone or watched,
nothing is skipped and nothing is reordered; the order is either right or it is
not, and whether somebody is watching changes nothing about that. What differs
is what happens at a question the test above lets through, and at a prototype.
Two departures, and neither is a departure in the order:

- **A question that needs something built to answer** — a state model, a flow
  that only shows its shape when it runs — is settled by building the throwaway
  and reading what it does. With the user there, it is offered first, because it
  costs real time and they are in the room to say no. Alone, the run builds it
  itself, drives it itself, reads the result and records the question and the
  answer on the planning issue; `build-prototype` says how, under its own
  section for the case. A question that needs someone to *look* — what a screen
  should feel like, which of two layouts reads better — is not this case, and
  the end of Stage 1 makes sure none is open before the run goes alone.
- **The question at the end of Stage 1 itself** is asked only where the
  mode is set up in this repository; where it is not, it has one possible
  answer and is not asked.

**A question the test lets through, with nobody there, goes through this order,
and stops at the first step that applies:**

1. **Take the less committing option and record it** — in the spec, listed with
   the other decisions, marked as taken without an answer. Less committing is
   the option later work can walk back from most cheaply: the smaller interface,
   the thing not built, the setting left off.
2. **Where no option is less committing, cut the part that hangs on the question
   out of the scope**, file the question as an issue of its own labelled
   `raised-here`, and plan the rest — but only where the rest is still a result
   on its own, something someone could look at and say whether it works. Say in
   the spec what was cut and which issue carries it.
3. **Only where neither holds, record the question in the spec as undecided**
   and plan on it. That is the last resort and it is written down as one, so
   whoever reads the spec sees that the work rests on an open question.

Where the whole of the work hangs on the question and no option is less
committing, the run stops, with the question named, the planning issue left
`being-planned` and the mark going, by the text below, which every stop of
this stage with nobody there ends on. A stop with a reason is allowed; a wait for
a person is not. The next session picks the plan up at the stage it reached and
asks the question with somebody there.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text mark-deletion`

**A refusal before the build goes through the same order, since 9 October
2026**: a guard's block, the no of the classifier of auto mode, the no of
the hook on permission prompts, which answers every prompt of this session
while the mark stands, `hooks/permission-request-unattended.sh`, or, since
18 October 2026, the refusal of a safety check built into Claude Code,
defect 12 of the roadmap entry of 16 October 2026 on the runs of that day;
and since the same day a refusal a subagent of this skill names in its report,
a drafting or a checking agent of Stage 3 say, as one of the run's own. None
of them is tried again or reached another way. The thing the refused command
would have settled is the question, and the step the order stops at records
the refusal where it records the question — the command as it ran and the
message that came back, in the spec beside the decision, on the issue that
carries the cut part, or in the spec as undecided; where the whole of the
work hangs on it, the stop above, with the refusal named. In the build the
same refusal becomes an issue against the task, "A guard's block, with
nobody there" in `build-work`; here there is no task yet to put down.

**Two places in Stage 3 are questions of this kind, and are answered here so the
stage does not have to.** A decision record whose ground no longer holds: alone,
the decision is neither extended nor remade — the part of the work resting on it
goes through the order above, most often its second step. And a design choice
where the check leaves nothing standing, or takes away the draft the comparison
recommended: alone, that is a stop with the reason named. Choosing among drafts
is the largest decision in the plan, and a comparison that recommended a draft
now known not to carry the stories is not a comparison to pick the next one
from.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text mark`

**The mark.** When a run steps out of the flow — at the end of Stage 1, on an
answer that sends it alone or on `--auto` — it writes the mark, with a shell
command and not the editing tool, since the tree stands on the main branch at
that moment and the branch guard blocks the editing tool there on purpose.
First the fetch, three attempts, by the command under "When the main branch
cannot be fetched or fast-forwarded" above; where the third fails too, stop
as that section says, opening with that the run cannot read just now where
the main branch stands on GitHub and that for that nothing is begun here —
the wording approved on 12 October 2026, point 19 of part B of the roadmap
entry of that date, since nothing is fast-forwarded here and only the fetch
can fail — the run without them does not begin, and no mark is written. On
a fetch that answered, the mark:

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text mark-command`

A mark carrying another run's commit: `build-work` says what that means at the
start of a build. It is deleted wherever the unattended part ends — the halt
before the first build, a stop with a reason, the user's word to stop, the
finish of a build — by the one text that stands at the stop above and at the
endings of the cut and the build, since 16 October 2026, and a session that
simply ends cannot delete it, which is
what the rule under "Picking up an interrupted plan" is for. It carries no
limit and enforces nothing; it answers the one question a run cannot re-derive
later, which is why it may be a file where a count may not.

## Stage 1 — Sharpen the idea

Map the open decisions as a tree: every decision branches into the decisions
that hang off it. Work the tree in rounds. The frontier is every decision
whose prerequisites are already settled — the questions answerable now,
without guessing at answers you have not heard yet; a question whose answer
hangs on one still open belongs to a later round. Each round, settle only
what the rule on this interview below leaves to you, put it as the question
on the assumptions of the round that rule describes, first in the call and
ahead of the round's questions, and then ask every decision that is left —
numbered, each with your recommended answer so a single word can settle it,
through the widget on the answer as that rule says, since 19 October 2026 —
at most three in a round, and the rest of the frontier before anything the
answers unlock. Say roughly how many rounds you expect. Then wait. The
answers open the next round. After every round, post the settled answers as
a comment on the planning issue, so that a session which ends inside this
stage leaves the issue with what was settled and not empty — since 16
October 2026, point 20 of part B of the roadmap entry of 12 October 2026;
until then they went once, after the question at the end of this stage, and
a pick-up found the issue empty on 30 September 2026.
Done when the frontier is empty — no question is answerable now, every
branch of the tree visited, nothing left silently assumed, the way the
interview of `untangle-idea` ends — the hard core of the user stories and of
what is out of scope is written down, and no question is left whose answer
somebody has to see something to give. Those three are what "the idea stands"
means everywhere in this file, and the run acts on it only once the user
has confirmed, at the question below, that a shared understanding is
reached. Since 16 October 2026, point 20: until then the first condition
read "nothing important is open", which is the run's own interpretation
where the empty frontier is a state of the tree that anybody holding the
tree can check; the cap of three questions in a round changes how many
rounds a frontier takes and not when the stage ends.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text three-questions`

Two things are not the user's job:

- **Facts.** Anything in the repository, the docs, or on the web you look up
  yourself. If the answer needs a primary source you do not have, run `research`
  in the background and carry on.
- **Terms.** When a word contradicts the glossary, or means three things at once,
  say so and propose a precise one. What gets settled goes into the glossary
  immediately, not collected for later. `docs/agents/domain.md` says where this
  project keeps its glossary and its decision records — read it before writing
  either, rather than guessing the location.

If a question cannot be settled in conversation because it needs something
running, tell two kinds apart before offering anything. **One can be measured**:
a state model pushed through its awkward cases, a flow that only shows its shape
when it runs — the throwaway is built, driven and read, and the answer is a
fact. **The other has to be seen**: what a screen should feel like, which of two
layouts reads better — the throwaway is built and somebody looks. Either way,
with the user there, stop and offer to build it, and say which kind it is; do not
start one unasked, it costs real time and they are in the room. That is
`build-prototype`. On a no the question is still open: either settle it on their
word and record that it was decided without seeing anything, or carry it into
the spec as undecided. Do not quietly pick one and move on. **A question of the
second kind left open means the idea does not stand**, and the question at the
end of this stage on how the work runs is then not asked: the run stays with
them, since alone it would meet a question nobody present can answer.

When a decision is hard to reverse, would surprise someone without the reasoning,
and came out of a real trade-off, offer a decision record. Only then.

**Before the last round closes, write the hard core down**: the user stories any
design has to carry — the ordinary path and the failures that were settled here,
one line each — and what is out of scope, the things someone might reasonably
expect and that were decided against or put off. Short, and only what was
actually settled; Stage 4 writes the long list. This is the list Stage 3 plays
every draft against, so it is written before the drafts exist and not read back
out of them. Show it to them as written, in the question below: in its
question field, before the question line, where the hard core and the
question fit the harness's choice widget together by the bound the output
style of devloop sets; where they do not, the hard core is not cut to fit —
it stands as written in the message that ends the turn, and the question
stands last in that message, as text, with the same two answers. Since 17
October 2026; until then the hard core was to stand in the message before
the widget, and on 16 October 2026 it stood in no message at all.

**Then ask whether the idea is understood, in a call that carries this
question and no other**, with the hard core shown in it and before the
question on how the work runs from here, and where that question is not put
as well — a choice through the harness's choice widget, in their language,
every point in a field of its own and no recommendation, or the same as text
where the hard core does not fit. In the header: a
name for the subject, as telling as it can be, of twelve characters at most.
In the question line:
whether the idea is understood so, as the hard core puts it. In the yes,
label and line: yes, it is right so, and the run plans on on that ground.
In the no, label and line: no, something is still missing, and the run asks
on until it is right. On the no the frontier is not empty: ask what is
missing, and the answer opens the next round. Only on the yes does the idea
stand. Since 16 October 2026, point 20 of part B of the roadmap entry of 12
October 2026, with the source it names, the interview of `untangle-idea`:
"Do not act on it until the user confirms you have reached a shared
understanding." The wording approved on 16 October 2026 stands in the
roadmap entry of that date; this skill says what is said, not the words.

**Then ask once, in a widget call that carries this question and no other, how
this piece of work should run from here** — but only where the unattended
mode is set up in this repository,
and only where the idea stands by the three conditions above.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text mode-set-up`

Where the mode is not set up, the question has one possible answer and is not
asked. Without the flag the run carries on with them, and what it says about
the mode is read in this order. Where the record of the answer says `no` —
their no, a protection the platform refused, or checks that do not pass on
the platform — nothing, and nothing about the other conditions either.
Otherwise, where a class in `checks.md` is `empty`, nothing. Otherwise,
where the record is a yes with something fallen away since, auto-merge
switched off on the platform, say, one line: that work without them is not
set up in this project, and that typing `--auto` where a piece of work
starts sets it up. It does not list what is missing: the flag asks what has
to be asked and sets up the rest. Where no record stands — a setup broken
off before the question among it — nothing. Since 17 October 2026, the
roadmap entry of that date on the reports of what was done: a class `empty`
had a line in two forms until then, by whether the repository had code, and
no record had the line of a yes fallen away, which spoke of an option they
never took up. The wording approved on 5 and 6 October 2026 stands in the
roadmap entry of 5 October 2026, the line for a yes fallen away among it,
the forms for a class `empty` and for no record not said since 17 October
2026; this skill says what is said, not the words. Where `--auto` was typed
this session and the idea stands, the run does not stop at that: the person
who typed it is here, so call `setup-checks` for its step 8 alone, which puts
what has to be asked — the permissions a second time, where their record does
not say yes, and since 9 October 2026 the question on the rule for the
classifier of auto mode, where it does not stand in their settings — and sets
up what the answers allow. It is not reached while a class in `checks.md` is
`empty`, and sets no protection while a pull request is open; either is said,
with what would help, and the run carries on with them. When it returns, the
tree stands on the main branch as freshly fetched: on a yes the conditions
below are read again and the run goes alone; on a no it carries on with them.
Where the mode is set up and `--auto` was typed this session, the question is not
asked either: the flag is its answer, and that the run goes on alone from
here is not said, since 17 October 2026. So the flag and an answer can never
disagree — where one exists, the other was never given.

Three answers. What tells them apart is where the user is needed and where not,
so each is said by that and not by what the run does at each stage:

- **Full flexibility.** Everything is built without them, through to a finished
  solution; they read the result afterwards.
- **The plan without them, seen before anything is built.** The planning runs
  without them and stops once there is a plan to read. They look at it, and from
  there it is the first answer again.
- **Full control.** Everything is put to them as it arises and they decide,
  exactly as it goes now. Nothing is lost by this and nothing has to be set up
  later.

Say what the first two cost for this piece of work, in the description of
each of the two, beside what it means: the design gets chosen
against the written list and not against their taste, and the machine has to
stay awake for as long as the run works. That the run stops where no draft
carries the stories is not said there, since 19 October 2026: it foretold a
failure nobody knows will come, the person's statement of that day, and the
wording approved that day stands in the roadmap entry of 19 October 2026
under defect 14, this skill saying what is said, not the words; the stop
itself stands in Stage 3 as it stands. The descriptions have carried the costs
since 17 October 2026; until then the place was not
named, and on 16 October 2026 the costs stood neither before the widget nor
in its lines. Do not repeat what the mode costs the repository — the
workflow file, the protected branch, the minutes — that was said and agreed when
the mode was set up. Recommend none of the three: which one fits is a question
of their time and of how much they want to see, and the run cannot weigh that
for them.

**This question stands outside the test under "How to ask", the way the landing
question at the end of a build does.** It is not a question about whether the
next stage happens — it happens on every answer, so "moving to the next stage is
never a question" holds — but about who is in the room while it does, and that
is nobody's to decide but theirs. It is defined here, in the one place it is
asked, rather than as an exception written into the shared block: one sentence
here touches one file, an exception there touches six.

**Before asking, read six of the seven preconditions of the unattended mode**, so
the question is not put and then found to have had one answer all along. The
seven stand numbered in `build-work` under "Unattended mode"; the third — no task
in range blocked by anything outside it — cannot be read before a cut exists and
stays at the build. The other six can be read now: no class in `checks.md` is
`empty`; a failing gate genuinely blocks a merge on the remote and binds this
account — both queries, since each is blind to one kind of protection, and the
binding read per kind, as that list spells out; Claude Code runs in auto
mode, read by running `${CLAUDE_PLUGIN_ROOT}/bin/devloop-permission-mode`
once with the shell and reading the mode the hook on that call puts beside
its result, as condition 4 of that list says; the repository can merge without a person,
auto-merge on (`gh api repos/OWNER/REPO -q .allow_auto_merge`) and a gate for it
to wait on; and the two records say yes, on installing and on the dependency
file. For the gate and auto-merge, read the state; do not read
`environment.md`'s account of it — the repository says whether it still
holds. The two records are the exception: there the file on the main branch
is the state itself, and it is read as the paragraph above reads it. Where
the mode is not set up, the paragraph above has said what is said, and
nothing is added here. Where it is set up and a class is `empty`, the two
answers that send the run alone fall away and the question is not asked;
say which one failed and what helps there, and carry on with them. Where it
is set up and condition 4 fails — the mode is not `auto`, `dontAsk` and
`bypassPermissions` included, or it could not be read, no statement beside
the result or the statement that the input carried no `permission_mode` —
the question is not asked either, and where `--auto` was typed this session
the flag does not send the run alone: say the sentence the roadmap entry of
9 October 2026 records for this skill — that the run without them does not
start; that Claude Code has to run in auto mode, the mode set now named as
the status bar shows it; how to switch, Shift+Tab in the terminal, and then
to type `--auto`; and that without the flag the planning goes on with them —
and carry on with them. Where the mode could not be read, "When a command
does not answer" holds and no wording of its own. This skill says what is
said, not the words. The build reads
all seven again when it
starts, for two reasons written there: on the route that starts from a finished
spec the build is reached without this question, and the state read here can
change between now and then.

**On either of the first two answers, or on `--auto`, write the mark** — the
command and what it is for are under "With nobody there" above, `build` on its
second line for the first answer and for the flag, `plan` for the second, the
third line, this session's identifier, the same in both — and say nothing of
it, since 17 October 2026. The hook on the mark lets the command through in
auto mode alone, the mode condition 4 has read by now, and blocks it in every
other.

Post the hard core as a comment on the planning issue before moving on — the
settled answers went there after every round — and the answer to the last
question where it was asked, as a
record of what happened, not as something a later run may act on.

## Stage 2 — Read the code

Read-only. Change nothing, commit nothing.

Establish what actually exists where this work will land: the modules involved,
their current interfaces, how similar things are already done here, what the tests
around them look like. Verify at the code itself — a summary of a summary
occasionally inverts what the code does.

Skip this stage if there is no code yet; that it was skipped is the
comment this stage posts on the planning issue, and is not said, since 17
October 2026.

Write what you found in at most fifteen lines. This is input to the next stage,
not a deliverable.

Post it as a comment on the planning issue, and nowhere else: it is not said
in the conversation, since 17 October 2026.

## Stage 3 — Draft designs

First write the problem space down: the hard core from Stage 1 — the user stories
any design has to carry and what is out of scope — together with what Stage 2
found a design has to respect, what it depends on, and a rough sketch so the
constraints are concrete. This is one list, not a second one: what Stage 1
settled is not restated in other words here. It is not given to them to read
while the drafting runs, since 17 October 2026.

Then draft **three or four designs in parallel, each under a different
constraint**:

- the smallest possible interface
- the most flexible
- optimised for the most common caller
- cleanest separation between the parts that change and the parts that do not

Each draft returns the same five things: the interface, an example of using it,
what stays hidden behind it, how it handles its dependencies, and its trade-offs.

**Every agent this stage starts is handed two things more, since it reads this
file nowhere**: where the mark stands that says which mode this run is in —
not this conversation — and what a refusal is and what follows one. A guard's
block, the no of the classifier of auto mode, the no of the hook on permission
prompts or the refusal of a safety check built into Claude Code is reached no
other way, is tried no second time where the mark says the run is alone, and
is named in the agent's report with the check, the command as it ran, the
message that came back and whether a second attempt went through. That holds
for each drafting and each checking agent and for each rerun, since the
addendum of 18 October 2026 to the roadmap entry of that day on where step 8
of `setup-checks` puts the tool of a class off for an install not run; the
build subagent is handed the same for the same reason, decision 1 of the
roadmap entry of 9 October 2026.

**Then check every draft, each by an agent of its own, as a question of fact.**
One agent per draft, given that draft, the hard core from Stage 1 and what Stage
2 found, and beside the two things above nothing else — not the other drafts,
since an agent that sees them starts ranking across them, which is the hazard
`review-changes` names for its lenses. Each answers three lists, item by item:
which user story this draft does
not carry, which exclusion it builds anyway, which constraint from the code it
breaks — every answer in the words of the item, so anyone holding the list can
check it against the draft. Not "which is best": a ranking gets a plausible
reason for whichever draft it is handed, which is no check at all. A draft that
fails an item is recorded as failing it; no agent decides what follows from
that. **If a checking agent fails to return, rerun it; where the rerun does not
return either, state that the draft is unchecked** — with the user there
among the verdicts before the design question, alone in the comment of this
stage — and never present a draft as having passed a check that
did not run. A rerun that returned is not said, since 17 October 2026.
A refusal a checking agent names in its report is said beside the verdict on
its draft, since 18 October 2026, defect 12 of the roadmap entry of 16
October 2026 on the runs of that day — which check refused, the command as
it ran and the message that came back — with the user there among the
verdicts before the design question, alone in the comment of this stage and
by the order for a refusal before the build under "With nobody there"; what
it kept from running is a check that did not run.

Present them one after another, then compare them in prose — on how much behaviour
each hides behind how small an interface, on how localised a future change would
be, and on where each puts the seams.

**End with one recommendation, not a menu.** The user wants a strong read.

**With the user there, ask which design, as text, last in the message that
ends the turn, and put nothing else beside it or after it.** Before it in
that message stand what it needs — the drafts, the comparison, the verdicts
and the recommendation above — and what else this turn owes them, since 17
October 2026. Beside it and after it: not the seams, not the next stage, not
a second question of any kind. This is
the largest decision in the plan, and anything travelling beside it gets waved
through with it — a run that proposes the seams in the same breath has not asked
the design question, it has answered it. The reply also has to be answerable by
what the question offers: which design, not "does this fit". The verdicts stand
in the message, so that they choose knowing which draft carries what; they may
still choose a draft that failed an item, and the spec then records that item as
knowingly given up. **Write nothing until they have answered.**

**Alone, the recommendation is taken where it passed every item**, and the
comment of this stage below says which draft was taken and that it carried
every story, built nothing excluded and broke no constraint; no message does,
since 17 October 2026. Where the
recommended draft failed an item, or no draft passed, the run stops — "With
nobody there" says why that is a stop and not a second-best pick.

If a drafting agent fails, rerun it; where the rerun fails too, state that the
comparison is one design short, as the paragraph on a checking agent says
where. Never compare silently around a missing draft. A rerun that returned
is not said, since 17 October 2026.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text restate`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text seam-and-condition`

**The seams come next, in the comment of this stage and then in the spec's
Test decisions, and not in the conversation, since 17 October 2026** — the
places where this work will be checked. Prefer seams that already exist to new
ones, and use the highest one that still catches what matters. **Each is
placed, not assumed**: name the path and the symbol where it stands, or, where
the chosen design creates it, the line of the interface above that does; that
is what the cut and the build read. They cannot be settled earlier because they
follow from the design.

**The ground under the decision records** this design leans on: each record
carries a line saying what would make it invalid. Check those lines. If one no
longer holds, say so and do not extend a decision whose basis is gone. With the
user there, stop: say what it would take to go on — that decision has to be made
again, now, on what is true today — and offer to do that here rather than leaving
them stranded. Alone, the part of the work resting on it goes through the order
under "With nobody there".

Post the chosen design, the reasoning for it, and the placed seams as a comment
on the planning issue — **and the drafts that were not chosen, with every
verdict**, each draft at least as its interface and its trade-offs. A comment
holding only the winner leaves the verdicts pointing at nothing, and alone that
comment is the only thing anyone can check the choice against afterwards. Read
on 14 September 2026 on the tracker of a test project: two specs whose Stage 3
comments held the chosen design alone, one of them under a spec body saying the
rejected alternatives were recorded there.

## Stage 4 — Write the spec

No new questions. Write down what was decided, in these sections:

- **Problem** — from the user's point of view, not the code's.
- **Solution** — from the user's point of view.
- **User stories** — a long list, one line each, covering the ordinary path, the
  edges, and the failures. It grows out of the hard core from Stage 1 and keeps
  every line of it: a story the design was checked against does not disappear
  here.
- **Implementation decisions** — the design that was chosen, the modules built or
  changed, their interfaces, schema changes, contracts. Taken from Stage 3, not
  invented here.
- **Test decisions** — the placed seams and what gets checked at each.
- **Out of scope** — what someone might reasonably expect and will not get,
  starting from the hard core of Stage 1 and adding what the design and the
  seams put out of reach.
- **Missing checks** — every class in `checks.md` this work would need and that is
  not `filled`, each with where it stands: for `skipped (state)` the state that
  keeps it off; for `skipped (user)` that the user switched it off, and why;
  for `empty` that the checks are set up after the first merge that lands
  code. A missing class is filled by `setup-checks` and never by a task as
  work of its own, in both modes: where a task ends a state, the build fills
  the class before that task is released, at the end of its step 4. Planning
  does not call `setup-checks` and raises no issue for a class — an issue
  would be built as a task whose own work is the filling.

Write it into the body of the planning issue, replacing the placeholder line, and
remove the `being-planned` label. Put no build label in its place: nobody builds
a spec, and readiness for the tasks under it is a blocker query. The commands are
in `docs/agents/issue-tracker.md`.

## Close

Report the spec's issue number and one line on what it covers.

Then cut it into tasks — run `cut-into-tasks` — and say nothing of it before,
since 17 October 2026: what the cut created reaches them where it is said.
Do not ask permission first. The decision here is the
split itself, and it follows from the spec rather than from anything only they
know — so it gets presented and created, not put to them as a question.

---

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text closing`
