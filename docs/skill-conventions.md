# How a devloop skill is built

Every skill in this set follows these. They are not style preferences — each one
comes from something that went wrong, and the case is what holds it up, so they
are not fixed laws either. Where a convention stands in the way of a change
worth making, the case that produced it is read first. Where the case still
holds, so does the convention. Where it no longer holds — the situation cannot
arise any more, or the change is about something the case never covered — the
convention is re-evaluated: rewritten, or dropped, with every place standing on
it named in the same change, by the third rule under "A field is not an answer
to a question it was not asked". It is never gone around: a convention stepped
past in one change, with its text left standing, holds for every later reader
and for none of the runs, which is worse than either. That is the move
`docs/roadmap.md` makes under "Decisions taken against" — reopen when the
reason stops holding, because the reason is the point and not the verdict.

## Frontmatter

    ---
    name: <directory name, exactly>
    description: <menu entry: verb first, under ten words, no trigger conditions>
    allowed-tools: Bash(${CLAUDE_PLUGIN_ROOT}/bin/devloop-text *)
    ---

The third line is the grant that lets the program under `bin/` run while the
skill loads, without a prompt; every skill carries it, because every skill
inserts text that way — see "Text shared between skills".

The description is what a person reads while browsing commands, so it reads like
a menu entry: "Cut a spec into single tasks". Not the long "Use this when the
user asks…" form — that is for agents, and it shows up in the command list.
Whatever the model needs in order to recognise the situation goes in the body,
which it loads anyway once it reaches for the skill.

## Every skill carries these two

**Answer in the language the user writes in, not the language of this document.**
Without it, a long English body drowns out a two-word German message.

**A skill's name is not said to the user.** The names are how the skills call
each other and how a run is typed; to the person being helped the stages are
what happens next, and a name in a reply is a step handed to them to learn.
What reaches them is what is being done, what was done and what comes next, in
the words that describe it.

**That holds where the run cannot go on.** Where this skill cannot work — the
project is not set up, a file it needs is missing, a stage it would hand to is
not there — say what is missing and what could be done instead, each by what
it does and not by which skill it is.

**A name the user typed themselves is not repeated back either.** The reply
says what that command does.

**One skill calling another is not saying a name.** The call carries it.

**A command the person is told to type is given as it is typed only where the
run cannot do the thing itself** — a `/clear` only they can trigger. Where the
run could call the stage itself, it asks in ordinary words and hands over no
command.

**A file is named by its path where the work is about the file.**

Measured on 18 September 2026, three times in a directory with nothing in it: a
run that could not build named the build, and named the setup as the thing to
run instead, a name nobody had typed.

Neither is written into the skills any more. The language block is inserted at
the top of every skill from `shared/language-opening.md` when the skill loads,
and again at the very bottom from `shared/closing.md`; the line on skill names
is inserted directly under the opening block from `shared/skill-name.md`, in
one wording since 18 September 2026, where it stood in three before; the
wording above is the third of that day, written for the situation measured
under `## Known gaps` in `docs/roadmap.md`. The next section describes how.

## Text shared between skills

Text that has to stand in several skills in the same words stands once, in
`shared/<name>.md`, and each skill that needs it carries one line where the
text stood:

    !`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text <name>`

Claude Code runs that line before the model sees the skill and puts the
program's output in its place, so the text is in the skill on every route the
skill is loaded by — typed, through the Skill tool, from a subagent — and is
never fetched by the model. `bin/devloop-text` is a POSIX sh program in this
plugin: it takes one name made of lower-case letters, digits and hyphens,
prints `shared/<name>.md` found relative to its own location, and exits 2 on
any other name and on a missing file, which aborts the load out loud rather
than leaving a rule out quietly. The measurement this rests on is under
"Environment constraints, measured", and with its runs in `docs/roadmap.md`
under `## Known gaps`, the entry of 17 September 2026.

**The program replaces `${CLAUDE_PLUGIN_ROOT}` in what it prints**, since 7
October 2026, by the plugin's directory, the one above its own `bin/`. Claude
Code substitutes that variable in a skill's own text, read on 3 October 2026
off `code.claude.com/docs/en/skills.md` and recorded in the entry of that day
in `docs/roadmap.md`; whether it does so in what an insert line printed is
not measured, and need not be. A shared text that names a program of the
plugin — `shared/fetch-three-times.md` names `bin/devloop-bounded` — writes
`${CLAUDE_PLUGIN_ROOT}/bin/<program>` as a skill would, and the path reaches
the model either way. `scripts/devloop-expand` prints the path as a session
receives it; the check over copies under "Before a handover, run these" reads
the files under `shared/` as they stand, so nothing there changes.

**A shared file is a body, not a section.** Headings, and the `---` before the
closing language block, stay in the skill; the file holds what stood under
them. It carries no frontmatter and no heading of its own and ends in exactly
one newline.

**Adding one.** Write the file. Put the insert line on a line of its own, at
the start of the line and outside any code block, wherever the text stood, and
make sure the skill's frontmatter carries the `allowed-tools` line above. Then
run `scripts/devloop-expand skills/<skill>/SKILL.md`, which prints the skill with
every insert line replaced by what the program prints for it — the text a
session receives — and read that. A shared file is not registered anywhere;
the version is raised as for any change, since the installed copy is what
runs.

**The insert line is written out only in `docs/`.** Claude Code runs it
wherever it stands at the start of a line in a skill, an example included, so
no skill quotes the form to explain it. This file may; a skill may not.

**The notice above the first insert line is not inserted, and that is its
point.** With `disableSkillShellExecution` set, every insert line reads
`[shell command execution disabled by policy]` and no shared text arrives —
the language block among it. So every skill opens, in its own text, with the
same paragraph telling the run what to say in that case and to stop, and a
check under "Before a handover, run these" holds the twelve copies of that one
paragraph together, because it is the one thing that cannot come from the
shared source.

**What is shared today** is of three kinds, and `ls shared/` is the list. The
first is what stood byte-identical in more than one skill on 17 September 2026
and was moved on 18 September without a word changed. The second came the same
day in a second step: the places that said one thing in several wordings were
settled on one wording each, and a rule whose situation arises in a skill that
did not carry it was inserted there too. Each of those was a decision of its
own, taken under "A field is not an answer to a question it was not asked",
where the rule about copies hands off; what a skill says beyond the shared
text — the consequence that holds on its path alone — stays written in that
skill, under the inserted line. The third is a rule written once, on the day
it is written, for the skills that share its situation, never a copy and never
a settled wording: `shared/rule-not-written-down.md`, 27 September 2026,
inserted into `review-changes` and `build-work`, and "A project's rules are
written at the review's close" below says why it stands there; and
`shared/fetch-failed.md`, 3 October 2026, inserted into the four skills that
fetch the main branch through `bin/devloop-setup-state`, what to say where
the fetch failed, which "The setup state is read off the default branch"
below places; and five of 5 October 2026 — the sentence naming the four
forms a status takes, which two hooks carry a copy of; the install question
field by field and the form of its record, which stood in `setup-project`
alone until a second skill came to put the question and to write the record;
what makes the unattended mode set up in a repository, read at three places;
and the third way a review finding can go, to the check setup; and
`shared/fetch-three-times.md`, 6 October 2026, inserted into the four skills
that fetch something they build on — a cut, a task's base, the state after a
merge, the mark, a rebase — the three attempts and what the run says where
the third fails, which "Say when something did not happen" below places.

## Numbered steps where order matters

A section reads as description; a numbered step reads as an instruction. Three
rewrites of `start-work` failed because the first thing to do was phrased as a
section among sections, and the model acted on whatever was obviously pending
instead. `## Step 1 — Look` followed by "run exactly one command and nothing
else" worked on the first try.

## Shared words are defined in one place

A word two skills lean on has to be defined somewhere both of them read, or the
one that did not get the definition guesses. Three carry real weight here.

**A seam is a place where this work is checked** — a function boundary, a
module edge, an entry point. The spec names them and places each one: the path
and the symbol where it stands in the code, or the line of the chosen interface
that creates it. Nothing is tested at a seam the spec has not placed, nobody's
confirmation stands in for the placing, and a test at an unplaced seam is a
review finding. Every skill that builds or reviews works to that list.

**A condition is what a task promises will be true when it is done** — stated so
that it can be false, and so that breaking it can be seen. The seam says where it
is checked; the condition says what is checked there. A check guards a condition
only where breaking that condition turns the check red, which is why the build
produces that red rather than judging the check by reading it. The cut writes the
conditions, the build proves them, the review reads the proofs, so all three
carry the definition.

**A class is one of the nine kinds of check** this workflow tracks: format, lint,
types, unit, integration, end-to-end, secrets, dependencies, code-security. Nine
is fixed — the set does not grow per project. What varies is which of them a
project fills, skips with a reason, or leaves undecided.

**A lens is one reading of the whole diff by a reviewer that has been given no
other lens.** The reviewer is inside the definition rather than a detail of how
one is arranged, which is what makes the count mean anything: `review-changes`
reports one section per lens, `build-work` names two of them by name, and
`setup-checks` promises the user at setup that every angle a change touches gets
read. Two reviewers carrying five lenses between them ran two. **This one was
added after the fact, and why says something about the other three.** The rule
that one reviewer carries one lens stood in four places, all agreeing, and was
still gone round twice on 9 September 2026 — a run bundled five lenses onto two
reviewers and announced it, having read four sentences about how to start
reviewers and none about what the word counts. Where a word is what a report
counts, the definition does work no procedure does.

## A rule holds only on the path it is written on

The most expensive mistakes in this set were not wrong rules. They were right
rules written at one point in a skill, which then did not hold when a run reached
the same situation by another route. Four in one day:

- The handover naming `/clear` sat with the one-ticket rule, so charting ended
  without it and asked "shall I carry on?" instead — three times in one run.
- Reporting what is in flight sat in step 2 of the entry point, so a run that
  detoured through the document refresh came back and skipped it, greeting a map
  with eleven open tickets by asking what the user would like to build.
- The check table's format rules sat with the two skills that created the file
  then — one does since 1 October 2026 — so the skill that edits it mid-build
  wrote a status word that does not exist.
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

**So the first thing to look for is not a missing anchor but a competing
sentence.** Where a rule is written well, at the right place, and the behaviour
does not follow, the run is usually obeying something else in the same file — an
older statement of the same decision, standing nearer to the moment the decision
is actually made. It is not read as a contradiction while it is being read; it is
read as the instruction. Three tests, all cheap, all to be run on the file the
rule goes into rather than on the set:

- **Where else does this file decide the same thing?** A step that summarises an
  earlier step's decision in three words has not summarised it; it has written a
  second rule that will win. `build-work` step 7 answered what to do with one
  ready task, several, or none, and two of its three answers were the opposite of
  step 2's — "ask" against **Do not ask which**, "stop" against **Do not stop
  without saying what comes next**. It stood that way through three
  rewrites of step 2, and all three were rewrites of the losing copy.
- **What vocabulary does the rule's exception live in?** A rule written as an
  exception to a query — "a loose issue is not one of these" — has to be spoken
  in that query's terms, and the query's terms are what the rest of the file
  reaches for. `build-work`'s unattended finish read "until nothing in scope is
  **ready**", where `ready` is the readiness query's own word for a thing the
  same file says that query cannot see. A finish condition phrased in a
  vocabulary that structurally excludes the exception is a licence to ignore it,
  and no amount of prose at the exception's own anchor outranks it.
- **What does this sentence not replace?** A sentence that puts one thing in
  place of another — a mode for a mode, a gate for a gate, a summary for the step
  it summarises — names the limit of the replacement in the same sentence.
  Without it, a run already looking for the short way reads the replacement as
  the whole permission. Two of these are on record and they have one shape.
  `build-work` step 7 summarised step 2's decision and thereby replaced it,
  saying nothing about what it left standing. And step 5's "in unattended mode
  the check suite is this gate instead" replaces the user's answer at step 5 and
  is silent about step 4, so a run reading it can take a green suite for the
  whole of the permission and skip the review — which is what happened on 9
  September 2026. Both said what they replace. Neither said what they do not.

**These three are not nested, and it is worth saying which case each catches.**
The third would have caught the first of the two failures already recorded here —
step 7 replacing a decision — and it would not have caught the second. The
unattended finish sentence replaces nothing; it defines a finish in the wrong
vocabulary, which is the second question's case and only that one. A question
broad enough to cover all three would be a question that says think about it.
Ask all three.

**And the third one does not become a check.** Whether a sentence has considered
the other mode is a question of meaning, and a search for the other mode's name
would be keyed on wording and mostly noise — the same defect this file records
under the handover checks. It belongs with the questions asked before writing,
not in the list run before a handover. Nobody should build a check for it later
and take the case for covered.

**This is the fourth case of this convention and the count is the finding.** The
loose-issue rule in `build-work` step 2 was itself written as the answer to the
same step being broken three times and answered three different ways — and it was
written by appending, at one anchor, while two competing sentences elsewhere in
the file were left standing. The convention was on this page, with the two cases
above it, the whole time. Measured on 9 September 2026, three further violations
followed, and every one of them matched a competing sentence rather than a gap.
Applying this page to the file being edited is part of writing a rule, not a
review step afterwards.

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

## A reason is not the evidence the rule asked for

Where a rule decides something from evidence — what the diff contains, what the
file says, what a command returned — a sentence explaining why the evidence need
not be followed is not one of the ways it gets decided. It is a judgement
standing in the place the evidence was supposed to occupy, and it looks like
diligence, which is why it goes unchallenged. Two measurements, one shape:

- On 6 and 7 September 2026 a review was cut from five angles to three, each
  omission carrying a reason, while the triggers for both omitted angles stood in
  the diffs the rule reads from.
- The same run split every review finding into fixed and filed on the word
  "mechanical", with the written criterion for that split standing in two files
  the whole time.

**Attended and unattended part company here, and the rule is written for the
harder half.** With the user there, a reason at least reaches somebody who can
contradict it. Unattended nobody reads it, so nothing separates a case correctly
ruled out from one talked out of the way, and no reason is taken. The rule that
gets written is not "give a better reason" — it is that the evidence decides and
a reason buys no exception to it.

**A criterion in a skill is named per case, not summarised.** Where a run
announces how it applied one, it says which of its written halves the case falls
under and why. A word reached for at the moment of deciding — mechanical, small,
routine — reads like a criterion and cannot be disagreed with, because nobody can
tell where it came from.

**And a step is never exempted on a claim the step itself would check.** Measured
on 9 September 2026: a run skipped the review entirely, on the ground that its
own change was a comment-only diff and a full review disproportionate. The
question of whether that description is true is one of the things a review reads
for, so the exemption is decided by the party whose account is under review. This
is not about whether the description was right — it may well have been. It is
that no run can establish it from where it stands, so the exemption cannot be
written at all: a change announced as comments that carries code is precisely
what such a clause would let through. Where a step's own subject matter would
settle whether it may be skipped, it may not be skipped.

## A duty to say something needs a place where it is said

A clause requiring that something be named at the close is not written until the
close has a line for it. Otherwise it is a rule whose execution has no site, and
the run satisfies it by intending to. Both closes count: the one where a person
is handed the work, and the report an unattended run writes instead. This has
been repaired twice in the last two rounds, and it is cheaper to check while the
clause is being written — name the place, and go and look at it.

## Say when something did not happen

If a skill you call does not exist, say so — do not silently substitute another.
If a background agent fails to return, say so — do not present a comparison that
is quietly one draft short. Both happened repeatedly and went unmentioned.

**And when a command gives no answer at all, that is the same rule one layer
down.** A command whose output does not come back is reported: the command as it
was run, and the message that came back in its place. One second attempt is
allowed and reporting is not owed twice — where the second answers, the run
carries on with that answer and names the first refusal beside it. What is not
allowed is the silent retry, because it costs nothing to make and hides that a
step ran once without an answer. One command is counted differently since 6
October 2026: a fetch that something is built on — a cut, a task's base, the
state after a merge, the mark, a rebase — gets three attempts, each bounded
to thirty seconds by `bin/devloop-bounded` and ten seconds apart since 7
October 2026, unbounded and fifteen seconds apart until then, each failure
named, and only the third stops the run;
`shared/fetch-three-times.md`, inserted into the four skills that fetch so,
says why, with GitHub's own checkout action as the measure, and the entry of 5
October 2026 in `docs/roadmap.md` has the reading under its third addendum.
Measured on 31 August 2026 in a test project: a
command was refused by the runtime's permission check — not the platform, and the
message asks in so many words for a pause and an explanation to the user of what
the permission is for — the run repeated it without a word, got an answer the
second time, and mentioned the refusal in no report. It came out on a question
about something else. The refusal is not this workflow's to prevent. The silence
is, and it is the whole finding.

**A missing answer is its own outcome, and no enumeration has a case for it.**
Where the output would have decided something, silence decides nothing: it is
not the nearest value, not the safest-looking case, not the one that lets the run
carry on. This is the same shape as **A field is not an answer to a question it
was not asked** — there a value was read for something it does not say, here
nothing was read at all — and it is worse in one respect, because a run that
reasons from a missing value has no wrong reading to point at afterwards. So the
run says the query did not answer, names the command and the message, and stops
short of the conclusion. Where the state was going to decide an action, the
action does not happen: nothing is armed, nothing is declared past its gate,
nothing is reported clear. Where a person is there, the report goes to them as
something they can act on — the permission is theirs to grant and the command
theirs to run — and where nobody is, it goes into the run's own report and the
run stops there. A permission prompt in an unattended run is a second finding on
its own: the tool classes were not all approved before it started.

**An empty answer is not a missing one, and this is the line that gets crossed.**
A command that ran and returned nothing has answered — no match, no open issue,
an empty ruleset list, a clean working tree — and this workflow rests on exactly
such commands: **Before telling the user something is missing, search for it**
asks for a negative backed by the command that came back empty. The test is
whether emptiness is one of the answers the question has. A list can be empty. A
field every object of its kind carries cannot come back absent — every pull
request has a `mergeStateStatus`, so nothing where that value was asked for is
the read having failed, not the pull request lacking a state. An error is an
answer too, and it is read for what it says rather than counted as silence: a 404
whose body reads "Branch not protected", a check that comes back red, a rejected
push. A guard blocking a command is a missing answer whose message already says
what to do, and doing that is the report. A re-read a skill prescribes — ten
seconds for a value that moves — is an instruction being followed, not a retry.

**A guard is answered, not got around, and that is the half that has failed.** A
block is a message; the way through it is the one the message names. The same act
under a different command name is the act that was refused, and a text reworded
until the match no longer catches is the same command with the words changed.
Measured on 6 September 2026 in `devloop-test-o`, twice in one day: the branch
guard stopped a remote branch deletion and the run's next command was `gh api -X
DELETE` on the same ref; the install guard stopped a pull request body and the run
reworded the sentence until it passed, having said in the same breath what the
hook matches on. Both runs had the reading right, and a correct reading buys the
right to say it, not to act on it — a refusal held to be a false positive is still
a refusal. Where a person is there the decision is theirs, and where nobody is the
run stops rather than carrying on past a block. That last part is what no hook can
enforce, which is why it belongs here and not only in the guard's own message.

**Narrowing what a guard ever sees is a different act, and it stays allowed.** A
body passed to `gh` through a file rather than as a string on the command line
keeps a quoted install command out of the install guard's reach, and that is not
the move above: it is written into the skill, decided once, in the open, and it
holds for every body the skill writes. A rewording is decided by the run, at the
block, for the one command that was refused. The test is who decided and when —
not whether the guard ended up matching.

**And a narrowing names every channel, not the one that was measured.** The first
version of the rule above said a body goes into a file and the file is passed
with `--body-file`, and said nothing about how the file is written — so a heredoc
put the same text back through the shell and the guard blocked that instead. The
incident it was drawn from had both halves in it, the string and the file, and
the rule was drawn from the half that was quoted. A rule that stops one route and
leaves the next one open has narrowed nothing; it has moved where the block
happens. So the channels get enumerated as the rule is written, and where one
cannot be closed — a title that has to stay on the command line, because there is
no flag to read it from a file — the rule is about what the text says rather than
about how it travels.

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

**A consequence that a later question decides is said at that question.**
Since 5 October 2026 a no to the install question, or to the one on check
tools in the dependency file, leaves the unattended mode unavailable, and
neither question says so the first time it is put: with the person there the
no costs nothing that is not said, the run handing the command over or asking
each time, and under a first no the mode is not set up without the question
being put a second time, in `setup-checks` step 8, where the line under its
no says exactly that.
The moment of asking is the moment the consequence can be chosen or avoided,
and for this one that is the second asking.

## A command handed over is backed, and its result is read

A command a run hands the user to run, where it fetches something from outside,
is backed before it goes over: the vendor's own installation line, quoted from
where it was read, or the path in the command resolving. **Name which of the two
it hangs on** — "checked" names neither. Measured on 6 September 2026 in
`devloop-test-o`, `github.com/gitleaks/gitleaks/v8@latest` was handed over as it
stood; the organisation's name is not the module path, which is
`github.com/zricethezav/gitleaks/v8`, and it failed first in the workflow on the
main branch after the pull request carrying it had merged.

**Backed before it is handed over covers every channel it travels on**, not the
one that was measured — the message, and any issue that carries the command
because the user declined. A command in the tracker outlives the session and gets
typed by somebody who no longer knows the case.

**Its success is read off the result, not off the user reporting that it ran.**
Look at the path that installer writes to, read from the installer rather than
assumed, and see the thing standing there. **`command -v` answers a different
question**: it finds any copy anywhere on `PATH`, including an older one put
there by something else, which is exactly why the broken line above looked like a
success on the user's own machine. Reading the result is not distrust of the
user — they answered the question they were asked, and it was the wrong question.

## Describe what must be said; never dictate wording

A model performs a task; it does not transcribe. Asking for a fixed paragraph
gets a paraphrase. Listing what the paragraph must cover gets all of it.

## A text is as long as what carries the decision, and written for its form

Two texts of this set grew the same way between 24 August and 29 September
2026 and failed the same way. The install guard's block message was written at
112 words and stood at 337 at the end, grown in five changes, each answering
something a run had just got wrong; question 4 of `setup-project` — question 3
since 1 October 2026 — grew to thirteen points the same way. Every addition was
justified, and no addition read the text it went into as a whole. The message reached the run, and the
person watching, verbatim and unreadable. The question did not reach the
person at all: ten of its thirteen points were prose above two option lines,
and the form that carried it has no room for prose. Both cuts are recorded in
`docs/roadmap.md` under `## Known gaps`: the entry of 29 September 2026 on the
message's cut, the entry of 30 September 2026 on the question's; this is the
rule drawn from them.

**Nothing that carries the reader's decision comes out, and nothing that does
not stays in.** A text is held to that part by part, and who reads it decides
what carries. Where a run reads it — a hook's block message, what a program
prints into a session — what carries is what the run does differently for it
at that moment, with nothing else in front of it: the guard fires on any Bash
call, with no skill loaded none of `shared/` or `skills/` is there, so the
message carries every duty itself and none of the reasons behind them. Where a
person reads it — a question, an offer, a handover, a close, an issue or a
pull request body a run writes — what carries is what they would answer or do
differently knowing it. Three tests decide a part, in this order, and they are
the tests the question was cut by: would the reader decide differently with
it; do they meet it elsewhere before it matters, without going to look; is it
true at the moment it arrives, for everyone it arrives in front of. A part
that fails the first goes. One that fails the second goes to where it is met —
what the project declares went to step 2's report, where the record stands to
step 9 — or goes altogether where it is met already. One that fails the third
is wrong rather than long, and the cuts found that kind most often: `$REF`
stood in every cause that had resolved one and a stand-in phrase, untrue, in
the causes that had not; the two costs of a decline assumed a caller with check
classes and tasks. The standard is that nothing in the text implies something
untrue, not that everything true is said.

**A text is written for the form that carries it.** Ten sentences above two
option lines are not too long — they do not arrive, whatever they say. The
harness's choice widget has a slot for a question line, a header and the
options, and none for prose; a hook's message arrives whole on stderr; a
question a run puts arrives in whatever the run puts it in. So the form is
named where the text is specified — as `setup-project` step 4 does, naming
since 3 October 2026 the field of the widget each point of question 3 goes
in, after two named forms that put the points in prose had been met by a tab
of a form in three runs — and a text and a form that do not fit are one thing
wrong, not two: the text goes into a form that holds it, or it is cut to what
the form holds, and it is never made shorter in the hope that it gets through. Nothing in this set named
the widget before 30 September 2026, and that is how a question approved twice
arrived as four lines.

**What this covers, and what it leaves where it is.** It covers the texts a run
delivers whole, at one moment, to a reader who has nothing else in front of
them and does not go and look: what a hook or a program prints into a session,
and what a run says or writes for a person. Those cannot point elsewhere, which
is what makes their length the reader's problem. It does not cover the skills
and the shared text: a run reads those at load, and they can point — the
branch test under the entry of 14 September 2026 in `docs/roadmap.md` is the
remedy for a document too long, and the sprawl of `build-work` stands there as
an open defect this rule does not answer. It does not cover a project's control
documents; the exit under "A project's rules are written at the review's
close" is the same principle for `standards.md`, with the evidence on what a
line costs that the agent reads and does not need. And it does not cover this
file, the header of `scripts/devloop-stock-take`, the dated entries or the
table: a record is as long as what it records, written once and read by
somebody who went to look, and the case is what holds a rule up, by the
opening of this file. A rule that covered everything written anywhere would be
applied to nothing.

**What it does not replace.** Every duty this file puts on a text — where a no
leads, the backing of a command, the cause of a block, what a question states
under "Every question carries its own reason" — carries the reader's decision
and stays. What this decides is where each is said: once, where the reader
meets it, and not again in every text after it. The four things a question
states are what has reached the person by the time they answer, not four
sentences in each question: a setup whose opening said that a few questions
come with it has said why the next one comes now.

**Nothing mechanical catches an overlong text; what holds is a duty at the
moment of adding, and it is a thing done.** Each of the five changes that grew
the message did one thing: added a sentence, with a reason. An order that adds
to a delivered text does three more, and its report shows them. It names the
reader and the form. It reads the whole text as that reader receives it after
the addition — the hook is fed its JSON and its stderr is read; the expanded
skill's question is read against the form's slots — and holds every part, the
old ones with the new, to the three tests. And it lists what came out and
where each part went, as the entry of 29 September 2026 does under "What came
out" and "What stayed" and the entry of 30 September under "What the thirteen
came down to". An order whose diff adds to such a text and whose report carries no
such list has not done it, and that is what it can be shown to have broken. A
guard that counts characters is not built: the message was not wrong for its
length but for what the length was made of, and a count cannot tell the two
apart. The one text whose form fixes a length is the description under
"Frontmatter", and its limit stands there.

## Works with nothing else installed

Everything here has to work with this plugin alone. Another plugin being
present may make a run better; it may never be what makes a run work, and it
may never be what runs in one without being seen. That rules out calling into
another plugin's skills, and it rules out a hook another plugin ships standing
in for anything of this set's: check whether a capability is there and use it
if it is, carry on without it if it is not, and never make it a step that fails
when it is missing. A missing skill inside this set is a stop with a stated
fix; a missing plugin outside it is not the user's problem at all. And a run
that measures this set is measured with nothing else installed, or its record
says what else was there.

This was written after finding that a second plugin's hooks had been running
alongside every test for a day without anyone noticing. That is the case, and
it is what the convention covers: the skills and hooks of another plugin.

**It does not cover tools.** A tool the project declares in its own manifest is
the project's: it lands inside the repository, travels with it, and is not what
this convention or the install guard are about — where the guard stops one all
the same, that is the false positive its own message names. A tool that lands
outside the repository — a linter, a driver, whatever a wrapper downloads on
first use — is the person's, and it lands there under their explicit
permission only: asked at setup, with them there — and since 5 October 2026 a
second time, by the same question, only where the unattended mode is set up
and the record does not say yes — and held as recorded
state that a hook can read. Nothing else counts as that permission, and a
compiler or an interpreter is not among the kinds it can name — the first
ruling below says why.
What the project declares in its dependency file does not: a guard that read a
project's files per language and got one of them wrong would install with
nobody asked, and an abort is loud only where somebody is reading: with nobody
there, it is the first thing to go wrong. What the project declares
is reported at setup, in step 2 of `setup-project`, before the question is
put; it does not stand in for the question. Since 28 September 2026 the install guard reads that recorded
state and the skills run the install where it says yes — **The install guard
reads a record** below says how — and the question that writes it stands in
`setup-project` step 4 since the same day, version 0.115.0, and in the empty
case since 0.118.0, as question 4 until 1 October 2026 and as question 3
since: a project set up before either carries no record, and
there the guard blocks every such install with that cause and the person runs
it themselves, as before.

**Entering a check tool in the project's dependency file is a second
permission, since 5 October 2026, and no guard holds it.** A tool the project
declares lands inside the repository, by the paragraph above; but the
declaration is a line in their dependency file, and `setup-checks` step 2 has
held all along that such a line is theirs to allow. Whether a run may enter
one itself is asked in `setup-checks` step 3, with them there, wherever no
record stands, a dependency file existing or not, and the answer is kept in
`docs/agents/environment.md` under `## Dependency permission`, a key and a
value per line in the shape of the install record, written by `setup-checks`.
It covers the tools this workflow enters for its own checks; what a task
enters for the thing it builds is that task's work. No hook can hold it:
tasks change the dependency file all the time, and a guard on that file could
not tell the two apart. So it is a rule on the run, said as a rule where it
stands, which **A limit the limited party maintains is not a limit** below
asks of it. The skills read the record with `git show` off the main branch as
last fetched; no reader under `bin/` and no line at the session start are
built for it. Under a no the run asks about each tool, and after a no to one
it installs that tool outside the project where the install record says yes,
or hands the command over where it does not; the class is switched off, in
the user's name, where no candidate is left, where the command handed over is
not run, or where the question — three answers since 6 October 2026 where
the tool has no way outside the project and another tool is left for the
check, the other tool or the check off — was answered with the check off.

**Runtimes are not a kind the permission may cover.** Ruled on 28 September
2026, for how milestone 3 of `docs/plan.md` is built; the plan carries the
question under "Open" until that milestone lands. A yes to runtimes could not
be honoured and a no could not be enforced. Through a version manager — `nvm`,
`rustup`, `asdf`, `mise`, `sdk`, all in the guard's manager list — the
destination stands in no place list, `~/.nvm`, `~/.rustup`, `~/.asdf`, and the
change reaches shell profiles the guard never reads, so under the milestone's
rule, a pass only for an allowed place, the command stays blocked whatever the
record says. Through Homebrew, `brew install node` and `brew install
shellcheck` are the same string, and the guard cannot tell a yes to one from a
no to the other. A kind whose yes the guard cannot pass on one route and
cannot tell apart on the other is asked for appearance's sake, and **A limit
that reads like a safeguard and is not one is worse than no limit at all**
below says what that costs. So a compiler or an interpreter stays the person's
under every answer, as "Where the set ends" in `docs/plan.md` already says,
and the question does not ask it: until 3 October 2026 it said so as a
boundary; from then until 5 October 2026 it said only what a yes lets through
— a runtime, through a package manager — because the two runs of 30 September
2026 delivered the boundary as an assurance the guard does not hold; and
since 5 October 2026 it says nothing about runtimes at all, the second of the
two ways finding A of 30 September 2026 leaves open, since by the account of
the entry of 4 October 2026 the assurance was delivered again with only the
leak in the question; the rule
stands here, on the run, and is not promised to the person. Where a runtime
is genuinely needed, that moment has a person in it: the stack is chosen with
them — in Stage 1 once milestone 8 puts it there; today nothing picks it, as
the roadmap records under "How the stack gets chosen" — and a task that turns
out to need a language the spec did not choose is a task not buildable as
cut, the fifth case under "With nobody there" in `build-work`. What it
costs: a check tool that needs a second runtime falls to the person, unless a
route without one exists — `brew` where the tool has a formula — and
`setup-checks` step 3 has to say so; and the stage where the person picks the
stack has to confirm that the runtime stands, or an unattended run loses a
round to an issue over it. Places that reach the same situation and change
when milestone 3 is built: changed on 28 September 2026 with the tools half
of that milestone — milestone 3 of `docs/plan.md`, "and whether a runtime is
one of them", and the runtime item under its "Open"; "Where the set ends" in
the same file, "unless that permission names runtimes as a kind, which is
open below"; `build-work` step 3 point 7, "a compiler, a runtime, a tool from
a package manager" — and, since the question was built the same day, version
0.115.0, question 4 of `setup-project` step 4 — question 3 since 1 October
2026 — which said the boundary as this ruling asks until 3 October 2026, the
leak alone until 5 October 2026 and nothing about runtimes since, the roadmap
entries of those two dates saying why.

**The first kind is a tool, not a tool for a check class.** Ruled on 28
September 2026, for the same build. Anything that runs and ends — a linter, a
scanner, a code generator, a migration command. Drawn there because on the
machine they are the same thing, a binary in a directory, and because the
narrower line would make the run classify its own need under the pressure of
finishing a task, with the guard open and the difference nowhere in the
command: a generator the task needs can be read as something a check class
runs, and "A reason is not the evidence the rule asked for". What differs
between the two is only what a decline costs, and `build-work` step 3 carries
both already: a check class goes `skipped` with the reason, the task becomes
an issue carrying the exact command. Nothing outside the named kinds changes
hands: it stays the person's, as today. Places that speak of tools for check
classes today and change when milestone 3 is built, changed on 28 September
2026 with the tools half of that milestone: `setup-checks` step 3, which read
"Never install anything system-wide without asking" and now installs under a
record saying yes, a decline still making the class `skipped`;
`setup-project` step 4 question 3, "Ask separately whether missing tools
should be installed", which said where a no leads from that day until 1
October 2026, version 0.122.0, when the mapping of tools to classes and that
question left `setup-project` for `setup-checks` steps 1 to 3 alone — the
sentence on where a no leads standing in its step 3, and the setup filling no
class and installing nothing since; the install guard's
own message, which names the cause of the block since 28 September 2026 and
named the two costs of a decline until 29 September 2026, when it was cut to
the approved wording of that day, which says only that what a decline costs
this work gets said — the roadmap entry of that date says why the shared
blocks could not carry it, since the guard fires on any Bash call and with no
skill loaded nothing of `shared/` or `skills/` is in front of the run; and
`build-work` step 3 point 7, which names the kind as
anything that runs and ends, with the two decline cases under it standing as
the two costs. Milestone 3 of `docs/plan.md` keeps "tools for check classes"
as written on 19 September 2026 and says beside it what this ruling made of
it.

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
see "Working on devloop itself" in the README. A shared file under `shared/`
needs no entry anywhere — the program finds it by name at load — and the
version goes up for it all the same, for the same reason. It goes up once per
branch, not once per order: a squash merge lands only the number the branch
ends on, and every run recorded under an earlier one names a version main
never carried. `scripts/devloop-version-guard`, registered in
`.claude/settings.json` of this repository, blocks the second raise and names
the three numbers; the entry of 29 September 2026 in `docs/roadmap.md` has
the case that taught it. And a pull request into main lands only once the
check `stock-take` is green: `.github/workflows/stock-take.yml` runs
`scripts/devloop-stock-take` and its self-test on the merged state, and the
branch protection on main requires that check, for admins too, since 29
September 2026, so `gh pr merge` is refused while it is pending or red; the
entry of that date in `docs/roadmap.md` on the merge gate carries the setting
and the merge sequence.

## Writing long files

Send a SKILL.md in two or three blocks rather than one. A single long heredoc
gets truncated on paste, the file is left unterminated, and nothing reports an
error — the skill simply does not exist. End each block with `wc -l` and an
expected number.

**The case has not been seen since the editing tool exists.** It came from a
file pasted through the shell; a file written with the editing tool is neither
pasted nor terminated by hand, and `docs/roadmap.md` records no occurrence of
it, dated or otherwise. Kept, because obeying it costs nothing: where a file
does go through the shell, the count at the end of each block is still the
one thing that reports a truncation.

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
3. **Changing a rule or a command means finding every place standing on the
   same thing**, with the search command named in the report, and every place
   looked at listed — including the ones where nothing needed changing. **This is
   the widest of the three and the only one not confined to a claim about the
   platform:** it holds for any change to a rule or a command in this set. Widened
   on 13 September 2026, after being walked through four changes that had already
   happened. The search runs over `skills/`, `hooks/`, `docs/`, `README.md`,
   `shared/`, `bin/` and `scripts/` — everything here that states a rule or
   carries a command, the text inserted into skills, the program that inserts
   it and the tool that expands it included. What a command printed is taken
   from its output in the same session, never from memory: on 5 October 2026
   four notes of findings described what a search of the roadmap had returned,
   written down from recollection, and two of them said something the command
   had not printed.

   **The search goes by the subject the statement stands on, not by its wording.**
   Four places can say one thing in four wordings, and then no search by wording
   reaches them all. Measured the same day on what follows arming, which
   `build-work` step 6, `setup-checks` step 7, `setup-project` step 8 and
   `README.md` under "Merge and verify" all state: `do not block the session`
   finds the first, `actually arrived` the middle two, `that it actually landed`
   the last, and no one string finds more than two of the four. All four were
   rewritten later the same day, when the wait after arming was built, so those
   strings no longer find anything: what is recorded here is the measurement, not
   a way to find the places today.

   **The list is what is read; the search is not the proof.** A search that found
   half the places looks exactly like one that found all of them, so a report does
   not become checked by carrying a search command. What is read is the list, in
   words: each place named, and beside it either the change made there or why the
   rule does not hold there.

   **A dated measurement in `docs/roadmap.md` is not one of the places.** It
   records what was read on a day, and changing it falsifies the record. That
   covers measurements and not status: a line saying something is unbuilt is a
   claim about now, and the round of 9 September 2026 found one that had been
   built two days earlier.

   **Where the same thing stands in several byte-identical copies, this rule is
   not the remedy.** It has to be performed again at every change, and nothing
   notices when it is not. Until 18 September 2026 what held such copies
   together was a checksum over them, three of which stood under "Before a
   handover, run these"; since then the text stands once under `shared/` and is
   inserted into every skill at load — see "Text shared between skills" — and
   there are no copies to hold. Where a copy has to stand outside the skills,
   as the arming command does in `hooks/pre-tool-use-merge-guard.sh` and in
   this file, a check under the same heading compares it with the shared file.
   **What this replaces is the search, not the copies.** "A rule holds only on
   the path it is written on" says to write a rule at every route that reaches
   it, and two copies that agree still beat one copy half the runs never read;
   inserted text is that duplication with its cost taken away, not an argument
   against it.

   **The places that said one thing in several wordings**, found in the
   reading of 17 September 2026 that prepared the move and left untouched by
   it, were settled on 18 September in a second step, one wording each in
   `shared/`, inserted wherever the situation arises: the line on skill names;
   the language of the tracker and of the files a run creates; a body through
   a file; a finding never left in the conversation; who owns `checks.md`;
   restating what a subagent hands back; a target rendering a verdict; a
   command backed before it is handed over; the reading of an empty answer;
   the definition of the mode mark; referring to work by its name; and the
   seam definition, now in `plan-work` and `diagnose-bug` as well. "If a tool
   call fails, say so" went into the shared block on a command that does not
   answer, as its last paragraph, and the copies beside it fell.

   A run that skips the search because it already knows there is only one place
   is making exactly the assumption that put the same four defects into four
   files.

**And a fact is no more an answer to a question it was not asked than a field
is.** The same shape, one level over, and the harder one to catch because nothing
about it reads as a judgement. Where a rule decides from a written trigger — the
diff contains this or it does not — a true, checkable statement about the diff
that answers a *narrower* question passes every test for evidence and still
decides nothing. "The diff adds no new error handling" is a fact anybody can
verify against a trigger reading "**any** error handling, fallback value, or
default return"; a diff that changes an existing default return makes the fact
true and the trigger fires. So where a trigger is written out, the admissible
statement is that trigger's own words negated, item by item, and not a fact of
the writer's choosing about the same subject. A rule that asks only for "a fact
rather than a judgement" stops one of the two routes and leaves the other open.

**Checking the files against each other cannot find this.** Every copy can carry
the same wrong reading, and then they agree — loudly, and through all four of the
defects above, which the checks before a handover reported as perfect agreement
the whole time. Agreement between copies is evidence about copying, not about
truth. The check that catches this kind goes to the source: the API answering
now, the vendor's own words, a measurement with a date on it. Never to the other
copies of your own text.

**A query is scoped to a type, and a stock-take built on it inherits that
scope.** The second answer the rule above produced, and it is not a misread
field: every field was read correctly and the answer was still wrong, because
the thing being asked about was never in range of the question. GitHub's
`Repository.issues` returns nodes of type `Issue`; `PullRequest` is a different
type; so the query that asks a project what is open could not return a pull
request however its filters were set. Read off the live GraphQL schema on 31
August 2026, after two runs in a row started fresh work on an issue whose
finished work was sitting in an open pull request nobody had mentioned.

What makes this kind invisible is that the query is not wrong and does not fail.
It answers, the answer is complete for what it asked, and the gap sits in the
question. Nothing goes red, and the same thing is missing every time in the same
way. Three rules follow.

1. **Before building a stock-take on a query, name what that query cannot
   return** — not what it filters out, but what is outside its type's range
   altogether. Where the answer is "nothing", say so. Where something is, it
   needs its own query, and the stock-take is incomplete until it has one.
2. **A neighbouring endpoint answering the question is a reason to check, not a
   reason to assume.** REST `repos/OWNER/REPO/issues` returns pull requests among
   the issues and the GraphQL field of the same name does not — measured the same
   day on `cli/cli`, six of ten. Two endpoints wearing one name are two
   questions.
3. **Where several stages read the same stock-take, the second query goes into
   the same command.** A command that has to be remembered is a command a run
   forgets, which is exactly what happened here, in two skills, inside one week.
   One command that returns both halves cannot be half-run.

**A relationship nothing writes is not there to query.** The link from a pull
request to the task it finishes is a real, queryable relationship — and it
exists only where a closing keyword was written into the pull request body.
Nothing in this set said to write one. It happened by habit, and where the habit
lapsed the link is simply absent: measured on 31 August 2026, a task built and
merged through this workflow with no reference in either direction. So a rule
that reads a relationship has to name the step that creates it, in the file that
step lives in, or it is reading a field somebody else's diligence filled in.

**And a naming convention is not that relationship.** The branch in the incident
above carried the issue number, which is what made the missing pull request
findable by hand — but a branch name is a string this workflow writes, and the
first pull request that arrives from outside it carries whatever its author
chose. Reading identity out of a name works right up to the first case that did
not come from here.

**A count lives in one place, and everywhere else points at it.** The number of
checks in the handover section stood here and again in `docs/roadmap.md`. A
check was added to the section, the sentence above it was raised, and the copy
one file over kept counting the old total — as did the sentence here, one short.
Both were true when they were written and neither goes red, and a reader who
meets the smaller number first has no way to tell which is current. So a figure
describing something this repository holds — how many checks, how many skills,
how many hooks — is written once, where the thing itself is, and every other
mention names that place instead of repeating the number. Where a second copy
really is wanted, it carries the command that regenerates it, so the next reader
can settle it in one line.

**A time reference names its date, not its neighbour.** "The same day", "the
next day", "that morning" all resolve against the paragraph above, and the
paragraph above is exactly what a later measurement gets inserted in front of.
One insertion moved a reading taken on 30 August 2026 to 7 September without
changing a word of the sentence carrying it, and the paragraph under it still
said "built the next day", which then pointed nowhere. Every word stayed
correct; only what they referred to moved. Write the date.

**A run's date is copied from the session log of that run, not from memory.**
The stock-take of 23 September 2026 held two dated measurements in
`docs/roadmap.md` against the logs of the runs they record and found each on
the wrong day: one run dated the day after its log begins, one the day before.
The measurements stand as written, since a dated record is never edited; what
is built is the rule. A run's date is the day its session log opens, read in
the log's own timezone and written out; a date set down from recollection, or
from the paragraph the entry was written under, is the neighbour's date and
not the run's.

**A figure taken from a command is copied out of that command's output.** One
sentence gave three numbers as the result of a named `grep`, and re-running that
same `grep` at the very commit that recorded it returns different numbers for
two of them; the sentence after it counted the hooks in this repository and got
that wrong too, against `ls`. Nobody had run anything — the figures were
estimated and set down beside a real command, which is what made them read as
evidence and what makes this shape worth its own rule: printing the command is
half of the proof, and pasting what it answered is the other half. This is the
narrow, checkable case of a claim needing evidence, and it is the one where the
evidence is one command away.

**A measurement nothing depends on never becomes a condition for the next
step.** Where a run cannot be recorded, it is not recorded and the work goes
on; "never walked" is then the honest answer and not an obstacle. Written on 26
September 2026, because two days of work waited on a run that changed one line
of a table and nothing else.

**A file only its writer reads is not a safeguard, and it looks exactly like
one.** The unattended mode kept its round count and its cap in
`.claude/autorun.local.md`, and a sentence in the skill described the hook that
read it. `grep -rn autorun hooks/` was empty the whole time. So the run wrote the
limit, the run read the limit, and the run raised the limit — measured on 6 and 7
September 2026, four to six, in the same write that advanced the count. Nothing
went red, because a file with no reader cannot disagree with anybody.

Two things follow, and the second is the one that costs something.

1. **Before writing state to a file, name what reads it back.** Where the answer
   is "this run", the file is a note to self and should be said in the
   conversation instead, where the user can see it. A file suggests a mechanism
   and a sentence does not, and the gap between them is where this hid.
2. **A limit the limited party maintains is not a limit, and writing the number
   down does not change that.** Two things are wrong with a cap a run keeps, and
   they need separating. One is that the run may move it, which is answered by
   fixing the number in the step where nothing else calls it. The other survives
   that answer untouched: the run still has to keep the count against itself, and
   a number in a skill is an instruction like every other instruction in it — the
   same kind of thing as the steps a run has been measured skipping. Fixing the
   number removes the adjusting, not the counting.

   **So a limit is either enforced from outside the run or it is not a limit, and
   the difference has to be said where it is written.** Enforcement here means a
   hook that does the work itself and blocks: `hooks/stop-checks.sh` runs the
   check chain, counts the turn-ends whose failure has not changed, and exits 2 at
   its limit — nothing in the run has to co-operate. Compare **Stderr only
   reaches the model when the hook exits 2**, which is why a `Stop` hook can
   refuse a stop and never cause one, and a `PreToolUse` block on a single command
   name is the shape already measured being stepped around. Where no such
   mechanism is available, what remains is a rule, and it is said as a rule.

   **A limit that reads like a safeguard and is not one is worse than no limit at
   all.** Whoever reads it later takes the case for covered and stops looking for
   the thing that would actually catch it. So an open case is recorded as open in
   `docs/roadmap.md` rather than answered with a sentence that only looks like an
   answer — which is the same move as **A file only its writer reads is not a
   safeguard**, one level further out: there the machinery was missing, here the
   machinery was never possible.

## A project's rules are written at the review's close

The rule a project holds and nobody wrote down goes into
`docs/agents/standards.md` where the review closes:
`shared/rule-not-written-down.md`, inserted under "What happens to a finding"
in `review-changes` and under step 4 of `build-work`. The rulings behind that
block stand here and not in `docs/roadmap.md`, whose dated entries are a day's
measurements and may go stale, so that a ruling filed among them is read as
one: the Should of the entry of 13 September 2026 there said the build would
read the rule, the entry on Pocock's set a day later recorded the review as
the carrier of the standards, and the block of 26 September took the first
wording over unchecked.

**The lookup replaces the counting.** Nothing survives a task that a later run
could count against: the state the turn-end hook keeps is deleted on green, a
finding's identity is prose a lens wrote, and the tracker holds issues, not
findings. So a threshold at the second occurrence of a finding cannot be
computed, and the lookup against `standards.md`, a command of `checks.md` and
the task's own issue answers in the moment instead: a rule found there means
the documents did not fail, a rule found nowhere is written at the first
finding.

**The block does not say the build reads the rule.** Step 3 of `build-work`
hands the subagent the paths of the control documents and never tells it to
read the rules; `review-changes` is told to read the file first and makes it
the source of the standards lens. So a rule takes effect through the next
review, which reads a breach of a written rule instead of judging the same
thing again. Whether the build should read it is open, under "Known gaps" in
`docs/roadmap.md`.

**`record-lessons` stays locked.** Lifted, its description would sit in every
session's context for the sake of one call, and the listing of skills has a
budget, so one more entry can push another out. "Who may invoke a skill" below
carries the lock's history and its second reason.

**An issue for a check is filed at a breach, not at a rule's first writing.**
Filing at the first writing queues a build task behind every rule, through
step 2 of `build-work`, before there is any evidence that reading was not
enough; and a check built with no breach behind it has no red to prove itself
against, which is what step 3 of `build-work` asks of every check. Each breach
issue is one measurement of whether reading is enough. A rule written a second
time after the third exit below removed it counts as a breach nobody saw, and
files the check.

**A rule leaves the file by three exits, and the third carries a number.**
"Clear out as you go" in `record-lessons` names three: a rule a tool now
enforces, a rule about code that no longer exists, a rule nothing has bumped
into for a long time. Until 27 September 2026 the block carried the first two,
and under two an obeyed rule never left, so the file could only grow. The third
stands in the block in a form a run computes: a rule that has stood on the
main branch for more than ten landed pull requests and that no `raised-here`
issue cites comes out. The age is the merge commit that introduced the rule's
line and the first-parent commits of the main branch since it; the citation is
the tracker's own query, in the `issue-tracker.md` template of
`setup-project`, and it works only because a rule occupies one line and a
breach issue quotes it word for word. Landed pull requests measure reviews,
not time: each passed the close at least once, and a project that lands
nothing has read nothing. Ten is set on 27 September 2026 and is not measured.
No project of this workflow has ever carried a written rule, so nothing could
calibrate it, and the bench projects are no evidence for it: interrupted
throwaway runs, none of which carried a rule. What the number rests on is the
evidence on what a growing context file costs an agent:

- Gloaguen, Mündler, Müller, Raychev and Vechev, ETH Zurich, February 2026,
  revised June 2026, arXiv:2602.11988, "Evaluating AGENTS.md: Are
  Repository-Level Context Files Helpful for Coding Agents?": 138 tasks from
  12 repositories, four agents, Claude Code with Sonnet 4.5 among them. An
  LLM-written context file lowered the share of tasks solved, by half a per
  cent on one benchmark and by two on the other, and raised cost by over
  twenty per cent; a developer-written one raised the share by 2.4 per cent at
  up to nineteen per cent more cost; with every other documentation file
  removed from the repositories the same generated files raised it by 2.7 per
  cent. What hurts is the line that repeats what the agent reads anyway.
- Lulla, Mohsenimofidi, Galster, Zhang, Baltes and Treude, the JAWs workshop
  at ICSE 2026, arXiv:2601.20404, "On the Impact of AGENTS.md Files on the
  Efficiency of AI Coding Agents": 124 paired pull requests over ten
  repositories, 28.64 per cent less median runtime with the file.

A line the agent reads that changes nothing it does costs, and a line that
tells it something it would not otherwise reach pays. A rule ten reviews have
read without a breach is the first kind until a breach makes it the second.

**How ten is revised, and on what.** Rules written a second time after the
exit removed them say it is too small; `git log -p -- docs/agents/standards.md`
shows both writings. Removals that no second writing ever followed allow
smaller. The first revision is possible once a project has landed ten pull
requests after its first rule, and not before.

**Which way each cost falls if ten is wrong.** Too small: a rule the review
still needed goes, and the defect it named comes back to a review reading
without it, caught there on general grounds or, unattended, landed; the
second writing then files the check, so the cost is one recurrence per rule.
Too large: the file grows, every review reads what nothing has touched, and
nothing shows it, since the exit never fires. The first cost leaves a trace in
git and the second leaves none, which is why the number errs small.

**Whether a removed line says the same as a rule about to be written is a
judgement**, the one the exit does not remove. It is made over a list a
command printed, and made wrong it costs a fresh rule without its check, which
the next breach files.

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

**And the exception has a condition of its own: the machine has to be awake.** A
backgrounded agent comes back by itself only while there is something running for
it to come back to. Measured on 6 and 7 September 2026 in `devloop-test-o`,
inside the unattended run: at 21:00 UTC it merged one task, took the next by
itself, said it was building it in the background, and stood still from there,
because the machine went to idle sleep. The session's next message was one word
from the user nine and a half hours later, and the two remaining tasks were built
and merged within twenty minutes of it. Nothing was lost — the state sat in the
tracker and in git, exactly as this file promises — and nothing resumed either.
So an unattended run is bounded by the window being open and the machine being
awake, which is a cost the person agreeing to that mode is owed while they are
agreeing to it; it is in the cost list at `setup-checks` step 8, with what keeps a
machine awake beside it. On macOS that is `caffeinate`, which holds an assertion
against idle sleep for as long as the process runs (`caffeinate(8)` on this
machine, read 7 September 2026). **What it does not reach is a closed lid**,
which is a separate route into sleep, so a hint that stops at the command
promises more than it can hold. Off macOS, name a command only where that
machine's own documentation backs it.

**What cannot be waited for is a person, and a state on the platform is not
one.** A check running on GitHub has a command that blocks on it and needs nobody
— `gh pr checks <number> --watch` — so a run that arms auto-merge and then ends
its answer has not obeyed this rule; it has skipped a wait that was there for the
taking. Measured on 11 and 13 September 2026 in `devloop-test-o`: four pull
requests armed, each read once, each answer ended on a promise to report back,
each merged by the platform between forty-five seconds and two minutes later, and
the run stood still in all four until the user wrote a word. The rule is about
who is being waited for, not about waiting. `build-work` step 6 carries the
unattended form, with the bound on it and what a red check there means.

**A command that reaches the time limit of its call is not ended; it is moved
to the background and runs on.** Read on 7 October 2026 off the changelog of
Claude Code, `CHANGELOG.md` of `anthropics/claude-code` on GitHub: 2.0.19,
"Auto-background long-running bash commands instead of killing them. Customize
with BASH_DEFAULT_TIMEOUT_MS"; 2.1.210, "Improved the Bash/PowerShell tool
message when a command hits its timeout and is auto-backgrounded, so the model
can distinguish a hang from an explicit background request"; 2.1.285, "Changed
background Bash and PowerShell commands to stop after a time limit (their
`timeout` with `run_in_background`, default 30 min, max 2 h); Claude is
notified when one is stopped"; and 2.1.288, "Changed the background command
time limit to apply only in unattended sessions (`-p`, Agent SDK, CI, cloud);
terminal, desktop app and VS Code sessions have no limit". The limit of a call
is 120 seconds where nothing sets it: the Bash tool's own description, "default
120000", read in a session of 2.1.289 on 7 October 2026 with
`BASH_DEFAULT_TIMEOUT_MS` set neither in the environment nor under `env` in
`~/.claude/settings.json`. Two things switch the moving off: `--bare`, under
which "a shell command that reaches its timeout now stops instead of moving to
the background" (2.1.286), and `CLAUDE_CODE_DISABLE_BACKGROUND_TASKS`, which
disables "all background task functionality including auto-backgrounding and
the Ctrl+B shortcut" (2.1.4). Measured on 7 October 2026 at 10:44 UTC in a
terminal session of 2.1.289 with git 2.50.1: the three attempts of
`shared/fetch-three-times.md`, each bounded to thirty seconds, against a
server on this machine that accepts the connection and never answers, came
back as one call in 110 seconds with exit 124, nothing of them running on; the
same against a remote that is not there, three times `fatal: Could not read
from remote repository.`, exit 128, twenty seconds; and one bounded fetch
against GitHub, which answers, back in half a second and not at the bound.
What follows for a skill: no skill relies on the time limit ending a command,
since in the ordinary session it does not, and a skill that repeated a command
after the limit would start a second one beside the first, which runs on in
the background with it. Where a skill bounds a command — the fetch in
`shared/fetch-three-times.md`, thirty seconds an attempt, and the wait on the
checks in `build-work` step 6, 100 seconds a call — the command runs under
`bin/devloop-bounded`, which ends it after a fixed number of seconds, with
everything it started, and says so in one line with exit 124, as GNU `timeout`
would, and `timeout` is not on a stock macOS; the bound is chosen so that the
whole call stays under the 120 seconds. For every other command that may run
past the limit — a long test suite, an install — this set says nothing yet,
and `shared/command-does-not-answer.md` allows one second attempt that would
run beside the first; the addendum of 7 October 2026 to the audit of that day
in `docs/roadmap.md` records it as a finding.

**A rule in the run's own memory can close a route the skills allow.** Measured
on 25 August 2026: before arming auto-merge, a run stopped itself and cited a
rule in its own memory — never merge directly, always hand the merge command to
the user — sorting arming under the same pattern. That rule sits outside this
repository's skills and thereby closes the one route the skills expressly allow.

**Agent Teams must stay off.** With `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1`,
every named subagent starts as a teammate, and a teammate reports only that it
finished — not what it found. `review-changes` runs one subagent per lens,
`plan-work` drafts several designs at once and `untangle-idea` fires the research
subagents, and every one of them waits for what came back; all three hang.
**The evidence for this one is missing too.** "Anthropic's own docs say so" names
no page, and it was recorded in the same commit of 19 August 2026 as the entry
above. What would settle it is the vendor page that describes what a teammate
reports back, quoted with the date it was read; until that is here, treat the
setting as off on a reading nobody has checked rather than on a source.

**One build task at a time.** Two build agents share one working directory: one
switched branches out from under the other mid-edit, and both edited the same
manifest. Parallelism needs separate worktrees and is not worth it while tasks
merge to the same branch one after another. **The evidence for this one is
missing.** It was recorded on 19 August 2026 in `Ship the tracker commands;
record the measured environment constraints`, whose message carries no detail and
no date, and nothing in `docs/roadmap.md` backs it either — so it stands as a
report of a run nobody can now go back to, not as a measurement. It keeps its
place because the cost of acting on it is nil, and the rule about behaviour
outside this repository holds against it like anything else: run two build agents
in one working directory, with a date, and this either gets its evidence or goes.

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
lands outside the repository without the person's explicit permission, in the
form "Works with nothing else installed" gives it — and the hook is what
catches the ordinary case, not a wall. Who runs the command is not part of
that rule. Since 28 September 2026 the guard reads the record and passes what
it allows, and every skill that used to hand an install over runs it where
the record says yes — the paragraph after next says how; the record is written
by the question at setup, question 4 of `setup-project` step 4 since the same
day, version 0.115.0, in the empty case since 0.118.0, question 3 since 1
October 2026, and lands with the
setup — and since 5 October 2026 by `setup-checks` step 8 as well, which puts
the question a second time where the unattended mode is set up — so a project set up before either carries no record: there the guard
blocks with that cause and the person runs it, as the skills say for that case. What does not move either way is the
backing: the command is backed before it runs, whoever runs it — the vendor's
own installation line or the path in it resolving, which is the case of the
module path that was an organisation's name — and its success is read off the
path the installer writes to, never off a message that it ran.

Its false positives are deliberate: a command that merely mentions `sudo`, or
copies something into a directory that looks like a bin directory, gets stopped.
The guard's own message already says what to do about that — if it only looked
like an install, say so and let the user decide. **Cheap is what they are not,
where that last part goes unread.** Measured on 6 September 2026 in
`devloop-test-o`: the guard stopped a pull request body that quoted a broken
`go install` line in order to fix it, then stopped the same text written to a
file, and the run reworded the sentence until it passed — saying as it went that
the hook matches the string in quotes and heredocs alike. It had the reading
right and stepped around the block anyway, which is the half the message asks for
and the half no hook can enforce.

**The install guard reads a record, since 28 September 2026, and passes only
what the record names.** The record is a section of `docs/agents/environment.md`
under the heading `## Install permission`, a key and a value per line in the
shape `checks.md` uses for a value a script reads — `grep` on the start of the
line, spelled exactly, ASCII only: `install-tools: yes` or `install-tools: no`;
one `install-place:` line per place a yes opens in this version, spelled as
the guard matches it; since 29 September 2026 one `install-route:` line per
route the stack has, named by question 4 until 30 September 2026 and since
then read by the run where it writes the record, a name from the eleven the
guard resolves — `brew`, `go`, `npm`, `pnpm`, `yarn`, `bun`, `cargo`, `gem`,
`pipx`, `uv`, `pip`; `install-answered:` with the date the question was
answered. The question does not show that list: by its text, amended and
built on 28 September 2026 and cut on 30 September 2026 to what carries the
decision, it says that such programs land outside the project on this
machine; where the list stands, and that every session reads it, the close of
the setup says, and the routes of the stack are read by the run where it
writes the record, in step 6. It carries the
places and not only the answer because an answer given against the places of
one version is not an answer for a place a later version adds: the guard passes
only a place the record itself names, or the answer of a route it names, and a
place it does not name is blocked as before, until something asks about that
one place. The places of this
version are `/usr/local/bin`, `/usr/local/sbin`, `/opt`, `~/.local/bin`,
`~/bin` and `~/go/bin`: the guard's `BINDIR` without `/usr/bin` and
`/usr/sbin`, which nothing reaches without `sudo`, so that a yes to them would
open nothing and read as if it did. No driver destination is among them; that
is the second half of the milestone and is not built. A route named in the
record opens the directory that route answers on the machine the run is on,
read at the moment of the command and written nowhere: the record holds what
survives the machine changing rather than the answer of the machine it was
written on, because the same package manager answers differently on another
operating system and the same route differently under a version manager, and
a record of literal answers would go false on the next machine and block
there, while the question says the answer travels with the repository. A route
the record does not name is held against the places, as the three routes were
before 29 September 2026; the roadmap entry of that date says why.

The guard reads the record off the default branch as last fetched,
`refs/remotes/origin/<default>`, never off the working tree, so that a run
cannot change it in the turn that installs, and a change to it counts once it
has landed there and been fetched; the default branch is resolved exactly as
`hooks/pre-tool-use-branch-guard.sh` resolves it, and a check under "Before a
handover, run these" holds the copies together — three since 3 October 2026,
`bin/devloop-setup-state` resolving it the same way — since two guards that
disagree about which branch is the main one are worse than one. It reads the
record only after the command has been found to reach outside the repository,
because `hooks/hooks.json` runs it on every Bash call. One program does the
reading, `bin/devloop-install-record`, and `hooks/session-start.sh` prints the
record through the same program — what a second person who cloned the
repository meets before the first install rather than after it — so the two
cannot disagree.

Every failure is a block and never a pass, and the block names which it was
and that it read the last fetched state: no `environment.md` on the fetched
ref, no section, an unknown value, a ref that cannot be read, a record saying
no, and, under a yes, a place the record does not name. A record never written
and a record saying no are different blocks, because "A guard's block is not a
decline" needs the run to tell them apart, and an unattended issue carrying the
wrong cause is what a third unnamed case would produce. Under a yes the guard
asks the machine where a route lands, since 29 September 2026 for eleven
routes and until then for the three `shared/backed-command.md` names a path
for, each with the command its vendor documents, read from the vendor's page
on 29 September 2026 and quoted in the roadmap entry of that date: `brew
--prefix`; `go env GOBIN` or `GOPATH`; `npm prefix -g`; `pnpm bin -g`; `yarn
global bin`; `bun pm bin -g`; `pipx environment --value PIPX_BIN_DIR`; `uv tool
dir --bin`; `gem environment`, its executable directory, or its user
installation directory plus `bin` under `--user-install`, `--bindir` taken as
written; for `pip`, the scripts path of the interpreter the command names,
asked of that interpreter through `sysconfig`, the user scheme under `--user`;
and for `cargo`, which cannot be asked on the stable channel — `cargo config
get` is nightly-only — the root read in the vendor's order, `--root`,
`CARGO_INSTALL_ROOT`, a config file on its search path, `CARGO_HOME`,
`~/.cargo`, plus `bin`. It takes a path written in the command as written,
`make install` included where `PREFIX`, `DESTDIR` or `BINDIR` stands on its
line, and passes only where every destination is a place the record names or
the answer of a route it names. Every resolution runs in the hook's own
process and on its PATH, which is the PATH of the process that started the
harness and not the tool shell's — measured on 29 September 2026, the two
differ on this machine by the plugin directories the harness appends to the
shell and by nothing else, and a harness started from an editor rather than a
terminal can carry `/usr/bin:/bin:/usr/sbin:/sbin` — so a route not found
there, one answering nothing (`pnpm bin -g` prints nothing and exits 0 where
`PNPM_HOME` is not in the environment, and `PNPM_HOME` is what `pnpm setup`
writes into the shell's rc file, so a harness started before that, or from an
editor, carries it in neither its own process nor the hook's; `bun pm bin -g`
exits 1 with nothing on stdout until something has been installed globally,
on bun 1.4.2) or one answering no absolute path is not read,
and not read is a block, never a pass. What stays blocked with that cause
under every answer: a system package manager, which owns no directory of its
own since each package decides, and needs root anyway; a version manager, by
**Runtimes are not a kind the permission may cover** above; a bare `pip` or
`pip3`, which names no interpreter, so which Python it installs for is not in
the command, `python -m pip` being the vendor's own form for saying it; a
config file setting `install.root` for cargo; a `pip` or `gem` option that
moves the destination; and a `make install` whose line names none. A pip
inside the project passes without the record being read, as anything landing
inside the repository does: a pip or an interpreter named by a path inside
the project, a bare one after `source` or `.` on the project's own
`bin/activate` earlier in the same command, and `uv pip` where a `.venv`
stands inside the project from the directory the command runs in upward; what
an earlier command activated, or the shell's own configuration put on PATH,
is not in the string and stays blocked, and the block says so. `cargo add`,
which writes the project's manifest, no longer fires. `sudo` and a script
piped from the network into a shell stay blocked under every answer. What a
yes passes that the question does not mean: through a package
manager the guard sees the verb and not what is installed, so `brew install
node` passes as `brew install shellcheck` does, and that is a rule on the run,
written in `build-work` step 3 point 7, and not a wall.

Measured on 28 September 2026 against the working tree, the guard fed its JSON
directly with a scratch project whose `origin` was a local bare repository:
with no `docs/agents/` exit 0; with the directory in the tree and nothing on
`origin/main`, with `environment.md` there but no section, with `install-tools:
maybe`, with the section but no `install-tools` line, and with the fetched ref
deleted, exit 2, each naming its own cause; under a record saying no, exit 2
for `brew install shellcheck` and for a copy into `~/bin`; under a record
saying yes with the six places, exit 0 for `brew install shellcheck`, `brew
install node`, `go install golang.org/x/tools/cmd/goimports@latest`, `npm
install -g typescript`, a copy into `~/bin` and into `$HOME/.local/bin`, `ln
-s` into `${HOME}/bin`, `go build -o` into `/usr/local/bin` and into `$(go env
GOPATH)/bin`, a copy into `/opt/local/bin`, and `brew install foo` behind
`echo "hi" &&` and behind a newline; exit 2 for `cargo install ripgrep`, `pip
install --user black`, `pipx install black`, `uv tool install ruff`, `nvm
install 20`, `pnpm add -g typescript`, `apt-get install shellcheck`, a copy
into `/usr/bin`, `sudo brew install shellcheck`, `curl … | sh`, `bash -c
"$(curl …)"`, `make install` and `make PREFIX=/usr/local install`; a record
saying yes with `~/bin` as its only place blocked `brew install shellcheck`
naming `/opt/homebrew/bin` and passed the copy into `~/bin`; the working tree
saying the opposite of `origin/main` changed nothing either way; and a yes
landed on `origin` but not yet fetched blocked, then passed after the fetch.
`npm install -D playwright` and `npx playwright install` exit 0 as before, the
second being the drivers half. Not measured: the two runs on a bench that
milestone 3 ends with, one under a yes and one under a no, from the installed
copy. Nothing here had run on a bench that day, the runs were not recorded
in `docs/stock-take.tsv`, and the question that writes the record, built the
same day, had been put to nobody. Measured again on 29 September 2026 against
the working tree, the same way, with the eleven routes, five records and a
`.venv` present and absent, and later that day with `pipx`, `yarn`, `bun` and
`pnpm` standing on the machine, seven records, `bun` given a manifest by hand
and `pnpm` the environment `pnpm setup` writes: the roadmap entry of that
date carries every command and what came back, and `docs/stock-take.tsv`
carries the runs under version 0.116.1: the ten of the later measurement as
recorded, and the nineteen of the earlier one re-anchored from 0.116.0 on 29
September 2026, since the squash merge of pull request #141 landed only
0.116.1 and no shipped file changed between the two numbers. On a bench, on
30 September 2026 under 0.120.0, two attended runs of the setup, one under
each answer, in `devloop-test-s` and `devloop-test-t`: the question and the
record walked, the guard against a landed record not, the entry of that date
in `docs/roadmap.md` saying why.

**The setup state is read off the default branch, since 3 October 2026, and
the working tree decides one thing beside it.** Until then every place that
asked whether a project was set up read `docs/agents/` in the working tree,
and that directory is what the setup writes before it lands: a setup broken
off after the write and before the merge counted as set up in the next
session while the main branch held nothing. One program answers now,
`bin/devloop-setup-state`, in the form of the install record's reader: off
`refs/remotes/origin/<default>`, the default branch resolved as the branch
guard resolves it and held to it by the check under "Before a handover, run
these", never off the tree, every call afresh, nothing written. It prints, per
file the setup writes under a fixed name — the five of `setup-project` step 6
— whether it stands there, and per present file the version its marker
carries or `none`; the task runner, `CLAUDE.md`, `.gitignore` and the two
places `domain.md` points at have no fixed name a branch can be asked for, so
they are not read. With `--fetch` it fetches first, and a fetch that fails or
does not answer is said on its `fetch:` line while the state as last fetched
is read; without the flag it says it reads that state, and the four skills
that read with the flag say so to the person, in one text under
`shared/fetch-failed.md` inserted at each, directly after the sentence that
runs the program and before the one that acts on the answer, in the wording
approved on 3 October 2026, so that the statement stands once and what
follows from the state read stays each skill's own text. The places that act
on the answer read with the flag — `start-work` step 1, `plan-work` and
`untangle-idea` before their first write, `setup-project` before its refresh
— and `hooks/session-start.sh` reads without it, so that no network is
reached at the start of a session. The guards keep `[ -d "docs/agents" ] ||
exit 0`: that test is what leaves the hooks of this plugin inert in a
repository the workflow is not set up in, and a guard reading the branch
instead would be silent through a first setup, where the run holds an
unmerged pull request in step 8 of `setup-project` with "Never merge yourself"
standing without a hook behind it. The status line has three states since
the same day, and the directory in the tree is what tells the first two
apart: every file on the branch, `set up`; some file there, or none and the
directory in the tree, `set up in part` with the files by name; nothing there
and no directory, `not set up here`. Where the branch cannot be read, the
cause stands in place of the files and the directory alone decides. Two
things stand recorded and not built, in the entry of 3 October 2026 in
`docs/roadmap.md`: nothing in `setup-project` orders a first setup to write
the marker, the paragraph describing it standing under "Refreshing an
existing setup", so a project set up fresh reads `none` until its first
refresh, which `start-work` step 1 then makes; and a setup written and not
landed, once the next run finds nothing on the branch, is `shared/cut-branch.md`'s
third case, which switches to the branch and describes nothing further.

**A named install command may enter the verb list, under two conditions, and
only together with its destination.** Ruled on 28 September 2026, for how
milestone 3 of `docs/plan.md` is built. The dated entry of 19 September 2026
in `docs/roadmap.md` measured `npx playwright install` passing this guard and
filed it under the entry on a wrapper that downloads on first use, which
refuses to catch the wrapper because that would mean guessing what a build
command does. That refusal stands, and the entry stays as written: it holds
for `./gradlew build`, for `mvnw`, and for `npm install puppeteer`, whose
named act is project-local and whose download is a side effect. It does not
hold for a command that names the act itself. A name may enter the guard's
verb list when both hold: the command names the act, an install subcommand —
the shape of `brew install` and `nvm install`, and the verbs the list reads
today, `install`, `add`, `use` and `tap`, stay what they are; and the vendor
documents a destination outside the repository. `./gradlew build` fails the
first, `npm install puppeteer` fails the first, `npx playwright install` and
`npx cypress install` pass both. The difference holds in the command itself,
which is what **A hook cannot see consent** below asks of any difference a
guard leans on. And it is worth catching only together with that destination,
read from the vendor and entered in the record's list of places, which is
what the person's answer covers — the record carries the list, and the
question, which named the kind of place a yes opens from 28 to 30 September
2026, says since version 0.119.0 only that such programs land outside the
project on this machine: the
place list names bin directories and `/opt/`, and a browser is not a binary
in one of them, so a catch without the destination produces a block under
every answer, and the driver's destination never appears in what the person
agreed to. Both or neither. This refines where one command is classified; the
finding on wrappers is not overturned. What a false positive costs:
`PLAYWRIGHT_BROWSERS_PATH=0` puts the browsers inside `node_modules`, and a
block there is wrong; with the person there it is one handover, unattended it
is the task, by "A guard's block, with nobody there" in `build-work`. Places
that change when this is built, none of them changed here, and none of them
on 28 September 2026 either, when the tools half of milestone 3 was built and
this, the drivers half, was not: the manager list and the place list in
`hooks/pre-tool-use-install-guard.sh`, and the open item in `docs/plan.md`,
"What `npx playwright install` lands outside the repository; not read from
the vendor".

**Arming auto-merge is allowed; merging is not — and `--auto` is not arming.**
The guard blocks `gh pr merge` in every form. The one permitted path is the
mutation that can only arm:

    PR_ID=$(gh pr view --json id -q .id)
    gh api graphql -f query='mutation($id:ID!){enablePullRequestAutoMerge(input:{pullRequestId:$id,mergeMethod:SQUASH}){clientMutationId}}' -f id="$PR_ID"

**The id is fetched first and passed with `-f`.** Measured on 13 September 2026
in `devloop-test-o`: the one-line form, with the substitution written into
`-F id=$(…)`, failed with `unexpected end of JSON input`; the two-step form went
through. `gh api --help` (gh 2.96.0, read the same day) says why: `-F` adds "a
typed parameter" and reads the value from a file where it starts with `@`, `-f`
adds "a string parameter".

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

**And no value at all is not the eighth entry.** The list is a list of answers,
so a read that came back with nothing is outside it altogether — not `UNKNOWN`,
which is an answer GitHub gave about a computation it had not finished, and not
the unplaceable value above, where the pull request was read and only the name
was unknown. Every pull request carries a `mergeStateStatus`; nothing coming back
is a fact about the query. The three stages that arm read it once more and, where
that is empty too, do not arm at all: the rule is to read the state immediately
before the mutation, and there is no state to have read. This came out of the run
of 31 August 2026 above — the refused command answered on its second attempt, and
had it been refused again the run would have stood in front of a state with no
value and an enumeration with nowhere to put it.

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
check did not apply to that account. Written up on 24 August 2026 in the commit
that fixed it, `A gate the working account can step over is not a gate` (#73),
which carries the run — protection present, required check configured,
`enforce_admins` off, the working account holding admin, and every question setup
asked coming back yes while the answer it gave was false. Both parts have to be
read, the protection and who it binds.

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
answer a prompt during it. The install class, since 28 September 2026, is
granted in the project rather than in the tool's settings — the record in
`environment.md` that **The install guard reads a record** above describes —
and it opens the guard's pass, not the harness's: whether the classifier lets
the same command through is its own question, measured once on 28 September
2026 and recorded in `docs/roadmap.md`. Since 5 October 2026 a yes in that
record is a condition the unattended mode starts on, the sixth, and a yes on
check tools in the dependency file the seventh: `build-work` numbers them
under "Unattended mode", and a run that would stop at the first tool it may
not install, or leave off a check the work made necessary, does not start.

**The `checks.md` parsers are shell scripts.** Backticks and apostrophes in a
table cell used to break them. Backticks are stripped, in both parsers, in every
column they read. Apostrophes are not stripped anywhere and no longer need to be:
each cell is passed through a quoted `sed`, where an apostrophe is an ordinary
character — checked on 7 September 2026 by running `stop-checks.sh` over a table
with one in a cell. Keep machine-read columns plain all the same; the parsers
split each row by position with `IFS='|'`, so a `|` inside a cell still shifts
every column after it. The `Status` column takes four forms and no other —
`filled`, `empty`, `skipped (state): <the state that keeps the class off>`
and `skipped (user): <the user's reason>` — spelled exactly, ASCII only.
Until 5 October 2026 a skip had one shape, `skipped: <reason>`, for a state
the project grows out of and for a decision of the user's alike, so nothing
could tell a reason a run may act on from one it may not; the entry of 4
October 2026 in `docs/roadmap.md` on the two runs has the case, a run
rewriting a reason and taking away with it what the reading after a merge
looked for.

**A third reader holds that column to its forms, since 5 October 2026, and
it is strict where the two parsers are lenient.** `bin/devloop-check-table`
names every status cell that carries none of the four, finding the column by
position as the parsers do and taking off nothing but the padding: `filled`
in backticks is named, and so is `Filled`. It does not check for ASCII,
since the guards' message could not say that of a cell whose form is right;
ASCII stays a rule on whoever writes the cell. Two hooks call it.
`hooks/post-tool-use-table-guard.sh` reports, with exit 2, once the editing
tool has written the table, and cannot refuse: read off
`code.claude.com/docs/en/hooks.md` on 5 October 2026, exit 2 on
`PostToolUse` "Shows stderr to Claude; the tool already ran".
`hooks/pre-tool-use-table-guard.sh` refuses a `git commit` while the table in
the working tree carries such a cell, on every branch; the same page says of
the `if` field that "each subcommand is checked" and that "When Claude Code
can't determine which commands the Bash input runs, it runs your hook
regardless of the pattern", so the hook reads the command for `git commit`
itself. Both stay inert where no `docs/agents/` stands, like the other
guards. The sentence naming the four forms stands once, in
`shared/status-forms.md`, inserted into `setup-checks` and `setup-project`;
each hook carries a copy in its message, and a check under "Before a
handover, run these" holds the copies to it. What answers the refusal is a
rule and not a wall: the skill that wanted to commit calls `setup-checks` for
the row and commits again, in both modes, and `build-work` says at both of
its places that this is no block in the sense of its section on a guard's
block. Three gaps stand, and the README names the first two: a shell
command that writes the table and commits in one go is read before it runs,
so that one commit goes through and the next is refused; a commit run
through a git alias is not read, the command carrying no `commit`; and a
commit made outside a session's Bash tool is read by no hook at all. A
fourth stood until 6 October 2026, `git -C <directory> commit` passing
unseen, as it did the guard on the main branch: since that day both guards
read git's own options between `git` and its command — `-C <path>`, `-c
<name>=<value>`, the options that take a value of their own, any other
`--option`, `-p` and `-P` — and `hooks/hooks.json` starts both on
`Bash(git *)`, since the `if` field matches everything before its `*` as
written, so that `Bash(git commit*)` would not have started them for a
command with an option in between; read off `code.claude.com/docs/en/hooks.md`
and `code.claude.com/docs/en/permissions.md` on 6 October 2026, and
measured with the hooks fed their JSON, the entry of 5 October 2026 in
`docs/roadmap.md` carrying the runs under its addendum of 6 October. The
entry also says why the commit is refused
rather than the write, and why no target in the project's own check chain
was built beside it.

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
decode the tool's JSON before matching. The install guard since 28 September
2026 is the same rule from the other side: consent it cannot see in the
conversation it reads where the person recorded it once, in the section of
`environment.md` on the default branch as fetched, and the difference it leans
on then holds in the record and in the command's destination, not in what
anybody said in the session — **The install guard reads a record** above.

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

**A hook that says "hand this to a person" assumes there is one, and it cannot
check.** `stop-checks.sh` discards its input and uses one variable,
`CLAUDE_PROJECT_DIR`; nothing in a `Stop` event says whether anybody is reading,
and an unattended run is this workflow's own idea rather than a state of the
harness — the word that starts one is typed to a skill and never reaches the
process. So a hook's instruction to wait for somebody is written for the ordinary
case, and every skill on a path that can run unattended has to say what that
message means when nobody is there. Left unsaid, the run does what the message
says: it waits, in the middle of a task that still looks like it is working,
which is a standstill and not a stop with a reason. The general form is the one
the merge guard already needed — **a hook cannot see consent** — turned around:
it cannot see absence either.

**Since 14 September 2026 the run lays down a mark for itself**,
`.claude/unattended.local`, written where it steps out of the flow — the end of
the sharpening in `plan-work`, or the start of an unattended build — and read at
every place a skill reads the mode off a file: the forks in `plan-work`,
`cut-into-tasks`, `build-work`, `setup-checks`, `review-changes` and
`start-work` name it, and since 18 September 2026 those six carry the file's
name and meaning from `shared/mark.md`, inserted at load, with what follows on
each path still written in the skill. The block under "When a command does not answer",
inserted into all twelve from `shared/command-does-not-answer.md`, forks on
whether somebody is there and reads nothing — it was not changed for the mark —
and five of the twelve files never name the mark at all. So where a skill does fork on the file, it no longer
carries the mode as a word from the start of the session. The hooks still do not
read it, and whether `stop-checks.sh` should is recorded as open in
`docs/roadmap.md`. The sentence above therefore still holds for hooks, and the
skills' half of it — every skill on such a path says what the message means —
now rests on a file rather than on memory.

**A shared file read into a skill with `cat` is never inserted at load, and a
program bundled in the plugin with its rule in `allowed-tools` is.** Measured
on 17 September 2026 on Claude Code 2.1.274 with a throwaway plugin; the runs,
the probe and the vendor pages are in `docs/roadmap.md` under `## Known gaps`,
the entry of that date on text inserted into a skill at load. The form
measured is a line in the skill of the shape `` !`command` ``, which runs
before the model sees the skill and whose output replaces the line — not the
`!` a user types into the session, which `docs/roadmap.md` records separately
as a channel no hook sees. With
`` !`cat ${CLAUDE_PLUGIN_ROOT}/shared/marker.md` `` and the matching
`allowed-tools: Bash(cat ${CLAUDE_PLUGIN_ROOT}/shared/*)`, the load aborted
outside auto mode, `cat` on a path outside the session's working directories
being refused, and in auto mode the skill arrived with an instruction to run
the command first standing where the output should be, which the model then
did through Bash. With a POSIX sh program under the plugin's `bin/` and
`allowed-tools: Bash(${CLAUDE_PLUGIN_ROOT}/bin/probe-text *)`, the output stood
in the skill in both modes, typed, through the Skill tool and through a
subagent, with no prompt; as a bare command, `Bash(probe-text *)`, the same
typed in both modes, and not measured through Skill or a subagent.
`${CLAUDE_PLUGIN_ROOT}` arrived substituted with the path in the cache, in the
line and in the rule alike. `disableSkillShellExecution` is not measured. This
is a second grant beside the tool classes pre-approved per project, above: it
is written in the skill, per skill, and it held in manual mode without a
prompt. Since 18 September 2026 the program is `bin/devloop-text`, under
"Text shared between skills".

**Whether text was inserted at load is read off the session log, never off the
window.** In auto mode the fallback looks like an ordinary read: the window
showed "Read 1 file" while the model fetched the text itself, which is exactly
the case the criterion rules out. The log is the JSONL file under
`~/.claude/projects/<working directory>/`, read as JSON: a call of the model is
a content block of type `tool_use`, every result is matched to its call by
`tool_use_id`, and the value looked for is searched by its form — sixteen
hexadecimal characters — and not by its label, because the label stands in the
task text too. A subagent writes its own log under
`<session>/subagents/agent-<id>.jsonl`, and the main log holds only the Agent
call. The vendor names the location, in the Agent SDK documentation under
"Persist sessions to external storage", read on 17 September 2026; the line
format it does not document.


## Who may invoke a skill

Two states, no third.

**Model-invocable** (no extra frontmatter): the description sits in context every
session, the model may reach for it, and other skills can call it. That is the
price and the point.

**User-invoked** (`disable-model-invocation: true` under `description`): costs no
context, but only a typed command starts it — no other skill can.

In this set, two are user-invoked, and what each lock costs is written here,
because "costs nothing" was written for both and held for one.

`start-work`, the entry point. No skill runs it: `build-work` step 6 names it
as where an armed pull request goes and does not call it, and the check under
"Before a handover, run these" that holds locked skills against their callers
prints exactly that line and nothing else. Its lock costs nothing, and that is
read off the check each time, not assumed.

`record-lessons`. Its lock stood on the same ground — no other skill runs it —
and the ground did not survive the run of 11 to 13 September 2026 in
`devloop-test-o`: the same failure picture came out of the review three times
and was fixed three times separately, the threshold `record-lessons` itself
names — "it happened a second time" — was cleared at the second occurrence,
and the skill holding the destination could not be reached by the loop that
had something to hand it. The run of 14 September 2026 found the standards
file of the same project empty after two dozen pull requests, for the same
reason: the one writer is the skill nothing calls. Both stand in
`docs/roadmap.md`, and the entry there on the comparison with Pocock's set
says the rest: `record-lessons` has never run. The lock stays, and since 26
September 2026 its price is met rather than paid: the one rule of this skill
that a build loop has something to hand — a rule the project holds that nobody
wrote down goes into `docs/agents/standards.md` — is said where the review
closes, in `shared/rule-not-written-down.md`, inserted under "What happens to
a finding" in `review-changes` and under step 4 of `build-work`. The lock was
not lifted, for three reasons: lifted, the description sits in every session's
context for the sake of one call; and the skill routes into four destinations
where the close needs one; and, since 27 September 2026, the listing of skills
has a budget, so one more entry can push another out.
`record-lessons` stays the typed command for what a
person notices, and the shared block names no skill, because the check under
"Before a handover, run these" prints a locked skill named in backticks by
another file. The entry of 14 September 2026 in `docs/roadmap.md` records the
build.

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

## Before you change anything, run this

**The installed copy is the copy that runs.** A skill invoked in a session is
read out of `~/.claude/plugins/cache/`, never out of the working tree, so a
session that exercises a skill while the install is behind is exercising text
nobody is reading, and every conclusion drawn from what it did is about the older
wording. That question has exactly one moment where it can be answered: before
the first edit, while the working tree is still the main branch.

    P=~/.claude/plugins/cache/jayjay-create/devloop/$(python3 -c "import json,pathlib;print(json.load(open(pathlib.Path.home()/'.claude/plugins/installed_plugins.json'))['plugins']['devloop@jayjay-create'][0]['version'])")
    for d in skills hooks shared bin scripts; do diff -r "$P/$d" "$d"; done

Silence means what runs in this session is what you are about to change. Anything
printed is the installed copy being behind: say so before exercising a skill, and
read what it printed rather than assuming which side is older.

**All five directories, and `hooks` is not an afterthought.** A hook runs from the
installed path too, which this session can read off a block it received:
`PreToolUse:Bash hook error:
[/Users/…/.claude/plugins/cache/jayjay-create/devloop/0.97.0/hooks/pre-tool-use-install-guard.sh]`.
So a guard edited in the working tree goes on firing in its old form until the
plugin is updated, and a run that measures a guard's behaviour after editing it
is measuring the previous version — the one failure this check exists to prevent,
in the place where it is hardest to notice, because a guard that fires looks the
same whichever copy fired it. The check was written over `skills` alone first;
that is what it was widened from. `shared`, `bin` and `scripts` came with the
inserted text: a skill reads its shared text out of the installed copy as well,
so a shared file edited in the working tree is as invisible to a run as an
edited hook.

**The version is read from the installed side, and that is the whole of the
fix.** This check stood under the handover heading until 9 September 2026 and
read the version out of `.claude-plugin/plugin.json` — the working tree's — then
compared against the cache directory of exactly that version. Every change that
lands raises that number, so from the bump until the plugin is updated after the
merge, that directory does not exist and the check answers `No such file or
directory` instead of a difference. It stood in the handover list, which is
precisely when the bump has happened, so it was red every time it was read:
measured on 9 September 2026, three times in one day, at 0.95.0, 0.96.0 and
0.97.0, each time while the run was doing exactly what it was supposed to.

**Comparing against the version before the bump does not repair it**, and that is
worth writing down because it is the repair that suggests itself. Measured the
same day: 0.96.0 was merged and released and never entered the cache at all — the
install went from 0.95.0 straight to 0.97.0 — so the predecessor's directory need
not exist either, and the check would go red for a second reason it cannot tell
from the first. Underneath that sits the reason that decides it. At a handover
the text being handed over is, by construction, not the installed text; no
comparison made at that moment can be green about the change in hand. The check
was in the wrong place, not in the wrong form.

**The general form: a check that is red by construction at the moment it is read
is not a check.** It is read once, explained away, and after that skipped — and
the checks standing beside it are read a little less each time, because a list
with a known-red line in it is a list you scan rather than run. Where a check
comes back red in the ordinary case, move it to the moment its answer can go
either way, or delete it. That is the same failure as a check keyed on wording
further down this page, arriving from the other side: there the check goes quietly
green and stops watching, here it goes loudly red and stops being read.

`installed_plugins.json` carries `gitCommitSha` for the installed version beside
the version itself, so reading that field against `git rev-parse origin/main`
answers the same question in one line. The diff is what is written here because a
red answer has to be acted on, and only the diff says what differs.

## Before a handover, run these

Nineteen checks that catch what a conversation loses. Each one has found a
real gap, or guards a mechanism that fails without a sound when nobody runs it.
Every one of them has to run on the machine it is needed on: `head -n -1` is a
GNU extension and does nothing on macOS but print an error, which is how a check
comes to report a checksum of nothing and look like it passed. Keep them to what
POSIX gives you.

A run of any of these counts, for the stock-take in `docs/stock-take.tsv`, the
way every other run counts: it is recorded under the version
`.claude-plugin/plugin.json` carried in the tree it ran in, and it counts once
the commit that introduced that version contains the last change to the lines
the check stands on. A run made on a branch under the version the branch's
merge will introduce, the one the branch ends on, counts there and after the
squash merge alike; one made under a version the branch raised over is a
broken record on the branch already, since the squash lands only the last
number; the header of `scripts/devloop-stock-take` states both rules. Until 26
September 2026 such a run
was held against the commit date of the check's line instead, which a squash
merge re-dates, so that no run made before a merge survived it.

**Nineteen checks, nineteen command blocks.** Count them, or this number
drifts again. It drifted once already, and quietly: on 7 September 2026 one
check was split into three blocks, one of them unreachable, so the checks went
from eleven to twelve while this sentence stayed at eleven — and the change
after it added two real checks and moved the number by two, carrying the error
forward untouched. Measured on 9 September 2026, the sentence read thirteen
against fourteen checks. It reads seventeen against seventeen since 18
September 2026, when the five checks that held byte-identical copies together
— three of them by checksum — went with the copies, together with the block
beside them that could not go red, and nine checks over the text now inserted
at load took their place. It reads eighteen against eighteen since 28 September
2026, when the check holding the install record's reader to the branch guard's
resolution of the default branch came in. It reads nineteen against nineteen
since 5 October 2026, when the check holding the two table guards' copy of the
four status forms to the shared file came in.

Every skill on disk is registered, and every registered skill exists:

    python3 -c "
    import json,pathlib
    m=[p.split('/')[-1] for p in json.load(open('.claude-plugin/plugin.json'))['skills']]
    d=sorted(p.name for p in pathlib.Path('skills').iterdir())
    print('registered but missing:', sorted(set(m)-set(d)))
    print('present but unregistered:', sorted(set(d)-set(m)))"

No name in the roadmap resembles a real one without being one. A skill name
that does not exist is made from one that does, by a typo, a rename left
behind or a plural, so it stays near the name it was meant to be. This prints
every backticked word of lowercase letters, digits and hyphens that is no
directory under `skills/`, stands in no row of the table "Named, not built as
skills", and lies within an edit distance of two of one of those names, beside
the name it resembles. Silence is green. A name invented out of nothing it does not catch, and no form of it
could: the roadmap quotes flags, labels, tools, check classes and another
project's skill names, 138 words that are no name on 24 September 2026, the
nearest of them four edits from any, and the check that printed all of them,
130 lines that day, was read once and skipped, which is what "a check that is
red by construction" above comes to. Two guards stand in it. Where the table
yields no rows, or `skills/` no directory, it says so, and that line is red: a
check with no knowledge would be silent for the wrong reason, since the names
of the one half stand nowhere near the names of the other. And the distance of
two holds only while the names are long. The shortest is eight characters
today; a name of five would already print a word of the roadmap (`batch` would
print `watch`, and `tdd` `sed`, measured the same day). So a name of fewer
than six characters is compared for equality only, which for a word that is
not one of the names prints nothing, and the day a skill gets such a name,
this is the sentence that says it goes unwatched:

    python3 -c "
    import re,pathlib,functools
    t=open('docs/roadmap.md').read()
    w=set(re.findall(r'\x60([a-z0-9-]*)\x60',t))
    d={p.name for p in pathlib.Path('skills').iterdir() if p.is_dir()}
    s=t.split('\n## Named, not built as skills\n',1)
    r=set(re.findall(r'^\|\s*\x60([a-z0-9-]+)\x60\s*\|',s[1].split('\n## ',1)[0],re.M)) if len(s)==2 else set()
    n=d|r
    e=functools.lru_cache(None)(lambda a,b:len(a+b) if len(a)==0 or len(b)==0 else min(e(a[1:],b)+1,e(a,b[1:])+1,e(a[1:],b[1:])+1-(a[0]==b[0])))
    if len(r)==0 or len(d)==0: print('nothing to hold the roadmap against: %d rows under the table, %d directories under skills/'%(len(r),len(d)))
    for x,m in [(x,m) for x in sorted(w-n) for m in sorted(n) if len(m)>=6 and e(x,m)<=2]: print('%s is %d from %s'%(x,e(x,m),m))
    "

Invocability is set deliberately, not by omission:

    grep -c 'disable-model-invocation' skills/*/SKILL.md

No skill is told to run a skill that is locked against being run. A locked skill
refuses the call and tells the model to ask the user to type the command, which no
skill here may do. The shared files are searched too, because text inserted
into a skill is that skill's text. Every line this prints needs an eye on it:

    for s in $(grep -l 'disable-model-invocation' skills/*/SKILL.md | sed 's|skills/||;s|/SKILL.md||'); do
      grep -l "\`$s\`" skills/*/SKILL.md shared/*.md | grep -v "skills/$s/SKILL.md" | sed "s|^|locked: $s referenced by |"
    done

No shared text still stands written out in a skill. Every line of forty
characters or more from the files under `shared/` is looked for in every
skill. A file printed here carries a copy of something that is inserted, and
the copy goes:

    cat shared/*.md | awk 'length >= 40' | grep -Fl -f - skills/*/SKILL.md

Every insert line has exactly the form the frontmatter grants, and names a file
that exists. The first command prints any line in a skill that starts with the
insert marker or names the program and is neither an insert line nor the grant —
a line that would run at load without being meant to, or abort the load; the
second prints every name that does not resolve. Both silent means every insert
is one:

    grep -n -e '^!`' -e 'devloop-text' skills/*/SKILL.md | awk '{ l=$0; sub(/^[^:]*:[^:]*:/, "", l) } l != "allowed-tools: Bash(${CLAUDE_PLUGIN_ROOT}/bin/devloop-text *)" && l !~ /^!`\$\{CLAUDE_PLUGIN_ROOT\}\/bin\/devloop-text [a-z0-9-]+`$/'
    for n in $(grep -ho 'devloop-text [a-z0-9-]*`$' skills/*/SKILL.md | sed 's/devloop-text //;s/`$//' | sort -u); do [ -f "shared/$n.md" ] || echo "no shared/$n.md"; done

Every skill that inserts anything carries the grant that lets the program run
at load without a prompt. Without it the load aborts outside auto mode, and in
auto mode the model is told to run the command itself — the case the
measurement rules out:

    for f in skills/*/SKILL.md; do grep -q '^!`' "$f" && ! grep -qF 'allowed-tools: Bash(${CLAUDE_PLUGIN_ROOT}/bin/devloop-text *)' "$f" && echo "$f: inserts without the allowed-tools line"; done

The language block stands at its two places in every file: inserted once at
the top — in eleven before any heading, in `start-work` directly under "How to
talk while doing all this", for the reason under "Numbered steps where order
matters" — and once as the very last line. The line on skill names stands two
lines under the opening, once per file. Twelve lines saying where the opening
stands, and nothing else:

    for f in skills/*/SKILL.md; do
      [ "$(tail -n 1 "$f")" = '!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text closing`' ] || echo "$f: does not end on the closing language block"
      awk -v f="$f" '/^## /{h=$0} /devloop-text language-opening`$/{n++; o=NR; print f": opening " (h=="" ? "before any heading" : "under \"" h "\"")} /devloop-text skill-name`$/{m++; if(NR!=o+2) print f": skill-name line not two lines under the opening"} END{if(n!=1) print f": opening block inserted " n+0 " times"; if(m!=1) print f": skill-name line inserted " m+0 " times"}' "$f"
    done

The notice above the first insert line is the same paragraph in all twelve. It
is the one paragraph that cannot come from the shared source, being what the
run reads when nothing was inserted, so it is the one place a checksum over
copies remains. One line means all twelve agree; the count says none is
missing:

    for f in skills/*/SKILL.md; do sed -n '/^\*\*If `\[shell command execution disabled by policy\]`/,/^$/p' "$f" | cksum; done | sort -u
    grep -l '^\*\*If `\[shell command execution disabled by policy\]`' skills/*/SKILL.md | wc -l

Every skill expands without error — each insert line replaced by what the
program prints for it, which is what a session receives. A name that does not
resolve or a program that cannot run prints here. The expanded file is also
how a change to a skill is read at all, since the file on disk is no longer
the text a run gets:

    for f in skills/*/SKILL.md; do scripts/devloop-expand "$f" > /dev/null || echo "$f: expansion failed"; done

The program under `bin/` and the tools under `scripts/` are executable, in the
working tree and in what git records, and git tracks every file there. A
program that cannot start aborts every load that names it:

    for p in bin/* scripts/*; do [ -x "$p" ] || echo "$p: not executable"; done; git ls-files -s bin/ scripts/ | grep -v '^100755 '; [ "$(git ls-files bin/ scripts/ | wc -l)" -eq "$(find bin scripts -type f | wc -l)" ] || echo "bin/ or scripts/ has files git does not track"

Where this prints that `bin/` or `scripts/` has files git does not track, look
for `scripts/__pycache__/` before anything else: bytecode left behind. This
check has answered twice for that reason and for no other; what to run instead
of the command that leaves it stands in the header of
`scripts/devloop-stock-take`, beside its self-test.

The arming command in the merge guard's message is the one in
`shared/arming-command.md`. A hook cannot insert text, so it carries a copy,
and this looks for the shared file's two lines in the hook, where they stand
without the indentation the skills give them — `2` means both stand there
unchanged:

    sed 's/^    //' shared/arming-command.md | grep -cFx -f - hooks/pre-tool-use-merge-guard.sh

The same for the copy in this file, under "Arming auto-merge is allowed;
merging is not", indented as in the shared file — `2` again:

    grep -cFx -f shared/arming-command.md docs/skill-conventions.md

The default branch is resolved in `bin/devloop-install-record` and in
`bin/devloop-setup-state` exactly as `hooks/pre-tool-use-branch-guard.sh`
resolves it, from `origin/HEAD` and then `main` or `master`: two guards that
disagree about which branch is the main one are worse than one, the install
guard reads its record off that branch, and the setup state is read off it.
The seven lines from `DEFAULT=$(git symbolic-ref` to the `fi` that closes the
fallback are checksummed in all three files — one line means they agree:

    for f in bin/devloop-install-record bin/devloop-setup-state hooks/pre-tool-use-branch-guard.sh; do sed -n '/^DEFAULT=\$(git symbolic-ref/,/^fi$/p' "$f" | cksum; done | sort -u | wc -l

The sentence naming the four forms a status takes is, in both table guards,
the one in `shared/status-forms.md`. A hook cannot insert text, so each
carries a copy in its message, and this looks for the shared file's one line
standing whole in each hook — `1` twice means both carry it unchanged:

    for f in hooks/post-tool-use-table-guard.sh hooks/pre-tool-use-table-guard.sh; do grep -cFx -f shared/status-forms.md "$f"; done

**A change to one skill is a question about all of them.** How that is done is
not written here — it is the third rule under "A field is not an answer to a
question it was not asked", widened on 13 September 2026 to hold for any change
to a rule or a command: the search by subject, the command named, and every
place looked at listed. Three separate defects this month were a rule written
into one file that belonged in six. Text inserted from `shared/` is the case
where the places are known in advance and the question answers itself; text
that says one thing in several wordings is the case the search is for.

The checks above find only what shows up as a difference between a skill and
what it is meant to carry. Where the shared text itself carries a wrong
reading, every skill agrees with it — see "A finding that would have passed
unsupervised gets written down".

No sentence tells a run to ask for permission to reach the next stage, or to
put a question as an either-or. Every line this prints needs an eye on it: some
are real offers that stay, and the point is that each one gets looked at rather
than assumed. Run it after **any** edit to a skill, not only before a handover —
a rule added at one anchor and a sentence contradicting it further down the same
file is how three of these got in. The shared files are read with the skills,
because an offer inserted into seven skills is an offer in seven skills — the
missing-command rule ends on one, and it comes out here once instead of seven
times:

    grep -rn 'Ask whether\|offer to\|Offer to\|on a yes\|offering the next' skills/*/SKILL.md shared/*.md

Every place a run hands the user something to do says where a no leads. The
check above finds offers by their wording and misses one written in other words:
the rule that a build hands over an install command was three sentences long,
said what happens once it has run, and said nothing about declining — and none
of the five phrasings above appears in it. This one looks for the other half,
the sentence that describes the yes. Every line it prints needs an eye on it,
and it is read for two things: whether the no is there too, and whether what it
promises about carrying on is something this run can actually do:

    grep -rn 'picks up as soon as\|picks up once\|picks up the moment\|carry on when it has run\|once it has run\|hand them the command\|hand the user the\|Hand the user the' skills/*/SKILL.md shared/*.md

**`picks up once` was added on 7 September 2026, and why says something about
this check.** The install handover in `build-work` step 3 used to read "picks up
as soon as they say it has run", and that sentence was the defect: success came
off the user's word rather than off the result. Rewriting it to "picks up once
the tool is where that command puts it" fixed the defect and dropped the site out
of this check, which is the one site the check was written for. A check keyed to
wording loses what it watches every time the wording is improved, and it loses it
silently — one fewer line, and nothing says a line went missing. So the phrasings
get added as they are coined, and a line disappearing from this output is read as
a question rather than as progress.

**Two forms now come out of this check, and the boundary between them is what a
reader has to see, or they will rewrite one into the other.** Their word is
always what releases the run — nothing else can say they are done — so a line
resuming on it is not by itself the defect. **What their word may not be is the
evidence that the act succeeded.** Where the act has an outcome the run can read,
the word releases it and the outcome decides; where what is being waited for is a
decision of theirs, there is no outcome to read, the word is the thing itself,
and resuming on it is the only possible form rather than a defect. Today's nine
lines fall out like this — nine lines over eight sites, because `setup-checks`
matches on two consecutive ones in its step 7; seven over six until 5 October
2026, when its step 3 came to hand a command over, and eight over seven until
6 October 2026, when `shared/fetch-three-times.md` came to say what a run
says where the main branch cannot be fetched or fast-forwarded:

- **The outcome is read, by this sentence.** `build-work` step 3 point 7, the
  install: the tool is at the path that installer writes to, or the command did
  not do what it was handed over for. This is the only line phrased "picks up
  once", and it is the one the rewrite was for.
- **The outcome is read, elsewhere.** The three merge handovers — `build-work`
  step 6, `setup-checks` step 7, `setup-project` step 8 — and the diverged-base
  handover in `build-work` step 1. Their word releases the run; whether the merge
  landed is then a query like any other under "Never assert state — query it",
  and `setup-checks` says it outright in the next clause, "do not go on to the
  next step on top of an unmerged suite". **These stay exactly as they are.**
  Rewriting them into the install's form would put the reading in the resumption
  sentence, where it is already done one step later and better. The eighth
  line is of this kind too: the install command `setup-checks` step 3 hands
  over under a record that says no or was never written, whose outcome its
  step 4 reads off the path the installer writes to, a command not run
  leaving the class `skipped (user)`. And so is the ninth, the one line
  `shared/fetch-three-times.md` carries into the four skills that fetch
  before a cut, a task's base, after a merge, at the mark or before a
  rebase: the person clears what stood in the way — the connection, the
  sign-in, a changed file, commits of their own — and says so, and the
  fetch or the fast-forward is run again on their word and its outcome
  decides.
- **There is no outcome, and there cannot be.** `build-work`'s lifted guard
  block: what is waited for is which of two ways they want it to go. A decision
  leaves nothing on disk to look at. The word is the whole of it.

So the question to ask of a line in this output is not which wording it uses. It
is whether the act behind it leaves a result anywhere, and if it does, whether
something reads that result before the run carries on.

The unattended finish is not stated in the readiness query's vocabulary alone.
Both places that state it name the loose issues too, and the label is what they
are named by. Silence means both hold; a line means one of them has lost its
loose-issue clause, or the heading it is keyed to has been renamed — either way
something needs reading:

    for spec in "skills/build-work/SKILL.md:^## Unattended mode" "skills/setup-checks/SKILL.md:^## Step 8"; do
      f=${spec%%:*}; h=${spec#*:}
      awk -v h="$h" '$0 ~ h {n=1;next} n&&/^## /{exit} n' "$f" |
        grep -q 'raised-here' || echo "$f: the unattended finish does not mention loose raised-here issues"
    done

**This one is keyed so it cannot drift, and it is worth saying how.** It stands on
two things that are not prose: a section heading, and `raised-here`, which is a
label created in the tracker rather than a wording — `setup-project` creates all
seven, and "a label that only exists in this document is not a label". Neither
moves when a paragraph is improved. Renaming a heading does not make the check
quietly pass; it makes the extract empty and the check print, which is the
failure worth having. What it cannot see is a section that names the label and
states the finish wrongly anyway. It asserts the element is present, which is the
strongest thing a static check can assert about prose.

**The check below it is keyed on wording, and there is no drift-safe way to write
it.** What it looks for is a second statement of step 2's decision, and a second
statement can be written in any words at all — there is no identifier, no
heading and no structure that distinguishes one from a paragraph that legitimately
mentions the same situation. So it carries the same standing note as the handover
check above: **the phrasings get added as they are coined, and a line disappearing
from this output is read as a question rather than as progress.** Every line it
prints needs an eye on it, and the question to ask of each is whether it is the
decision being made a second time or a place that quotes or qualifies it:

    grep -rn 'Several: ask\|None: stop\|One ready task: continue\|nothing in scope is ready any more\|nothing ready is left in scope' skills/*/SKILL.md shared/*.md

It prints two lines today, and both are sound: `build-work` quotes the old finish
inside the paragraph that replaced it, and `setup-checks` carries the phrase with
the loose-issue clause appended to it. Both would read as defects on the wording
alone, which is the reason this check reports rather than judges.

**The check that used to close this section is not here any more.** "The
installed copy is the copy you changed" now stands under "Before you change
anything, run this", because at a handover the answer is red by construction and
a red-by-construction line stops being read. The reasoning is written out there.
