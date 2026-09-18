---
name: record-lessons
description: Write down what went wrong so it does not repeat
disable-model-invocation: true
allowed-tools: Bash(${CLAUDE_PLUGIN_ROOT}/bin/devloop-text *)
---

# Record what went wrong

**If `[shell command execution disabled by policy]` stands anywhere in this
file, stop before anything else.** The rules this skill shares with the others
are inserted when it loads, and that text standing where a rule should be means
they were not. Tell the user, in the language they write in, three things: that
this workflow cannot work right now because its shared rules were not loaded;
that the cause is the setting `disableSkillShellExecution`, which switches off
the commands in skills; and that it stops here rather than carrying on without
those rules. Then do nothing else.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text language-opening`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text skill-name`

Turn a failure into something that prevents the next one. Run at the end of a
build run, or whenever the user asks.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text project-language`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text body-through-file`

## When a command does not answer

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text command-does-not-answer`

## What counts as a lesson

Not every finding. A defect the checks caught is the system working — recording a
rule about it adds weight and prevents nothing.

Record it when one of these holds:

- **It happened a second time.** One occurrence is an accident; two is a pattern.
- **No check could have caught it.** Nothing in `checks.md` was ever going to see
  it, so only a written rule stands between it and the next repetition.

Everything else stays where it is: fixed, or filed as an issue.

## Where it goes

**The lesson goes in the file that would have prevented it.** Ask what someone
would have had to read to avoid this, and write it there:

| The failure was | Where it goes |
|---|---|
| A rule this project holds that nobody wrote down | `docs/agents/standards.md` |
| Something a check should catch and does not | the "what these checks do not cover" section of `docs/agents/checks.md` |
| Something unclear about running the project locally | `docs/agents/environment.md` |
| A decision that keeps getting revisited | a decision record |

Before recording anything about the workflow behaving oddly, check that the
version you are testing is the version you changed. A conclusion drawn from a
stale installed copy is not a lesson; it is noise, and filing it makes the next
person chase the same ghost.

If no file in this project would have prevented it, the workflow itself let it
through. **File an issue against the workflow's own repository** — do not edit a
skill mid-run. A skill that rewrites itself while working cannot be reviewed, and
the change would be invisible to everyone else using it.

### When this repository is the workflow

You are inside the workflow's own repository when `.claude-plugin/plugin.json`
exists and names this plugin. Check that before anything else here, because two
things then change: the table above points at files that do not exist, and the
rule just above collapses — filing an issue against the workflow's own repository
means filing it here.

Write the lesson where whoever builds the workflow would read it:

| The failure was | Where it goes |
|---|---|
| A rule about how a skill must be written, or a property of the environment somebody measured | `docs/skill-conventions.md` |
| Something missing or known to be broken | the "Known gaps" section of `docs/roadmap.md` |
| A name that should not be proposed again | the "Names that were rejected" section of `docs/roadmap.md` |
| Something a user of the plugin needs to know | `README.md` |

The README is the last resort, not the first. It is written for people who
install the plugin, not for whoever builds it, so a lesson about building belongs
under `docs/`.

Not editing a skill mid-run holds harder here, not less, because editing skills is
what this repository is for. Record the lesson, then let a branch and a pull
request carry the change. Do not lean on the guard that normally stops writes to
the main branch: it needs `docs/agents/`, this repository has none, so devloop's
own hooks stay inert in it.

## How to write one

One or two lines. What goes wrong, and what to do instead. Not the story of how
it was discovered — that is in the git history and the issue.

Write the rule, not the incident: "every check target must be able to fail; prove
it before marking it filled" outlives "the format target passed on broken code
that one time".

## Clear out as you go

Every rule is read again on every review. A list that only grows makes each
individual rule less visible and every review slower.

So before adding, remove: a rule a tool now enforces, a rule about code that no
longer exists, a rule nothing has bumped into for a long time. Say what you
removed and why — a rule quietly disappearing is worse than one that stays.

## Close

Say what you recorded, where, and what you removed. If you filed an issue against
the workflow, say what it asks for.

---

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text closing`
