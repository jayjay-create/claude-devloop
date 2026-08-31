---
name: record-lessons
description: Write down what went wrong so it does not repeat
disable-model-invocation: true
---

# Record what went wrong

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

Turn a failure into something that prevents the next one. Run at the end of a
build run, or whenever the user asks.

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

## What counts as a lesson

Not every finding. A defect the checks caught is the system working — recording a
rule about it adds weight and prevents nothing.

Record it when one of these holds:

- **It happened a second time.** One occurrence is an accident; two is a pattern.
- **No check could have caught it.** Nothing in `checks.md` was ever going to see
  it, so only a written rule stands between it and the next repetition.

Everything else stays where it is: fixed, or filed as an issue.

## Where it goes

**The lesson goes in the file that would have prevented it.** Ask what someone
would have had to read to avoid this, and write it there:

| The failure was | Where it goes |
|---|---|
| A rule this project holds that nobody wrote down | `docs/agents/standards.md` |
| Something a check should catch and does not | the "what these checks do not cover" section of `docs/agents/checks.md` |
| Something unclear about running the project locally | `docs/agents/environment.md` |
| A decision that keeps getting revisited | a decision record |

Before recording anything about the workflow behaving oddly, check that the
version you are testing is the version you changed. A conclusion drawn from a
stale installed copy is not a lesson; it is noise, and filing it makes the next
person chase the same ghost.

If no file in this project would have prevented it, the workflow itself let it
through. **File an issue against the workflow's own repository** — do not edit a
skill mid-run. A skill that rewrites itself while working cannot be reviewed, and
the change would be invisible to everyone else using it.

### When this repository is the workflow

You are inside the workflow's own repository when `.claude-plugin/plugin.json`
exists and names this plugin. Check that before anything else here, because two
things then change: the table above points at files that do not exist, and the
rule just above collapses — filing an issue against the workflow's own repository
means filing it here.

Write the lesson where whoever builds the workflow would read it:

| The failure was | Where it goes |
|---|---|
| A rule about how a skill must be written, or a property of the environment somebody measured | `docs/skill-conventions.md` |
| Something missing or known to be broken | the "Known gaps" section of `docs/roadmap.md` |
| A name that should not be proposed again | the "Names that were rejected" section of `docs/roadmap.md` |
| Something a user of the plugin needs to know | `README.md` |

The README is the last resort, not the first. It is written for people who
install the plugin, not for whoever builds it, so a lesson about building belongs
under `docs/`.

Not editing a skill mid-run holds harder here, not less, because editing skills is
what this repository is for. Record the lesson, then let a branch and a pull
request carry the change. Do not lean on the guard that normally stops writes to
the main branch: it needs `docs/agents/`, this repository has none, so devloop's
own hooks stay inert in it.

## How to write one

One or two lines. What goes wrong, and what to do instead. Not the story of how
it was discovered — that is in the git history and the issue.

Write the rule, not the incident: "every check target must be able to fail; prove
it before marking it filled" outlives "the format target passed on broken code
that one time".

## Clear out as you go

Every rule is read again on every review. A list that only grows makes each
individual rule less visible and every review slower.

So before adding, remove: a rule a tool now enforces, a rule about code that no
longer exists, a rule nothing has bumped into for a long time. Say what you
removed and why — a rule quietly disappearing is worse than one that stays.

## Close

Say what you recorded, where, and what you removed. If you filed an issue against
the workflow, say what it asks for.

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
