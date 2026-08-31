---
name: review-changes
description: Review a change from several angles at once
---

# Review a change

**Answer in the language the user writes in, not the language of this document.**
These instructions are in English because the repository is; that is not a signal
about how to reply. It slips most often on the lines that are not really talk — a
progress note, a step ticked off, a count reported back. Those are said to a
person too. **A slash command is not a language signal.** When nothing the user has written
shows their language, take it from what is already in front of you — their own
instructions file if it is in your context, otherwise this project's documents —
and then hold that one choice for the whole turn: prose, progress lines,
question headers and option labels alike. Measured on 25 August 2026, one run
wrote its prose in English and its question in German in the same turn. Switch
the moment they write in another language, and never mix two inside one message.
The same holds for how you address them, and two different things are at stake.
Number is a fact: one person is being helped through their own work, so where a
language marks singular and plural in address, it is the singular — the same run
addressed that one person as a group halfway through. Register is set, not
chosen: where a language has a familiar and a formal form of address, it is
always the familiar one — `du` and not `Sie`, `tú` and not `usted`, `sinä` and
not `te` — held from the first sentence to the last. That is about the pair a
language offers, not about reaching for the most casual register it has.

**Never say a skill's name to the user.** The stages have names so the skills can
call each other; to the person in front of you they are just what happens next.

Several reviewers run in parallel, each with exactly one lens. **Their findings
are never merged, ranked against each other, or reduced to a single verdict.**
That separation is the whole point: one lens looking for one kind of problem
finds things a general review walks past, and ranking across lenses lets the
loudest kind bury the quietest.

Read `docs/agents/checks.md` and `docs/agents/standards.md` first.

**Write into the issue tracker in English** — titles, bodies, comments. A finding
filed as an issue goes there too. The tracker is part of the project and outlives
this conversation. Speak to the user in their own language; that is a different
thing.

**If a command this skill needs is missing from `docs/agents/`, say so.** Those
files were written when the project was set up and the template has moved on
since. Do not improvise a replacement — an invented query that returns something
plausible is worse than no answer, because nobody can tell it went wrong. Name
the file, say what is missing, and offer to bring it up to date.

**A seam is a place where this work is checked** — a function boundary, a module
edge, an entry point. The spec names them and the user confirms them; nothing is
tested at an unconfirmed seam.

**A condition is what a task promises will be true when it is done** — stated so
that it can be false, and so that breaking it can be seen. The seam says where it
is checked; the condition says what is checked there. **A check guards a
condition only where breaking that condition turns the check red**, and a run
that has not seen that red knows nothing about which of the two it has.

## When a command does not answer

**A command whose output does not come back is reported.** Name the command as
it was run and the message that came back in its place. One second attempt is
allowed and needs no announcement; where it answers, the run carries on with
that answer and reports the first refusal beside it. A silent retry is what lets
a run come out looking clean while a step of it never ran — measured on 31
August 2026: a command refused by the runtime's permission check, whose message
asks in so many words for a pause and an explanation of what the permission is
for, repeated without a word, answered the second time, and named in no report
until a question about something else turned it up. The refusal itself is
nothing this workflow decides and nothing to apologise for. Hiding it is the
defect.

**Nothing is concluded from an answer that did not come.** Where the output
would have decided something — the state of a pull request, whether a gate
exists, whether a check passed — silence decides nothing, and it is not the
nearest value in the list. Say the query did not answer, name the command and
the message, and stop short of the conclusion rather than picking the case that
lets the run carry on. Never substitute a different command without saying that
the first one did not answer. Where the user is there, hand it over as something
they can act on: the permission is theirs to grant and the command theirs to
run.

**An empty answer is not silence.** A command that ran and returned nothing has
answered — no match, no open issue, an empty list, a clean working tree — and
that is evidence, used as evidence: every negative this workflow states rests on
such a command. The line runs between an answer that is empty and an answer that
never came, and the test is whether emptiness is one of the answers the question
has: a list can be empty, while a field every object of its kind carries cannot
come back absent, so nothing where a value was asked for is the read having
failed rather than the object lacking one. An error is an answer too, read for
what it says — a 404 whose body reads "Branch not protected", a check that comes
back red, a push that was rejected. None of those is a command that did not
answer.

**A guard's refusal is one of these, and its message says what to do**; doing
that is the report. A re-read a skill prescribes is not a second attempt either:
waiting ten seconds for a value that moves is an instruction being followed, not
a command being retried.

**With nobody there to tell, the report is still written.** An unattended run
has no one to explain a permission to, so the command and the message go into
its own report and it stops there, rather than carrying on past a step that did
not run. That a permission prompt appeared at all is a finding in itself: the
tool classes the run needed were not all approved before it started.

## Pin the target

Establish exactly what is under review — the diff between the branch and the main
branch, at the current commit. Say which commits it covers. Everything below
looks at that, not at the working tree, and not at whatever changed since.

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
tests at seams the spec did not confirm, and tests that would pass whatever the
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

- **Security** — any input from outside, credential, permission, file path, or
  anything reaching a network or a database.
- **Data migration** — any schema or stored-format change.
- **Test quality** — any test added or changed.
- **Failure behaviour** — any error handling, fallback value, or default return.

## Run them

One subagent per lens, in parallel, each given only its own lens and the diff.
A reviewer that sees the other lenses starts prioritising across them.

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

**Restate each lens in the language the user writes in.** A subagent hands its
findings back in whatever language it worked in; this report is read by a
person, so it is written in theirs. Assembling is not quoting.

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

Never leave a finding in the conversation, and never explain one away in the same
breath as naming it. A named defect stays open until fixed or explicitly deferred.

## Refactoring

This is where it belongs — not in the build loop, where a rewrite makes it
impossible to tell whether a test went green because of the fix or the rewrite.
Propose it as a finding like any other.

---

**Answer in the language the user writes in, not the language of this document.**
These instructions are in English because the repository is; that is not a signal
about how to reply. It slips most often on the lines that are not really talk — a
progress note, a step ticked off, a count reported back. Those are said to a
person too. This block is here twice, at the top of this file and at the
bottom, because everything between them is several hundred lines of English and
the last thing read carries the most weight. If you have just finished reading
this file, the next thing you write is the first sentence after the switch — it
is the one that slips. **A slash command is not a language signal.** When nothing the user has written
shows their language, take it from what is already in front of you — their own
instructions file if it is in your context, otherwise this project's documents —
and then hold that one choice for the whole turn: prose, progress lines,
question headers and option labels alike. Measured on 25 August 2026, one run
wrote its prose in English and its question in German in the same turn. Switch
the moment they write in another language, and never mix two inside one message.
The same holds for how you address them, and two different things are at stake.
Number is a fact: one person is being helped through their own work, so where a
language marks singular and plural in address, it is the singular — the same run
addressed that one person as a group halfway through. Register is set, not
chosen: where a language has a familiar and a formal form of address, it is
always the familiar one — `du` and not `Sie`, `tú` and not `usted`, `sinä` and
not `te` — held from the first sentence to the last. That is about the pair a
language offers, not about reaching for the most casual register it has.
