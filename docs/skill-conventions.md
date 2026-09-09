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
one that did not get the definition guesses. Three carry real weight here.

**A seam is a place where this work is checked** — a function boundary, a
module edge, an entry point. The spec confirms them; nothing gets tested at an
unconfirmed seam, and a test at one is a review finding. Every skill that builds
or reviews works to that list.

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
step ran once without an answer. Measured on 31 August 2026 in a test project: a
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
lands outside the repository without the user running it — and the hook is what
catches the ordinary case, not a wall.

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
answer a prompt during it.

**The `checks.md` parsers are shell scripts.** Backticks and apostrophes in a
table cell used to break them. Backticks are stripped, in both parsers, in every
column they read. Apostrophes are not stripped anywhere and no longer need to be:
each cell is passed through a quoted `sed`, where an apostrophe is an ordinary
character — checked on 7 September 2026 by running `stop-checks.sh` over a table
with one in a cell. Keep machine-read columns plain all the same; the parsers
split each row by position with `IFS='|'`, so a `|` inside a cell still shifts
every column after it. The `Status` column takes only `filled`, `empty`,
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

## Before you change anything, run this

**The installed copy is the copy that runs.** A skill invoked in a session is
read out of `~/.claude/plugins/cache/`, never out of the working tree, so a
session that exercises a skill while the install is behind is exercising text
nobody is reading, and every conclusion drawn from what it did is about the older
wording. That question has exactly one moment where it can be answered: before
the first edit, while the working tree is still the main branch.

    diff -r ~/.claude/plugins/cache/jayjay-create/devloop/$(python3 -c "import json,pathlib;print(json.load(open(pathlib.Path.home()/'.claude/plugins/installed_plugins.json'))['plugins']['devloop@jayjay-create'][0]['version'])")/skills skills

Silence means what runs in this session is what you are about to change. Anything
printed is the installed copy being behind: say so before exercising a skill, and
read what it printed rather than assuming which side is older.

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

Thirteen checks that catch what a conversation loses. Each one has found a real
gap. Every one of them has to run on the machine it is needed on: `head -n -1` is a
GNU extension and does nothing on macOS but print an error, which is how a check
comes to report a checksum of nothing and look like it passed. Keep them to what
POSIX gives you.

**Thirteen checks, fourteen command blocks.** The fourteenth cannot go red by
construction and is kept below as a warning rather than as a check, marked where
it stands; count it out or this number drifts again. It drifted once already, and
quietly: on 7 September 2026 one check was split into three blocks, one of them
that unreachable one, so the checks went from eleven to twelve while this sentence
stayed at eleven — and the change after it added two real checks and moved the
number by two, carrying the error forward untouched. Measured on 9 September 2026,
the sentence read thirteen against fourteen checks. It reads thirteen against
thirteen now because the installed-copy check moved to the section above, not
because the arithmetic was ever repaired.

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

The same for the block on running commands, which is in all twelve. What comes
after it differs per file — a `## ` heading in most, a `---` in one, the closing
language block elsewhere — so the extract runs to whichever of those three markers
comes first, rather than to a fixed number of lines:

    for f in skills/*/SKILL.md; do awk '/^## When a command does not answer/{f=1;print;next} f&&(/^## /||/^---/||/^\*\*Answer in the language/){exit} f{print}' "$f" | cksum; done | sort -u

**The number is the part that had to go.** This check was `grep -A45`, and 45 was
the length of the block on the day it was written. A fixed count fails in both
directions and both failures are quiet. Too small — which it becomes the moment
the block grows by a line, as it did on 7 September 2026 — and the check keeps
reporting agreement while comparing only the part that still fits. Too large and
it pulls the per-file text after the block into the window: measured the same day,
`-A46` still gave one line and `-A60` gave nine, so the obvious repair of raising
the number leaves a check that is permanently red and therefore read by nobody.
Bounding the extract instead of counting it makes it grow with the block by
itself.

The third marker is there by construction, not by luck: the closing language block
stands in all twelve, which the check above it measures, so the shared block is
never the last thing in a file. Should a fourth kind of paragraph one day follow
it, the extract runs on to the next marker it does know, takes in text that
differs per file, and the checksums part — it fails loudly, which is the failure
worth having.

What it does not cover is the same fault one level in, and it is worth the line.
**If one of the three markers ever appears inside the shared block, the extract
stops at that point in all twelve files, the checksums go on agreeing, and only
the part before it is compared.** The obvious check is to look for a marker
inside the extract:

    for f in skills/*/SKILL.md; do awk '/^## When a command does not answer/{f=1;next} f&&(/^## /||/^---/||/^\*\*Answer in the language/){exit} f&&(/^---/||/^## /){print FILENAME": "$0}' "$f"; done

It comes back empty, and it comes back empty whatever the files say: the rule
that exits fires on every marker before the rule that prints can match one, so
the printing rule is unreachable. That is not a fault in the writing of it. The
extract is defined as ending at the first marker, so asking whether a marker
falls inside it asks whether the first marker comes before the first marker, and
no arrangement of the same test answers that. Kept here because a reader will
otherwise write it again, and because a check that cannot go red is the thing
this file is most often wrong about. **This is the block that is not one of the
thirteen** — the one the count at the top of this section says to leave out.

What can be asked from outside is whether the extract still reaches the end of
the block, named by its last sentence — a marker inside the block stops it short.
This one prints nothing while nothing is wrong, and prints the file when
something is:

    for f in skills/*/SKILL.md; do awk '/^## When a command does not answer/{f=1;next} f&&(/^## /||/^---/||/^\*\*Answer in the language/){exit} f{print}' "$f" | grep -qF 'were not all approved before it started.' || echo "$f: extract stops short of the end of the block"; done

That anchor is a line of the block like any other, so it moves when the block's
last paragraph is rewritten. Rewrite it there too — a check anchored on a sentence
that no longer exists prints all twelve files and says nothing.

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

    grep -rn 'picks up as soon as\|picks up once\|picks up the moment\|carry on when it has run\|once it has run\|hand them the command\|hand the user the\|Hand the user the' skills/*/SKILL.md

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
and resuming on it is the only possible form rather than a defect. Today's seven
lines fall out like this — seven lines over six sites, because `setup-checks`
matches on two consecutive ones:

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
  sentence, where it is already done one step later and better.
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

    grep -rn 'Several: ask\|None: stop\|One ready task: continue\|nothing in scope is ready any more\|nothing ready is left in scope' skills/*/SKILL.md

It prints two lines today, and both are sound: `build-work` quotes the old finish
inside the paragraph that replaced it, and `setup-checks` carries the phrase with
the loose-issue clause appended to it. Both would read as defects on the wording
alone, which is the reason this check reports rather than judges.

**The check that used to close this section is not here any more.** "The
installed copy is the copy you changed" now stands under "Before you change
anything, run this", because at a handover the answer is red by construction and
a red-by-construction line stops being read. The reasoning is written out there.
