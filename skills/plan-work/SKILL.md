---
name: plan-work
description: Turn an idea into a specced piece of work
---

# Plan a piece of work

**Answer in the language the user writes in, not the language of this
document.** These instructions are in English because the repository is; that is not a signal about how to reply.

**Never say a skill's name to the user.** The stages have names so the skills can
call each other; to the person in front of you they are just what happens next.

Four stages, each building on what the previous one established. Run them in one
session where you can. The issue tracker carries the state between them, so an
interrupted session costs the stage you were in, not all four.

The output is a spec in the issue tracker. No code is written here.

If `docs/agents/` is missing, this project is not set up. **Say in one line what
you are doing and run `setup-project`. Do not ask.** There is nothing to decide:
without a tracker there is nowhere to put a spec, so the only other answer is to
abandon what the user just asked for. Do not improvise around it either.

**Write into the issue tracker in English** — titles, bodies, comments. The
tracker is part of the project and outlives this conversation. Speak to the user
in their own language; that is a different thing.

**If a command this skill needs is missing from `docs/agents/`, say so.** Those
files were written when the project was set up and the template has moved on
since. Do not improvise a replacement — an invented query that returns something
plausible is worse than no answer, because nobody can tell it went wrong. Name
the file, say what is missing, and offer to bring it up to date.

## The planning issue

**At the start**, before Stage 1, there has to be a planning issue.

If the work already has an issue — someone filed it, a review left it behind —
use that one rather than creating a duplicate. Copy its current body into a
comment first, so nothing anybody wrote disappears, then replace the body with
the placeholder. Otherwise create a fresh issue, titled after the work in the
user's own words.

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

Before Stage 1, ask the tracker for open issues labelled `being-planned`.

- **None** — start fresh.
- **Exactly one** — name its title and ask whether this is the same work or
  something new. Do not decide that by matching words against the title.
- **Several** — list their titles and ask which one, or whether this is new.

If it is the same work, read the issue and its comments, say which stage was last
finished, and continue at the next one. Do not repeat a finished stage. Stage 2's
report is a summary, so re-read any code you need to act on rather than trusting
the summary to be complete.

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

## Stage 1 — Sharpen the idea

Map the open decisions as a tree. Each round, ask what is answerable **now** —
numbered, each with your recommended answer so a single word can settle it. Say
roughly how many rounds you expect. Then wait. The answers open the next round.
Done when nothing important is open.

**At most three questions in a round, and something that needs weighing goes
alone.** A question answerable in one word from your recommendation is a
checklist item; several of those together cost the user nothing. A question they
have to think about is not, and putting six of those in one block means they skim
and take the recommendations — which gathers no decisions at all, only agreement
with your own answers, and teaches them to wave through the one question that
mattered. Three is a ceiling, not a target.

Two things are not the user's job:

- **Facts.** Anything in the repository, the docs, or on the web you look up
  yourself. If the answer needs a primary source you do not have, run `research`
  in the background and carry on.
- **Terms.** When a word contradicts the glossary, or means three things at once,
  say so and propose a precise one. What gets settled goes into the glossary
  immediately, not collected for later. `docs/agents/domain.md` says where this
  project keeps its glossary and its decision records — read it before writing
  either, rather than guessing the location.

If a question cannot be settled in conversation because it needs something running
to look at — a state model, a flow, an interface someone has to see — stop and
offer to build a throwaway prototype. Do not start one unasked; it costs real
time. On a no the question is still open: either settle it on their word and
record that it was decided without seeing anything, or carry it into the spec as
undecided. Do not quietly pick one and move on.

When a decision is hard to reverse, would surprise someone without the reasoning,
and came out of a real trade-off, offer a decision record. Only then.

Post the settled answers as a comment on the planning issue before moving on.

## Stage 2 — Read the code

Read-only. Change nothing, commit nothing.

Establish what actually exists where this work will land: the modules involved,
their current interfaces, how similar things are already done here, what the tests
around them look like. Verify at the code itself — a summary of a summary
occasionally inverts what the code does.

Skip this stage if there is no code yet, and say that you skipped it.

Report what you found in at most fifteen lines. This is input to the next stage,
not a deliverable.

Post that report as a comment on the planning issue.

## Stage 3 — Draft designs

First write the problem space down and give it to the user to read: what any
design must satisfy, what it depends on, and a rough sketch so the constraints are
concrete. They read while the drafting runs.

Then draft **three or four designs in parallel, each under a different
constraint**:

- the smallest possible interface
- the most flexible
- optimised for the most common caller
- cleanest separation between the parts that change and the parts that do not

Each draft returns the same five things: the interface, an example of using it,
what stays hidden behind it, how it handles its dependencies, and its trade-offs.

Present them one after another, then compare them in prose — on how much behaviour
each hides behind how small an interface, on how localised a future change would
be, and on where each puts the seams.

**End with one recommendation, not a menu.** The user wants a strong read. Then
they choose.

Two things this stage also settles:

- **The seams** — the places where this work will be checked. Prefer seams that
  already exist to new ones, and use the highest one that still catches what
  matters. Confirm them with the user; nothing gets tested at an unconfirmed seam.
- **The ground under the decision records** this design leans on. Each record
  carries a line saying what would make it invalid. Check those lines. If one no
  longer holds, say so and stop — do not extend a decision whose basis is gone.
  Say what it would take to go on: that decision has to be made again, now, on
  what is true today. Offer to do that here rather than leaving them stranded.

**Do not start writing anything until the user has picked a design.**

If a drafting agent fails, say so and either rerun it or state that the comparison
is one design short. Never compare silently around a missing draft.

Only after the design is picked, put the seams to the user as their own question —
the seam follows from the design, so it cannot be settled before.

Post the chosen design, the reasoning for it, and the confirmed seams as a comment
on the planning issue.

## Stage 4 — Write the spec

No new questions. Write down what was decided, in these sections:

- **Problem** — from the user's point of view, not the code's.
- **Solution** — from the user's point of view.
- **User stories** — a long list, one line each, covering the ordinary path, the
  edges, and the failures.
- **Implementation decisions** — the design that was chosen, the modules built or
  changed, their interfaces, schema changes, contracts. Taken from Stage 3, not
  invented here.
- **Test decisions** — the confirmed seams and what gets checked at each.
- **Out of scope** — what someone might reasonably expect and will not get.
- **Missing checks** — any class in `checks.md` this work would need and that is
  not `filled`, and whether landing this work requires filling it first.

Write it into the body of the planning issue, replacing the placeholder line, and
remove the `being-planned` label. Put no build label in its place: nobody builds
a spec, and readiness for the tasks under it is a blocker query. The commands are
in `docs/agents/issue-tracker.md`.

## Close

Report the spec's issue number and one line on what it covers.

Then say you are cutting it into tasks, and do it — run `cut-into-tasks`. Say
what that means in plain words: single pieces of work, each one demonstrable on
its own, in an order. Do not ask permission first. The decision here is the
split itself, and that comes back for confirmation before anything is created.
