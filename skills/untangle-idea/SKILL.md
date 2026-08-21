---
name: untangle-idea
description: Map the open decisions in something too big
---

# Untangle an idea that is too big to build

**Answer in the language the user writes in, not the language of this
document.** These instructions are in English because the repository is; that is not a signal about how to reply.

**Never say a skill's name to the user.** The stages have names so the skills can
call each other; to the person in front of you they are just what happens next.

A loose idea has arrived — too big for one agent session, and wrapped in fog: the
way from here to the **destination** isn't visible yet. Finding that way is the
job, not charging at the destination. This skill charts the way as a **shared
map** on the repo's issue tracker, then works its **decision tickets** —
questions whose resolution is a decision, not slices of a build to execute — one
at a time until the route is clear.

The destination varies per effort, and naming it is the first act of charting —
it shapes every ticket. It might be a spec to hand off and iterate on, a decision
to lock before planning starts, or a change made in place like a data-structure
migration. The map is domain-agnostic — engineering work, course content,
whatever fits the shape.

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

## Plan, don't do

This is **planning** by default: each ticket resolves a decision, and the map is
done when the way is clear — nothing left to decide before someone goes and does
the thing. The pull to just do the work is usually the signal you've reached the
edge of the map and it's time to hand off. An effort can override this in its
**Notes** — carrying execution into the map itself — but absent that, produce
decisions, not deliverables.

## Refer by name

Every map and ticket is an issue, so it has a **name** — its title. In everything
the human reads — narration, the map's Decisions-so-far — refer to it by that
name, never by a bare id, number, or slug. A wall of `#42, #43, #44` is
illegible; names read at a glance. The id and URL don't vanish — a name wraps its
link — but they ride _inside_ the name, never stand in for it.

**Write into the issue tracker in English** — titles, bodies, comments. The
tracker is part of the project and outlives this conversation. Speak to the user
in their own language; that is a different thing.

**If a command this skill needs is missing from `docs/agents/`, say so.** Those
files were written when the project was set up and the template has moved on
since. Do not improvise a replacement — an invented query that returns something
plausible is worse than no answer, because nobody can tell it went wrong. Name
the file, say what is missing, and offer to bring it up to date.

## The Map

The map is a single issue on this repo's issue tracker, labelled `untangle:map` —
the canonical artifact. Its tickets are child issues of the map.

The map is an **index**, not a store. It lists the decisions made and points at
the tickets that hold their detail; a decision lives in exactly one place — its
ticket — so the map never restates it, only gists it and links.

**Where the map, its child tickets, blocking, and frontier queries physically
live is tracker-specific.** This project's tracker and its exact commands are in
`docs/agents/issue-tracker.md`, under **Ordering work** — how to attach a child
issue, how to record that one waits for another, and how to ask which are ready.
If `docs/agents/` is missing, this project is not set up. **Say in one line what
you are doing and run `setup-project`. Do not ask.** There is nothing to decide:
without a tracker there is nowhere to put a map or a ticket, so the only other
answer is to abandon what the user just asked for. Do not improvise around it
either — there is no local-markdown fallback here — a tracker with no queryable blocking relationship
stops the setup, so by the time you are reading this the tracker has one.

### The map body

The whole map at low resolution, loaded once per session. Open tickets are **not**
listed — they are open child issues, found by query.

```markdown
## Destination

<what reaching the end of this map looks like — the spec, decision, or change this effort is finding its way to. One or two lines; every session orients to it before choosing a ticket.>

## Notes

<domain; skills every session should consult; standing preferences for this effort>

## Decisions so far

<!-- the index — one line per closed ticket: enough to judge relevance, then zoom the link for the detail the ticket holds -->

- [<closed ticket title>](link) — <one-line gist of the answer>

## Not yet specified

<!-- see "Fog of war": in-scope fog you can't ticket yet; graduates as the frontier advances -->

## Out of scope

<!-- see "Out of scope": work ruled beyond the destination; closed, never graduates -->
```

### Tickets

Each ticket is a **child issue** of the map; the tracker's issue id is its
identity. Its body is the question, sized to one 100K token agent session:

```markdown
## Question

<the decision or investigation this ticket resolves>
```

Each ticket carries an `untangle:<type>` label — one of `research`, `prototype`,
`interview`, `task` (see [Ticket Types](#ticket-types)).

A session **claims** a ticket by assigning it to the dev driving the map,
**first**, before any work, so concurrent sessions skip it. That assignee _is_ the
claim: an open, unassigned ticket is unclaimed.

Blocking uses the tracker's **native** dependency relationship — essential
because it renders the frontier _visually_ in the tracker's own UI, so the human
sees what's takeable without opening the map. A ticket is **unblocked** when
every ticket blocking it is closed; the **frontier** is the open, unblocked,
unclaimed children — the edge of the known.

The answer isn't part of the body — it's recorded on resolution (see [Work
through the map](#work-through-the-map)). Assets created while resolving a ticket
are linked from the issue, not pasted in.

## The interview

Both modes below run the same interview. Where a step says to interview, this is
what it means. It is written out here rather than delegated, because a skill that
only delegates is reported upstream to load half its dependencies and then guess
at the rest.

Map the open decisions as a **tree**: every decision branches into the decisions
that hang off it. Work the tree in **rounds**. The **frontier** is every decision
whose prerequisites are already settled — the questions answerable _now_, without
guessing at answers you haven't heard yet. Ask the whole frontier in one round,
then wait. A question whose answer depends on another question still open in this
round belongs to a _later_ round, not this one.

**At most three questions in a round, and something that needs weighing goes
alone.** A question answerable in one word from your recommendation is a
checklist item; several of those together cost the user nothing. A question they
have to think about is not, and putting six of those in one block means they skim
and take the recommendations — which gathers no decisions at all, only agreement
with your own answers, and teaches them to wave through the one question that
mattered. Three is a ceiling, not a target.

Say roughly how many rounds you expect. Number each question and give your
recommended answer, so a single word can settle it:

    Q1 — <what is being decided>: <the question; what each answer means in
    practice, what it costs, and why it comes up now>

    Recommendation: <your answer, and why>

Never name a bare term the user may not know. Someone who has never heard of this
workflow must be able to answer.

**Facts are your job, never the user's.** Anything in the repository, the docs, or
on the web, you look up yourself. When a frontier question needs a fact from the
environment, dispatch a subagent to find it — and do not block on it: only the
questions downstream of that fact wait, so ask the rest of the frontier now. If a
fact needs a primary source you do not have, call the Skill tool with `research`
in the background and carry on. The **decisions** are the user's: put each to
them and wait.

**Terms are settled as they come up.** `docs/agents/domain.md` says where this
project keeps its glossary and its decision records. While you interview:

- When a term the user uses conflicts with the glossary, say so at once and ask
  which of the two they mean.
- When a term is vague or means several things at once, propose one precise word
  for it.
- Stress-test relationships with concrete scenarios that probe the edges between
  concepts.
- When the user states how something works, check the code. Where the code
  disagrees, surface the contradiction and ask which is right.
- The moment a term resolves, write it into the glossary. Do not collect them for
  the end. The glossary is vocabulary and nothing else — no implementation
  detail, no spec, no scratch notes.

**Offer a decision record only when all three hold**: the decision is hard to
reverse, it would surprise a later reader who does not know the reasoning, and it
came out of a real trade-off with genuine alternatives. If one of the three is
missing, skip it. Most sessions produce none, and that is the design working.

Some questions cannot be settled by talking — how something should look, how an
interaction should feel. They need something to react to. When you hit one, stop
interviewing and offer a throwaway prototype; do not start one unasked, it costs
real time.

The interview is done when the frontier is empty: every branch of the tree
visited, nothing left silently assumed. Do not act on it until the user confirms
you have reached a shared understanding.

## Ticket Types

**Choose the type for each ticket; do not fall into one.** Ask in this order, and
take the first that fits: is the answer somewhere outside this repository, in
documentation or a third-party API — research. Does the question turn on how
something looks or behaves, so that nobody can judge it without seeing it —
prototype. Does something have to be done before the question can even be
discussed — task. Only what none of those fit is an interview.

**A question can need both reading and deciding** — which framework to build on
is the standard case: nobody holds the current state of an ecosystem in their
head, and the choice is still the user's. Those are two tickets, not one. The
research ticket asks what the options are today and what each costs; the
interview ticket that follows it asks which one, and is blocked on it. Folding
them into one interview asks the user to go and read something, which is the
failure the types exist to prevent.

Getting this wrong is invisible and expensive: a research question put to the
user asks them for something they would have to go and read, and a look-and-feel
question settled in conversation gets an answer nobody has seen. If every ticket
on a map came out an interview, that is worth a second look before creating them.

Every ticket is either **HITL** — human in the loop, worked _with_ a human who
speaks for themselves — or **AFK**, driven by the agent alone. A HITL ticket only
resolves through that live exchange; the agent never stands in for the human's
side of it (an interview whose questions the agent answers itself has broken
this).

- **Research** (AFK): Reading documentation, third-party APIs, or local resources
  like knowledge bases to surface a fact a decision waits on. Resolved by a
  subagent that calls the Skill tool with `research`. Use when knowledge outside
  the current working directory is required.
- **Prototype** (HITL): Raise the fidelity of the discussion by making a cheap,
  rough, concrete artifact to react to — an outline, a rough take, a stub, or
  UI/logic code, by calling the Skill tool with `build-prototype`. Links the
  prototype as an asset. Use when "how should it look" or "how should it behave"
  is the key question.
- **Interview** (HITL): Conversation, where the answer is a judgement only this
  person can make and nothing has to be read or seen first. The fallback, not the
  starting assumption. Run [The interview](#the-interview).
- **Task** (HITL or AFK): Manual work that must happen before a _decision_ can be
  made — nothing to decide, prototype, or research, but the discussion is blocked
  until it's done. Signing up for a service so its API can be judged,
  provisioning access, moving data so its shape can be seen. This is the one type
  that _does_ rather than decides — and it earns its place by unblocking a
  decision, not by delivering the destination. The agent drives it alone where it
  can (AFK); otherwise it hands the human a precise checklist (HITL). Resolved
  when the work is done; the answer records what was done and any resulting facts
  (credentials location, new URLs, row counts) later tickets depend on.

**If a tracker operation fails, say so.** Attaching a sub-issue, recording a
blocker, closing a ticket: each one either happened or it did not. A map that
looks complete while one of its blocking edges silently never landed is worse
than one that is visibly incomplete, because the frontier query will hand out a
ticket that was supposed to be blocked. Name what failed and stop there.

**If `research` or `build-prototype` is not installed, say so and stop that
ticket** — and say what would unblock it: installing that skill, or resolving the
ticket a different way, which is the user's call. The rest of the map is
unaffected; only this ticket waits. Do not silently substitute another and do not improvise the stage
yourself — a ticket resolved by the wrong method looks identical to one resolved
by the right one, and nothing downstream can tell them apart.

## Fog of war

The map is _deliberately_ incomplete: don't chart what you can't yet see. Beyond
the live tickets lies the **fog of war** — the dim view of decisions and
investigations you can tell are coming but can't yet pin down, because they hang
on questions still open. Resolving a ticket clears the fog ahead of it,
graduating whatever's now specifiable into fresh tickets — one at a time, until
the way to the destination is clear and no tickets remain.

The map's **Not yet specified** section is where that dim view is written down:
the suspected question, the area to revisit later. It's the undiscovered frontier
_toward_ the destination — everything here is in scope, just not sharp enough to
ticket. Write as loosely or as fully as the view allows; it doubles as a signpost
for collaborators reading where the effort is headed.

**Fog or ticket?** The test is whether you can state the question precisely now —
_not_ whether you can answer it now.

- **Ticket when** the question is already sharp — even if it's blocked and you
  can't act on it yet. **"That depends on X" is a blocker, not fog.** It is the
  most common way a perfectly sharp question gets left uncharted: how it should
  look depends on the platform, which stack to use depends on the platform, where
  to host depends on the storage — every one of those is a question you can
  already write down in one line, so every one is a ticket, blocked on the
  ticket it depends on. Fog is when you cannot yet say what the question _is_.
- **Not yet specified when** you can't yet phrase it that sharply. Don't
  pre-slice the fog into ticket-sized pieces: it's coarser than a ticket, and one
  patch may graduate into several tickets, or none, once the frontier reaches it.

**Not yet specified** excludes what's already decided (Decisions so far), what's
already a live ticket, and what's out of scope (the next section).

## Out of scope

Fog only ever gathers _toward_ the destination. The destination fixes the scope,
so work beyond it is **out of scope** — it isn't fog, and it doesn't belong in
**Not yet specified**. It gets its own **Out of scope** section on the map: work
you've consciously ruled out of _this_ effort. Scope, not sharpness, lands it
here.

Out-of-scope work never graduates — the frontier stops at the destination — so it
returns only if the destination is redrawn, and then as a fresh effort, not a
resumption.

Ruling something out of scope is a scoping act, not a step on the route. When a
ticket that already exists turns out to sit past the destination — mis-scoped in
while charting, or exposed by a resolution — **close it** (a closed ticket is
unambiguously off the frontier) and leave one line in the **Out of scope**
section: the gist plus why it's out of scope, linking the closed ticket. It stays
out of **Decisions so far**, which records the route actually walked — a scope
boundary isn't a step on it.

## Invocation

Two modes. Either way, **never resolve more than one ticket per session** — with
the exception of research tickets.

That applies at the end as much as the start: when a ticket resolves, **stop
there**. Say what it decided and which tickets that just unblocked. Then say how
to start the next one, in exactly two steps and nothing more:

> Type `/clear`, then `/devloop:start-work`.

Name the next question with it — you just queried the frontier, so say in one
line which one is next.

That empties the context window without leaving the terminal, and the entry point
picks the map up from the tracker. Do not tell them to quit and restart, do not
ask whether to carry on — the answer to that is fixed — and do not carry on
yourself. Two keystrokes is the whole cost of the rule, and it is only that small
if you name them.

**The numbered steps in each mode run in that order, and none is optional.** They
are not a summary of the work; they are the work. Skipping one leaves a map that
looks finished and is not — wire the blocking edges late and the frontier query
starts handing out tickets that were meant to be blocked, with nothing to show
that anything went wrong.

Running in order is not the same as running without stopping. Where a step ends
by asking or by handing back, that is the step doing its job.

### Chart the map

User invokes with a loose idea.

1. **Name the destination.** What is the end of this map — the spec, the
   decision, or the change? It fixes the scope, so it is settled first.

   **Usually there is nothing to ask here.** Someone who said they want a thing
   built wants the spec; that is the destination, so say it in one line and carry
   on. Ask only when they said something else — that they are weighing whether to
   do this at all, or that one decision is all they came for. And if you ask, ask
   in their words about their work, never in this workflow's: "should this end
   with a spec, or just the decision" is a question about your machinery, and
   they have no way to judge it.
2. **Map the frontier.** Fan out across the whole space rather than deep on any
   one thread, and **surface the open decisions without answering them** — they
   become tickets, one per session, which is what the map is for. Resolving six
   of them in a round would leave nothing to chart.

   **Sweep for what you are not naturally looking for.** A workflow aimed at
   working software surfaces function and technology by reflex — what it does,
   what it is built with, where it runs — and skips the rest. Before putting the
   list up, walk these deliberately: what it should look like and feel to use;
   who uses it and what they are doing when they reach for it; what happens when
   it is empty, slow, or wrong; how it gets documented; how it gets deployed and
   kept running; what happens to the data if it moves or goes away. **This list
   is a prompt, not a checklist** — it is what has been missed so far, not
   everything that can be missed, and no map is complete because it covers these.
   Most efforts need only some. A map with none of them is not a map of the
   effort, it is a map of the parts that were easy to see.

   So this is not a round of questions. Put the list to the user and ask one
   thing about it: is anything missing, is anything on it already settled, is
   anything on it not really in scope. Their answer shapes the list; the
   decisions themselves wait for their tickets. **If this surfaces no fog** — the
   way to the destination is already clear, the whole journey small enough for
   one session — you don't need a map. Say so and offer to plan and build it
   directly instead.
3. **Create the map** (label `untangle:map`): Destination and Notes filled in,
   Decisions-so-far empty, the fog sketched into **Not yet specified**.
4. **Create the tickets you can specify now** as child issues of the map, each
   with its type chosen the way **Ticket Types** describes and named in one line
   where it is not an interview.

   Before creating them, check the list once more for questions whose answer
   depends on how the world is today — what a library or framework can do now,
   what an API offers, what something costs, what already exists. Nobody holds
   that in their head, and neither do you. Each one is a research ticket, and the
   decision that follows it is a separate ticket blocked on it. Choosing a stack
   is the standard case and the one that keeps being missed.

   Then
   wire blocking edges in a **second pass** (issues need ids before they can
   reference each other). Wiring sorts them into the frontier and the blocked;
   everything you can't yet specify stays in the fog — the **Not yet specified**
   section.

   If this leaves you with one or two tickets and everything else in the fog,
   look again: something depending on an open decision belongs in the blocked
   pile, not the fog. A map whose whole shape is "answer this, then we'll see"
   charts nothing.
5. **Fire the research subagents.** For each `research` ticket you just created,
   spin up a subagent that calls the Skill tool with `research` to resolve it in
   parallel, capturing its findings on a throwaway `research/<n>` branch with a
   context pointer from the ticket.

   **Tell each one it must not change branches.** They run at the same time in
   one working directory and share its git state, so a checkout by one lands
   under the other's feet — which has already happened, leaving one agent's file
   committed on the other's branch. Each writes only its own file and commits
   only that path.

   If it happens anyway, say so and leave it. **Do not rewrite history to tidy
   it** — no `rm` on another branch, no cherry-picking a commit out from under
   it. A stray file in a throwaway research branch costs nothing; quietly
   reshaping branches to hide a mistake costs the ability to trust what the
   branches say.
6. **Stop here.** Charting is one session's work and it hand-resolves nothing;
   this step is where the session ends. Say what the map holds and which tickets
   are free. Then say how to start the first one, in these two steps and nothing
   more:

   > Type `/clear`, then `/devloop:start-work`.

   **Name the next question with it.** You have just queried the frontier, so you
   know its title — say which question is next in one line, so they know what
   they are walking into rather than just how to get there.

   Say why: each ticket is sized against a full context window and this one is
   part spent, and `/clear` empties it without leaving the terminal. **Do not ask
   whether to carry on.** Offering to take the ticket now contradicts the
   sentence before it, and the user cannot know those two commands unless you
   name them — leaving them out turns a two-keystroke rule into a dead end.

   A research ticket finishing later does not reopen this. Report what it found
   and stop again, with the same two steps.

### Work through the map

User invokes with a map (URL or number). A ticket is **optional** — without one,
you pick the next decision, not the user.

1. Load the **map** — the low-res view, not every ticket body.
2. Choose the ticket. If the user named one, use it. Otherwise take the first
   frontier ticket in order. **Claim it**: assign it to yourself before any work.
3. Resolve it — **zoom as needed**: fetch the full body of any related or closed
   ticket on demand; call the Skill tool for whichever skills the `## Notes`
   block names. If in doubt, run [The interview](#the-interview).
4. Record the resolution: post the answer as a **resolution comment**, **close**
   the issue, and **append a context pointer** to the map's Decisions-so-far.
5. Add newly-surfaced tickets (create-then-wire); graduate any fog the answer has
   made specifiable, clearing each graduated patch from **Not yet specified** so
   it lives only as its new ticket. If the answer reveals a ticket — this one or
   another — sits beyond the destination, **rule it out of scope** rather than
   resolving it on the route. If the decision invalidates other parts of the map,
   update or delete those tickets.

The user may run unblocked tickets in parallel, so expect other sessions to be
editing the tracker concurrently.

### When the map is done

No open tickets and no fog left means the way is clear: the destination is
reached and there is nothing more to decide before someone builds. Say that the
questions are settled, gist what the map decided, and offer to carry straight on
into planning and building the work. On a no, say the map stands as the record of
what was decided and the next session will find it.
