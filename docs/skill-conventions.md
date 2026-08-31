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

Which task is next, which blockers are open, whether something merged, whether a
workflow exists, whether a branch is protected, whether auto-merge can be set:
each is a query, never a memory of what was said earlier and never an impression
from earlier in the session. Conversation goes stale, and so does a reading
taken an hour ago — somebody else may have changed it, and this run may have
changed it itself.

**A statement about the repository or the platform rests on a command from this
turn.** Not on how it was at the start, not on how it usually is. Where you have
no such command, say you are going to look, and look. That is the rule for a run
in a session. The same claim written into a skill, where it stands in for every
future run, is held to more than a command — see "A finding that would have
passed unsupervised gets written down".

**Before telling the user something is missing, search for it.** A negative is
the most expensive claim there is, because it sets them to work: a run reported
that no CI posted a required status and offered to build one, while the workflow
sat on the main branch and had gone green an hour earlier. Absence is a finding
like any other, and it needs the command that came back empty.

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

## A finding that would have passed unsupervised gets written down

Two questions after every one of them: can this happen again, and can it be
prevented. Where both are yes, the answer is written down before the work carries
on — before, because after is the next session and by then the finding is gone.
**An unrecorded finding is a repeatable one, and the second time round it looks
exactly like the first, so nobody notices that it is the second time.** The cost
is not the defect. The cost is that the defect is invisible as a pattern.

What gets written down is the preventable form, not the incident. Four notes
saying a particular field was misread are four incidents; one rule naming that
kind of misreading is a prevention. The rule belongs in this file and the
measurement backing it in `docs/roadmap.md` — the split those two already run on.
`record-lessons` is this same move for a project's own work; this is it turned on
the repository that ships it.

**A finding the check chain reports red does not fall under this**, repeatable or
not. The chain is already the prevention: it goes red the next time too, and the
next time somebody sees it. What this rule is for is the finding nothing was
watching — a sentence in a skill, a rule, a claim about a platform — where no red
is coming.

Where it can happen again and cannot be prevented, that is the answer and it gets
written down as one. A run that spends an hour establishing that something has no
fix here has produced a result, and dropping it sells the next run the same hour.
Only "this cannot happen again" needs nothing.

**A field is not an answer to a question it was not asked.** This is the first
answer the rule above produced, out of four defects in a row with a single shape:
a field or a status code used as the answer to a question it does not answer.

- `allow_auto_merge` says whether auto-merge is permitted on the repository. It
  was used for "there is a gate".
- `CLEAN` says nothing is outstanding. It was used for "the gate has been
  through".
- A 404 says the query returned nothing. It was used for "there is no
  protection".
- `enforce_admins` says whether classic protection binds admins. It was used for
  "the protection binds at all".

Each of the four stood identically in every file that carried it. Not one was a
divergence between them. Three rules follow.

1. **Write what the source says beside what the value is being used for** — what
   the field means, not what is concluded from it. Where the two come apart, that
   is the defect and the query is the wrong one. This is owed wherever a value
   decides something; a command that fetches something to show the user decides
   nothing and needs no gloss.
2. **A claim about the platform's behaviour holds only with evidence**: a
   measurement carrying a date, or a primary source from the vendor. Not a
   recollection of how an API behaves. It is scoped to behaviour outside this
   repository — an API, a tool, a runner. A claim about this workflow's own
   procedure is answered by reading these files instead, and that is the one
   question a file-against-file reading does answer.
3. **Changing such a claim means finding every place standing on the same
   query**, with the search command named in the report, and listing what was
   looked at — including where nothing needed changing. The list is the
   deliverable even where it holds one entry. A run that skips the search because
   it already knows there is only one place is making exactly the assumption that
   put the same four defects into four files.

**Checking the files against each other cannot find this.** Every copy can carry
the same wrong reading, and then they agree — loudly, and through all four of the
defects above, which the checks before a handover reported as perfect agreement
the whole time. Agreement between copies is evidence about copying, not about
truth. The check that catches this kind goes to the source: the API answering
now, the vendor's own words, a measurement with a date on it. Never to the other
copies of your own text.

## Environment constraints, measured

**Nothing resumes on its own.** A run that hands the user a command and says it
will carry on once that command has run has promised something it cannot do:
Claude Code does nothing until the next message arrives. Seen in a session on 25
August 2026 — the user ran the merge, waited, and had to ask what was happening.
Say instead that it picks up as soon as they say it has, and that nothing moves
until they do. A backgrounded agent is the exception and really does come back
by itself.

Measured in the field on 30 August 2026 in `devloop-test-m`: handing over the
merge command for a refresh pull request, a run said it would take the next task
as soon as the user said the pull request was in, rather than that it would
carry on once the command had run. That is half of it. The second half — that
nothing moves until they say so — was left implied in the condition and never
said, so what this confirms is the wording of the resumption, not that the user
is told the run is standing still.

**A rule in the run's own memory can close a route the skills allow.** Measured
on 25 August 2026: before arming auto-merge, a run stopped itself and cited a
rule in its own memory — never merge directly, always hand the merge command to
the user — sorting arming under the same pattern. That rule sits outside this
repository's skills and thereby closes the one route the skills expressly allow.

**Agent Teams must stay off.** With `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1`,
every named subagent starts as a teammate, and a teammate reports only that it
finished — not what it found. `design-options` and `review-changes` both spawn
parallel agents and wait for their results; both hang. Anthropic's own docs say
so.

**One build task at a time.** Two build agents share one working directory:
measured, one switched branches out from under the other mid-edit, and both
edited the same manifest. Parallelism needs separate worktrees and is not worth
it while tasks merge to the same branch one after another.

**A hook reading the tool's JSON must undo the escapes first.** Measured on 25
August 2026: every guard here pulled the command out with
`sed -n 's/.*"command"[^"]*"\([^"]*\)".*/\1/p'`, which leaves the JSON escapes
standing and stops at the first `\"`. Two holes came out of that, both silent.
A second command on a new line walked straight past all three guards, because
the newline arrives as the two characters backslash and `n`, so the letter `n`
sits where the pattern wants a word boundary — that is how `go install` for
`gosec` ran unblocked in a real session. And anything after the first quoted
string was invisible, so `echo "hi" && brew install foo` passed as well. Both
are fixed by normalising the input once, right after reading it:

    INPUT=$(printf '%s' "$INPUT" | tr '\n' ' ' | sed -e 's/\\\\/ /g' -e 's/\\"/ /g' -e 's/\\n/ /g' -e 's/\\t/ /g' -e 's/\\r/ /g')

The general form: a guard that matches on text the tool encoded has to decode it
before matching, and a guard is only as good as the worst-shaped command it will
ever be handed. Test one against a command with a quote in it and one with two
commands in it, or it has not been tested.

**The install guard matches the outcome as well as the verb, and is still a
tripwire.** A package manager is one way a binary lands on the machine; a build
flag, a copy, a `make install` or an installer script piped from the network are
others, and they leave the same thing in the same place. The guard now catches
those too — a write verb or `-o` aimed at `/usr/local/bin`, `/usr/bin`, `/opt`,
`~/.local/bin`, `~/bin` or a Go bin directory, anything under `sudo`, `make
install`, and `curl` or `wget` feeding a shell. What it does not catch is
anything genuinely inventive, and it cannot: a `PreToolUse` hook sees a string,
not a filesystem. So the rule that binds is the one in the skills — nothing
lands outside the repository without the user running it — and the hook is what
catches the ordinary case, not a wall.

Its false positives are cheap and deliberate: a command that merely mentions
`sudo`, or copies something into a directory that looks like a bin directory,
gets stopped. The guard's own message already says what to do about that — if it
only looked like an install, say so and let the user decide.

**Arming auto-merge is allowed; merging is not — and `--auto` is not arming.**
The guard blocks `gh pr merge` in every form. The one permitted path is the
mutation that can only arm:

    gh api graphql -f query='mutation($id:ID!){enablePullRequestAutoMerge(input:{pullRequestId:$id,mergeMethod:SQUASH}){clientMutationId}}' -F id=$(gh pr view --json id -q .id)

Read off gh's own source on 24 August 2026, because the earlier version of this
paragraph asserted the opposite: `pkg/cmd/pr/merge/merge.go:588` sets the auto
flag to `opts.AutoMergeEnable && !isImmediatelyMergeable(pr.MergeStateStatus)`,
and `:821-828` counts `CLEAN`, `HAS_HOOKS` and `UNSTABLE` as immediately
mergeable; `http.go:88-103` then picks `enablePullRequestAutoMerge` on that flag
and `mergePullRequest` without it. So `gh pr merge --auto` performs a direct
merge whenever nothing is holding the pull request — including where checks
exist and are red, as long as none of them is required. Reported upstream as
cli/cli#8792, open since March 2024. What the old paragraph claimed — that
`--auto` is refused there and every merge comes from the user — was wrong on
both halves: it was not refused, it merged, and the guard waved it through
because the command text read as authorised.

Auto-merge itself still has two conditions, and only the first is a setting:
auto-merge has to be enabled on the repository, and the pull request has to be
one that cannot already be merged — GitHub only offers it where a required check
or review is still outstanding. A repository with no branch protection satisfies
the first and never the second, so arming is refused there and every merge is
performed by the user. The second condition is a state, not a property of the
repository, and it moves within seconds. Measured on 25 August 2026 in
`devloop-test-l` on pull request 15, inside the same minute: directly after the
push `mergeStateStatus` read `CLEAN`, and the mutation was refused with
`UNPROCESSABLE` and the message "Pull request is in clean status"; five seconds
later it read `BLOCKED`, and the same mutation was accepted. GitHub then merged
the pull request itself once the required check went green, with nobody
involved. So a run that arms immediately after opening a pull request can fall
into the window where the required check has not started yet, and is refused
there in a repository that does have a gate. The window opens seconds after the
push and closes again as soon as the required check is green, so the only useful
reading of `mergeStateStatus` is the one taken immediately before the mutation.

**A mergeable reading inside that window is not a pull request past its gate, and
the value cannot say that it is.** `CLEAN`, `HAS_HOOKS` and `UNSTABLE` all mean
nothing is outstanding, which is either everything having run or nothing having
started — and every run that builds and pushes goes through the second, where
`UNKNOWN` and `BEHIND` only reach pull requests that have been lying around. What
separates them is the branch, not the value: `gh pr view --json
statusCheckRollup` says whether the required check has run on this head commit.
One query covers both kinds of gate, because `StatusCheckRollupContext` is a
union of `CheckRun` and `StatusContext` — read off GitHub's live GraphQL schema
on 31 August 2026 — so it sees Actions check runs and the older commit statuses
alike, where `repos/OWNER/REPO/commits/SHA/check-runs` sees only the first. The
required names come from the two gate queries that were needed anyway:
`required_status_checks.contexts` in classic protection, measured the same day in
`devloop-test-l` as `["checks"]` against a rollup entry of exactly that name, and
`parameters.required_status_checks[].context` in a ruleset. A required name with
no entry, an entry whose `status` is not `COMPLETED` — the six are `REQUESTED`,
`QUEUED`, `IN_PROGRESS`, `COMPLETED`, `WAITING`, `PENDING` — or a status context
still `PENDING` or `EXPECTED`, means the check has not started. That is not a
refusal but a wait: ten seconds, read again, bounded at two minutes against a
measured window of five, and a bound that runs out is reported as a gate whose
check never registered rather than as a gate already passed. The three refusal
cases stay three. This is what keeps the third of them from swallowing a pull
request nothing has looked at yet, which is the same wrong sentence the three
were split apart to stop, over the pull request every run has.

**`mergeStateStatus` carries more than the four values the skills used to name.**
Measured on 30 August 2026 on a pull request seven days old: the first reading
was `UNKNOWN` and the second `BEHIND`, and neither value appeared anywhere in
`skills/` or `hooks/`. `UNKNOWN` is not a state but a computation not yet done —
GitHub works mergeability out when it is asked for, and a first read can start
that work rather than report it, so the value to use is the second one, and a
case derived from the first is derived from no answer at all. `BEHIND` is the
branch trailing its base, with the required check having run against a state that
is not what would be merged; it appears only where the base requires branches to
be up to date, so it is never evidence of a repository without a gate. It is
answered by rebasing onto the base and force-pushing — which lands nothing
anywhere and is not the merge these stages may not perform — after which the pull
request reads `BLOCKED` again and arming is accepted. Handing the merge over on a
`BEHIND` reading hands over a pull request that was one push away from arming
itself.

The list has seven values in all — `DIRTY`, `UNKNOWN`, `BLOCKED`, `BEHIND`,
`UNSTABLE`, `HAS_HOOKS`, `CLEAN`, read off the live schema on 31 August 2026,
with no `DRAFT` among them — and `DIRTY` is the one still unnamed, which is why
the shape of the list matters more than its length. **A value in
none of the groups is put in none of them**: the run names it as it read and says
it cannot place it, and it does not become one of the three refusal cases below.
A list read as exhaustive turns every value its author did not know about into a
confident wrong sentence, and the enumeration that had four values in it had been
read that way for a week.

**`allow_auto_merge` cannot say whether there is a gate.** It says whether
auto-merge is permitted on the repository and nothing else. Measured on 30 August
2026: in a repository with a required check and in one without, the field read
true alike. A refusal therefore separates into three cases, not two — the setting
off, no gate at all, or a gate this pull request is already past — and only the
first is that field's to answer. The third is read from `mergeStateStatus`; a
mergeable status with a gate present is a pull request past its gate, not a
repository without one.

**No single query sees every gate**, so the existence of one takes two.
`repos/OWNER/REPO/branches/main/protection` sees classic branch protection, is
blind to a gate set through a ruleset, and needs admin on the repository — a bare
404 is ambiguous, and only a body reading "Branch not protected" means there
really is none. `repos/OWNER/REPO/rules/branches/main` sees rulesets at
repository and organisation level and needs no special rights, but is blind to
classic protection: measured on 30 August 2026, a repository with classic
protection and the required check `checks` returned an empty list there. A gate
found by either is a gate; only both coming back negative means none; and where
neither answered because the rights were missing, that is what gets said, rather
than a case picked to have something to report.

The measurement this rule was originally written from — that the permission
classifier refused a bare `gh pr merge` as a shared-state action — is no longer
something to lean on: Claude Code's auto mode has since become the default, and
for `gh pr merge` in a project where this plugin is installed the classifier
cannot be observed at all, because the guard fires first. The reason is the
guard, not the classifier. Where it can be observed is the arming mutation,
which the guard passes: on 25 August 2026 the classifier did not refuse it and
it ran — with an explicit confirmation by the user immediately before it, so
what happens without that confirmation is not decided. The platform merges, not
the agent.

**A protected branch is only a gate for accounts that cannot bypass it.** With
`enforce_admins` off, an account holding admin walks straight through, and this
workflow runs as whatever account the tooling is authenticated with — which in a
repository somebody owns is theirs. Measured, not reasoned: a run set auto-merge
on a pull request under a required check and it merged instantly, because the
check did not apply to that account. Both parts have to be read, the protection
and who it binds.

**And who it binds is read per kind of gate, or the read contradicts the one
above it.** `enforce_admins` lives on `branches/main/protection`, the endpoint
that is blind to rulesets and 404s where the gate is one — so a run that reads
the gate from both queries and its binding from that one field alone reports a
ruleset gate as absent, having just found it. The ruleset side answers in
`current_user_can_bypass` on `repos/OWNER/REPO/rulesets/RULESET_ID`, with the id
taken off the rules `rules/branches/main` returns. It answers for the account
asking, which is the account that would merge: `never` binds, anything else does
not, and `pull_requests_only` least of all — GitHub's own description of it is
that the actor "can then choose to bypass any branch protections and merge that
pull request", which is the step the gate exists to hold. Not `bypass_actors`:
measured on 31 August 2026 it read `null` on a ruleset that answered everything
else, and read as an answer that says nobody may bypass. The field is on the
single-ruleset reply only; the list at `repos/OWNER/REPO/rulesets` does not carry
it.

Neither ruleset reading needs admin, where the classic endpoint does — measured
the same day on `github/docs`, a repository the account holds no admin on:
`rules/branches/main` returned rules from a `Repository`- and an
`Organization`-sourced ruleset, and both single-ruleset replies carried
`current_user_can_bypass: never`. GitHub says it in prose too: "Anyone with read
access to a repository can view its active rulesets." The two sides then go
together the way existence does — "they work alongside each other, and all
applicable rules are enforced", so a gate binds if either side binds — and a side
that did not answer is a third outcome, said as such. Binding has three answers,
not two, for the same reason existence does.

Whether a plan allows protection on a private repository is not something to
carry as a table. It has changed before, it varies by plan, and a private
repository on one plan refused it while another allowed it in the same week. The
API answers it for the repository in front of you.

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
Merging is, but not where it first looked. A flag whose meaning depends on
server state is not a different command: `gh pr merge --auto` and `gh pr merge`
do the same thing whenever the pull request is already mergeable, so the guard
could not tell an armed merge from a performed one by reading the flag, and
waved through exactly what it existed to stop. The two commands that really
differ are the arming mutation, which is incapable of merging, and `gh pr
merge`, which is not. A hook can tell those apart, so that one is enforced while
a merge the user asked for still goes through. The general form, paid for once:
where a guard leans on a difference between commands, the difference has to hold
in the command itself, not in what a server happens to answer at that moment.
Measured in the field on 25 August 2026: the guard let the arming mutation
through while it blocks `gh pr merge` — the first proof of that since the guards
decode the tool's JSON before matching.

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

Ten checks that catch what a conversation loses. Each one has found a real gap.
Every one of them has to run on the machine it is needed on: `head -n -1` is a
GNU extension and does nothing on macOS but print an error, which is how a check
comes to report a checksum of nothing and look like it passed. Keep them to what
POSIX gives you.

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

The opening block every skill shares is the same block everywhere. One line of
output means all twelve agree; two or more means a wording was improved in one
file and left behind in the others, which is how the same defect keeps coming
back in a skill nobody touched:

    for f in skills/*/SKILL.md; do sed -n '/^\*\*Answer in the language/,/^$/p' "$f" | cksum; done | sort -u

It also appears exactly twice per file — once at the top and once at the very
bottom. Twelve lines of output, all reading 2, means none of them lost its
closing copy:

    for f in skills/*/SKILL.md; do grep -c 'Answer in the language the user writes in' "$f"; done

The same for the block on asking, in the six skills that ask anything:

    for f in $(grep -l '^## How to ask' skills/*/SKILL.md); do awk '/^## How to ask/,/^## [^H]/' "$f" | sed '$d' | cksum; done | sort -u

The rule behind it is not about either block. **A change to one skill is a
question about all of them.** Before writing it, name which other skills reach
the same situation, and either make the change there too or say why it does not
apply. Three separate defects this month were a rule written into one file that
belonged in six.

These checks find only the half of that which shows up as disagreement. Where
every copy carries the same wrong reading they agree, and the cksums come back
clean — see "A finding that would have passed unsupervised gets written down".
For a claim about a platform the search goes by the query the claim stands on
rather than by its wording, and what it turned up is listed even where nothing
changed.

No sentence tells a run to ask for permission to reach the next stage, or to
put a question as an either-or. Every line this prints needs an eye on it: some
are real offers that stay, and the point is that each one gets looked at rather
than assumed. Run it after **any** edit to a skill, not only before a handover —
a rule added at one anchor and a sentence contradicting it further down the same
file is how three of these got in:

    grep -rn 'Ask whether\|offer to\|Offer to\|on a yes\|offering the next' skills/*/SKILL.md

Every place a run hands the user something to do says where a no leads. The
check above finds offers by their wording and misses one written in other words:
the rule that a build hands over an install command was three sentences long,
said what happens once it has run, and said nothing about declining — and none
of the five phrasings above appears in it. This one looks for the other half,
the sentence that describes the yes. Every line it prints needs an eye on it,
and it is read for two things: whether the no is there too, and whether what it
promises about carrying on is something this run can actually do:

    grep -rn 'picks up as soon as\|picks up the moment\|carry on when it has run\|once it has run\|hand them the command\|hand the user the\|Hand the user the' skills/*/SKILL.md

The installed copy is the copy you changed:

    diff ~/.claude/plugins/cache/jayjay-create/devloop/$(python3 -c "import json;print(json.load(open('.claude-plugin/plugin.json'))['version'])")/skills/start-work/SKILL.md skills/start-work/SKILL.md
