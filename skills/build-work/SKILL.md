---
name: build-work
description: Build the open tasks and merge them
---

# Build the open tasks

**Answer in the language the user writes in, not the language of this
document.** These instructions are in English because the repository is; that is not a signal about how to reply.

**One task at a time.** Never two. Two build agents share the same working
directory and the same branch target — one will switch branches out from under
the other mid-edit, and both will touch the same manifest. Parallel agents are
for drafting and reviewing, which write nothing. Not for tasks.

Read `docs/agents/checks.md` and `docs/agents/issue-tracker.md` first.

## Never assert state — always query it

Which task is next, which blockers are open, whether something merged: each is a
query, never a memory of what was said earlier. Conversation goes stale; the
tracker and the git log do not.

If a skill you call does not exist, or a background agent fails, **say so**. Do
not silently substitute something else and do not carry on as if the result were
complete.

## Before each task

Fetch and compare the local main branch with the remote. If they have diverged,
say so and stop — a task cut from a stale main lands on the wrong base.

## Pick the next task

Run the readiness query from `docs/agents/issue-tracker.md`. Ready means: open,
and zero open blockers.

- **Exactly one ready** — build it.
- **Several ready** — list them with what each unblocks, and ask which. Do not
  choose for the user, and never start more than one. In unattended mode there is
  nobody to ask: take the one that unblocks the most other tasks, and when that
  ties, the lowest issue number. Say which you took and why.
- **None ready** — say which task blocks which, and stop.

## Build it

Hand the task to a subagent with a fresh context: the task issue, the spec it
belongs to, and the paths of the control documents — not this conversation.

The subagent:

1. Cuts a branch from the current main branch.
2. Works test-first at the seams the spec confirmed, and at no others: the
   failing test, then just enough code to pass it, one slice at a time. Not every
   test up front — that tests imagined behaviour.
3. Fixes causes, not symptoms. If a second defect remains after the fix, that is
   its own defect with its own effect, not a leftover of the first.
4. Commits behaviour changes separately from mechanical ones.
5. Runs everything `checks.md` lists before reporting done. A report a later gate
   rejects is not a report.

Refactoring is not part of this loop. It belongs to the review.

## Review it

Run `review-changes` on the diff.

Each finding goes one of two ways:

- **Fix now** if the fix is obvious and touches nothing that was decided —
  a missed error type, a wrong branch, a check that always passes.
- **File as an issue** if fixing it would revisit a design decision, change the
  interface, or exceed the task. Say which you filed and why.

Never leave a finding in the conversation. Never explain a named defect away in
the same breath as naming it: it stays open until fixed or explicitly deferred.

## Hand it to the user

Show the diff and the findings — what was fixed, what was filed. Ask whether to
merge or revise, and say what each means.

In unattended mode the check suite is this gate instead.

## Merge it

**Never merge directly.** Open the pull request, then set it to merge
automatically once the gates are green:

    gh pr merge --auto --squash --delete-branch

The platform merges, not the agent. Direct merges are refused as a shared-state
action, and an unattended run cannot answer that prompt.

If auto-merge is not enabled on the repository, say so and stop: it is a
repository setting, not something a build step changes. Ask the user to enable it.

Then check **once** whether it landed — do not poll in a loop. If it has not,
say what it is still waiting on and offer the next step; do not block the session.

Once it has landed:

- Fetch and fast-forward the local main branch. If that fails, say so and stop.
- Delete the merged branch locally and on the remote if it is still there;
  `--delete-branch` does not always take effect on an auto-merge.
- Confirm the task issue closed. Check whether this also closed anything else,
  naming each one you checked, including the ones it did not close.
- If every task under a spec is now closed, offer to close the spec.
- Say what to pull locally: a new dependency means install, a schema change means
  migrate, a new setting means check configuration, server code means restart,
  frontend only means a hard reload. `environment.md` says which apply here.

Build the commit from `git status --short`, never from a reported list of paths —
a guessed list drops new files silently. Add paths explicitly, never with `-A`.

## Then the next task

Query again. One ready task: continue. Several: ask. None: stop.

## Unattended mode

`--auto` replaces the user's approval with a green check suite. Same stages, same
checks — only the gate differs.

**Refuse to start** unless all five hold, and say which failed:

1. No class in `checks.md` is `empty`. Every one is `filled` or `skipped` with a
   reason. `empty` means undecided, and an undecided check approves nothing.
2. A failing gate genuinely blocks a merge on the remote — not the model's
   judgement that it looks fine.
3. `--max-iterations` is set. If the user did not give one, propose twice the
   number of ready tasks plus two, and say that is a rip-cord for a run that gets
   stuck, not a capacity estimate — one round per task is the normal case.
4. No task in range is blocked by anything outside the range.
5. The tool classes the run needs are already approved for this project. A run
   nobody is watching cannot answer a permission prompt.
6. Auto-merge is enabled on the remote repository. Without it the run reaches the
   pull request and stops there: merging directly is refused, and auto-merge is
   rejected. Check with
   `gh api repos/OWNER/REPO -q .allow_auto_merge` and refuse to start on false.

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
