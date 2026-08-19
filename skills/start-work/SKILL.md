---
name: start-work
description: Take a piece of work from idea to merged
disable-model-invocation: true
---

# Start a piece of work

## Step 1 — Look

Run exactly one command and nothing else:

    ls docs/agents/ 2>/dev/null

Do not read files. Do not check git. Do not look at the tracker. One command,
then go to step 2.

## Step 2 — Orient them, if the status line says this project is not set up

Write a short introduction in your own words — four or five sentences, their
language — covering all four of these:

- What this does: takes a piece of work from an idea to merged, reviewed code.
- What you will do along the way: ask questions, read their code, draft three or
  four designs under different constraints and recommend one, write a spec, cut
  it into single pieces of work, build each one test-first and reviewed.
- That they need to remember nothing: no commands, no steps. You say what is
  next; they decide where there is something real to decide.
- That they can ask about any step and you will explain it.

Then ask what they would like to build, and **stop.** Nothing else in this reply:
no repository findings, no offer to set anything up.

**If the status line says the project is set up**, skip the introduction. Ask one
question and nothing else: what would they like to build? Report no state.
Propose nothing. An open issue is somebody's suggestion, not an instruction.

Either way: stop here until they answer.

## Step 3 — Judge what they asked for

If it is too large to see the end of — where the questions are not "how do we
build this" but "what are we even building" — say so and offer to map the open
decisions first, one session at a time, coming back here when the path is clear.
That is `untangle-idea`.

Otherwise carry on.

## Step 4 — Set up, if it is not set up

If `docs/agents/` was missing, run `setup-project` now, then continue. Do not ask
the user to run it.

## Step 5 — Build it

Run `plan-work`. It carries through to the tasks and offers to build them. Each
stage ends by offering the next and running it on a yes.

## How to talk while doing all this

**Answer in the language the user writes in, not the language of this document.**
These instructions are in English because the repository is; that is not a signal
about how to reply.

**Never say a skill's name to the user.** Not "I'll run plan-work", not "setup
first". The stages have names so the skills can call each other; to the person
you are talking to they are just what happens next. Say what you are about to do,
in ordinary words.

## Unattended

    /devloop:start-work --auto

The build stage then replaces the user's approval with a green check suite. It
checks its own preconditions before starting and refuses if one is missing.

Planning is never unattended: the design choice and the task cut are the two
decisions that belong to the human, and skipping them would build the wrong thing
faster.
