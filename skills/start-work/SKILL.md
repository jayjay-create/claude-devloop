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

If it lists files, find the version marker in `docs/agents/issue-tracker.md` —
the line matching `<!-- devloop: ` — and compare it with the running version.
Search the file for that line rather than assuming which one it is; in a file
with a frontmatter block it sits below that, not on line one. Older means
these files were written from templates this workflow has since changed. Say in
one line, in ordinary words, that the setup files here are from an older version
of this workflow and that you are bringing them up to date, then run
`setup-project`. **Do not ask.** The refresh touches nothing the project decided
for itself, so a no protects nothing — and the question costs a second decision
in the same reply, which is how a bare "yes" stops being an answer to either
one. When `setup-project` returns, **carry on with step 2 as if nothing had
happened** — the refresh is an errand, not the answer to why they are here.
Reporting what is in flight is the thing they came for, and it is exactly what
gets dropped when a detour ends and the run picks up wherever it left off. A
file with no marker at all predates the marker; treat it as older.

## Step 2 — Orient them, if the status line says this project is not set up

Write a short introduction in your own words — at most four sentences, not
counting the closing line, in their language — covering these and nothing else:

- Where this ends up, in one clause: code that is built, checked and merged.
  Where it ends up, never how it gets there.
- One promise: an idea is all they need to bring, and the rest is guided.
- That they have to remember nothing — no commands, no steps.
- That asking what is happening, at any point, gets an explanation.

**Name no stages.** Not sharpening, designing, speccing, cutting, building or
reviewing, and no counts of anything. A list of what is coming reads as a process
to learn, which is the opposite of the promise just made, and they meet each
stage when it arrives anyway.

Close on this line, exactly as written, in English even when the rest is not:

    devloop - from idea to built.

This is the one fixed wording in the set, and it is fixed because it is a
signature rather than a paragraph — six words a model transcribes, not a text it
would paraphrase.

Then ask what they would like to build, and **stop.** Nothing else in this reply:
no repository findings, no offer to set anything up.

**If the status line says the project is set up**, skip the introduction. Run the
in-flight query from `docs/agents/issue-tracker.md` and say what it found, in at
most five lines. **Name the work; do not number it.** Someone back after a week
remembers what they were building, not that it was issue nine.

- **An open pull request comes first**, ahead of every issue. It is work that is
  built and has not landed — closer to done than anything else on the list, and
  the one thing that must not be started a second time. That is the ordinary end
  of a session, not an exception: a build opens the pull request and then hands
  the merge over, and nothing moves until the user says it has landed. Name it
  by title and say which of these it is, read off the query's own columns and
  not off its branch name:
  - **`mine: true`, not a draft, `closes:` an open issue** — built, and waiting
    to land. This is the normal case.
  - **`mine: true`, and the issue it closes reads `CLOSED`** — the two
    disagree. Say so. The pull request is the part that has not landed, and a
    closed issue is not evidence that it did.
  - **`draft: true`** — built and not offered yet. It is neither waiting on a
    merge nor finished, and saying either of those about it is wrong.
  - **`mine: false`** — somebody else opened it. Report it and leave it, the way
    a loose issue from outside is reported and left: do not take it up, do not
    offer to land it, do not count it as the work in flight.
  - **`closes: -`** — it names no issue. Say it is open and that it does not say
    which work it belongs to. Do not read its branch name as the answer: a
    branch named after a task is a string this workflow writes, and a pull
    request from anywhere else carries whatever its author chose.
  - **Several at once** — name them, ready ones before drafts and yours before
    anyone else's. Past three or four, name the newest and say how many others
    there are, the same as for loose issues.
  - **None** — say nothing about pull requests at all and carry on down this
    list. Silence is the report here; a line saying there are none spends one of
    five on nothing.
- A spec with open tasks: its title, and how far it got — two of five tasks
  done reads as progress; "has open tasks" reads as a warning.
- A planning left unfinished: its title, and which stage it last got through —
  read its comments, one is posted per finished stage.
- Loose issues nobody has picked up: their titles, and which carry
  `raised-here` — those came out of earlier work here and are waiting to be
  taken up, while the rest arrived from outside as suggestions. Past three or
  four, name the newest and say how many others there are.

**If nothing is in flight**, ask the same open question: what would they like to
build? Nothing in flight now means both halves of the query empty — no open
issue and no open pull request.

**If an open pull request of yours is waiting to land, that comes before all of
it.** It is one command from done and nothing else on the list is, and starting
something new leaves it sitting there for another week. Say it is waiting and
offer to land it. On a yes, that is `build-work` at step 6 and nothing before
it — their yes here is the gate, rather than an inference about what some
earlier session did before opening it. On a no it stays open and nothing is
lost, because the state is in the tracker and in git; say so, take the next
thing on the list, and say which. **A draft is not this case** — it was never
offered, so there is nothing to land, and it is reported and left where it is.
**Neither is one that reads `mine: false`** — that is somebody else's to land.

**If a map or a spec is in flight, do not ask a question at all.** Name the free
tickets or tasks by title, say which one comes next and what it unblocks, in one
line, and start it. "Eleven open decisions" is a number, not a handhold: the user
cannot act on a count. And do not ask whether to carry on — typing the command in
a project with work already in flight is the answer to that, the way saying what
you want built is the answer everywhere else. Asking again treats what they just
did as if it had not happened. Say which one you are taking so they can name a
different one instead.

Reporting is not proposing, and the difference is which of the two cases you are
in. Proposing is intrusive when it tells the user what to want; it is help when
it tells them where they stopped and what comes next.

- **A stray open issue somebody filed.** Say what is there and stop — do not
  rank it, do not recommend one, do not offer to pick it up. An open issue is
  somebody's suggestion, not an instruction, and someone coming back after a
  week needs to see where they stood before they can answer at all.
- **A ticket or task on something they started themselves.** This is the
  exception, and it is a real one: rank it, recommend one, offer to pick it up.
  That is the paragraph above, and none of the three refusals in the case above
  apply here.

If both halves of the query come back empty, say the tracker is clear and ask the
question on its own.

**Stop here until they answer — but only where a question was asked.** Nothing
in flight means a question and a stop. Something in flight means no question,
so there is nothing to wait for: report where they stopped, say which piece you
are taking, and take it.

**If a command this skill needs is missing from `docs/agents/`, say so.** Those
files were written when the project was set up and the template has moved on
since. Do not improvise a replacement — an invented query that returns something
plausible is worse than no answer, because nobody can tell it went wrong. Name
the file, say what is missing, and offer to bring it up to date.

## Step 3 — Judge what they asked for

If it is too large to see the end of — where the questions are not "how do we
build this" but "what are we even building" — **say so and start mapping. Do not
ask.** You have just made that judgement yourself, on what they told you; asking
now invites them to overrule it with no more information than you have, and the
usual answer to a question with one sensible answer is that it gets waved
through. Say what happens next in one line: the open decisions get mapped first,
one session at a time, and this picks up again when the path is clear. That is
`untangle-idea`.

Otherwise carry on.

## Step 4 — Set up, if it is not set up

If `docs/agents/` was missing, run `setup-project` now, then continue. Do not ask
the user to run it.

## Step 5 — Build it

Which stage you enter depends on what step 2 found, and getting it wrong costs a
skill load and a correction the user watches happen:

- **An open pull request of yours they said to land** — nothing new starts on
  top of it. `build-work` picks up at its step 6, which is where reading the
  gate, arming the platform and handing the merge over already live; none of it
  is repeated here.
- **A ready task under a finished spec** — no planning is left to do. Go
  straight to `build-work`.
- **A planning left unfinished** — `plan-work` picks it up at the stage its
  comments say it reached.
- **Anything else, including a fresh idea** — `plan-work` from the start. It
  carries through to the tasks and into the build.

Each stage says what it is doing next and does it. None of them asks permission
to reach the following one; the decisions sit inside the stages.

## How to talk while doing all this

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
