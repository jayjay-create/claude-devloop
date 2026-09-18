---
name: build-prototype
description: Build something throwaway to settle a design question
allowed-tools: Bash(${CLAUDE_PLUGIN_ROOT}/bin/devloop-text *)
---

# Build a throwaway prototype

**If `[shell command execution disabled by policy]` stands anywhere in this
file, stop before anything else.** The rules this skill shares with the others
are inserted when it loads, and that text standing where a rule should be means
they were not. Tell the user, in the language they write in, three things: that
this workflow cannot work right now because its shared rules were not loaded;
that the cause is the setting `disableSkillShellExecution`, which switches off
the commands in skills; and that it stops here rather than carrying on without
those rules. Then do nothing else.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text language-opening`

**Never say a skill's name to the user.** The stages have names so the skills can
call each other; to the person in front of you they are just what happens next.

A prototype is **throwaway code that answers a question**. The question decides the shape.

## When a command does not answer

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text command-does-not-answer`

## With nobody there

A prototype is reached with nobody there from the planning stage, for a question
that can be measured — a state model, a flow — and for that kind the run is the
one who looks. It takes the logic branch, states the question at the top of the
demo as LOGIC.md asks, builds the module and the page, and then drives the page
itself through the cases the question named — the awkward ones, the ones that
were hard to reason about on paper — and reads the state after each. The answer
is what the state says, written on the planning issue with the question and the
cases that were run, and the prototype is captured the same way as with somebody
there. "Hand it over" then has nobody to hand to and is skipped; the record on
the issue is the hand-over.

A question that has to be seen — the UI branch — cannot be settled alone, since
its answer is what somebody sees. The planning stage checks before it goes alone
that none is open; where one comes up anyway, this skill is not the answer: say
so, and the question goes back to the caller's order for a question with nobody
there. Do not build variants nobody will look at.

## Pick a branch

Identify which question is being answered, using the user's prompt, the surrounding code, or by asking if the user is around:

- **"Does this logic / state model feel right?"** → [LOGIC.md](LOGIC.md). Build a single shareable HTML file (free-play buttons plus tabbed guided walkthroughs) that pushes the state machine through cases that are hard to reason about on paper, and that a non-developer can drive.
- **"What should this look like?"** → [UI.md](UI.md). Generate several radically different UI variations on a single route, switchable via a URL search param and a floating bottom bar.

The two branches produce very different artifacts, so getting this wrong wastes the whole prototype. If the question is genuinely ambiguous and the user isn't reachable, default to whichever branch better matches the surrounding code (a backend module → logic; a page or component → UI) and state the assumption at the top of the prototype.

## Rules that apply to both

1. **Throwaway from day one, and clearly marked as such.** Locate the prototype code close to where it will actually be used (next to the module or page it's prototyping for) so context is obvious, but name it so a casual reader can see it's a prototype, not production. For throwaway UI routes, obey whatever routing convention the project already uses; don't invent a new top-level structure.
2. **Trivial to run.** A UI prototype starts from one command in the project's task runner: `pnpm <name>`, `python <path>`, `bun <path>`, etc. A logic demo is a single HTML file the user double-clicks. Either way, no thinking required to start it.
3. **No persistence by default.** State lives in memory. Persistence is the thing the prototype is _checking_, not something it should depend on. If the question explicitly involves a database, hit a scratch DB or a local file with a clear "PROTOTYPE, wipe me" name.
4. **Skip the polish.** No tests, no error handling beyond what makes the prototype _runnable_, no abstractions. The point is to learn something fast.
5. **Surface the state.** After every action (logic) or on every variant switch (UI), print or render the full relevant state so the user can see what changed.
6. **Capture it when done.** Fold any validated decision into the real code, then capture the prototype itself as a **primary source**: commit it to a throwaway branch, out of main, and leave a context pointer to that branch on the implementation issue. Capture the answer too (the verdict and the question it settled) in the issue or a commit. The main branch keeps only the validated decision.

## Hand it over so it gets looked at

A prototype nobody opens settles nothing, and the ticket it belongs to cannot be
resolved without looking. Naming a file on a branch the user is not on is not
handing it over — that is three git commands they did not ask to learn.

Give them **one action**. For a single HTML file, the exact command that opens it
in a browser, checkout included, as one line they can paste. For anything that
needs a process, the one command that starts it and the address to visit. Say how
to get back afterwards. If getting to it honestly takes more than one paste, say
that too, rather than leaving them to work it out.

## Make the variants actually differ

Variants exist so that seeing them changes someone's mind. Three layouts that
read as different in your description and look nearly alike on screen are one
variant in three coats of paint, and the user has learned nothing by looking.

Before handing over, check them against each other the way the user will: side by
side, on screen, ignoring what you meant them to be. If two of them arrange the
same things in the same order, one of them is not a variant. Fewer, genuinely
different options beat three that converge.

---

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text closing`
