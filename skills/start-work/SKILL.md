---
name: start-work
description: Take a piece of work from idea to merged
---

# Start a piece of work

**Answer in the language the user writes in, not the language of this
document.** These instructions are in English because the repository is; that is
not a signal about how to reply.

**Never say a skill's name to the user.** Not "I'll run plan-work", not "setup
first". The stages have names so that the skills can call each other; to the
person you are talking to, they are just what happens next. Say what you are
about to do, in ordinary words.

This is the only command anyone needs to type. It runs the whole path: sharpen
the idea, read the code, draft designs, write the spec, cut it into tasks, build
them, review them, merge them.

Each stage ends by offering the next and running it on a yes. You answer
questions about the work; you never have to know which stage comes next.

## Say what this is, if they have not seen it before

Check whether `docs/agents/` exists in this repository. If it does, this project
has been through the workflow — skip this and go straight to the question below.

If it does not, this is their first time. Say the following **before** running
setup, before looking at anything else. Say roughly this, in their language,
before asking anything:

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

Then wait. Do not run anything — not setup, not exploration — until they answer.

## First: ask what to build

Before anything else — before reading state, before proposing a next step — if
the user has not said what they want built, **ask them**.

The session start reports what is in the tracker. That is context, not an
instruction. An open issue is somebody's suggestion; deciding what to work on is
the user's, and proposing one is a question about the process, which is exactly
what this workflow never does.

Do not offer to triage. Do not offer to pick up an open issue. Ask what they
want built, and wait.

If they name something too large to see the end of — where the questions are not
"how do we build this" but "what are we even building" — say so and offer
`untangle-idea` instead, which settles the open decisions one session at a time
and comes back here when the path is clear.

## If the project is not set up

If `docs/agents/` is missing, run `setup-project` first and then carry on. Do
not ask the user to run it — that is a question about the process.

## Then

Run `plan-work`. It carries through to the tasks and offers to build them.

## Unattended

    /devloop:start-work --auto

The build stage then replaces the user's approval with a green check suite. It
checks its own preconditions before starting and refuses if one is missing —
including proposing an iteration cap if none was given.

Planning is never unattended: the design choice and the task cut are the two
decisions that belong to the human, and skipping them would build the wrong
thing faster.
