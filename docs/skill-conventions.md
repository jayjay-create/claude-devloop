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

## Never assert state — query it

Which task is next, whether something merged, whether a check is configured:
each is a query, never a memory of what was said earlier in the session.
Conversation goes stale; the tracker and the git log do not.

## Say when something did not happen

If a skill you call does not exist, say so — do not silently substitute another.
If a background agent fails to return, say so — do not present a comparison that
is quietly one draft short. Both happened repeatedly and went unmentioned.

## Every question carries its own reason

State what is being decided, what each answer means in practice, what it costs,
and why it comes up now. Never name a bare term the user may not know. Someone
who has never heard of this workflow must be able to answer.

## End by offering, not by naming

Close with a proposal for the next step and carry it out on a yes. Name a command
only when the next step cannot start itself.

## Describe what must be said; never dictate wording

A model performs a task; it does not transcribe. Asking for a fixed paragraph
gets a paraphrase. Listing what the paragraph must cover gets all of it.

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

Everything else is model-invocable, because `start-work` chains through them:
`setup-project`, `setup-checks`, `untangle-idea`, `plan-work`, `cut-into-tasks`,
`build-work`, `review-changes`. Note the consequence — the model can also reach
for `build-work` or `setup-project` on its own. If that ever proves to be a
problem, the fix is not to lock it, which would break the chain, but to keep the
human gate inside the skill where it already is: `setup-project` introduces
itself and waits for a yes before its first tool call.

**A locked skill cannot be run by another skill.** The Skill tool refuses it and
tells the model to ask the user to type the command — the one thing no skill in
this set may do. So before locking a skill, check that no other skill is told to
run it.

## Before a handover, run these

Five checks that catch what a conversation loses. Each one has found a real gap.

Every skill on disk is registered, and every registered skill exists:

    python3 -c "
    import json,pathlib
    m=[p.split('/')[-1] for p in json.load(open('.claude-plugin/plugin.json'))['skills']]
    d=sorted(p.name for p in pathlib.Path('skills').iterdir())
    print('registered but missing:', sorted(set(m)-set(d)))
    print('present but unregistered:', sorted(set(d)-set(m)))"

Nothing in the roadmap is named that neither exists nor sits under "Not built":

    comm -23 <(grep -o '`[a-z-]*`' docs/roadmap.md | tr -d '`' | sort -u) <(ls skills/ | sort)

Invocability is set deliberately, not by omission:

    grep -c 'disable-model-invocation' skills/*/SKILL.md

No skill is told to run a skill that is locked against being run. A locked skill
refuses the call and tells the model to ask the user to type the command, which no
skill here may do. Every line this prints needs an eye on it:

    for s in $(grep -l 'disable-model-invocation' skills/*/SKILL.md | sed 's|skills/||;s|/SKILL.md||'); do
      grep -l "\`$s\`" skills/*/SKILL.md | grep -v "skills/$s/SKILL.md" | sed "s|^|locked: $s referenced by |"
    done

The installed copy is the copy you changed:

    diff ~/.claude/plugins/cache/jayjay-create/devloop/$(python3 -c "import json;print(json.load(open('.claude-plugin/plugin.json'))['version'])")/skills/start-work/SKILL.md skills/start-work/SKILL.md
