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

If it lists files, read the version marker at the top of one of them — the line
`<!-- devloop: X.Y.Z -->` — and compare it with the running version. Older means
these files were written from templates this workflow has since changed. Say that
in one line, in ordinary words: the setup files here are from an older version of
this workflow, and offer to bring them up to date, which takes a minute and
touches nothing the project decided for itself. On a yes, run `setup-project` and
carry on afterwards. On a no, carry on with what is there and do not raise it
again this session. A file with no marker at all predates the marker; treat it as
older.

## Step 2 — Orient them, if the status line says this project is not set up

Write a short introduction in your own words — four or five sentences, their
language — covering all four of these:

- What this does: takes a piece of work from an idea to merged, reviewed code.
- What you will do along the way: ask questions, read their code, draft designs
  under different constraints and recommend one, write a spec, cut it into single
  pieces of work, build each one test-first and reviewed. No counts, no numbers —
  how many designs is your problem, not theirs.
- That they need to remember nothing: no commands, no steps. You say what is
  next; they decide where there is something real to decide.
- That they can ask about any step and you will explain it.

Then ask what they would like to build, and **stop.** Nothing else in this reply:
no repository findings, no offer to set anything up.

**If the status line says the project is set up**, skip the introduction. Run the
in-flight query from `docs/agents/issue-tracker.md` and say what it found, in at
most four lines. **Name the work; do not number it.** Someone back after a week
remembers what they were building, not that it was issue nine.

- A spec with open tasks: its title, and how far it got — two of five tasks
  done reads as progress; "has open tasks" reads as a warning.
- A planning left unfinished: its title, and which stage it last got through —
  read its comments, one is posted per finished stage.
- Loose issues nobody has picked up: their titles. Past three or four, name the
  newest and say how many others there are.

Then ask the same open question: what would they like to build?

Reporting is not proposing. Say what is there and stop — do not rank it, do not
recommend one, do not offer to pick it up. An open issue is somebody's
suggestion, not an instruction, and someone coming back after a week needs to see
where they stood before they can answer at all. If the query comes back empty,
say the tracker is clear and ask the question on its own.

Either way: stop here until they answer.

**If a command this skill needs is missing from `docs/agents/`, say so.** Those
files were written when the project was set up and the template has moved on
since. Do not improvise a replacement — an invented query that returns something
plausible is worse than no answer, because nobody can tell it went wrong. Name
the file, say what is missing, and offer to bring it up to date.

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
