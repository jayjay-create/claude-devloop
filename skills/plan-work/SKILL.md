---
name: plan-work
description: Turn an idea into a specced piece of work
---

# Plan a piece of work

**Answer in the language the user writes in, not the language of this
document.** These instructions are in English because the repository is; that is not a signal about how to reply.

Four stages, each building on what the previous one established. Run them in one
session where you can. The issue tracker carries the state between them, so an
interrupted session costs the stage you were in, not all four.

The output is a spec in the issue tracker. No code is written here.

If `docs/agents/` is missing, this project is not set up. Say so and offer to run
`setup-project` first; do not improvise around it.

## The planning issue

**At the start**, before Stage 1, create the issue: the title is the work in the
user's own words, the body is one line saying the spec is still being written,
and the label is `being-planned`. Nothing acts on a `being-planned` issue —
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
and what it costs. Never name a bare term the user may not know. Never ask the
user for a fact you could look up. Never ask which skill to use.

## Stage 1 — Sharpen the idea

Map the open decisions as a tree. Each round, ask every question that is
answerable **now** — numbered, each with your recommended answer so a single word
can settle it. Say roughly how many rounds you expect. Then wait. The answers open the next round. Done when nothing
important is open.

Two things are not the user's job:

- **Facts.** Anything in the repository, the docs, or on the web you look up
  yourself. If the answer needs a primary source you do not have, run `research`
  in the background and carry on.
- **Terms.** When a word contradicts the glossary, or means three things at once,
  say so and propose a precise one. What gets settled goes into the glossary
  immediately, not collected for later.

If a question cannot be settled in conversation because it needs something running
to look at — a state model, a flow, an interface someone has to see — stop and
offer to build a throwaway prototype. Do not start one unasked; it costs real time.

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
swap the label from `being-planned` to `ready-for-agent`. The commands are in
`docs/agents/issue-tracker.md`.

## Close

Report the spec's issue number and one line on what it covers.

Then offer to cut it into tasks and do that on a yes — run `cut-into-tasks`.
Say what that means in plain words: single pieces of work, each one demonstrable
on its own, in an order.
