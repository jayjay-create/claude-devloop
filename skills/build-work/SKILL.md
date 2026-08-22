---
name: build-work
description: Build the open tasks and merge them
---

# Build the open tasks

**Answer in the language the user writes in, not the language of this document.**
These instructions are in English because the repository is; that is not a signal
about how to reply. It slips most often on the lines that are not really talk — a
progress note, a step ticked off, a count reported back. Those are said to a
person too.

**Never say a skill's name to the user.** The stages have names so the skills can
call each other; to the person in front of you they are just what happens next.

**One task at a time.** Never two. Two build agents share the same working
directory and the same branch target — one will switch branches out from under
the other mid-edit, and both will touch the same manifest. Parallel agents are
for drafting and reviewing, which write nothing. Not for tasks.

Read `docs/agents/checks.md` and `docs/agents/issue-tracker.md` first.

**Steps 1 to 7 run in that order, per task, and none of them is optional.** Do
not pick whichever looks pending, and do not skip ahead to the one that looks
like the goal: the base has to be sound before a branch is cut, the review reads
a diff that only exists after the build, and the merge waits on both the review
and the user.

Running in order is not the same as running without stopping. Two of these steps
end by asking the user something — that is the step doing its job, not an
interruption of it. What to avoid between steps is the other thing: finishing a
step, writing a status summary, and waiting for permission to continue with a
step that asks for none.

**Write into the issue tracker in English** — titles, bodies, comments. The
tracker is part of the project and outlives this conversation. Speak to the user
in their own language; that is a different thing.

**If a command this skill needs is missing from `docs/agents/`, say so.** Those
files were written when the project was set up and the template has moved on
since. Do not improvise a replacement — an invented query that returns something
plausible is worse than no answer, because nobody can tell it went wrong. Name
the file, say what is missing, and offer to bring it up to date.

## How to ask

Every question states what is being decided, what each answer means in practice,
what it costs, and why it comes up now. Never name a bare term the user may not
know. Never ask the user for a fact you could look up. Never ask which skill to
use.

**Only ask where there is something to decide.** A question with one sensible
answer is noise, and so is a question the user has just answered. Name what the
other answer would change before asking; if nothing, say what you are about to
do and do it. Moving to the next stage of this workflow is not a decision — the
decisions sit inside the stages, and every one of them comes back on its own.

**A question has to be answerable by what it offers.** "Does this fit, or shall
I change something?" cannot be answered with yes: an alternative question and a
yes-or-no question are different shapes, and a reply to the mixed form means
neither. Ask one or the other.

## Never assert state — always query it

Which task is next, which blockers are open, whether something merged: each is a
query, never a memory of what was said earlier. Conversation goes stale; the
tracker and the git log do not.

If a skill you call does not exist, or a background agent fails, **say so**. Do
not silently substitute something else and do not carry on as if the result were
complete.

**A seam is a place where this work is checked** — a function boundary, a module
edge, an entry point. The spec names them and the user confirms them; nothing is
tested at an unconfirmed seam.

**The nine classes** are format, lint, types, unit, integration, end-to-end,
secrets, dependencies, code-security. The set is fixed; what varies per project
is which are `filled`, which are `skipped` with a reason, and which are still
`empty`.

## Step 1 — Check the base

Fetch and compare the local main branch with the remote. If they have diverged,
say so and stop — a task cut from a stale main lands on the wrong base. Say what
would clear it and let the user decide: usually the local branch has commits the
remote does not, or the reverse, and reconciling them is their call, not
something to resolve by force. Nothing is lost meanwhile; the tasks are in the
tracker and this picks up once the branches agree.

**Then run the check suite on that base, before cutting anything.** It costs
seconds and it buys the one thing no later step can recover: knowing whether the
base was green when you started. Without it, a red check at the end of the build
is ambiguous — your work or something you inherited — and that ambiguity is
exactly where a run starts guessing.

**If the base is already red, do not start a task on it.** The cause is not in
work you have not done yet, so do not read your own plan for it. Say which
classes are red. Then, for a failure in the unit, integration or end-to-end
class, run `diagnose-bug` on it; the other six print their own cause and are
fixed directly. Either way you now have a cause, not a suspicion.

Then say what it is and let the user choose how to clear it, with what each
answer costs:

- **Undo the change that broke it**, with a revert commit rather than a rewrite,
  so nothing is lost and the history still shows what happened. The base is
  green again and the task starts clean.
- **Fix it inside the task's own branch**, so the fix goes through review and
  merge like anything else — but the base stays red until that lands, and the
  task's diff now carries a change that has nothing to do with it.
- **Leave it to them**, and pick the task up once they say it is done.

A base that went red between two known-good states is the one case where the
suspects are already enumerated: the commits that landed since the last green
run. That is a ranked list, and reverting one of them is a falsifiable
prediction — it belongs in the diagnosis, not instead of it.

## Step 2 — Pick the next task

Run the readiness query from `docs/agents/issue-tracker.md`. Ready means: open,
and zero open blockers.

- **Exactly one ready** — build it.
- **Several ready** — list them with what each unblocks, and ask which. Do not
  choose for the user, and never start more than one. In unattended mode there is
  nobody to ask: take the one that unblocks the most other tasks, and when that
  ties, the lowest issue number. Say which you took and why.
- **None ready** — say which task blocks which, and stop.

## Step 3 — Build it

Hand the task to a subagent with a fresh context: the task issue, the spec it
belongs to, and the paths of the control documents — not this conversation.

The subagent:

1. Cuts a branch from the current main branch.
2. Works test-first at the seams the spec confirmed, and at no others: the
   failing test, then just enough code to pass it, one slice at a time. Not every
   test up front — that tests imagined behaviour.
3. Fixes causes, not symptoms. A red check in the unit, integration or
   end-to-end class does not name its cause, so it goes to `diagnose-bug`
   rather than to a guess — unless it is the deliberately failing test of the
   loop in point 2, which is working as intended. The other six classes print
   their cause in their own output and are fixed directly. If a second defect
   remains after the fix, that is its own defect with its own effect, not a
   leftover of the first.
4. Commits behaviour changes separately from mechanical ones.
5. Runs everything `checks.md` lists before reporting done. A report a later gate
   rejects is not a report.
6. Writes down anything that changed about running this project locally — a new
   dependency, a new command, a service that has to be up, a setting — into
   `docs/agents/environment.md`, on this same branch. A command the user has to
   type is a fact about the environment, and it belongs in the file rather than
   in a sentence that scrolls away. That file is read after every merge to say
   what to pull; it is only worth reading if something writes it.

Refactoring is not part of this loop. It belongs to the review.

**Do not edit `docs/agents/checks.md` yourself.** If the task creates or changes
a check target — a test runner, a linter, a formatter — call `setup-checks` for
that class instead. Its columns are read by shell scripts, and the rules for them
live with the skill that owns the file. Writing a row by hand has already
produced both failures available: a status word that does not exist, and a raw
shell command in a column that holds a bare target name, which the turn-end hook
then ran as `make python3 -m unittest ...` and blocked the report.

## Step 4 — Review it

Run `review-changes` on the diff.

Each finding goes one of two ways:

- **Fix now** if the fix is obvious and touches nothing that was decided —
  a missed error type, a wrong branch, a check that always passes.
- **File as an issue** if fixing it would revisit a design decision, change the
  interface, or exceed the task. Say which you filed and why.

Never leave a finding in the conversation. Never explain a named defect away in
the same breath as naming it: it stays open until fixed or explicitly deferred.

## Step 5 — Hand it to the user

Show the diff and the findings — what was fixed, what was filed. Then ask one
closed question — whether this should land — and say what each answer means: yes
merges it, no keeps the branch and takes revisions. Not "merge or revise?": that
is two questions in one and a reply to it answers neither.

**This is the gate.** It is the one place in the loop where a human decides
whether work lands, and it is the reason the loop is trustworthy. Reaching step 6
without it means unreviewed code merged on nobody's authority. Being told to
build a task is not that authority: it authorised the build, and this is the
question the build exists to earn.

In unattended mode the check suite is this gate instead — the gate is replaced,
never removed.

## Step 6 — Merge it

**Only after steps 4 and 5.** If the review has not run, or the user has not
answered, this step has not started yet. Go back rather than forward.

**Never merge directly.** Open the pull request, then set it to merge
automatically once the gates are green:

    gh pr merge --auto --squash --delete-branch

The platform merges, not the agent. Direct merges are refused as a shared-state
action, and an unattended run cannot answer that prompt.

Setting it to merge automatically can be refused, and `environment.md` says
which of the two cases this repository is in. Neither is a fault, and neither
stops the stage:

- **Auto-merge switched off at the repository.** A setting, not something a
  build step changes. Say so and ask the user to switch it on.
- **Nothing for it to wait on** — no required check, no required review, so the
  pull request is already mergeable and auto-merge cannot be enabled at all.
  Nothing is missing: the gate here is the question at the end of step 5, which
  has already been answered, and the platform has no check of its own to add.

Either way the merge itself is still not yours to perform. Give the user the one
command that lands it, say the stage picks up the moment it does, and do not
present it as something having gone wrong. What went wrong in the past was the
framing and the timing — a run stopping mid-task, over a change nobody asked
for, as though it had hit an error.

Then check **once** whether it landed — do not poll in a loop. If it has not,
say what it is still waiting on and offer the next step; do not block the session.

Once it has landed:

- Fetch and fast-forward the local main branch. If that fails, say so and stop —
  and say what it would take: the merge landed, so the work is safe, and only the
  local copy is behind. Naming the divergence is enough; do not force it.
- Delete the merged branch locally and on the remote if it is still there;
  `--delete-branch` does not always take effect on an auto-merge.
- Confirm the task issue closed. Check whether this also closed anything else,
  naming each one you checked, including the ones it did not close.
- If every task under a spec is now closed, close the spec and say you did. Do
  not ask: every task under it is done, so there is no second sensible answer,
  and reopening an issue is one click if it turns out there was one.
- Re-read the `skipped` reasons in `docs/agents/checks.md`. Many are written
  against a state of the project — no code yet, no entry point, no third-party
  dependencies — and merging is what changes that state. Name any whose reason
  no longer holds and call `setup-checks` for that class. Nothing else ever
  reads those reasons, so a skip that says to revisit once something exists is a
  note to nobody until this step reads it.
- Say what to pull locally: a new dependency means install, a schema change means
  migrate, a new setting means check configuration, server code means restart,
  frontend only means a hard reload. `environment.md` says which apply here.

Build the commit from `git status --short`, never from a reported list of paths —
a guessed list drops new files silently. Add paths explicitly, never with `-A`.

## Step 7 — Back to step 2

Query again **before you say anything about what is left**. One ready task:
continue. Several: ask. None: stop. Whatever you knew before the merge is stale
by definition — the merge is what changed it.

## Unattended mode

`--auto` replaces the user's approval with a green check suite. Same stages, same
checks — only the gate differs.

**Refuse to start** unless all five hold, and say which failed:

1. No class in `checks.md` is `empty`. Every one is `filled` or `skipped` with a
   reason. `empty` means undecided, and an undecided check approves nothing.
2. A failing gate genuinely blocks a merge on the remote — not the model's
   judgement that it looks fine. This is also what makes the run able to merge
   at all: see 6.
3. `--max-iterations` is set. If the user did not give one, propose twice the
   number of ready tasks plus two, and say that is a rip-cord for a run that gets
   stuck, not a capacity estimate — one round per task is the normal case.
4. No task in range is blocked by anything outside the range.
5. The tool classes the run needs are already approved for this project. A run
   nobody is watching cannot answer a permission prompt.
6. The repository can actually merge without a person. Two things have to hold,
   and `environment.md` records both: auto-merge is enabled
   (`gh api repos/OWNER/REPO -q .allow_auto_merge`), and a required check exists
   for it to wait on (`gh api repos/OWNER/REPO/branches/main/protection`, where
   a 404 means none). Without the second, auto-merge cannot be switched on at
   all, direct merging is refused, and nobody is present to do it by hand — the
   run would build a task and then sit on a pull request forever.

   This refusal is about the run being able to finish, not about trusting it.
   Say which of the two is missing and what would change it — a required check
   where protection is available, a public repository or a paid plan where it is
   not — and say that the attended mode works unchanged in the meantime, because
   there the person answering step 5 is the one who merges.

Then write `.claude/autorun.local.md` with `iteration`, `max_iterations`,
`completion_promise`, `scope`, and `started_from` (the current main-branch
commit), followed by the standing instruction: take the next ready task in scope,
build it, run everything in `checks.md`, review, set the pull request to
auto-merge if green, and emit the completion phrase only when no ready task
remains in scope.

Emit that phrase only when it is completely and unambiguously true — never to get
out of the loop.

When the run finishes, **delete the state file.** Do not write a status into it
and leave it lying there: the hook checks whether the file exists, not what it
says, so a leftover file drags the next ordinary turn back into the loop. Add its
path to `.gitignore` — it is runtime state and does not belong in the repository.

Tell the user how to read the diffs afterwards, from `started_from` to the
current main branch, and how to stop the run.
