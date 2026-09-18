---
name: review-changes
description: Review a change from several angles at once
allowed-tools: Bash(${CLAUDE_PLUGIN_ROOT}/bin/devloop-text *)
---

# Review a change

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

Several reviewers run in parallel, each with exactly one lens. **Their findings
are never merged, ranked against each other, or reduced to a single verdict.**
That separation is the whole point: one lens looking for one kind of problem
finds things a general review walks past, and ranking across lenses lets the
loudest kind bury the quietest.

Read `docs/agents/checks.md` and `docs/agents/standards.md` first.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text project-language`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text body-through-file`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text missing-command`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text seam-and-condition`

**A lens is one reading of the whole diff by a reviewer that has been given no
other lens.** The reviewer is inside the definition, not a detail of how one is
arranged: two reviewers carrying five lenses between them ran two lenses, and a
run reporting five has said something untrue about its own work. This is the word
everything downstream counts — one section per lens in the report, the promise at
setup that every angle the change touches gets read, the record of how many ran.
Measured on 9 September 2026: over two tasks, five applicable lenses were carried
by two reviewers, one reading security together with failure behaviour, the other
standards with spec and test quality. The run said so plainly; it was not hiding
anything. What it had was four sentences telling it to start one reviewer per
lens and none telling it what the word counts.

## When a command does not answer

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text command-does-not-answer`

## Pin the target

Establish exactly what is under review — the diff between the branch and the main
branch, at the current commit. Say which commits it covers. Everything below
looks at that, not at the working tree, and not at whatever changed since.

**How small it is decides nothing here.** A one-line diff gets the lenses its
content triggers, and the two that always run always run. `build-work` step 4
says the same thing at the only place this skill is reached from, and it has to
be said there as well as here: a run that decides a change is too small to review
never opens this file.

## The two lenses that always run

**Standards.** Does the change follow this project's rules?

`standards.md` is the source. Beyond it, look for: dead code, duplicated logic,
names that mislead, comments that restate the code instead of explaining it,
inconsistent error handling, silent failures, magic values, functions doing
several things, leaked internals, missing edge cases, and public interfaces that
force the caller to know how they work inside.

**Skip anything a tool already enforces.** Formatting and lint findings are noise
here — the check suite catches them. Read "What these checks do not cover" in
`checks.md`: where nothing is enforced, look harder.

A documented project rule always beats a general one.

**Spec.** Does the change do what was asked?

Compare against the task issue and the spec it belongs to. Look for: requirements
not met, behaviour that contradicts a stated decision, work nobody asked for,
tests at seams the spec did not place, and tests that would pass whatever the
code did.

**Read the task's conditions one by one against the `Guarded conditions` list the
build hands up** — the condition, what was broken, which target ran, what came
back. On a pull request that already exists, the same list is in its body. A condition with no entry is a finding, and so is an entry whose red
came from somewhere other than the broken condition: an import error, a missing
fixture, a command refused before it ran. A missing list is itself the finding,
not a reason to skip this. This lens is where a check standing beside its
condition was caught the last time, by a reviewer breaking the code by hand; the
list is what makes that reading cheap instead of lucky.

## The lenses that run when they apply

Add one reviewer per lens the change touches. Judge this from the diff, not from
the task description — if the diff contains it, the lens runs.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text mark`

**Unattended, a stated reason buys no exception, and the form of what may be said
instead is fixed.** Where the trigger is in the diff, the lens runs. Where it is
not, the one thing that may be said about the lens that did not run is **the
trigger's own words, negated, item by item** — "the diff contains no schema and
no stored-format change" against a trigger reading "any schema or stored-format
change". Not a paraphrase of it, not a narrowing of it, and not what its absence
means. Anyone holding the diff can then check that sentence against the diff and
against the trigger printed above it. That is the point of the form: unattended
nobody reads it at the time, so it has to survive being read later by somebody
who was not there.

**A judgement is what this rules out first, and it is the easy half to see.**
Measured on 9 September 2026: a lens left out because there was "no new input,
path or network surface". "Surface" appears in no trigger, three of that trigger's
items — credential, permission, database — go unmentioned, and what a change means
for whoever might attack it is not a fact about the diff at all. Attended, a
judgement like that at least reaches somebody who can contradict it; unattended
nothing separates a lens correctly ruled out from one talked out of the way.

**The harder half is a fact that answers a different question.** "The diff adds
no new error handling" is a fact, it is about the diff's content, and anybody can
check it — and it is still not admissible, because the trigger reads "**any**
error handling, fallback value, or default return". A diff that changes an
existing default return makes that sentence true while the lens still applies. So
the form is the trigger's words rather than merely a fact: a true fact about the
diff is no answer to a question it was not asked.

Measured on 6 and 7 September 2026: two tasks went through three lenses instead
of five, security and failure behaviour left out with a reason given for each,
while a file path arriving from outside and a default return stood in those very
diffs.

- **Security** — any input from outside, credential, permission, file path, or
  anything reaching a network or a database.
- **Data migration** — any schema or stored-format change.
- **Test quality** — any test added or changed.
- **Failure behaviour** — any error handling, fallback value, or default return.

## Run them

One subagent per lens, in parallel, each given only its own lens and the diff.
A reviewer that sees the other lenses starts prioritising across them.

**Say both numbers in one sentence as they start: how many lenses apply, and how
many reviewers are being started.** Done right the two are the same number, so
the right case reads as nothing at all — "five lenses, five reviewers" — and the
wrong one stands there as "five lenses, two reviewers". **That is the whole
purpose of putting them side by side: to spare the reader work rather than give
them any.** Today the lens count sits in one sentence and the reviewers that
actually started are somewhere else, so the wrong case shows only to somebody who
goes and holds the two against each other. In one sentence it is a glance instead
of a comparison. Do not later shorten it to one number: a single number is what
hid this over two tasks.

**And this is not enforcement, and must not be built up as though it were.**
Nobody reads that sentence in an unattended run. It works when a person reads the
report afterwards, and not before — it makes the failure legible to whoever does
look, and nothing anywhere checks it.

If a reviewer fails to return, say so and either rerun it or state which lens did
not run. Never present a comparison that is quietly one lens short.

## Report

One section per lens, in the order above. Under each: the findings, worst first,
and the single worst one named.

**Then stop, and stop means all three of these.** No sentence after the last
lens. No verdict over the whole thing — no cross-lens ranking, no "looks good
overall", and above all nothing about what happens next. **"No findings.
Merging." is the exact failure**: a reviewer settling something a reviewer does
not decide, one line above the question that was supposed to decide it. Whether
this lands is asked separately, by the step that owns that gate, and a report
that has already named the outcome turns that question into a formality. Do not
open the pull request here either — that belongs to the same step.

If a lens found nothing, say that lens found nothing. That is a result, not an
absence, and it is the end of that section.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text restate`

## What happens to a finding

- **Fix it now** if the fix is obvious and revisits nothing that was decided: a
  missed error type, a wrong branch, a check that cannot fail.

  Fixing means **removing or replacing** — never rewriting a line that carries
  behaviour. Deleting a dead credential is a fix; tidying the URL next to it
  while you are there is a change, and it belongs in a finding no matter how
  small it looks. That exact slip happened here: removing a hardcoded key also
  rewrote the query string beside it, and broke it.
- **File it as an issue** if fixing it would revisit a design decision, change an
  interface, or exceed the task. Say what you filed and why, and **label it
  `raised-here`** — it came out of this work, not from outside, and nothing else
  in the issue carries that.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text criterion`

**A finding against something the task issue itself asked for is never fixed
silently.** A condition the issue names, a test decision it records: where the
finding is that one of those is missing or unmet, **the destination does not
change** — the fix is usually obvious and the first half sends it there — but it
is named as a finding against the task's own terms when the split is announced.
That naming is what the caller's close then carries; **it does not go into the
report above**, which still stops at the last lens and says nothing after it.
This is a duty to say so, not a second route to the
issue tracker. On pull request 27 a byte-for-byte regression test the task's own
Test Decisions had asked for was missing; it went through among the mechanical
ones and reached the close as nothing at all.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text finding-not-in-conversation`

## Refactoring

This is where it belongs — not in the build loop, where a rewrite makes it
impossible to tell whether a test went green because of the fix or the rewrite.
Propose it as a finding like any other.

---

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text closing`
