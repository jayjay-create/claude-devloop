---
name: diagnose-bug
description: Find what actually causes a bug
---

# Diagnose a bug

**Answer in the language the user writes in, not the language of this document.**

**Never say a skill's name to the user.** To the person in front of you this is
not a tool being run, it is what happens when something fails.

A discipline for a failure that does not name its own cause. The steps run in
order. Skip one only by saying which one and why.

## When this runs

Nobody asks for this. It starts when a check goes red in one of three classes:
**unit**, **integration**, **end-to-end**. Those three report where an
expectation broke, not what broke it.

The other six name their own cause: format and lint print the rule and the line,
types prints the line and the mismatch, secrets prints the file and the pattern,
dependencies and code-security print the package or the finding. Fix those
directly. There is nothing here to diagnose.

Two routes reach a red check and both come here:

- A build runs the check suite before reporting done, and it fails.
- The turn-end gate catches a report that was already made.

There is no third route today. A second one arrives when a person can look at
the thing running and say it behaves wrongly; the steps below already cover it,
because the symptom they work from is the one that was described, not the one
that was convenient to reproduce.

Before reading any code, read `docs/agents/domain.md` for what the words in this
project mean and which decision records cover the area, `docs/agents/standards.md`
for how it is written, and `docs/agents/environment.md` for how it runs. If one
of those files is missing, say so and say which command should have created it —
do not improvise a replacement.

## Redact before showing anything

This work has you show commands, their output, and captured artifacts. Replace
every secret with `<REDACTED>` first. Build the loop against environment
variables so the credential stays in the environment rather than in what you
show. Captured artifacts carry auth headers: quote only the lines that carry the
signal.

If what is left after redacting is not enough to diagnose the failure, say so
and stop.

## Step 1 — Get a command that goes red on this bug

**This is the whole thing.** Everything after it is mechanical. With a tight
pass/fail signal that goes red on *this* failure, you will find the cause;
minimising, ranking and instrumenting all just consume it. Without one, no
amount of reading code will get you there.

When you arrived here from a red check, you already have it: the failing check
is the command. Say which one, and go to step 2.

When you do not, build one. In roughly this order:

1. **A failing test** at a place the bug reaches.
2. **An HTTP call** against a running local server.
3. **A command-line invocation** with a fixture input, diffed against a
   known-good snapshot.
4. **A headless browser script** that drives the interface and asserts on what
   it finds.
5. **A replayed capture.** Save a real request, payload or event log to disk and
   replay it through the code path in isolation.
6. **A throwaway harness.** Stand up the smallest subset of the system that
   exercises the failing path in one call.
7. **A property or fuzz loop.** For "sometimes wrong output", run a thousand
   random inputs and look for the failure mode.
8. **A bisection harness.** If it appeared between two known states, automate
   "start at state X, check, repeat" so bisection can drive it.
9. **A differential loop.** Same input through two versions or two
   configurations, outputs diffed.

Be aggressive about this and spend more time here than feels proportionate.

**Where the throwaway files live.** A harness, a fixture, a replay script and
any instrumentation go under a path that the file patterns in
`docs/agents/checks.md` do not cover. They are not meant to pass format, lint or
type checks, and the per-edit gate will block on them if they sit where it
looks. Step 6 deletes them.

## Step 2 — Tighten it

Treat the command as a product. Once you have one, make it better:

- **Faster.** Cache the setup, skip unrelated startup, narrow the scope.
- **Sharper.** Assert on the specific symptom, not on "it did not crash".
- **More deterministic.** Pin the clock, seed the randomness, isolate the
  filesystem, freeze the network.

A thirty-second flaky command is barely better than nothing. A two-second
deterministic one is the difference between finding this and not.

**When it only fails sometimes**, the goal is not a clean reproduction but a
higher rate. Loop the trigger a hundred times, run them in parallel, add load,
narrow the timing window, inject waits. A failure that shows up half the time is
workable; one percent is not, so keep raising the rate until it is.

**When you genuinely cannot get one**, stop and say so. List what you tried, and
hand it over in the form step 6 describes. Do not go on to guess without it.

Step 2 is done when you can name **one command you have already run at least
once**, showing the invocation and its output, that is:

- **Red-capable** — it drives the actual failing path and asserts the symptom
  that was reported, so it goes red now and green once this is fixed. Not "runs
  without erroring".
- **Deterministic** — same verdict every run, or a pinned high failure rate.
- **Fast** — seconds, not minutes.
- **Runnable without a person** — nothing in it waits for someone to click.

If you catch yourself reading code to build a theory before that command exists,
**stop**. Jumping to a theory is the exact failure these steps prevent.

## Step 3 — Reproduce, then cut it down

Run the command. Watch it go red.

Confirm all three:

- It produces the failure that was **reported**, not a different one nearby. The
  wrong failure gets the wrong fix.
- It is reproducible across several runs, or at a rate high enough to work
  against.
- You have captured the exact symptom — the message, the wrong value, the
  timing — so later steps can show the fix addressed it.

Then shrink it to the **smallest case that still goes red**. Cut inputs,
callers, configuration, data and steps **one at a time**, re-running after each
cut, keeping only what the failure needs.

This is worth the time twice over: it shrinks what is left to suspect in step 4,
and it becomes the regression test in step 5.

Done when removing any remaining element makes it go green. Do not go on until
you have both reproduced and cut it down.

## Step 4 — Rank the causes, then test them one at a time

Write down **three to five ranked candidate causes before testing any of them.**
Producing one and chasing it anchors the whole diagnosis on the first plausible
idea.

Each one has to be refutable: state the prediction it makes.

> If <this> is the cause, then <changing that> makes the failure go away, or
> <changing the other thing> makes it worse.

A candidate whose prediction you cannot state is a hunch. Sharpen it or drop it.

**Keep the ranked list and carry it out with you.** Nobody is watching while
this runs, so there is no point stopping to show it. It goes into the pull
request body instead, together with which one turned out to be right — that is
where a person reads it, at the point where they decide whether the work lands.

Then probe. Each probe maps to a specific prediction from the list, and you
**change one thing at a time.**

1. **A debugger or an interactive session** where the environment supports it.
   One breakpoint beats ten log lines.
2. **Targeted logging** at the boundaries that tell two candidates apart.
3. Never log everything and search the output.

**Tag every line of instrumentation** with a unique marker, for example
`[DEBUG-a4f2]`, so removing it later is one search. Untagged lines survive;
tagged ones die.

**When something got slower rather than wrong**, logs are usually the wrong
tool. Establish a baseline measurement first — a timing harness, a profiler, a
query plan — and then bisect against it. Measure first, fix second. There is no
check class for this today, so the baseline measurement is the command from
step 1.

## Step 5 — Write the regression test, then fix it

Write the test **before** the fix, but only where there is a place that can
carry it honestly.

Such a place exercises the real pattern as it occurs at the call site. Where the
only available one is too shallow — a single-caller test when the failure needs
several, a narrow test that cannot replicate the chain that triggered it — a
test there gives false confidence and is worse than none.

**The spec confirms where this work gets checked, and this failure happened
somewhere that list may not name.** The rule does not bend: the list grows. Add
the place to the spec's confirmed list with this bug as the reason, and say you
did. A test at a place nobody confirmed is a review finding; a place confirmed
by a real failure is not.

**If no honest place exists at all, that is itself the finding.** The structure
of the code is what is preventing this from being pinned down. File it as an
issue, say why, and go on.

Where one exists:

1. Turn the cut-down case from step 3 into a failing test there.
2. Watch it fail.
3. Apply the fix. Fix the cause, not the symptom — and if a second defect
   remains afterwards, that is its own defect with its own effect, not a
   leftover of the first.
4. Watch it pass.
5. Re-run the command from step 1 against the original, un-cut scenario.

**Do not edit `docs/agents/checks.md` yourself.** If the regression test creates
or changes a check target, call `setup-checks` for that class instead. Its
columns are read by shell scripts, and the rules for them live with the skill
that owns the file.

## Step 6 — Clean up, or hand it over

Before this is done, all five:

- The original failure no longer reproduces — re-run the command from step 1.
- The regression test passes, or the absence of an honest place for it is filed.
- Every tagged line of instrumentation is gone. Search for the marker.
- Every throwaway harness, fixture and replay script is deleted.
- The candidate that turned out to be right is stated in the commit and in the
  pull request body, with the ranked list it came from, so the next person
  reading this learns something.

**When it is not done** — no command that goes red, no candidate that survived,
or the cause sits somewhere you cannot reach — stop and hand it over. Do not run
another variation of what already failed.

Hand it over in one of these forms, whichever fits:

- A command they can paste into their own terminal, and what to look for in the
  output.
- A small script that collects the versions, paths and environment this needs,
  ready to run.
- A script that walks them through the steps only a person can do — clicking,
  signing in — and reads their answers back, when the failure cannot be reached
  any other way.
- A smaller case that shows the failure away from the rest of the project.
- A named question only they can answer, with what each answer would change.

Say what you were trying to do, what you tried, and what the failure actually
says. Then wait.

**Never leave a finding in the conversation** — an issue, the pull request body,
or a control document, but not a sentence that scrolls away. And never explain a
named defect away in the same breath as naming it: it stays open until it is
fixed or explicitly deferred.
