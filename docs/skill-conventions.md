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
