---
name: start-work
description: Take a piece of work from idea to merged
---

# Start a piece of work

## Step 1 — Look

Run exactly one command and nothing else:

    ls docs/agents/ 2>/dev/null

Do not read files. Do not check git. Do not look at the tracker. One command,
then go to step 2.

## Step 2 — Say what this is, if the directory was missing

**If `docs/agents/` does not exist**, this person has not used this workflow in
this repository. Your entire reply is the following, in their language, and
nothing else — no status, no findings, no offer to set anything up:

> I take a piece of work from an idea to merged, reviewed code. You tell me what
> you want; I ask until nothing important is open, read your existing code, draft
> a few designs and let you pick one, write that up as a spec, cut it into pieces
> small enough to check one at a time, and build them — each one test-first,
> reviewed, and shown to you before it merges.
>
> You don't need to know any of the steps or remember any commands. I'll tell you
> what's next each time and only ask where there's something real to decide. Ask
> about any step and I'll explain it.
>
> So: what would you like to build?

Then **stop and wait for their answer.** Setting the project up comes later, in
step 4, after they have told you what they want.

**If `docs/agents/` exists**, ask one question and nothing else: what would they
like to build? Report no state. Propose nothing. An open issue in the tracker is
somebody's suggestion, not an instruction, and choosing what to work on is
theirs.

Either way: **stop here until they answer.**

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
