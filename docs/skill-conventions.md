# How a devloop skill is built

Every skill in this set follows these. They are not style preferences — each one
comes from something that went wrong.

## Frontmatter

    ---
    name: <directory name, exactly>
    description: <menu entry: verb first, under ten words, no trigger conditions>
    ---

The description is what a person reads while browsing commands, so it reads like
a menu entry: "Cut a spec into single tasks". Not the long "Use this when the
user asks…" form — that is for agents, and it shows up in the command list.
Whatever the model needs in order to recognise the situation goes in the body,
which it loads anyway once it reaches for the skill.

## Every skill opens with these two

**Answer in the language the user writes in, not the language of this document.**
Without it, a long English body drowns out a two-word German message.

**Never say a skill's name to the user.** Not "I'll run plan-work". The stages
have names so the skills can call each other; to the person in front of you they
are just what happens next.

## Numbered steps where order matters

A section reads as description; a numbered step reads as an instruction. Three
rewrites of `start-work` failed because the first thing to do was phrased as a
section among sections, and the model acted on whatever was obviously pending
instead. `## Step 1 — Look` followed by "run exactly one command and nothing
else" worked on the first try.

## Shared words are defined in one place

A word two skills lean on has to be defined somewhere both of them read, or the
one that did not get the definition guesses. Two carry real weight here.

**A seam is a place where this work will be checked** — a function boundary, a
module edge, an entry point. The spec confirms them; nothing gets tested at an
unconfirmed seam, and a test at one is a review finding. Every skill that builds
or reviews works to that list.

**A class is one of the nine kinds of check** this workflow tracks: format, lint,
types, unit, integration, end-to-end, secrets, dependencies, code-security. Nine
is fixed — the set does not grow per project. What varies is which of them a
project fills, skips with a reason, or leaves undecided.

## A rule holds only on the path it is written on

The most expensive mistakes in this set were not wrong rules. They were right
rules written at one point in a skill, which then did not hold when a run reached
the same situation by another route. Four in one day:

- The handover naming `/clear` sat with the one-ticket rule, so charting ended
  without it and asked "shall I carry on?" instead — three times in one run.
- Reporting what is in flight sat in step 2 of the entry point, so a run that
  detoured through the document refresh came back and skipped it, greeting a map
  with eleven open tickets by asking what the user would like to build.
- The check table's format rules sat with the two skills that create the file, so
  the skill that edits it mid-build wrote a status word that does not exist.
- The rule that a question can need both reading and deciding sat with the ticket
  types, so the step that creates tickets in bulk kept turning it into one
  interview.

Before writing a rule, ask which routes reach the situation it governs, and put
it where all of them pass — or write it at each. Two copies that agree beat one
copy that half the runs never read. And when a rule is written and the behaviour
does not change, **rewrite the sentence rather than appending to it**: "offer to
run X, without asking" was patched that way and kept producing the offer, and
the entry point was patched that way again: a paragraph saying not to ask what
the user wants to build was added below the sentence telling it to ask, which
still stood, so runs did both.

## Never assert state — query it

Which task is next, whether something merged, whether a check is configured:
each is a query, never a memory of what was said earlier in the session.
Conversation goes stale; the tracker and the git log do not.

## Say when something did not happen

If a skill you call does not exist, say so — do not silently substitute another.
If a background agent fails to return, say so — do not present a comparison that
is quietly one draft short. Both happened repeatedly and went unmentioned.

**Record what was decided against.** A rejected option that leaves no trace gets
rediscovered and proposed again as new, and the reason it was rejected has to be
worked out a second time. `docs/roadmap.md` has a section for it. Write the
reason, not the verdict — a verdict cannot be reopened when the reason stops
holding.

**The same goes for a command a control document should hold and does not.** The
files under `docs/agents/` are written once at setup, from a template that keeps
changing, so a project set up months ago is missing whatever was added since.
Improvising a replacement is the worst answer available: it produces an answer
that looks right and is not, and it hides the stale document that caused it. This
has already happened — a substitute built from label searches reported which work
was in flight, and could not have found any, because the labels it searched for
are not set any more. Say the command is missing, say which file should hold it,
and offer to update that file from the current template.

## Only ask where there is something to decide

A question with one sensible answer is noise, and so is a question the user has
just answered — asking someone who opened with "I have no idea about any of this"
whether they have a direction in mind reads as not having listened. Both teach
the user that their answers do not matter — which is how the real questions start getting waved
through. Before asking, name what the other answer would actually change. If
nothing, say what you are about to do and do it.

## Every question carries its own reason

State what is being decided, what each answer means in practice, what it costs,
and why it comes up now. Never name a bare term the user may not know. Someone
who has never heard of this workflow must be able to answer.

## Refer to work by its name

Every spec, task and planning issue has a title. In everything the human reads,
use it. A number is an index into a tracker they are not looking at: `#9, #10`
after a week away says nothing, and a list of numbers says nothing several times
over. The id and the link do not vanish — they ride inside the name, they never
stand in for it.

## End by offering, not by naming

Close with a proposal for the next step and carry it out on a yes. Name a command
only when the next step cannot start itself.

## Every offer says where a no leads

Writing only the yes leaves the user guessing whether declining ends the run, and
the recommended answer stops being a recommendation and starts being the only
door. Assume every offer gets declined sometimes.

**The default a no lands in:** the run stops where it is, and nothing is lost,
because the state is in the tracker and in git rather than in the conversation.
The next session's entry point reports it — by name, with how far it got — and
picks up from there. Say that in one clause when you offer the next stage; it is
what makes declining a real option instead of an exit. Where a no changes what happens later, say what changes **at the
moment of asking**, not three steps on when it bites. A no never leaves the run
without a next move: if the only honest answer is to stop, say what would unblock
it and what to do once that is done.

## Describe what must be said; never dictate wording

A model performs a task; it does not transcribe. Asking for a fixed paragraph
gets a paraphrase. Listing what the paragraph must cover gets all of it.

## Works with nothing else installed

Everything here has to work with this plugin and nothing else. Another plugin
being present may make a run better; it may never be what makes it work. A user
who installs this and nothing more gets the whole workflow.

That rules out calling into another plugin's skills. Check whether a capability
is there and use it if it is, and carry on without it if it is not — never make
it a step that fails when it is missing. The difference matters because a missing
skill inside this set is a stop with a stated fix, while a missing plugin outside
it is not the user's problem at all.

This was written after finding that a second plugin's hooks had been running
alongside every test for a day without anyone noticing.

## Adapting from Matt Pocock

Much of this set is taken from https://github.com/mattpocock/skills (MIT), under
`skills/engineering/` and `skills/productivity/`. To work on one, clone it:

    git clone --depth 1 https://github.com/mattpocock/skills /tmp/pocock
    cat /tmp/pocock/skills/engineering/<name>/SKILL.md

`docs/roadmap.md` says for each unbuilt skill whether it is taken verbatim or
adapted, and from which of his.

**Verbatim means verbatim.** Where his text cannot be improved, copy it and
change only the frontmatter and any reference to a skill we renamed. Rewriting
it in different words loses the precision and gains nothing.

**Where it is adapted, say why.** Quote the line being changed in the commit
message and give the reason. Every adaptation in this set so far came from a
concrete failure, and the quote is what makes it checkable later.

Two of his reference files are worth reading before writing any skill:
`skills/productivity/writing-for-agents/SKILL.md` (context load against
cognitive load) and its `SKILL-MECHANICS.md` (who can invoke what, and the price
of each choice).

## Registering a skill

Add its directory to the `skills` array in `.claude-plugin/plugin.json`, then
raise `version`. Without the version bump the installed copy does not change —
see "Working on devloop itself" in the README.

## Writing long files

Send a SKILL.md in two or three blocks rather than one. A single long heredoc
gets truncated on paste, the file is left unterminated, and nothing reports an
error — the skill simply does not exist. End each block with `wc -l` and an
expected number.

## Environment constraints, measured

**Agent Teams must stay off.** With `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1`,
every named subagent starts as a teammate, and a teammate reports only that it
finished — not what it found. `design-options` and `review-changes` both spawn
parallel agents and wait for their results; both hang. Anthropic's own docs say
so.

**One build task at a time.** Two build agents share one working directory:
measured, one switched branches out from under the other mid-edit, and both
edited the same manifest. Parallelism needs separate worktrees and is not worth
it while tasks merge to the same branch one after another.

**Merging is refused; auto-merge is not.** `gh pr merge` is blocked by the
permission classifier as a shared-state action — reproducibly, not once. `gh pr
merge --auto --squash --delete-branch` goes through. The platform merges, not
the agent. Auto-merge must be enabled on the repository first.

**Tool classes can be pre-approved per project**, which is what makes an
unattended run possible: read commands, the language runner, file edits, `git
push`, `gh pr *`. They must be granted before the run — nobody is there to
answer a prompt during it.

**The `checks.md` parsers are shell scripts.** Backticks and apostrophes in a
table cell used to break them; they are stripped now, but keep machine-read
columns plain. The `Status` column takes only `filled`, `empty`,
`skipped: <reason>` — spelled exactly, ASCII only.

**A hook cannot force wording.** `SessionStart` stdout arrives as context. There
is an `initialUserMessage` field for seeding a turn, and an open Anthropic bug
(#16538) where `hookSpecificOutput.additionalContext` from a *plugin* hook does
not reach Claude while the same hook in user settings does. Plain stdout works.

**A hook cannot see consent.** It gets the command and the branch, never the
conversation, so "the user just said yes" and "the agent decided this itself"
look identical to it. That rules out enforcing anything the user is allowed to
authorise — unless the authorised and unauthorised forms are different commands.
Merging is: `gh pr merge --auto` hands the decision to the platform, `gh pr merge`
without it has the agent decide. A hook can tell those apart, so that one is
enforced while a merge the user asked for still goes through.

**A blocking hook must exit 2.** On `PreToolUse` that blocks the tool call and
feeds stderr to the model as the reason. Exit 1 does not block — the action runs
and the failure is only logged. A hook that cannot start, wrong path or missing
`chmod +x`, lands in that same non-blocking bucket, so the gate is silently off.

**Stderr only reaches the model when the hook exits 2.** On exit 0 it goes to the
debug log and nowhere else. That makes a give-up message on `Stop` a trap: exit 0
and nobody reads it, exit 2 and the turn continues. The way out is a counter that
keeps counting past its limit — exit 2 exactly once at the limit so the model gets
one turn to hand the problem over, then exit 0 silently on every further stop with
the same failure.


## Who may invoke a skill

Two states, no third.

**Model-invocable** (no extra frontmatter): the description sits in context every
session, the model may reach for it, and other skills can call it. That is the
price and the point.

**User-invoked** (`disable-model-invocation: true` under `description`): costs no
context, but only a typed command starts it — no other skill can.

In this set, two are user-invoked: `start-work`, the entry point, and
`record-lessons`. No other skill runs either of them, so locking them costs
nothing.

Everything else is model-invocable, because the chain reaches it from
`start-work` or from another skill: `setup-project`, `setup-checks`,
`untangle-idea`, `research`, `build-prototype`, `plan-work`, `cut-into-tasks`,
`build-work`, `review-changes`, `diagnose-bug`. Note the consequence — the model can also reach
for `build-work` or `setup-project` on its own. If that ever proves to be a
problem, the fix is not to lock it, which would break the chain, but to keep the
gate inside the skill. For `setup-project` that gate is not a confirmation
prompt — it asks nothing, because both ways in already carry the user's intent:
either they typed the command, or they said what they wanted built and the chain
brought them here. It says what it is about to do and does it.

**A locked skill cannot be run by another skill.** The Skill tool refuses it and
tells the model to ask the user to type the command — the one thing no skill in
this set may do. So before locking a skill, check that no other skill is told to
run it.

## Before a handover, run these

Six checks that catch what a conversation loses. Each one has found a real gap.

Every skill on disk is registered, and every registered skill exists:

    python3 -c "
    import json,pathlib
    m=[p.split('/')[-1] for p in json.load(open('.claude-plugin/plugin.json'))['skills']]
    d=sorted(p.name for p in pathlib.Path('skills').iterdir())
    print('registered but missing:', sorted(set(m)-set(d)))
    print('present but unregistered:', sorted(set(d)-set(m)))"

Nothing in the roadmap is named that neither exists nor sits under "Named, not
built as skills":

    comm -23 <(grep -o '`[a-z-]*`' docs/roadmap.md | tr -d '`' | sort -u) <(ls skills/ | sort)

Invocability is set deliberately, not by omission:

    grep -c 'disable-model-invocation' skills/*/SKILL.md

No skill is told to run a skill that is locked against being run. A locked skill
refuses the call and tells the model to ask the user to type the command, which no
skill here may do. Every line this prints needs an eye on it:

    for s in $(grep -l 'disable-model-invocation' skills/*/SKILL.md | sed 's|skills/||;s|/SKILL.md||'); do
      grep -l "\`$s\`" skills/*/SKILL.md | grep -v "skills/$s/SKILL.md" | sed "s|^|locked: $s referenced by |"
    done

No sentence tells a run to ask for permission to reach the next stage, or to
put a question as an either-or. Every line this prints needs an eye on it: some
are real offers that stay, and the point is that each one gets looked at rather
than assumed. Run it after **any** edit to a skill, not only before a handover —
a rule added at one anchor and a sentence contradicting it further down the same
file is how three of these got in:

    grep -rn 'Ask whether\|offer to\|Offer to\|on a yes\|offering the next' skills/*/SKILL.md

The installed copy is the copy you changed:

    diff ~/.claude/plugins/cache/jayjay-create/devloop/$(python3 -c "import json;print(json.load(open('.claude-plugin/plugin.json'))['version'])")/skills/start-work/SKILL.md skills/start-work/SKILL.md
