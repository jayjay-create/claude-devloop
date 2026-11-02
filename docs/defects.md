# The defects of devloop

Every defect of this set stands here, open or closed, each as one block,
read by `scripts/devloop-stock-take` on every run. `docs/roadmap.md` is the
dated report of what was measured and decided and names a defect in the
entry that found it; `docs/stock-take.tsv` holds the things of the set and
every run, a run on a defect naming the defect's title; this file holds the
defects. Nothing here stores a state: the tool computes the state of every
block from its `Fix` and from the git history, and a block whose `Status`
names another state is a broken record.

A block is a heading of the third level and one field per line under it:

    ### <title>
    - Wrong: <what is wrong>
    - Should: <what should hold>
    - Found: <the head of the entry of docs/roadmap.md that found it>
    - Fix: `FILE` "TEXT", or none, or not determined
    - Status: <the state, or a closing with its proof>
    - Note: <free text>
    - Trigger: `FILE` "TEXT"
    - Bench: `FILE` "TEXT"
    - Cost: `FILE` "TEXT"

The first five fields stand in every block; the last four where there is
something to say. A field stands on one physical line, never wrapped. The
title is unique in the file and carries no " / ". `Found` names a head under
"## Known gaps" of `docs/roadmap.md` whole, read there across line breaks,
and exactly one. `Fix` names the line where the repair stands, as a file
from the repository root and a verbatim substring of one line of it, 20 to
80 characters, found exactly once in that file, as the header of the tool
says of anchors; it never points at `docs/roadmap.md` or at this file.
`none` says the repair stands nowhere yet; `not determined` says nobody has
read whether anything is built. `Trigger`, `Bench` and `Cost` name how the
defect could be walked, where an entry names them; they may point anywhere.

The states, in the words the tool prints: `Undetermined`, where `Fix` is
`not determined`; `Recorded, not built`, where `Fix` is `none` or lies under
`docs/` or in `README.md` outside the two check headings of
`docs/skill-conventions.md`; `Built, never walked`, where `Fix` lies under
`skills/`, `shared/`, `output-styles/`, `hooks/`, `bin/`, `scripts/` or
`.github/` or under one of the two check headings and no run counts;
`Walked`, where a run counts, a run counting when the version it ran
contains the last change to the `Fix` line and to no other line; and
`Closed`, where `Status` carries one of the three closing forms with the
proof the tool confirms on every run:

    Closed, lapsed: `FILE` no longer carries "TEXT", removed at `COMMIT`.
    Closed, lapsed: `FILE` no longer carries "TEXT".
    Closed, corrected in the document: `FILE` carries "TEXT".
    Closed, left on purpose: decided in `FILE` at "TEXT".

The sections: `## Milestone <number>` for every milestone of `docs/plan.md`
under "## Twelve milestones, in this order" that takes defects, and
`## Without a milestone`. A defect stands under the milestone that takes it,
open or closed, and the title of its block does not change with the section,
since the runs name it by the title.

Two marks of the transition: the section `## Not yet sorted` holds every
block that no order has yet sorted into a milestone, and the value
`not stated` stands in a `Wrong` or `Should` that no text of the roadmap
filled when the blocks were written. The tool lists both without going red.

## Without a milestone

### build-prototype LOGIC.md hands the file over by sending or opening it where SKILL.md gives one action
- Wrong: `skills/build-prototype/LOGIC.md` under "4. Hand it over" says "Send them the file, or open it for them", and `skills/build-prototype/SKILL.md` under "Hand it over so it gets looked at" says to give them one action, the exact command that opens it
- Should: the person decides which holds: the handover of LOGIC.md under "4. Hand it over", or the one action of SKILL.md under "Hand it over so it gets looked at"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 8 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### diagnose-bug opens with three routes in and names a fourth further down
- Wrong: `skills/diagnose-bug/SKILL.md` under "When this runs" opens "Nobody asks for this. It starts when a check goes red in one of three classes", and the same section says further down "A fourth route arrives when a person can look at the thing running and say it behaves wrongly"
- Should: the person decides which holds: the opening sentence with its three routes, or the paragraph on the fourth route, both under "When this runs"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 8 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### body-through-file.md says a heredoc puts the text where the guard reads it and that a quoted string is a word to the guards
- Wrong: `shared/body-through-file.md` says in its paragraph "The file itself is written with the editing tool" that a heredoc, an `echo` or a `cat` puts the same text through the shell, where the guard reads it, and in its first paragraph that to the guards a quoted string is a word of its command and no command
- Should: the person decides which holds: the reason given for the editing tool in "The file itself is written with the editing tool", or the sentence of the first paragraph on a quoted string
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 9 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### editing-tool.md says the guards read text put through the shell and that a quoted argument is a word to them
- Wrong: `shared/editing-tool.md` says in its first paragraph that a heredoc, `echo`, `printf` or `tee` puts the text through the shell, where the guards read it, so that a line quoting an install is blocked, and in its last paragraph that the install line goes through `bin/devloop-install-note put` with its command an argument in single quotes, which the guards read as a word of that call and not as a command
- Should: the person decides which holds: the reason of the first paragraph, or the reading of the last paragraph
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 9 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### install-tool.md says no issue holds the task since the issue is written on a no alone, while the way after a no runs the same steps with the issue open
- Wrong: `shared/install-tool.md` says in the paragraph on the steps for the PATH that step 2 reads the issues, "none of which holds this task, since the issue is written on a no alone", and the paragraph after it sends the run after a no through the same steps with the issue still open, which the read at the start of step 2 closes first
- Should: the person decides which holds: the reason given in the PATH paragraph, or the way after a no in the paragraph that follows it, where the read at the start of step 2 closes the issue
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 10 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### install-record.md says the five browser places are added with the person there and no text names a run that adds them
- Wrong: `shared/install-record.md` says in the paragraph on the places that a record with the six places and not the five is not amended and that the guard blocks a browser download "until the five are added with the person there", and no text of a skill names a run that adds them to an existing record saying yes
- Should: the person decides which holds: the sentence of install-record.md on the five added with the person there, or a run of a skill that adds them, which no text names
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 10 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### mode-set-up.md says the mark guard blocks exactly where the text refuses while the text refuses on five things and the guard reads four of them and start condition 1
- Wrong: `shared/mode-set-up.md` opens with five things the run with nobody there refuses on, the record of the mode among them, and says in the paragraph on the guard that `hooks/pre-tool-use-mark-guard.sh` reads the last four of the five and start condition 1 and blocks "exactly where this text refuses"
- Should: the person decides which holds: the five things of the opening with the record among them, or "exactly where this text refuses" in the paragraph on the guard, which reads start conditions 1, 2, 5, 6 and 7 and not the record
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 12 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### cut-branch.md deletes the branch once they have said it landed where merge-handover.md reads the landing off the platform and never off their word
- Wrong: `shared/cut-branch.md` says in its paragraph on the setup that lands by the person's hand that the run deletes the branch "only once they have said it landed", and `shared/merge-handover.md` says in its last paragraph that the command's output in the conversation is what releases the run and that whether the merge landed is read off the platform and never off their word
- Should: the person decides which holds: the deletion on their word in cut-branch.md, or the reading off the platform in merge-handover.md
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 14 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### branch-deletion.md gives exit 128 for the program's line at the bound where fetch-three-times.md gives exit 124
- Wrong: `shared/branch-deletion.md` says in its paragraph on the query of the remote "A query that does not answer, exit 128 with git's message or the program's line at the bound", and `shared/fetch-three-times.md` says in its paragraph on the bound that the program's line comes with exit 124, the code `bin/devloop-bounded` gives at its bound
- Should: branch-deletion.md says exit 124 for the program's line at the bound, as fetch-three-times.md and the head of `bin/devloop-bounded` have it, and exit 128 for git's own message
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 14 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### start-work says something in flight means no question and offers to land an open pull request
- Wrong: `skills/start-work/SKILL.md` under "Step 2" says "Something in flight means no question, and a stop" for the in-flight report, and the same step says of an open pull request of theirs waiting to land "offer to land it", a yes taking the run to `build-work` step 6
- Should: the person decides which holds: "Something in flight means no question", or the offer to land the open pull request, both under "Step 2"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 15 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### start-work says not to ask at all with a map or a spec in flight and in the same case to rank, recommend and offer
- Wrong: `skills/start-work/SKILL.md` under "Step 2" says "If a map or a spec is in flight, do not ask a question at all", and the same paragraph names an exception for an open issue in the same case: "rank it, recommend one, offer to pick it up"
- Should: the person decides which holds: no question at all with a map or a spec in flight, or the exception that ranks, recommends and offers, both under "Step 2"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 15 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### start-work asks what to build only after the introduction, so a setup in part with no idea reaches step 3 unasked
- Wrong: `skills/start-work/SKILL.md` under "Step 2" says that at `set up in part` the introduction is skipped and the run carries on with step 3, and the same step puts the question what they would like to build only after the introduction, so that with the setup in part and no idea in hand nothing asks what to build
- Should: the person decides which holds: the route at `set up in part` that skips the introduction and goes to step 3, or the question what to build that comes after the introduction alone, both under "Step 2"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 15 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### cut-into-tasks says the split with its count is said once the first task is built and that the number of tasks is stated after creating
- Wrong: `skills/cut-into-tasks/SKILL.md` under "Before you create anything" says that with them there the split is said at the next message that ends a turn with text, which comes only once the issues exist and the first task is built, and under "After creating" says to state the number of tasks and which one is ready first
- Should: the person decides which holds: the one message after the first task is built under "Before you create anything", or the statement of the number under "After creating"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 15 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### review-changes asks for the record of how many lenses ran and says to say neither number
- Wrong: `skills/review-changes/SKILL.md` says in its opening under "Review a change" that every angle the change touches gets read, "the record of how many ran", and under "Run them" says "Start one reviewer for every lens that applies, and say neither number"
- Should: the person decides which holds: the record of how many ran under "Review a change", or saying neither number under "Run them"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 15 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### review-changes says to say what was filed and why where the report is said to nobody
- Wrong: `skills/review-changes/SKILL.md` under "What happens to a finding" says of a finding filed as an issue "Say what you filed and why", and under "The report, said to nobody" says the report is said to nobody, the findings reaching the person at the close of the step that owns the gate
- Should: the person decides which holds: saying what was filed under "What happens to a finding", or the report said to nobody under "The report, said to nobody"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 15 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### setup-project asks the language first in English where step 4 says never to ask about the user's language
- Wrong: `skills/setup-project/SKILL.md` under "Step 0" says that where the user's language cannot be told the run asks that first, in English, as a single question, and under "Step 4 — Questions" says "Never ask about the user's preferred language or tone here"
- Should: the person decides which holds: the language question of "Step 0", or the rule of "Step 4 — Questions" against asking about the language
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 16 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### setup-project gives the record not having landed yet as the reason for handing nothing over, which does not hold at a refresh whose record stands
- Wrong: `skills/setup-project/SKILL.md` under "A guard's block is not a decline" says to carry on without the command and hand nothing over because "the record has not landed yet, and once it has, the check setup decides", and under "Refreshing an existing setup" the skill runs where a record stands on the main branch already
- Should: the person decides which holds: the reason under "A guard's block is not a decline", or the refresh under "Refreshing an existing setup", where the record has landed
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 16 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### setup-project step 1 names the head of backed-command.md as a rule above, and the skill does not insert that text
- Wrong: `skills/setup-project/SKILL.md` under "Step 1 — Explore, change nothing" says a command is backed "as 'A command that fetches something from outside is backed' says", the head of `shared/backed-command.md`, and the insert lines of the skill bring no `shared/backed-command.md` in
- Should: the person decides which holds: the reference under "Step 1 — Explore, change nothing", or the insert lines of the skill, which carry no backed-command text
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 16 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### setup-project points at three-questions.md and the text on the mark's deletion, neither of which it inserts
- Wrong: `skills/setup-project/SKILL.md` under "Step 4 — Questions" grounds the single question on what `shared/three-questions.md` says of a round, and under "`issue-tracker.md`" says a thing is taken up as work "by the text on the mark's deletion", and the insert lines of the skill bring neither text in
- Should: the person decides which holds: the two references under "Step 4 — Questions" and "`issue-tracker.md`", or the insert lines of the skill, which carry neither text
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 16 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### plan-work says of the install record only that the build decides and names today's record for conditions 6 and 7 at a blocked mark
- Wrong: `skills/plan-work/SKILL.md` under "Stage 1 — Sharpen the idea" says the planning "says of the record only that the build decides", and the same stage says of a mark the guard blocks on conditions 6 and 7 that the run tells them which condition failed and why, naming the record as it stands today
- Should: the person decides which holds: the planning saying of the record only that the build decides, or the sentence on conditions 6 and 7 at a blocked mark, both under "Stage 1 — Sharpen the idea"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 17 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### plan-work says under --planning the program does not give the record's line and that the spec carries not the program's line on the record
- Wrong: `skills/plan-work/SKILL.md` under "Stage 1 — Sharpen the idea" says that under `--planning` the program prints no answer and "the record's line it does not give", and under "Stage 4 — Write the spec" says the tool line stands in the spec as printed "and not the program's line on the record", a line the program prints
- Should: the person decides which holds: "the record's line it does not give" under "Stage 1 — Sharpen the idea", or "not the program's line on the record" under "Stage 4 — Write the spec"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 17 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### plan-work says to run the four stages in one session where you can and that planning is one session
- Wrong: `skills/plan-work/SKILL.md` says in its opening under "Plan a piece of work" "Run them in one session where you can", and under "Picking up an interrupted plan" says a stage that stands otherwise belongs to a run that broke off, "since planning is one session"
- Should: the person decides which holds: "where you can" in the opening under "Plan a piece of work", or "planning is one session" under "Picking up an interrupted plan"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 17 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### setup-checks hands the command over after a no to a tool in the packages as text and puts the question for the same class at once with the command in its field
- Wrong: `skills/setup-checks/SKILL.md` under "Step 3 — Prefer tools that live inside the project" says the command of the second way is handed over after the no in the message that ends the turn, as text, and the same step puts the question on a tool the run may not install at once, with the command in its question field and handed over once more on the first answer
- Should: the person decides which holds: the handover as text after the no, or the question at once with the command in its field, both under "Step 3 — Prefer tools that live inside the project"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 18 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### setup-checks skips step 7 for the four single-class callers at its opening and for a single class from a build at step 7
- Wrong: `skills/setup-checks/SKILL.md` says in its opening under "Build out the check suite" that for a single class, from any of the four things that call it that way, the run skips steps 7 and 8, and under "Step 7 — Land the check suite on the main branch" says "Skip this whole step when this skill was called for a single class from a build"
- Should: the person decides which holds: the four callers of the opening under "Build out the check suite", or "from a build" under "Step 7 — Land the check suite on the main branch"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 18 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### setup-checks calls the questions of step 3 the last questions of the skill where step 8 asks more
- Wrong: `skills/setup-checks/SKILL.md` under "Step 3 — Prefer tools that live inside the project" says "its questions are the last questions of this skill, the branch is cut once they are answered", and under "Step 8 — Offer the unattended mode" the skill puts the question on the mode
- Should: the person decides which holds: "the last questions of this skill" under "Step 3 — Prefer tools that live inside the project", or the question under "Step 8 — Offer the unattended mode"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 18 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### setup-checks gives them the command where an install under a yes brings a runtime and says nothing of how that class is then decided
- Wrong: `skills/setup-checks/SKILL.md` under "Step 3 — Prefer tools that live inside the project" says that where the install would bring a compiler, a runtime or system packages "the line is the one that gives them the command" under a record saying yes, and the three ways the no line names and the paragraph "After a no the run goes the way that line named" say nothing of how the class is decided in that case
- Should: the person decides which holds: the line that gives them the command where the install brings a runtime, or the three ways of the no and the paragraph after them, which do not cover it, all under "Step 3 — Prefer tools that live inside the project"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 18 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### setup-checks step 8 puts the question where the five things do not all hold and puts none where GitHub offers no protection
- Wrong: `skills/setup-checks/SKILL.md` under "Step 8 — Offer the unattended mode" says in its paragraph on when the offer is made that where the five things do not all hold "the question is put, with auto-merge off and no gate on the main branch as much as with them", and in its paragraph on the reading of the rules that on HTTP 403 "no question is put" and nothing is set up
- Should: the person decides which holds: the question put where the five things do not all hold, or no question where GitHub offers no protection, both under "Step 8 — Offer the unattended mode"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 19 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### setup-checks step 8 writes nothing where GitHub offers no protection before the question and writes a record saying no where the protection is refused when it is set
- Wrong: `skills/setup-checks/SKILL.md` under "Step 8 — Offer the unattended mode" says that where GitHub offers no protection at the reading before the question "nothing is written", and in its paragraph on the record says `unattended-mode` is `no` with the reason "that the platform refused the protection" where it is refused when it is set
- Should: the person decides which holds: nothing written where the protection is not offered, or the record saying no with its reason where it is refused, both under "Step 8 — Offer the unattended mode"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 19 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

### setup-checks counts the fields of the mode question at thirteen lines, which assumes the visibility answered and says nothing of the field with the command and the message in it
- Wrong: `skills/setup-checks/SKILL.md` under "Step 8 — Offer the unattended mode" says "At 80 columns, on macOS and with a private repository, these fields fill thirteen lines, inside the bound", and its paragraph on reading whether the repository is public says that where no answer came the command and the message stand in the question field under the line on the cost, which the count does not carry
- Should: the person decides which holds: the count of thirteen lines, or the field with the command and the message where the visibility did not answer, both under "Step 8 — Offer the unattended mode"
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the order on the history of the loaded texts, section 19 of its report; an inner contradiction of the loaded texts, the two places read again at 606cdab on 2 November 2026 and both standing

## Not yet sorted

### a rule in the run's own memory closes the arming route the skills allow
- Wrong: not stated
- Should: not stated
- Found: Arming was measured on 25 August 2026, in `devloop-test-l` on pull request 15, and it separates into four findings.
- Fix: not determined
- Status: Undetermined
- Note: named 25 August 2026 in devloop-test-l. The entry says neither that anything was built nor that nothing is, so the evidence stays empty. The entry on the ! route (9 September 2026) calls this its mirror image and answers it no more than this one does

### arming refused in the window after a push while the required check has not started
- Wrong: not stated
- Should: not stated
- Found: Arming was measured on 25 August 2026, in `devloop-test-l` on pull request 15, and it separates into four findings.
- Fix: `skills/build-work/SKILL.md` "that reads a value asking for it**, never in a call of its own: the value"
- Status: Built, never walked
- Note: the three stages that arm and the merge guard's message read mergeStateStatus before the mutation and know the refusal in the window as its own case. Never walked: the entry Not everything is exercised yet says nothing has run against the rollup wait that closes this window; since 17 October 2026 bin/devloop-arm reads mergeStateStatus and arms in the same pass

### the entry point and the planning stage could not see an open pull request
- Wrong: not stated
- Should: not stated
- Found: The stock-take could not see a pull request at all, and that was measured on 31 August 2026.
- Fix: `skills/setup-project/SKILL.md` "`states:OPEN` on `pullRequests` is read for "not landed yet", and that is"
- Status: Built, never walked
- Note: both halves, issues and pullRequests, stand in one command in the issue-tracker.md template that setup-project writes, and build-work's readiness query gained the third condition. The entry says all of it is unwalked as of 31 August 2026, and no later line of this half shows the widened query met a draft, another person's pull request or the third readiness condition
- Trigger: `docs/roadmap.md` "bench for the stock-take — issue 8 open with pull request 14 closing it, the"
- Bench: `docs/roadmap.md` "that shape today, so a measurement of the widened query needs one set up for"

### nothing in the set said to write Closes #N into a pull request body
- Wrong: not stated
- Should: not stated
- Found: The stock-take could not see a pull request at all, and that was measured on 31 August 2026.
- Fix: `skills/build-work/SKILL.md` "`Closes #N` — on a line of its own"
- Status: Walked
- Note: the build stage writes the keyword since 31 August 2026

### a command whose output did not come back was repeated in silence and named in no report
- Wrong: not stated
- Should: not stated
- Found: A refused command was repeated in silence, and that was measured on 31 August 2026.
- Fix: `shared/command-does-not-answer.md` "permission or safety check refused is said, though the second went through:"
- Status: Built, never walked
- Note: the block When a command does not answer stands in all twelve skills, since 17 to 18 September 2026 as shared text inserted at load. The boundary, an empty answer against a missing one, is drawn at the readiness query, the in-flight query and the entry point's query; by the roadmap entry of 17 October 2026 on the reports of what was done a refusal the second attempt got past went unsaid, reversing the report of the first refusal beside the answer built here; since the person's decision of the same day, built by the addendum to that entry, a first attempt a permission or safety check refused is said in one line naming the check, the command and that the second attempt went through, in the next message that ends the turn with text, with nobody there in the pull request of the work or its issue, while a command that only did not answer and answered the second time is not said; a command that answers on neither attempt is said where it changes what the person gets, with the command and the message

### the mergeStateStatus enumeration had no case for no value at all
- Wrong: not stated
- Should: not stated
- Found: A refused command was repeated in silence, and that was measured on 31 August 2026.
- Fix: `shared/empty-read.md` "`mergeStateStatus`, so nothing coming back is a fact about the query and none"
- Status: Built, never walked
- Note: a missing value is its own outcome: read once more, on a second empty read do not arm. The same distinction at the rollup: a required name missing is a check not started, a rollup that did not answer is not. Unwalked: no session has met an empty mergeStateStatus read under this wording

### diagnose-bug step 1 would have taken a command refused before it ran for its red signal
- Wrong: not stated
- Should: not stated
- Found: A refused command was repeated in silence, and that was measured on 31 August 2026.
- Fix: `skills/diagnose-bug/SKILL.md` "A refusal is not a red signal"
- Status: Built, never walked
- Note: one of two sites outside the arming path where a refusal and a real failure look alike

### setup-checks step 5 would have taken a command refused before it ran as proof a class is filled
- Wrong: not stated
- Should: not stated
- Found: A refused command was repeated in silence, and that was measured on 31 August 2026.
- Fix: `skills/setup-checks/SKILL.md` "or because the command was refused before it ran"
- Status: Built, never walked
- Note: the second of the two sites outside the arming path

### the aim is a running application and nothing runs, so nothing can be looked at, driven or documented
- Wrong: not stated
- Should: not stated
- Found: The aim is idea to a running application; this gets to merged code.
- Fix: none
- Status: Recorded, not built
- Note: not a bug in what exists, the aim moved. Five things stand between the two, each below

### the user never gets a way to see the thing, no step asks for one
- Wrong: not stated
- Should: not stated
- Found: The aim is idea to a running application; this gets to merged code.
- Fix: none
- Status: Recorded, not built

### nothing draws a UI or settles what a screen should feel like, the drawing half open
- Wrong: not stated
- Should: not stated
- Found: The aim is idea to a running application; this gets to merged code.
- Fix: none
- Status: Recorded, not built
- Note: settle-the-look is the named answer to the recording half and stands under Named, not built as skills

### nothing picks the stack, it arrives by whatever the first task reaches for
- Wrong: not stated
- Should: not stated
- Found: The aim is idea to a running application; this gets to merged code.
- Fix: none
- Status: Recorded, not built

### nothing writes documentation for the people who run the thing and nothing ships it
- Wrong: not stated
- Should: not stated
- Found: The aim is idea to a running application; this gets to merged code.
- Fix: none
- Status: Recorded, not built

### the further skills that belong in the loop are named as candidates and not evaluated
- Wrong: not stated
- Should: not stated
- Found: The aim is idea to a running application; this gets to merged code.
- Fix: none
- Status: Recorded, not built

### build-work step 2 asks what each ready task unblocks and three runs gave titles only
- Wrong: not stated
- Should: not stated
- Found: `build-work` step 2 lists ready tasks without saying what each unblocks.
- Fix: not determined
- Status: Undetermined
- Note: the entry names no fix and says nothing is built, so the evidence stays empty. Three runs in a row are evidence of the defect, not a walk of anything

### build-work step 2 named the loose issues nowhere, the two sentences it asks for stayed out
- Wrong: not stated
- Should: not stated
- Found: `build-work` step 2 named the loose issues nowhere.
- Fix: not determined
- Status: Undetermined
- Note: measured 30 August 2026 in devloop-test-m. The entry names no fix, so the evidence stays empty. The nearest answer is the entry on the loose-issue rule written by appending, which rewrote the competing sentences and asks for the clause per issue, not for these two sentences

### the loose-issue rule was written by appending and the sentences it competes with were left standing
- Wrong: not stated
- Should: not stated
- Found: The loose-issue rule was written by appending, and the sentences it competes with were left standing.
- Fix: `skills/build-work/SKILL.md` "## Step 7 — Back to step 2"
- Status: Built, never walked
- Note: the fourth case of rewrite-rather-than-append in docs/skill-conventions.md. Built as the three rewrites below: step 7 points at step 2 instead of answering again, the unattended finish names the loose issues, step 2 asks for the clause per issue

### the unattended scope announcement did not mention the loose issues and the finish read the readiness query's word
- Wrong: not stated
- Should: the scope holds the loose issues, each under its clause, not said as the run opens since that day, the last message naming what is open
- Found: The loose-issue rule was written by appending, and the sentences it competes with were left standing.
- Fix: `skills/build-work/SKILL.md` "carrying `raised-here`, and place each under one of step 2's three clauses"
- Status: Built, never walked
- Note: rewritten in build-work's unattended section, the finish pulled into the three places setup-checks step 8 promises it. Measured 9 September 2026 before the fix. No run after it in this half; should revised 17 October 2026 by the roadmap entry of 17 October 2026 on the reports of what was done: the scope holds the loose issues, each under its clause, not said as the run opens since that day, the last message naming what is open; the finish unchanged

### asked what was next the run offered two ways instead of naming one, step 7 and start-work step 5 said the opposite of step 2
- Wrong: not stated
- Should: the issue clause 3 names taken as a statement and not an offer, which and why not said since that day
- Found: The loose-issue rule was written by appending, and the sentences it competes with were left standing.
- Fix: `skills/start-work/SKILL.md` "Loose issues carrying `raised-here`, with no task left open under a spec"
- Status: Built, never walked
- Note: step 7 lost its three answers and points at step 2, start-work step 5 got a fifth branch sending loose raised-here issues to build-work; should revised 17 October 2026 by the roadmap entry of 17 October 2026 on the reports of what was done: the issue clause 3 names taken as a statement and not an offer, which and why not said since that day

### the four loose issues were built in issue-number order, blocking taken for the criterion
- Wrong: not stated
- Should: not stated
- Found: The loose-issue rule was written by appending, and the sentences it competes with were left standing.
- Fix: `skills/build-work/SKILL.md` "The announcement names the clause, per issue"
- Status: Built, never walked
- Note: step 2 asks for the clause per issue, so an ordering that names none is incomplete on its face. The trigger is the one the entry on step 2 naming the loose issues nowhere names for the ordering: it had never been put to a choice until 9 September 2026
- Trigger: `docs/roadmap.md` "ordering needs a spec whose last task is closed, or merged work that is wrong,"

### nothing enforces the loose-issue rule, a guard examined and rejected, two text checks built instead
- Wrong: not stated
- Should: not stated
- Found: The loose-issue rule was written by appending, and the sentences it competes with were left standing.
- Fix: `docs/skill-conventions.md` ""skills/build-work/SKILL.md:^## Unattended mode""
- Status: Built, never walked
- Note: Stop cannot tell a finish from a wait at a gate and blocks by forcing the run on, SessionStart supplies facts the run already had. Built instead: the checks over the unattended finish and the second statement under Before a handover, run these

### a finding announced as filed is not always filed and nothing checks that a promised issue exists
- Wrong: not stated
- Should: not stated
- Found: A finding announced as filed is not always filed.
- Fix: none
- Status: Recorded, not built

### refreshing the control documents opens a pull request for a five-character change
- Wrong: not stated
- Should: not stated
- Found: Refreshing the control documents opens a pull request for a five-character change.
- Fix: none
- Status: Recorded, not built
- Note: correct by the rules and out of proportion, kept: worth revisiting only with a rule that does not carve an exception

### a gate the working account can step over was taken for a gate, the defect of pull request 73
- Wrong: not stated
- Should: not stated
- Found: Not everything is exercised yet.
- Fix: `skills/setup-checks/SKILL.md` "`.enforce_admins.enabled` together with `gh api repos/OWNER/REPO -q"
- Status: Built, never walked
- Note: whether a gate binds is read at setup-checks, setup-project and build-work, since 31 August 2026 from both sides
- Trigger: `docs/roadmap.md` "creates one. It needs a repository prepared by hand, with protection on,"
- Bench: `docs/roadmap.md` "in. That shape was set up in `devloop-test-l` on 25 August 2026, and the run"

### allow_auto_merge could not tell two of the three refusal cases at arming apart
- Wrong: not stated
- Should: not stated
- Found: Not everything is exercised yet.
- Fix: `skills/build-work/SKILL.md` "`gh api repos/OWNER/REPO/rules/branches/main` sees rulesets"
- Status: Walked
- Note: the gate is read from rules/branches/main and branches/main/protection together, a pull request past its gate from mergeStateStatus, rights that answer neither query said as such. The second case walked twice, the third case and the missing-rights answer never
- Trigger: `docs/roadmap.md` "case is still unwalked** — a gate the pull request is already past — and so is"

### UNKNOWN and BEHIND were mergeStateStatus values no file carried
- Wrong: not stated
- Should: not stated
- Found: Not everything is exercised yet.
- Fix: `skills/build-work/SKILL.md` "ends on it with `behind:` and arms nothing. Fetch —"
- Status: Built, never walked
- Note: both carried in the three stages that arm and in the merge guard's message, with the rule that a value in none of the groups is named. DIRTY stays unnamed and falls under that rule. Unwalked: no session has read either value out of a live pull request under this wording

### CLEAN, HAS_HOOKS and UNSTABLE were read as a pull request past its gate when the check had not started
- Wrong: not stated
- Should: not stated
- Found: Not everything is exercised yet.
- Fix: `skills/build-work/SKILL.md` "this head commit, off the commit's"
- Status: Built, never walked
- Note: the rollup separates the two, a check not started is a wait of ten seconds at a time bounded at two minutes. Nothing has run against it: the UNSTABLE of 6 September 2026 stood in a repository without a gate; since 17 October 2026 the program reads the rollup and reads on once a second inside its call, two calls of sixty seconds
- Trigger: `docs/roadmap.md` "still needed is that value on a pull request in a repository that does have a"

### whether a gate binds was read from enforce_admins alone, blind to a ruleset gate
- Wrong: not stated
- Should: not stated
- Found: Not everything is exercised yet.
- Fix: `skills/setup-checks/SKILL.md` "with `RULESET_ID` off the rules `rules/branches/main`"
- Status: Built, never walked
- Note: current_user_can_bypass on the ruleset, never binds. Unwalked: no session has met a ruleset gate and the entry says the benches carry none, so no bench is named

### the install guard read package-manager verbs only, blind to a build flag aimed at a bin directory, sudo, make install and installer scripts piped from the network
- Wrong: not stated
- Should: not stated
- Found: Not everything is exercised yet.
- Fix: `hooks/pre-tool-use-install-guard.sh` "doas|su|run0|pkexec|runuser|gsudo|login|gosu|pbrun|dzdo|ksu|addo|asroot"
- Status: Walked
- Note: none of the widened patterns has been seen fire in a session

### the guards were blind to anything after a newline or a quote in a tool call
- Wrong: not stated
- Should: not stated
- Found: Not everything is exercised yet.
- Fix: `hooks/pre-tool-use-install-guard.sh` "INPUT=$("$HERE/../bin/devloop-command-reader") || exit 1"
- Status: Walked
- Note: the guards decoded the tool's JSON before matching since 25 August 2026, line 4 of each; since 12 October 2026 every hook reads its input through bin/devloop-command-reader, which takes the command apart as the shell runs it, so that a second command behind a newline and anything behind a quote are read

### nothing in checks.md's shape records that a class's blocking target needs the network
- Wrong: not stated
- Should: not stated
- Found: Throwaway projects that exist, and what each is good for.
- Fix: none
- Status: Recorded, not built
- Note: govulncheck in devloop-test-o fetches its database from the network, the first such blocking class in any bench

### devloop's own repository is not set up with devloop, the hooks stay inert here
- Wrong: not stated
- Should: not stated
- Found: devloop's own repository is not set up with devloop.
- Fix: none
- Status: Recorded, not built

### end-to-end testing has one approach, a subprocess, and none for anything that stays up
- Wrong: not stated
- Should: not stated
- Found: End-to-end testing has one worked-out approach and no second.
- Fix: none
- Status: Recorded, not built

### the install guard does not see a wrapper that downloads on first use
- Wrong: not stated
- Should: not stated
- Found: The install guard does not see a wrapper that downloads on first use.
- Fix: none
- Status: Closed, left on purpose: decided in `docs/roadmap.md` at "left as it is: catching it would mean guessing at what a build command does.".
- Note: named when the guard was built, left as it is; the case npx playwright install, filed under it on 19 September 2026, is read by the guard since 8 October 2026 and has a thing of its own since that day, since one thing cannot stand left as it is and built at once; ./gradlew and mvnw stay as they stand; closed 20 October 2026 as left on purpose, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### a change bundled into a shell command goes past the per-file hook
- Wrong: not stated
- Should: not stated
- Found: The run bundles shell commands where it used to edit files one at a time.
- Fix: none
- Status: Recorded, not built
- Note: no fix proposed. The narrowing in the entry on the guard false positives writes environment.md with the editing tool for this reason as well

### a check that could not fail was accepted in place of the one the task named and nothing said so
- Wrong: not stated
- Should: not stated
- Found: A check that could not fail was accepted in place of the one the task named, and that was measured on 30 August 2026.
- Fix: `skills/build-work/SKILL.md` "### Proving a check guards its condition"
- Status: Walked
- Note: the proof per condition: break it, read the red, restore. cut-into-tasks writes the conditions, build-work proves them, review-changes reads the proofs in its spec lens

### a condition that cannot be captured as a check had no legitimate exit
- Wrong: not stated
- Should: not stated
- Found: A check that could not fail was accepted in place of the one the task named, and that was measured on 30 August 2026.
- Fix: `skills/build-work/SKILL.md` "- **The condition cannot be captured as a check at all.** Say so — in the task"
- Status: Built, never walked
- Note: the exit is named in the task issue and at the gate. None of the three tables of 6 and 7 September 2026 carries it, so it is unwalked

### cut-into-tasks asked for what is covered, which a scope satisfies and cannot be broken
- Wrong: not stated
- Should: not stated
- Found: A check that could not fail was accepted in place of the one the task named, and that was measured on 30 August 2026.
- Fix: `skills/cut-into-tasks/SKILL.md` "written so that it can be false"
- Status: Built, never walked
- Note: conditions are written so they can be false, and a task naming none is a defect in the cut rather than an invitation to invent one

### the glossary stays empty while a build coins terms, no step on the build path writes domain.md
- Wrong: not stated
- Should: not stated
- Found: The glossary stayed empty while the work coined two terms, and that was measured on 30 August 2026.
- Fix: none
- Status: Recorded, not built
- Cost: `docs/roadmap.md` "A fix costs one sentence in the build stage — a term this task introduced goes"

### a run split its findings into fixed and filed without naming the criterion
- Wrong: not stated
- Should: not stated
- Found: A run split its findings into fixed and filed without saying what separates them, and that was measured on 30 August 2026.
- Fix: `shared/criterion.md` "each finding is announced under"
- Status: Built, never walked
- Note: built 7 September 2026 at both sites as part of the entry on every finding fixed on the spot, and this entry read Recorded, not built for two days after

### the unattended mode needs a machine that stays awake and the cost list did not say so
- Wrong: not stated
- Should: not stated
- Found: The unattended mode needs a machine that stays awake, and nobody was told, and that was measured on 6 and 7 September 2026.
- Fix: `skills/setup-checks/SKILL.md` "On macOS alone, where `uname -s` answers `Darwin`, the same line"
- Status: Built, never walked
- Note: the cost in the list at setup-checks step 8, with caffeinate named on macOS only and its limit said; evidence re-anchored 9 October 2026, version 0.134.0, the line replaced by the order of that day; evidence re-anchored 17 October 2026, version 0.142.0, onto the line on keeping awake in the question field of step 8, the new text 6; the cost list said before the question went that day

### the offer of the mode did not say what a yes leads to, where it stops, how a finish and a standstill are recognised
- Wrong: not stated
- Should: not stated
- Found: The unattended mode needs a machine that stays awake, and nobody was told, and that was measured on 6 and 7 September 2026.
- Fix: `skills/setup-checks/SKILL.md` "- The course and its end: without them devloop builds the planned tasks"
- Status: Built, never walked
- Note: the standstill had no answer at all before the measurement of 6 and 7 September 2026; evidence re-anchored 9 October 2026, version 0.134.0, the line replaced by the order of that day, part 3 of the text before the window, text 6; evidence re-anchored 17 October 2026, version 0.142.0, onto the course and its end in the question field of step 8, the new text 6; where the run stops and how a standstill is seen went from the question that day, each with its reason in the roadmap entry of that date

### the cost list and the description of the mode do not reach a project set up in an earlier session
- Wrong: not stated
- Should: not stated
- Found: The cost list and that description do not reach the second run.
- Fix: `skills/setup-checks/SKILL.md` "**Two things change what is put.** Where the gate is already there and"
- Status: Built, never walked
- Note: repaired 5 October 2026, version 0.129.0: setup-checks step 8 puts the question with its cost list and its description wherever the mode is not set up, the gate standing or not, and build-work calls step 8 instead of offering the gate itself; the evidence moved 7 October 2026 by the addendum of that day to the audit of 7 October 2026, the third finding of the audit, the site onto the status line the evidence left
- Cost: `docs/roadmap.md` "A fix costs one sentence at the early exit and one where the build offers the"

### build-work offers to build the gate itself with no cost list at all
- Wrong: not stated
- Should: not stated
- Found: The cost list and that description do not reach the second run.
- Fix: `skills/build-work/SKILL.md` "answers allow, the gate with them"
- Status: Built, never walked
- Note: the same gap one skill over, named in the same entry on the line after the one this is anchored on; repaired 5 October 2026, version 0.129.0, commit 03c78af of pull request #157: build-work calls setup-checks step 8 on the direct route instead of offering the gate itself, and says since that day that the shorter offer that stood there is gone, grep -n -i 'build the gate\|offer.*gate\|gate.*offer' skills/build-work/SKILL.md coming back empty on 9 October 2026; the evidence moved 9 October 2026 by the entry of that date onto the line of build-work that says so, the site left on the entry, since the status line the evidence left carries the site of the thing beside it and the tool rejects two things on one site anchor

### the unattended state file was written by the run and read by nothing, its cap raised by the run itself
- Wrong: not stated
- Should: not stated
- Found: The unattended state file had no reader, and it is gone. Built.
- Fix: `skills/build-work/SKILL.md` "`.claude/autorun.local.md` lying about is stale, not an instruction"
- Status: Built, never walked
- Note: the scope, the finishing sentence and the starting commit are said in the opening message, since 14 September 2026 the starting commit stands in the mark as well, a leftover file is deleted and said. The run of 6 and 7 September 2026 that kept the file across three tasks walked text that is gone and gets no record

### README carried a rule about a hook gating on a state file's existence that no hook had
- Wrong: not stated
- Should: not stated
- Found: The unattended state file had no reader, and it is gone. Built.
- Fix: none
- Status: Closed, lapsed: `README.md` no longer carries "A state file with no reader is not a safeguard".
- Note: replaced by what the incident teaches; closed 21 October 2026, lapsed, the README's section on rules learned from this workflow's own bugs leaving with the roadmap entry of 20 October 2026 on milestone 3, part 2, its fifth commit

### a ceiling on the number of tasks stopped an unattended run for no reason to do with the work
- Wrong: not stated
- Should: not stated
- Found: A ceiling on tasks removed; the ceiling meant to replace it written and taken out again. Half built.
- Fix: `skills/build-work/SKILL.md` "**There is no ceiling on how many tasks this run may finish.**"
- Status: Built, never walked
- Note: max-iterations removed, the cost list says the run works until the thing is done. Half built in the entry's words: the replacement inside a task went the same day; evidence moved 9 October 2026, version 0.134.0, onto build-work, where the behaviour stands; setup-checks step 8 no longer says it before the question, text 6

### five passes over the chain with a different failure picture each time and the cut wrong underneath are covered by nothing
- Wrong: not stated
- Should: not stated
- Found: A ceiling on tasks removed; the ceiling meant to replace it written and taken out again. Half built.
- Fix: none
- Status: Recorded, not built
- Note: the limit inside a task was an instruction and not an enforcement and read like a safeguard, so it went. The hook resets its count whenever the failure changes. Never happened: no build needed more than two passes on the measurement days
- Trigger: `docs/roadmap.md` "over the chain with a different failure picture each time — each one plausible"

### the turn-end hook hands the problem to a person and unattended there is none, a halt that looks like running
- Wrong: not stated
- Should: not stated
- Found: The turn-end hook hands the problem to a person, and unattended there is none. Built.
- Fix: `skills/build-work/SKILL.md` "stop with a reason — it is a standstill in the middle"
- Status: Built, never walked
- Note: attended the hook's message is the answer, unattended it becomes an issue that the task is not buildable as cut and step 2 takes the next. Said at setup-checks step 8 and in README as well. The hook cannot tell which mode it is in. Unwalked: no build reached three turn-ends on the same classes

### work put off with nothing to bring it back, a skill left before its last step
- Wrong: not stated
- Should: not stated
- Found: Work put off with nothing to bring it back, twice in the same session, and that was measured in `devloop-test-o`.
- Fix: none
- Status: Recorded, not built
- Cost: `docs/roadmap.md` "A fix costs one clause where a stage hands over, plus a line at the last step of"

### the setup stage named the skill to the user, which the block at the top of every skill forbids
- Wrong: not stated
- Should: not stated
- Found: Work put off with nothing to bring it back, twice in the same session, and that was measured in `devloop-test-o`.
- Fix: not determined
- Status: Undetermined
- Note: the rule stands in shared/skill-name.md and the run broke it. The entry names no fix and says nothing about one, so the evidence stays empty

### the branch guard blocked deleting a merged remote branch because the run stood on the main branch
- Wrong: not stated
- Should: not stated
- Found: Two guard false positives, and a run that stepped around both, measured on 6 September 2026 in `devloop-test-o`.
- Fix: `hooks/pre-tool-use-branch-guard.sh` "[ "$BLOCKED" = yes ] || exit 0"
- Status: Built, never walked
- Note: standing on the default branch is still the precondition, once looking the destination decides. Built 7 September 2026
- Cost: `docs/roadmap.md` "The clause reads the destination, not the deletions."

### the hook's own comment said the guard reads what the push moves and not where the run stands
- Wrong: not stated
- Should: not stated
- Found: Two guard false positives, and a run that stepped around both, measured on 6 September 2026 in `devloop-test-o`.
- Fix: `hooks/pre-tool-use-branch-guard.sh` "branch is still the precondition: this file exits 0 above whenever the"
- Status: Built, never walked
- Note: only the comment changed, the six cases re-measured afterwards

### the install guard blocked a pull request body and a file write for containing the string go install
- Wrong: not stated
- Should: not stated
- Found: Two guard false positives, and a run that stepped around both, measured on 6 September 2026 in `devloop-test-o`.
- Fix: `bin/devloop-command-reader` "Text in quotes is a word of its command and no"
- Status: Walked
- Note: telling a string from an execution needs the quotes that line 4 of the guards destroys on purpose, and undoing that reopens two silent holes. The hook is untouched; the evidence moved 20 October 2026 from this file's line 1259 onto the reader's sentence that text in quotes is a word of its command and no command, which carries the should, the roadmap entry of 20 October 2026 on the person's answers and the closed state

### a run took a block for a false positive and found a spelling that gets through
- Wrong: not stated
- Should: not stated
- Found: Two guard false positives, and a run that stepped around both, measured on 6 September 2026 in `devloop-test-o`.
- Fix: `shared/command-does-not-answer.md` "refused; a text reworded until the match no longer catches is the same"
- Status: Built, never walked
- Note: the negative half of When a command does not answer, in all twelve skills, and build-work's unattended answer as a third case of the shape at the turn-end hook and the refused arming

### the normal path of build-work runs through the install guard, a body on the command line and an append to environment.md
- Wrong: not stated
- Should: not stated
- Found: Two guard false positives, and a run that stepped around both, measured on 6 September 2026 in `devloop-test-o`.
- Fix: `shared/body-through-file.md` "rather than setting it as a string in the command"
- Status: Built, never walked
- Note: narrowed in build-work rather than in the hook: the body through a file with --body-file, environment.md through the editing tool. Unattended the way out was the barred act itself

### the narrowing named the file and not how the file gets written, a heredoc put the text back through the shell
- Wrong: not stated
- Should: not stated
- Found: Two guard false positives, and a run that stepped around both, measured on 6 September 2026 in `devloop-test-o`.
- Fix: `shared/body-through-file.md` "The file itself is written with the editing tool"
- Status: Walked
- Note: a rule that leads text past a guard names every channel the text takes

### the two setup stages did not tell a real install block from a text match, recording a skip that is not true
- Wrong: not stated
- Should: not stated
- Found: Two guard false positives, and a run that stepped around both, measured on 6 September 2026 in `devloop-test-o`.
- Fix: `skills/setup-checks/SKILL.md` "The command is not an install and the guard matched on text"
- Status: Built, never walked
- Note: each stage says which of the two it is in its own vocabulary, setup-project under the same heading

### the install guard's message offers two ways out that assume check classes or tasks, nothing for research, build-prototype and record-lessons
- Wrong: not stated
- Should: not stated
- Found: Two guard false positives, and a run that stepped around both, measured on 6 September 2026 in `devloop-test-o`.
- Fix: `hooks/pre-tool-use-install-guard.sh` "echo "Blocked: this installs outside the repository."
- Status: Built, never walked
- Note: fixed in the hook on 29 September 2026, version 0.117.0: the message says that what a decline costs this work gets said, whatever that work is, and the two costs are out of it; until then not fixed in the hook, the shared block saying on the skill side that what a block costs the work in hand gets said whatever that work is; no longer holds milestone 3 open since the person's decision of 24 October 2026, (9) of the roadmap entry of 24 October 2026 on how an install is recorded, which gives the reason; built all the same where it is built or costs a few lines of text, neither a run nor a bench required for the milestone

### git push --tags origin moves no branch and is blocked
- Wrong: not stated
- Should: not stated
- Found: Two guard false positives, and a run that stepped around both, measured on 6 September 2026 in `devloop-test-o`.
- Fix: none
- Status: Recorded, not built
- Note: kept: no readable destination means the current branch is the rule that holds the guard shut

### git push fork main moves another remote's default branch and is blocked all the same
- Wrong: not stated
- Should: not stated
- Found: Two guard false positives, and a run that stepped around both, measured on 6 September 2026 in `devloop-test-o`.
- Fix: none
- Status: Recorded, not built
- Note: kept: a block in the safe direction, telling remotes apart would mean resolving them from a string

### git -C elsewhere push origin main runs because the condition wants git immediately before push
- Wrong: not stated
- Should: not stated
- Found: Two guard false positives, and a run that stepped around both, measured on 6 September 2026 in `devloop-test-o`.
- Fix: `hooks/pre-tool-use-branch-guard.sh` "-C|-c|--git-dir|--work-tree|--namespace|--super-prefix|--config-env|--exec-path)"
- Status: Built, never walked
- Note: unresolved until 7 October 2026: git -C can point at another repository, where blocking it would be a fresh false positive; decided the other way on 7 October 2026 by the addendum of that day to the audit of 7 October 2026: both guards read -C <path> since 6 October 2026 and the block stays, as the block on git push fork main stays, the guards judging the project and not the repository a commit lands in, and the first addendum of 6 October 2026 says so since 7 October 2026; measured 7 October 2026 at 10:34 UTC with a second repository, git -C <it> commit and push origin main exit 2 with the project on main, cd <it> && git commit exit 2 under the guard of bf6e0f3 already

### git push origin main from a task branch goes through, the guard exits before it reads anything off the default branch
- Wrong: not stated
- Should: not stated
- Found: Two guard false positives, and a run that stepped around both, measured on 6 September 2026 in `devloop-test-o`.
- Fix: none
- Status: Recorded, not built
- Note: not built: which of the two the standing check should gate is a decision rather than a wording. Never hit because build-work step 6 hands the merge over rather than pushing

### the unattended run narrowed the review from five lenses to three with a reason nobody read
- Wrong: not stated
- Should: not stated
- Found: The unattended run narrowed the review from five lenses to three, measured on 6 and 7 September 2026.
- Fix: `skills/review-changes/SKILL.md` "Unattended, a stated reason buys no exception"
- Status: Built, never walked
- Note: built 7 September 2026, the clause in the cost list at setup-checks step 8 in the same change. The sentence was rewritten on 9 September 2026 for the form of what may be said, so the run of 8 and 9 September 2026 that gave a judgement as its reason walked text that is gone and gets no record

### the 30 August record of a lens left out names neither the lens nor whether its trigger was in the diff
- Wrong: not stated
- Should: not stated
- Found: The unattended run narrowed the review from five lenses to three, measured on 6 and 7 September 2026.
- Fix: not determined
- Status: Undetermined
- Note: the record reads two ways and the entry cannot settle it. Nothing was changed at the record, and the entry names no fix, so the evidence stays empty

### five applicable lenses were carried by two reviewers and the word lens was defined nowhere
- Wrong: not stated
- Should: not stated
- Found: Three findings against the review step, measured on 9 September 2026 across two unattended runs.
- Fix: `skills/review-changes/SKILL.md` "A lens is one reading of the whole diff by a reviewer that has been given no"
- Status: Built, never walked
- Note: lens defined in review-changes and under Shared words are defined in one place, the announcement carries lenses that apply and reviewers started in one sentence. Not enforcement: it works when a person reads the report

### nothing enforces one reviewer per lens, a hook on the agent tool examined and rejected
- Wrong: not stated
- Should: not stated
- Found: Three findings against the review step, measured on 9 September 2026 across two unattended runs.
- Fix: none
- Status: Recorded, not built
- Note: a self-counted number would be the fourth entry in the list of counts a run keeps against itself, a PreToolUse hook on the agent tool cannot know how many lenses apply and stops the build subagent

### the reason given for a lens left out was a judgement no reader can check
- Wrong: not stated
- Should: not stated
- Found: Three findings against the review step, measured on 9 September 2026 across two unattended runs.
- Fix: `skills/review-changes/SKILL.md` "the findings go and not in the conversation, is **the trigger's own words,"
- Status: Built, never walked
- Note: the statement about a lens that did not run is the trigger's own words negated, stricter than a fact, because a fact can answer a narrower question than the trigger asks

### the review step fell away entirely for a comment-only diff, the size of the diff taken for a reason
- Wrong: not stated
- Should: not stated
- Found: Three findings against the review step, measured on 9 September 2026 across two unattended runs.
- Fix: `skills/build-work/SKILL.md` "A comment-only diff is not outside the review either"
- Status: Built, never walked
- Note: at build-work step 4, the only place review-changes is reached from, and step 6's precondition says which of its two halves the unattended mode replaces

### this entry claimed a sentence at Pin the target that was never written, a Built line written from the intent
- Wrong: not stated
- Should: not stated
- Found: Three findings against the review step, measured on 9 September 2026 across two unattended runs.
- Fix: none
- Status: Recorded, not built
- Note: read on 14 September 2026, git log -S over the file is empty. Corrected in the entry itself

### every review finding fixed on the spot on a criterion invented as it went, a test decision of the task among them
- Wrong: not stated
- Should: not stated
- Found: Every review finding fixed on the spot, none raised as an issue, on a criterion invented as it went, measured on 6 and 7 September 2026.
- Fix: `shared/criterion.md` "and goes to the check setup — not that it is mechanical, small or routine"
- Status: Built, never walked
- Note: at four sites: the two homes of the criterion say the split is announced per finding under the written criterion and a finding against something the task issue asked for is never fixed silently, and build-work step 5 gives that case its own line at the gate and in the unattended report

### an install command was handed to the user without being backed and its success read off the user's word
- Wrong: not stated
- Should: not stated
- Found: An install command handed to the user without being backed, measured on 6 September 2026 in `devloop-test-o`.
- Fix: `shared/backed-command.md` "**Each kind has its form of the backing**"
- Status: Built, never walked
- Note: at five sites: build-work step 3 points 7 and 8, setup-checks step 3, setup-project under A guard's block is not a decline since 30 September 2026, between question 3 and question 4 of its step 4 before that, and the install guard's message. Whether it worked is read off the path the installer writes to; no longer holds milestone 3 open since the person's decision of 24 October 2026, (9) of the roadmap entry of 24 October 2026 on how an install is recorded, which gives the reason; built all the same where it is built or costs a few lines of text, neither a run nor a bench required for the milestone; widened 24 October 2026, version 0.159.0, the roadmap entry of 24 October 2026 on the install rules reaching the build subagent: each kind has its form of the backing, go list -m, brew info, npm view, and for a browser the vendor's installation line or Playwright's dry run, measured that day, for an install the run makes itself under a yes as well, the handover and the report naming it, the evidence moved onto that paragraph

### rewriting the resumption sentence dropped the site out of the handover check that finds sites by wording
- Wrong: not stated
- Should: not stated
- Found: An install command handed to the user without being backed, measured on 6 September 2026 in `devloop-test-o`.
- Fix: `docs/skill-conventions.md` "'picks up as soon as\|picks up once\|picks up the moment\|carry on when"
- Status: Built, never walked
- Note: picks up once added to the pattern, and the rule written beside the check that a line vanishing from its output is read as a question

### git reset --hard without querying the state first took uncommitted work with it
- Wrong: not stated
- Should: not stated
- Found: `git reset --hard` without looking first, measured on 6 September 2026 in `devloop-test-o`.
- Fix: none
- Status: Recorded, not built
- Cost: `docs/roadmap.md` "A fix costs one sentence in the proof step. Recorded, not built."

### a review ran a check the chain does not carry, once, for one change
- Wrong: not stated
- Should: not stated
- Found: A review ran a check the chain does not carry, measured on 6 September 2026 in `devloop-test-o`.
- Fix: none
- Status: Recorded, not built
- Cost: `docs/roadmap.md` "A fix costs one sentence in the review's report step. Recorded, not built."

### a run promised to report back and nothing could wake it
- Wrong: not stated
- Should: not stated
- Found: A run promised to come back and had nothing that could wake it.
- Fix: `skills/build-work/SKILL.md` "Nothing wakes a run: the answer that ends here ends the run"
- Status: Walked
- Note: built 13 September 2026 in b90874b with the entry on the post-arming stop, and README says with somebody there the session does not sit and wait

### devloop-test-l stood as the standing bench for the stock-take after its pull request had merged
- Wrong: not stated
- Should: not stated
- Found: Sixteen false statements in these two documents, and that was measured on 7 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: one of sixteen false statements measured 7 September 2026, corrected where it sat

### devloop-test-l stood as the only bench with a platform gate after devloop-test-o had one
- Wrong: not stated
- Should: not stated
- Found: Sixteen false statements in these two documents, and that was measured on 7 September 2026.
- Fix: none
- Status: Recorded, not built

### environment.md was said to read nothing to run yet in every project when four of six carried a run command
- Wrong: not stated
- Should: not stated
- Found: Sixteen false statements in these two documents, and that was measured on 7 September 2026.
- Fix: none
- Status: Recorded, not built

### a paragraph opened with nothing has yet run against the three-case refusal and recorded two walked refusals nine lines down
- Wrong: not stated
- Should: not stated
- Found: Sixteen false statements in these two documents, and that was measured on 7 September 2026.
- Fix: none
- Status: Recorded, not built

### the base check, the stage-boundary questions and the control documents' writer stood as reasoned about only when all three had run
- Wrong: not stated
- Should: not stated
- Found: Sixteen false statements in these two documents, and that was measured on 7 September 2026.
- Fix: none
- Status: Recorded, not built

### a line reference into build-work drifts, by seventy-seven lines on 7 September and again by 9 September
- Wrong: not stated
- Should: not stated
- Found: Sixteen false statements in these two documents, and that was measured on 7 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: corrected in the round of sixteen and wrong again two commits later, corrected again in the round of five

### a skill was named as spawning parallel agents that has never been built
- Wrong: not stated
- Should: not stated
- Found: Sixteen false statements in these two documents, and that was measured on 7 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: corrected in the round of sixteen, the entry does not name the corrected line

### that two build agents in one working directory collide is a claim with no measurement
- Wrong: not stated
- Should: not stated
- Found: Sixteen false statements in these two documents, and that was measured on 7 September 2026.
- Fix: `docs/skill-conventions.md` "with a date, and this either gets its evidence or goes."
- Status: Recorded, not built
- Note: left standing and marked as unmeasured under Environment constraints, measured

### that Agent Teams makes a waiting subagent hang is a claim with no measurement
- Wrong: not stated
- Should: not stated
- Found: Sixteen false statements in these two documents, and that was measured on 7 September 2026.
- Fix: `docs/skill-conventions.md` "**Agent Teams must stay off.** With `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1`,"
- Status: Recorded, not built
- Note: left standing, it costs nothing to obey

### setup-project cuts its branch before the first question is answered and a break-off leaves it behind
- Wrong: on 1 October 2026, version 0.123.0, the entry of that date: the cut stands behind the last question in both skills, the branches carry the fixed names `devloop-setup` and `devloop-checks`, and a branch of that name with nothing written on it is deleted and cut afresh, the checked-out one included.
- Should: not stated
- Found: The setup cuts its branch before the first question is answered, measured on 9 September 2026.
- Fix: `skills/setup-project/SKILL.md` "## Cut the branch, after the last question and before the first write"
- Status: Built, never walked
- Note: built 1 October 2026, version 0.123.0: the cut behind step 4, the fixed name, a stale branch deleted and cut afresh; plan-work's planning issue has the two halves this branch lacked, a mark saying unfinished and a reader for it

### setup-checks cuts its branch before the question whether anything gets built at all
- Wrong: not stated
- Should: not stated
- Found: The setup cuts its branch before the first question is answered, measured on 9 September 2026.
- Fix: `skills/setup-checks/SKILL.md` "## Cut the branch, after the last question and before the first write"
- Status: Built, never walked
- Note: built 1 October 2026, version 0.123.0: the cut behind step 3, the single-class route skipping it; one paragraph living in two files, both paths got the rule and now the question before it

### the check over the installed copy was red by construction at the moment it was read
- Wrong: not stated
- Should: not stated
- Found: The check over the installed copy could not be green where it stood, measured on 9 September 2026.
- Fix: `docs/skill-conventions.md` "P=~/.claude/plugins/cache/jayjay-create/devloop/"
- Status: Built, never walked
- Note: moved under Before you change anything, run this, reads the version from installed_plugins.json and diffs the skills and hooks trees. The three red runs at 0.95.0, 0.96.0 and 0.97.0 walked the old check, which is gone, and get no record

### the standards lens checked against a decision it had not been given and manufactured a false finding
- Wrong: not stated
- Should: not stated
- Found: A lens checked against a decision it had not been given, measured on 9 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: the build is a decision: which decisions reach which reviewer, and whether the reason for the narrow context survives it

### a run offered the ! route around its own guard, a channel no PreToolUse hook sees
- Wrong: not stated
- Should: not stated
- Found: A run offered a way around its own guard, and the guard is blind to it, measured on 9 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: the shared block says the same act under another command name is the act refused and not that another channel is the same move. A rule on the run's side wherever it lands

### the second review round reads only the correction commits and cannot judge tests blunted by a changed scaffolding
- Wrong: not stated
- Should: not stated
- Found: The second review round cannot read a change to the test scaffolding, measured on 9 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: Recorded, not built stands on the line after the evidence, a repeated whole line that can carry no anchor

### build-work hands the second round a target that review-changes' own definition does not describe and neither file says what happens when they disagree
- Wrong: not stated
- Should: not stated
- Found: The second review round cannot read a change to the test scaffolding, measured on 9 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: the entry on reviewing agents that built calls this the other side of the same seam

### a planning issue closed any way but Stage 4 keeps the being-planned label
- Wrong: not stated
- Should: not stated
- Found: A closed planning issue still carries `being-planned`, seen on 9 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: both readers filter on state before the label, a coincidence holding the mark honest. What is wrong is plan-work's wording, which knows one way out of a plan

### planning was fenced out of the unattended mode by one sentence in start-work and one in README while three sites decided the other way
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: `skills/start-work/SKILL.md` "The flag means: do alone everything that can be done alone"
- Status: Walked
- Note: built 14 September 2026 in e09fa80, 0.100.0, ten skill files and two documents. --auto has one meaning: typed, the question at the end of Stage 1 is not asked. Nothing had run against it on the day it was built

### the hard core of the user stories came out of Stage 4 instead of Stage 1, so the design choice had no list to play the drafts against
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: `skills/plan-work/SKILL.md` "Before the last round closes, write the hard core down"
- Status: Built, never walked

### the design choice was put to the user as a ranking and checked by nobody as a question of fact
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: `skills/plan-work/SKILL.md` "One agent per draft, given that draft, the hard core from Stage 1"
- Status: Walked
- Note: one checking agent per draft answering item by item, verdicts and rejected drafts into the Stage 3 comment

### no question at the end of Stage 1 asked how this piece of work should run
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: `skills/plan-work/SKILL.md` "**Then ask once, in a widget call that carries this question and no other, how"
- Status: Built, never walked
- Note: three answers, one message, no recommendation, asked only where the mode is accepted and the idea stands; the call carrying this question and no other since 3 October 2026, version 0.126.0, in place of a message of its own

### the question per piece of work and the permission per repository at setup-checks step 8 were not told apart
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: `skills/setup-checks/SKILL.md` "in this project may run alone at all — a permission for this repository,"
- Status: Built, never walked
- Note: evidence re-anchored 9 October 2026, version 0.134.0, the line replaced by the order of that day; evidence re-anchored 17 October 2026, version 0.142.0, the line replaced by the order of that day

### the five preconditions of the unattended mode were read at the build only, after the user had been asked
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: `skills/plan-work/SKILL.md` "read six of the seven preconditions of the unattended mode"
- Status: Built, never walked
- Note: four at the question and all five at the build from 11 September 2026, six of the seven at the question and all seven at the build since 5 October 2026, and both places say why; the note said four and five until 7 October 2026, corrected by the consistency audit of that day

### the throwaway prototype did not separate what can be measured from what somebody has to look at
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: `skills/plan-work/SKILL.md` "`build-prototype` says how, under its own"
- Status: Built, never walked
- Note: plan-work Stage 1 names build-prototype, which it never did, and build-prototype carries the case under With nobody there

### whether a question that has to be seen is open was not among the conditions for the idea standing
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: `skills/plan-work/SKILL.md` "somebody has to see something to give. Those three are what "the idea stands""
- Status: Built, never walked

### no order held for a question left unanswered unattended
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: `skills/plan-work/SKILL.md` "Take the less committing option and record it"
- Status: Built, never walked
- Note: in plan-work under With nobody there, and build-work says why a build does not follow that order

### surface questions have no route unattended because settle-the-look is not built
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: until then an unattended stage meeting a surface question falls back on the order for a question with nobody there

### a question that needs someone to look and first appears in Stage 3 has nothing written to follow
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: goes through the order for a question with nobody there, a fallback and not a route to a look

### seams were confirmed by the user rather than placed at the code
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: `shared/seam-and-condition.md` "so nothing is tested at a seam the spec has not placed, and nobody's"
- Status: Built, never walked
- Note: the three byte-identical copies of the definition rewritten identically, since 17 to 18 September 2026 one shared file

### no mark on disk said which mode a run is in and how far it may go
- Wrong: not stated
- Should: not stated
- Found: The unattended run put the landing question to the user, measured on 13 September 2026 in `devloop-test-o`.
- Fix: `shared/mark.md` "that steps out of the flow writes it: this run's main-branch commit on its"
- Status: Built, never walked
- Note: named in the entry on the landing question and built inside the repair of the planning fence, where the record stood until order 8. Written where the run steps out of the flow, read at every fork, deleted at every exit. The eleven gaps of the walkthrough of 14 September 2026 are gaps of this design, answered in the same build, except the one on start-work's Unattended section, which is a thing of its own

### setup-project named one local-state file and the refresh check read .gitignore for one
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: `skills/setup-project/SKILL.md` "and `unattended.local`, the mark an unattended"
- Status: Built, never walked

### the entry's own count of what a repair touches was three files where the walkthrough found twelve
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: none
- Status: Recorded, not built

### when the recommended draft falls, who chooses among the survivors and what happens when all fall is not decided
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: today a stop with the reason named. Measured once since the other way, in an entry of the second half

### precondition 4 of the unattended mode, the tool classes approved, cannot be read from anything in the tree
- Wrong: not stated
- Should: not stated
- Found: Planning is fenced out of the unattended mode by one sentence, and three places already decide the other way, read on 11 September 2026.
- Fix: `skills/build-work/SKILL.md` "4. Claude Code runs in auto mode. Read it by running"
- Status: Built, never walked
- Note: mended 9 October 2026, version 0.133.0, decision 6: condition 4 reads the permission mode through bin/devloop-permission-mode and the statement of hooks/pre-tool-use-mark-guard.sh beside its result, and no tool classes

### after arming, the run read the state once, promised to report back and ended its answer, four times
- Wrong: not stated
- Should: not stated
- Found: A run stopped four times after arming auto-merge, each time on a sentence it wrote itself, and every file that does say what follows arming says something that cannot wait.
- Fix: `skills/build-work/SKILL.md` "gh pr checks <number> --watch --interval 60"
- Status: Built, never walked
- Note: built 13 September 2026: unattended the wait happens in the same answer and the merge is read off the platform, attended the single reading and the offer stay. Unmeasured: whether Duration predicts the platform and whether the failure signature is stable

### setup-checks and setup-project said to check the git log right after arming, when the platform has not merged yet
- Wrong: not stated
- Should: not stated
- Found: A run stopped four times after arming auto-merge, each time on a sentence it wrote itself, and every file that does say what follows arming says something that cannot wait.
- Fix: `skills/setup-checks/SKILL.md` "A report of success is not evidence, and the git log immediately after arming is"
- Status: Built, never walked
- Note: both say now that the git log immediately after arming is not evidence either and read the merge off the platform

### the arming command stands byte-identical in five places with no check holding them together
- Wrong: not stated
- Should: not stated
- Found: A run stopped four times after arming auto-merge, each time on a sentence it wrote itself, and every file that does say what follows arming says something that cannot wait.
- Fix: `shared/arming-command.md` "${CLAUDE_PLUGIN_ROOT}/bin/devloop-arm <number>"
- Status: Built, never walked
- Note: the one part of the entry left unbuilt on 13 September 2026; answered 18 September 2026 in ca0ff3a, shown by the entry of that date: the command stands once in shared/arming-command.md, inserted into three skills, and two checks under Before a handover, run these compare the copies in the merge guard and in docs/skill-conventions.md with it; since 17 October 2026 the copies are of the one call of bin/devloop-arm

### the local turn-end threshold cannot count a check that fails on the platform, a wait inside one answer needs a count of its own
- Wrong: not stated
- Should: not stated
- Found: A run stopped four times after arming auto-merge, each time on a sentence it wrote itself, and every file that does say what follows arming says something that cannot wait.
- Fix: `skills/build-work/SKILL.md` "Three rounds on the same signature is standstill"
- Status: Built, never walked
- Note: the count lives in the answer and nowhere on disk, the signature is the failing checks' names and buckets

### the closing keyword is the right link and not a guarantee, an issue stayed open over merged work
- Wrong: not stated
- Should: not stated
- Found: A run stopped four times after arming auto-merge, each time on a sentence it wrote itself, and every file that does say what follows arming says something that cannot wait.
- Fix: `skills/build-work/SKILL.md` "`gh pr view <number> --json closingIssuesReferences` says which issues"
- Status: Walked
- Note: every merge reads closingIssuesReferences and closes by hand what the platform left open. Measured on the run of 13 September 2026 before it was built

### the one-line arming mutation with -F failed with unexpected end of JSON input
- Wrong: not stated
- Should: not stated
- Found: A run stopped four times after arming auto-merge, each time on a sentence it wrote itself, and every file that does say what follows arming says something that cannot wait.
- Fix: `bin/devloop-arm` "ghb api graphql -f query="$MUTATION" -f id="$PR_ID""
- Status: Built, never walked
- Note: taken from the run of 13 September 2026 and not re-measured, the change to all five copies; since 17 October 2026 inside bin/devloop-arm, which reads the id first and passes it with -f

### a lens that hands back a placeholder report has returned, so nothing separates it from a lens that found the diff clean
- Wrong: not stated
- Should: not stated
- Found: A lens fell over and reported "no findings", measured on 13 September 2026 in `devloop-test-o`.
- Fix: none
- Status: Recorded, not built
- Note: Recorded, not built stands on the line after the evidence, a repeated whole line that can carry no anchor. Six of twenty lenses fell over, the comparison with neighbours that caught it is not available on a clean diff

### a reviewing lens committed to the branch, filed an issue, summarised the lenses and put the landing question
- Wrong: not stated
- Should: not stated
- Found: Reviewing agents built, measured on 11 September 2026 in `devloop-test-o` on task 47.
- Fix: none
- Status: Recorded, not built
- Note: Recorded, not built stands on the line after the evidence, a repeated whole line that can carry no anchor. Three of the four acts are already forbidden in as many words, the fourth is the void below

### nothing anywhere says a reviewer may not change the code
- Wrong: not stated
- Should: not stated
- Found: Reviewing agents built, measured on 11 September 2026 in `devloop-test-o` on task 47.
- Fix: none
- Status: Recorded, not built
- Note: searched by subject, seven sites and none about a reviewer, the nearest bounds what a reviewer sees and not what it may do

### Fix it now is written to the caller and stands in the file a lens works out of
- Wrong: not stated
- Should: not stated
- Found: Reviewing agents built, measured on 11 September 2026 in `devloop-test-o` on task 47.
- Fix: none
- Status: Recorded, not built
- Note: a reviewer that commits follows the nearest instruction it has

### the pinned diff has no closing read against the branch at the end of the review
- Wrong: not stated
- Should: not stated
- Found: Reviewing agents built, measured on 11 September 2026 in `devloop-test-o` on task 47.
- Fix: none
- Status: Recorded, not built
- Note: the same seam as the second round not reading a changed scaffolding

### a change to the check targets landed unreviewed on setup-checks' standalone route, step 7 opening its own pull request
- Wrong: not stated
- Should: not stated
- Found: A change to the check chain itself went to the main branch unreviewed, measured on 12 September 2026 in `devloop-test-o` on issue 49.
- Fix: none
- Status: Recorded, not built
- Note: measured 13 September 2026 in devloop-test-o on issue 49; the entry says 12 September and the session log of that bench says 13, see the finding on its head line. Called for a single class from a build the diff rides on the build's branch and reaches the review; called on its own, step 7 lands it unread. Recorded, not built stands on the line after the evidence, a repeated whole line that can carry no anchor

### setup-project step 8 lands the control documents it wrote with no review, whether the rule holds there undecided
- Wrong: not stated
- Should: not stated
- Found: A change to the check chain itself went to the main branch unreviewed, measured on 12 September 2026 in `devloop-test-o` on issue 49.
- Fix: none
- Status: Recorded, not built
- Note: named in the entry on the check-chain change and not decided there: at that moment there is no check suite to review against and standards.md is being written in the same change

### a loose issue opening with a design choice was built as a build order, attended, the asking test at How to ask not applied
- Wrong: not stated
- Should: not stated
- Found: A design question was put in the build stage, measured on 13 September 2026 in `devloop-test-o` on issue 51.
- Fix: none
- Status: Recorded, not built
- Note: built in part 14 September 2026 in e09fa80, the unattended half being a thing of its own; the attended half and the planning route stay recorded. The second half of the Should collides with start-work routing raised-here issues to build-work and not to plan-work, and what narrower door there is stays open. Measured 13 September 2026 in devloop-test-o on issue 51, with the user there

### a question about the work itself inside a task with nobody there was a case no rule covered, the fourth case under With nobody there
- Wrong: not stated
- Should: not stated
- Found: A design question was put in the build stage, measured on 13 September 2026 in `devloop-test-o` on issue 51.
- Fix: `skills/build-work/SKILL.md` "**A question about the work itself that comes up inside a task and passes the"
- Status: Built, never walked
- Note: the unattended half of the entry on the design question in the build stage, built 14 September 2026 in e09fa80: the issue carries the question and the options, labelled raised-here and needs-human, the task is put down and step 2 takes the next

### a design question that first appears in the build has no route to build-prototype, its one call site being untangle-idea
- Wrong: not stated
- Should: not stated
- Found: A design question was put in the build stage, measured on 13 September 2026 in `devloop-test-o` on issue 51.
- Fix: none
- Status: Recorded, not built
- Note: grep -rn build-prototype skills/ found one call site on 13 September 2026, in untangle-idea; plan-work Stage 1 calls it since 14 September, and build-work still names it nowhere on 23 September 2026. The same void the first-half thing on a question needing someone to look in Stage 3 leaves open

### a build that lands part of a Should owes the entry a line saying which part in the same change, a label with two values cannot say this half
- Wrong: not stated
- Should: not stated
- Found: A design question was put in the build stage, measured on 13 September 2026 in `devloop-test-o` on issue 51.
- Fix: none
- Status: Recorded, not built
- Note: the rule stands nowhere but in this entry; the same shape from the other side is the first-half thing on the entry on the split with no criterion reading Recorded, not built after a later entry had built it

### a finding out of the review a second time is not written into standards.md, the skill carrying that rule locked against every caller
- Wrong: not stated
- Should: not stated
- Found: The same failure picture came out of the review three times and was fixed three times separately, measured across 11 to 13 September 2026 in `devloop-test-o`.
- Fix: `shared/rule-not-written-down.md` "`docs/agents/standards.md`, in the same"
- Status: Built, never walked
- Note: record-lessons decides it at two and routes it to standards.md, and disable-model-invocation keeps every skill from reaching it; built 26 September 2026 at the close of the review, in shared/rule-not-written-down.md inserted in review-changes and build-work, without the count: the lookup against standards.md and checks.md answers in the moment. Measured 11 and 12 September 2026 in devloop-test-o and a second time on 14 September, the standards file empty, finding 3 of the first planning run alone. The status line of the entry, Built on 26 September 2026, is part of this thing

### the ground for locking record-lessons, no other skill runs either of them so locking them costs nothing, does not survive a build loop with something to hand it
- Wrong: not stated
- Should: not stated
- Found: The same failure picture came out of the review three times and was fixed three times separately, measured across 11 to 13 September 2026 in `devloop-test-o`.
- Fix: `docs/skill-conventions.md` "because "costs nothing" was written for both and held for one."
- Status: Recorded, not built
- Note: rewritten 19 September 2026 under Who may invoke a skill, milestone 2: the lock stays with its price beside it, and milestone 5 of docs/plan.md answers it. A convention rewritten stays recorded, and that is right; rewritten again 26 September 2026: the price is met by shared/rule-not-written-down.md at the close of the review, and the lock stays

### the orchestrating run's first write went to main and only the branch guard's block got the branch cut
- Wrong: not stated
- Should: not stated
- Found: The unattended run put the landing question to the user, measured on 13 September 2026 in `devloop-test-o`.
- Fix: not determined
- Status: Undetermined
- Note: the guard did what it exists for; the finding is that nothing before the guard had the branch cut. The entry names no fix and says nothing about one, so the evidence stays empty

### the review fixes were made in the orchestrating run and no line says who fixes a finding
- Wrong: not stated
- Should: not stated
- Found: The unattended run put the landing question to the user, measured on 13 September 2026 in `devloop-test-o`.
- Fix: none
- Status: Recorded, not built
- Note: Fix now says which findings are fixed and nothing about who; step 3 hands the work to a subagent with a fresh context; a fix made in the orchestrating run is under neither. The second round covered the commit

### byte-identical blocks in several skills held by nothing, eight of 23 on 13 September 2026 and 24 in 165 copies on 14 September, the guard owed with the copy
- Wrong: not stated
- Should: not stated
- Found: The unattended run put the landing question to the user, measured on 13 September 2026 in `devloop-test-o`.
- Fix: `bin/devloop-text` "# Prints shared/<name>.md, the text a skill inserts at load"
- Status: Built, never walked
- Note: named again as defect 1 of the comparison with Pocock's set, which adds the count, and as finding 2 of the measurement of 17 September 2026, which names the route; answered 18 September 2026 in ca0ff3a and d713819 by one source under shared/ inserted at load through this program, not by a guard per block, and the check under Before a handover prints any skill still carrying a copy. What the entry left open, whether every block needs a guard and what decides it, fell away with the copies

### start-work's Unattended section is a trailing description and not a step, against the rule that a section reads as description
- Wrong: not stated
- Should: not stated
- Found: The unattended run put the landing question to the user, measured on 13 September 2026 in `devloop-test-o`.
- Fix: `skills/start-work/SKILL.md` "**`--auto` travels with that choice.** Where it was typed, it is the word the"
- Status: Built, never walked
- Note: built in part 14 September 2026 on task/unattended-planning: the section stays a section and step 5 carries the instruction; one of the eleven gaps of the walkthrough, the one that is a defect of the set as it stood

### the auto-mode classifier, a second model, blocked a check command three times, which none of the five preconditions can read and the workflow cannot pre-approve
- Wrong: not stated
- Should: not stated
- Found: The first planning run alone, measured on 14 September 2026 in `devloop-test-o` — the first run on 0.100.0, six findings, and two places where the wording is the user's to settle before anything is built.
- Fix: `skills/build-work/SKILL.md` "**A refusal is any of four things, and the four go the same way here**: a"
- Status: Built, never walked
- Note: recorded as the hardest limit of the mode; what the user can do, a narrow allow rule per check command, belongs at setup-checks step 8 and where the check commands are named as something to grant, which says neither narrow nor why. Measured 14 September 2026 in devloop-test-o with the user there, go test blocked three times as Irreversible Local Destruction; answered 9 October 2026, version 0.133.0, decision 1: the classifier's refusal with nobody there goes as a guard's block, an issue and the next task, no second attempt; the rule under autoMode.allow comes with decision 10

### build-work step 4 names the review skill bare and the run loaded code-review first, twice
- Wrong: not stated
- Should: not stated
- Found: The first planning run alone, measured on 14 September 2026 in `devloop-test-o` — the first run on 0.100.0, six findings, and two places where the wording is the user's to settle before anything is built.
- Fix: `skills/build-work/SKILL.md` "Run `devloop:review-changes` on the diff — the review of this plugin, named"
- Status: Built, never walked
- Note: should: a call from one skill to another names the skill as the harness lists it, devloop:review-changes, the rule beside Never say a skill's name; whether every call site takes the prefix is open. The call at build-work step 4 still reads Run review-changes on the diff on 23 September 2026. Measured 11 and 14 September 2026 in devloop-test-o; built 16 October 2026, version 0.141.0, point 23 of part B of the roadmap entry of 12 October 2026 on the decisions: the call names the prefix and says the shipped review is not the one meant, the rule in docs/skill-conventions.md beside "One skill calling another is not saying a name"; whether every call takes the prefix stays open as the entry left it

### standards.md records the state at setup and asserts it as the state now, the one writer being the skill nothing calls
- Wrong: not stated
- Should: not stated
- Found: The first planning run alone, measured on 14 September 2026 in `devloop-test-o` — the first run on 0.100.0, six findings, and two places where the wording is the user's to settle before anything is built.
- Fix: `shared/rule-not-written-down.md` "setup saying no rules have been recorded yet, that"
- Status: Built, never walked
- Note: the second measurement of the entry on the same failure picture three times; built 26 September 2026 in shared/rule-not-written-down.md: the setup line goes with the first rule written, the lookup against standards.md and checks.md replaces the count, the rule written in the same change as the fix; the Built line of finding 3 is part of this thing; measured again 26 September 2026 on the six benches, every standards file at its setup sentence

### Stage 1 ends on the run's judgement that nothing important is open, and one round of three questions passed it with six never put
- Wrong: not stated
- Should: not stated
- Found: The first planning run alone, measured on 14 September 2026 in `devloop-test-o` — the first run on 0.100.0, six findings, and two places where the wording is the user's to settle before anything is built.
- Fix: `skills/plan-work/SKILL.md` "Done when the frontier is empty — no question is answerable now, every"
- Status: Built, never walked
- Note: should: rounds, a round the set of questions answerable now, at most three of them, the stage ending when that set is empty and not when the run sees nothing important; the grilling mechanism, the first of the seven of the comparison entry, standing in untangle-idea since 19 August 2026 and not in plan-work; milestone 6 of docs/plan.md. Open whether the empty frontier replaces nothing important open or stands beside it; since 12 October 2026 the open question is decided, the empty frontier replacing nothing important open, Stage 1 ending as grilling ends and the cap of three staying, point 20 of part B of the entry of 12 October 2026 on the decisions; built 16 October 2026, version 0.141.0, point 20 of part B of the roadmap entry of 12 October 2026 on the decisions: Stage 1 ends on the empty frontier, acted on once the person confirms a shared understanding at the question of 16 October 2026, nothing important is open gone, the cap of three staying

### untangle-idea says to ask the whole frontier in one round and caps a round at three questions, four lines apart, unmeasured
- Wrong: not stated
- Should: not stated
- Found: The first planning run alone, measured on 14 September 2026 in `devloop-test-o` — the first run on 0.100.0, six findings, and two places where the wording is the user's to settle before anything is built.
- Fix: `skills/untangle-idea/SKILL.md` "Ask at most three in a round, and the"
- Status: Built, never walked
- Note: under the cap a round and the frontier come apart, and the answers open the next round then has to mean the rest of the frontier before anything the answers unlock; part of finding 4 of the first planning run alone, in the other skill that interviews; since 12 October 2026 the pair is read as the entry of 14 September 2026 read it, the cap changing the number of rounds and not the end, point 20 of part B of the entry of 12 October 2026 on the decisions; built 18 October 2026, version 0.145.0, the addendum to the roadmap entry of 18 October 2026 on what the interview asks: the interview of untangle-idea asks at most three of the frontier in a round and the rest of it before anything the answers unlock, a question hanging on one still open in a later round, as plan-work Stage 1 does, and a question waiting on a fact holds back only what is downstream of it

### the four conditional lenses have a trigger each and no list of what they look for or leave alone, a subagent's whole brief being one line
- Wrong: not stated
- Should: not stated
- Found: The first planning run alone, measured on 14 September 2026 in `devloop-test-o` — the first run on 0.100.0, six findings, and two places where the wording is the user's to settle before anything is built.
- Fix: none
- Status: Recorded, not built
- Note: should: every conditional lens gets a list of what it looks for on the pattern of the standards list, security from Anthropic's categories, and every lens a list of what it leaves alone with its second purpose said. Read against Anthropic's /security-review and Pocock's /code-review on 14 September 2026; the security lens reported no findings throughout 13 and 14 September

### a finding names nothing it stands on and a lens that finds nothing names nothing it read, so a report cannot be told from a placeholder
- Wrong: not stated
- Should: not stated
- Found: The first planning run alone, measured on 14 September 2026 in `devloop-test-o` — the first run on 0.100.0, six findings, and two places where the wording is the user's to settle before anything is built.
- Fix: none
- Status: Recorded, not built
- Note: one change with the first-half thing on a lens that hands back a placeholder report, measured again on 14 September 2026, a lens saying no findings without running, caught by comparing neighbours; the shape stands in plan-work for the checking agents and not for lenses

### the recommended draft was revised three times alone where plan-work says the run stops, and no sentence provides for a revision round
- Wrong: not stated
- Should: not stated
- Found: The first planning run alone, measured on 14 September 2026 in `devloop-test-o` — the first run on 0.100.0, six findings, and two places where the wording is the user's to settle before anything is built.
- Fix: none
- Status: Recorded, not built
- Note: should: either the run stops as written or the rule allows the redraft and says how many rounds and what ends them, not decided; the first measurement of the first-half thing on who chooses when the recommended draft falls. Three rounds with nobody there produced the draft that was built

### the three answers at the end of Stage 1 explained the mechanics and not where the user is needed, and two places said which answer --auto stands for with the wrong antecedent
- Wrong: not stated
- Should: not stated
- Found: The first planning run alone, measured on 14 September 2026 in `devloop-test-o` — the first run on 0.100.0, six findings, and two places where the wording is the user's to settle before anything is built.
- Fix: `skills/plan-work/SKILL.md` "- **Full flexibility.** Everything is built without them, through to a finished"
- Status: Built, never walked
- Note: built 16 September 2026 on task/three-answers-wording, 055c861, 0.101.0, at the four places; README and setup-checks now say the flag is the first of those given up front; the mechanics stand where the mode is described, the costs stay with one clause moved into them

### nothing at the start of a session says where the user is needed and where not, and the rule against naming stages stands against saying it
- Wrong: not stated
- Should: not stated
- Found: The first planning run alone, measured on 14 September 2026 in `devloop-test-o` — the first run on 0.100.0, six findings, and two places where the wording is the user's to settle before anything is built.
- Fix: none
- Status: Recorded, not built
- Note: the second of the two wordings the user settles before anything is built; the build has an opening message, planning has none, and Name no stages stands against a map

### the decision against delegating skills rests on an unchecked claim about what a delegating skill loads, a recollection where a measurement should be
- Wrong: not stated
- Should: not stated
- Found: Matt Pocock's skill set read in full against this one on 14 September 2026, and it divides into three defects he names that this set has, one he names that it does not, seven mechanisms of his missing at named sites here, and four places where this set is further on.
- Fix: none
- Status: Recorded, not built
- Note: the second half of defect 1 of the comparison; written down as unchecked at the Named, not built bullet on 17 September 2026 and marked, not rewritten, on 19 September, milestone 2; the measurement itself, one split skill and one run read off the session log, is what milestone 9 owes. Finding 3 of the measurement of 17 September names it again

### seven stage ends, one measured to end on a judgement, six never read against clarity and demand
- Wrong: not stated
- Should: not stated
- Found: Matt Pocock's skill set read in full against this one on 14 September 2026, and it divides into three defects he names that this set has, one he names that it does not, seven mechanisms of his missing at named sites here, and four places where this set is further on.
- Fix: none
- Status: Recorded, not built
- Note: point 2 of The order of work, and why, still standing; milestone 6 of docs/plan.md; the repair to Stage 1 is the thing on Stage 1 closing after one round. The counter-example in build-work, the finish on two queries, held on 14 September 2026

### build-work at 1359 lines carries 205 lines of Unattended mode that every attended run loads, the three ranks applied to none of it
- Wrong: not stated
- Should: not stated
- Found: Matt Pocock's skill set read in full against this one on 14 September 2026, and it divides into three defects he names that this set has, one he names that it does not, seven mechanisms of his missing at named sites here, and four places where this set is further on.
- Fix: none
- Status: Recorded, not built
- Note: point 3 of The order of work, and why, still standing, widened on 17 September 2026 to every skill under the post-compaction limit; milestone 9 of docs/plan.md; what would settle it, a run reaching a late step asked what it holds, has not been taken. The landing question of 13 September is not evidence for it, the entry says so itself

### the standards lens has no fixed baseline of structural smells and no hard-versus-judgement distinction
- Wrong: not stated
- Should: not stated
- Found: Matt Pocock's skill set read in full against this one on 14 September 2026, and it divides into three defects he names that this set has, one he names that it does not, seven mechanisms of his missing at named sites here, and four places where this set is further on.
- Fix: none
- Status: Recorded, not built
- Note: mechanism 2 of seven; the list under Standards overlaps in three and is otherwise behavioural, and precedence is settled where severity is not; the whole list has to travel to the subagent, which sees only its lens and the diff; the report cap and the rule against merging the axes stand already or are agreement

### the tautological test, its expected value computed as the code computes it, is named nowhere, four sites on a check that cannot fail around it
- Wrong: not stated
- Should: not stated
- Found: Matt Pocock's skill set read in full against this one on 14 September 2026, and it divides into three defects he names that this set has, one he names that it does not, seven mechanisms of his missing at named sites here, and four places where this set is further on.
- Fix: none
- Status: Recorded, not built
- Note: mechanism 3 of seven; reported from the run of 14 September 2026 as found by the test reading without standing in any list, not otherwise backed; belongs beside tests that would pass whatever the code did under the Spec lens or in the Test quality list that does not exist

### tasks are built one at a time, a frontier of tasks in separate worktrees is ruled out by a rule whose evidence is recorded as missing
- Wrong: not stated
- Should: not stated
- Found: Matt Pocock's skill set read in full against this one on 14 September 2026, and it divides into three defects he names that this set has, one he names that it does not, seven mechanisms of his missing at named sites here, and four places where this set is further on.
- Fix: none
- Status: Recorded, not built
- Note: mechanism 4 of seven; One build task at a time under Environment constraints, measured names the experiment that would settle it; the two do not disagree, this set ruled out parallelism in one directory and he ruled out one directory

### no entry of the set is marked needs the human or runs alone, the distinction was drawn once, for one stage, in prose
- Wrong: not stated
- Should: not stated
- Found: Matt Pocock's skill set read in full against this one on 14 September 2026, and it divides into three defects he names that this set has, one he names that it does not, seven mechanisms of his missing at named sites here, and four places where this set is further on.
- Fix: none
- Status: Recorded, not built
- Note: mechanism 5 of seven; the distinction was drawn by hand on 14 September 2026 as the boundary the mark waited for, for one stage

### no retrospective over named categories runs, and record-lessons knows two triggers, is locked, and has never run
- Wrong: not stated
- Should: not stated
- Found: Matt Pocock's skill set read in full against this one on 14 September 2026, and it divides into three defects he names that this set has, one he names that it does not, seven mechanisms of his missing at named sites here, and four places where this set is further on.
- Fix: none
- Status: Recorded, not built
- Note: mechanism 6 of seven; that the review agent and not the build agent carries the standards is agreement, not a gap; the cost of the lock is the thing on a finding out of the review a second time

### the cut is decided without the user at three sites against the upstream source, and the divergence is written down nowhere
- Wrong: not stated
- Should: not stated
- Found: Matt Pocock's skill set read in full against this one on 14 September 2026, and it divides into three defects he names that this set has, one he names that it does not, seven mechanisms of his missing at named sites here, and four places where this set is further on.
- Fix: none
- Status: Recorded, not built
- Note: mechanism 7 of seven; Where it is adapted, say why is the rule it falls under and the fourth site; his pattern for wide rebuilds stands at cut-into-tasks scoped to mechanical rewrites, and widening it is a question for the counter-check, not a finding

### the comparison with Pocock's set is a reading of one day at main with no commit recorded, the same defect as a claim from recollection
- Wrong: not stated
- Should: not stated
- Found: Matt Pocock's skill set read in full against this one on 14 September 2026, and it divides into three defects he names that this set has, one he names that it does not, seven mechanisms of his missing at named sites here, and four places where this set is further on.
- Fix: none
- Status: Recorded, not built
- Note: the clone command under Adapting from Matt Pocock would pin it, and the first build under the entry should run it and record the commit. Recorded, not built stands on the line after the evidence, a repeated whole line

### a file in the plugin read with cat at load is never inserted, the load aborting outside auto mode and the model fetching the text itself in it
- Wrong: not stated
- Should: not stated
- Found: Text inserted into a skill at load, measured on 17 September 2026 in eight runs against a throwaway plugin, and it divides into four findings and one open line.
- Fix: `docs/skill-conventions.md` "grep -n -e '^!`' -e 'devloop-text' skills/*/SKILL.md | awk"
- Status: Built, never walked
- Note: should: shared text is never inserted by cat on a path inside the plugin; every insert line goes through bin/devloop-text, and this check prints any line starting with the insert marker that is not one. Measured in runs 1 and 4 of 17 September 2026 against the throwaway plugin probe, the load aborting outside auto mode and the model fetching the text in it

### a program bundled in the plugin with the matching allowed-tools rule inserts the text at load in both modes and on all three routes measured
- Wrong: not stated
- Should: not stated
- Found: Text inserted into a skill at load, measured on 17 September 2026 in eight runs against a throwaway plugin, and it divides into four findings and one open line.
- Fix: `bin/devloop-text` "# Prints shared/<name>.md, the text a skill inserts at load"
- Status: Built, never walked
- Note: the route the set took on 18 September 2026 in ca0ff3a; runs 5 to 10 of 17 September against the throwaway plugin. Open: the bare-command form measured typed only, and disableSkillShellExecution not measured at all, which the notice above every first insert line answers in the skill's own text. Whether the line Allowed by auto mode classifier in run 9 applied to the Skill call, the inserted command or the Write is not established

### the paragraph naming the checksum as what byte-identical copies cost stood on a ground that has gone
- Wrong: not stated
- Should: not stated
- Found: Text inserted into a skill at load, measured on 17 September 2026 in eight runs against a throwaway plugin, and it divides into four findings and one open line.
- Fix: `docs/skill-conventions.md` "inserted into every skill at load — see "Text shared between skills" — and"
- Status: Recorded, not built
- Note: rewritten: until 18 September 2026 a checksum held the copies, since then the text stands once and there are no copies to hold; the rule it hands off to, a rule holds only on the path it is written on, untouched. A convention rewritten stays recorded

### what survives a compaction is written nowhere, and by the vendor's figures a build under build-work has the head of the file back and not the mode it is in
- Wrong: not stated
- Should: not stated
- Found: Text inserted into a skill at load, measured on 17 September 2026 in eight runs against a throwaway plugin, and it divides into four findings and one open line.
- Fix: none
- Status: Recorded, not built
- Note: the user's decision of 17 September 2026: every skill read against the post-compaction limit and split where it has to be, milestone 9 of docs/plan.md, widening point 3 of The order of work, and why; no run here was compacted, and the figures are the vendor's approximation. Recorded, not built stands on the line after the evidence, a repeated whole line

### nothing said that a shared text carries its own indentation and that the insert line stands at the start of the line
- Wrong: not stated
- Should: not stated
- Found: Text inserted into a skill at load, measured once more on 18 September 2026 against the installed copy of this plugin after the move, in one run: ten insert lines on ten files, every one inserted, and leading whitespace kept.
- Fix: `docs/skill-conventions.md` "Put the insert line on a line of its own, at"
- Status: Recorded, not built
- Note: the insert-line half stands under Text shared between skills as a rule, the indentation half in the files themselves, shared/arming-command.md carrying its four spaces, and as a rule nowhere. Measured 18 September 2026 against 0.102.0 equal to main

### the rule against saying a skill's name did not hold where the skill could not work, inserted or written in the file alike
- Wrong: not stated
- Should: not stated
- Found: The rule against saying a skill's name did not hold where a skill could not work, measured on 18 September 2026 in three runs, and the move onto inserted text is not the cause.
- Fix: `shared/skill-name.md` "**That holds where the run cannot go on.** Where this skill cannot work — the"
- Status: Built, never walked
- Note: built 18 September 2026 in 0c8f10f: the rule carries the situation expressly, what is missing and what could be done instead said by what it does. Measured in runs A, B and C of 18 September 2026 in a directory with nothing in it, held in run D for this part

### three places say the build subagent reads standards.md against the agreement that the review carries the standards, and no line instructs the reading
- Wrong: not stated
- Should: not stated
- Found: Whether the build subagent reads the project's rules is not decided, and four places disagree about it, read on 27 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: read 27 September 2026 on task/record-rules-at-review-close; the four places are named in the entry and stand as written; not decided, the path handed over and the reading not instructed

### the sentence that a typed name is not said back stood mid-paragraph behind the measurement and did not hold
- Wrong: not stated
- Should: not stated
- Found: The rule against saying a skill's name did not hold where a skill could not work, measured on 18 September 2026 in three runs, and the move onto inserted text is not the cause.
- Fix: `shared/skill-name.md` "**A name the user typed themselves is not repeated back either.** What that"
- Status: Built, never walked
- Note: regrouped 18 September 2026 in 929dabe, each rule under its own bold lead-in and the measurement last; held in run E, which the entry dates 19 September and the session log 18 September, 23:22 CEST

### npx playwright install, a named install command whose download lands outside the repository, passed the guard
- Wrong: not stated
- Should: not stated
- Found: The plan is written, on 19 September 2026, and the aim in `README.md` moves with it.
- Fix: `hooks/pre-tool-use-install-guard.sh` "playwright|playwright.ps1) case "${W[$((j + 1))]:-}" in"
- Status: Walked
- Note: measured 19 September 2026 at 929dabe, exit 0, and filed under the wrapper thing by the entry of that day; reclassified 28 September 2026 as a command that names the act, the destination read from the vendor the same day; built 8 October 2026, version 0.131.0, on task/install-guard-run-forms-and-browsers: playwright install in every form the vendor documents, cypress install and puppeteer browsers install are read, the vendor's default for the system read off uname -s and held against the record, whose list of places carries the five defaults since that day; a thing of its own since 8 October 2026, split off the wrapper thing, which stays left as it is for ./gradlew and mvnw; measured 8 October 2026 against the committed guard 6d5e826 with a scratch project, the roadmap entry of that date; not on a bench

### the case behind Works with nothing else installed, a second plugin's hooks running beside every test for a day unnoticed, has no dated entry in the roadmap
- Wrong: not stated
- Should: not stated
- Found: The conventions read against their cases, on 19 September 2026.
- Fix: not determined
- Status: Undetermined
- Note: it stands only in the convention's own text, and a reader checking the rewrite against its case later has that sentence and nothing else; the entry names no fix, so the evidence stays empty

### README's hooks paragraph under The check suite named neither guard
- Wrong: not stated
- Should: not stated
- Found: The conventions read against their cases, on 19 September 2026.
- Fix: none
- Status: Closed, corrected in the document: `README.md` carries "`gh pr merge` in every form and names the command that arms auto-merge instead,".
- Note: repaired 19 September 2026 in 539184c, the change carrying the list; README is a document, so recorded; closed 21 October 2026, corrected in the document, the paragraph naming both guards since 539184c, the roadmap entry of 20 October 2026 on milestone 3, part 2, its fifth commit

### build-work step 6 names a sixth start condition where five stand
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/build-work/SKILL.md` "is not measured. Start condition 5"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/build-work/SKILL.md at Start condition 6 makes the

### the guard's block with nobody there is said to get a refused arming's answer, which ends the run where the block raises an issue
- Wrong: the guard's block is said to get the same answer as a refused arming in step 6, but the block raises an issue and takes the next task while a refused arming ends the run and deletes the mark (step 6, unattended paragraph; "this ends the run, where the local twin does not")
- Should: name the turn-end hook as the twin and the refused arming as the shape only, or say the answers differ.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/build-work/SKILL.md` "issue raised and the next task taken; a refused arming ends the run instead."
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/build-work/SKILL.md at step 3, and a refused arming in step 6 — and it gets the same answer.

### the turn-end hook's unattended answer is said to be a refused arming's, which stops the run
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/build-work/SKILL.md` "6 and not the same answer: that one ends the run and deletes the mark, this"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/build-work/SKILL.md at 6, and it gets the same answer

### build-work counts two steps that ask where four hand over
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/build-work/SKILL.md` "running without stopping. A step that ends"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/build-work/SKILL.md at running without stopping. Two of these steps

### the diverged base is handed to the user and nothing says what a run with nobody there does
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: finding of the stock-take, concerns skills/build-work/SKILL.md at usually the local branch has commits the

### the red base is put to the user as a choice and nothing says what a run with nobody there does
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: finding of the stock-take, concerns skills/build-work/SKILL.md at let the user choose how to clear it

### the install in build-work is handed to the user and nothing says what a run with nobody there does
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `shared/install-tool.md` "With nobody there the record says yes, since the mode does not start"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/build-work/SKILL.md at the install handover; repaired 28 September 2026 with the tools half of milestone 3: a no on record was the decline with nobody there and a record never written a block until 5 October 2026, since when the record says yes with nobody there, the mode not starting otherwise, and what the guard blocks under that yes is a block, version 0.129.0; not exercised; the note said the decline stood until 7 October 2026, corrected by the consistency audit of that day

### a failed fast-forward hands over and nothing says what a run with nobody there does
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: finding of the stock-take, concerns skills/build-work/SKILL.md at and say what it would take: the merge landed

### setup-checks step 8 exits early on a binding gate without auto-merge, which build-work's precondition 5 needs
- Wrong: auto-merge is read and the early exit two sentences down does not depend on it: a binding gate with auto-merge off is said to make the mode available, while precondition 5 in build-work needs auto-merge on as well, and the yes path that switches it on is skipped
- Should: the early exit needs auto-merge on too, or switches it on there.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/setup-checks/SKILL.md` "gate that is there and binding is not enough for"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/setup-checks/SKILL.md at as, and whether auto-merge is on (`gh api repos/OWNER/REPO -q; repaired 5 October 2026, version 0.129.0: the early exit holds only where the mode is set up by all five, auto-merge among them, and step 8 switches auto-merge on where the gate stands and every answer is yes; not among the eleven the order behind the entry of 5 October 2026 named

### the first route into setup-checks with nobody there needs a person to decline the install
- Wrong: the first route with nobody there needs a person to decline the install; build-work step 3 point 7 hands the install to the user and states no outcome with nobody there, and its guard's block raises an issue instead of calling this skill
- Should: name a route that exists with nobody there, or say this route is attended.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/setup-checks/SKILL.md` "mark says so: for a single class, on the branch of a skill that commits — a"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/setup-checks/SKILL.md at From a build that had an install declined for a check class, which records the; repaired 5 October 2026, version 0.129.0: With nobody there in setup-checks names the one route that exists, a single class on the branch of a skill that commits, both records saying yes and step 3 asking nothing; the evidence moved 7 October 2026 by the addendum of that day to the audit of 7 October 2026, the fourth finding of the audit, the site onto the status line the evidence left

### the offer of the unattended mode is said to stand in a first setup while the single-class route meets step 8
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/setup-checks/SKILL.md` "it — and skip steps 7 and 8, since a landing and the offer of the mode belong"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/setup-checks/SKILL.md at it stands in a first setup, with them present.; repaired 1 October 2026, version 0.122.0, by the first way out: the single-class route skips step 8 with step 7; not exercised

### setup-checks step 7 is skipped for every single-class call, and after a merge nothing lands the class
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/setup-checks/SKILL.md` "the row that guard named. From the step after a merge, for the"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/setup-checks/SKILL.md at Skip this whole step when this skill was called for a single class from a build.; repaired 1 October 2026, version 0.122.0: the opening says the route after a merge cuts its own branch and lands it in step 7; not exercised

### the check commands are named as something to grant and nothing says what a run with nobody there does with them
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: none
- Status: Closed, lapsed: `skills/setup-checks/SKILL.md` no longer carries "Name what you just wrote down", removed at `49bd995`.
- Note: finding of the stock-take, concerns skills/setup-checks/SKILL.md at **Name what you just wrote down as something to grant.** A check command; since 12 October 2026 the paragraph of setup-checks step 3 falls altogether, which replaces this should, point 8 of part B of the entry of 12 October 2026 on the decisions; built 16 October 2026, version 0.140.0, point 8 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026; the site moved onto the status line on 16 October 2026 when the evidence left it, by section D of the header; closed 20 October 2026 as lapsed, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### setup-checks step 9 fills more classes without asking, overriding a none answer from step 2
- Wrong: step 2 allows the answer none, filling them later, and this line does more classes without asking while any is empty, overriding that answer at the close
- Should: a none answer stands until the step after a merge re-reads the reasons, or step 2 loses that answer.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/setup-checks/SKILL.md` "Ask which to do now: all of them, or some first and the rest after them. The"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/setup-checks/SKILL.md at Then say what happens next and do it, without asking first: more classes if any; repaired 1 October 2026, version 0.122.0, by the second way out: step 2 loses the answer; not exercised; evidence re-anchored 17 October 2026, version 0.142.0, the line replaced by the order of that day

### setup-checks step 9 sends a single-class call to the first piece of work instead of back to the build
- Wrong: on the single-class route the caller is a build that continues with its task, and this line sends the run to the first piece of work
- Should: return to the build where called for a single class.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/setup-checks/SKILL.md` "second question. Otherwise it depends on the route in: reached for a single"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/setup-checks/SKILL.md at are still `empty`, otherwise the first piece of work. Say what the state means; repaired 1 October 2026, version 0.122.0: step 9 routes by the way in; not exercised

### the permission passage in setup-project is not a question and speaks of its options and its yes
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: none
- Status: Closed, lapsed: `skills/setup-project/SKILL.md` no longer carries "in the options themselves", removed at `e484536`.
- Note: finding of the stock-take, concerns skills/setup-project/SKILL.md at **Say what this is not, in the options themselves.** A caveat in the paragraph; repaired 30 September 2026, version 0.119.0: the two halves are said in the preparation, and the reading about options is scoped to a choice two lines carry, step 4 saying which question is which; the passage went on 16 October 2026 with point 8 of part B of the roadmap entry of 12 October 2026; the note that stands in its place is the evidence; closed 20 October 2026 as lapsed, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### checks.md is said to be empty until setup-checks fills it while setup step 4 fills a class
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/setup-project/SKILL.md` "Say nothing ahead of time about what to do at a confirmation prompt"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/setup-project/SKILL.md at yet — `checks.md` is empty until `setup-checks` fills it, so that skill adds; repaired 1 October 2026, version 0.122.0: the setup fills no class, so the sentence holds on every path and setup-checks step 3 names the commands as something to grant; not exercised; the passage and the should name them here or at the close went on 16 October 2026 with point 8 of part B of the roadmap entry of 12 October 2026; the note that stands in its place is the evidence

### "It is not, and no amount of setting up gets around it" asserts that gh is not signed in
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/setup-project/SKILL.md` "- Whether `gh` is installed and signed in (`gh auth status`). Where it is not,"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/setup-project/SKILL.md at - Whether `gh` is installed and signed in (`gh auth status`). It is not, and no; built 16 October 2026, version 0.140.0, point 14 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026; the site moved onto the status line on 16 October 2026 when the evidence left it, by section D of the header

### a missing remote is a stop in step 0 and an offer in step 4 question 1
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: finding of the stock-take, concerns skills/setup-project/SKILL.md at this is not a git repository, there is no remote, or the working directory does

### the question whether missing tools should be installed says nothing about where a no leads
- Wrong: the question whether missing tools should be installed says nothing about where a no leads, and the checks.md rules below know only filled, skipped by judgement and empty
- Should: say what the class becomes on a no, as setup-checks step 3 does: skipped with that reason.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/setup-checks/SKILL.md` "that — the class becomes `skipped (user):` with that reason, naming the tool"
- Status: Walked
- Note: finding of the stock-take, concerned skills/setup-project/SKILL.md at question 3; repaired 28 September 2026 with the tools half of milestone 3, the class staying as it is and setup-checks recording it skipped; since 1 October 2026, version 0.122.0, the question stands in setup-checks alone, its step 3 saying where a no leads; exercised 30 September 2026 in devloop-test-t from setup-project, not since from setup-checks

### five standard labels named where issue-tracker.md names seven
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/setup-project/SKILL.md` "Create all seven in the tracker as part of this step, in every setup, whatever"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/setup-project/SKILL.md at the five standard labels and report it.; built 16 October 2026, version 0.140.0, point 9 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026; the site moved onto the status line on 16 October 2026 when the evidence left it, by section D of the header

### the blocking column takes yes or no and a rule says to leave it "-"
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/setup-project/SKILL.md` "- `Blocking` is `yes` or `no` on a row whose `Status` is `filled`, and `-` on"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/setup-project/SKILL.md at target cannot block anything, leave it `-` until it is filled.; repaired 1 October 2026, version 0.122.0: one value for a row that is not filled, in the rule, the column and the template, and in setup-checks step 6; not exercised

### domain.md names the two places as created in step 6 where step 4 question 6 creates them
- Wrong: "the two places step 6 just created": the two places are created in step 4, question 6, not in step 6
- Should: step 4, question 6.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/setup-project/SKILL.md` "records live — the two just created, or what question 5 found living elsewhere"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/setup-project/SKILL.md at Where the glossary and the decision records live — the two places step 6 just; since 1 October 2026 step 6 creates the two places itself and the sentence reads the two just created, skills/setup-project/SKILL.md line 634 at a03a720, where the evidence moved on 14 October 2026 by the consistency audit of that day, the site moving onto the status line it left

### environment.md names step 2 as the source of the gate where step 4 question 2 reads it
- Wrong: "from step 2": the gate is read in step 4, question 2, and step 2 is the report of what was found
- Should: step 4, question 2.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/setup-project/SKILL.md` "This file carries no section on what checks a merge, and who. No part of devloop"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/setup-project/SKILL.md at Also **what checks a merge, and who**, from step 2 — the one property of this; built 16 October 2026, version 0.140.0, point 14 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026; the site moved onto the status line on 16 October 2026 when the evidence left it, by section D of the header; the section left the file on 18 October 2026, decided by the person that day, the evidence moved onto the line of the note naming step 4, question 2 as its source, by the addendum of that day, where until it the note's first line carried it

### start-work step 1 reads no file and the paragraph after it reads issue-tracker.md for the version marker
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/start-work/SKILL.md` "${CLAUDE_PLUGIN_ROOT}/bin/devloop-setup-state --fetch"
- Status: Built, never walked
- Note: finding of the stock-take, concerned skills/start-work/SKILL.md at Do not read files. Do not check git. Do not look at the tracker.; built 3 October 2026, version 0.125.0: the one command of step 1 is bin/devloop-setup-state --fetch, which answers the marker off the main branch, and no file is read

### the next ticket of a map in flight has no route to untangle-idea's second mode
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: finding of the stock-take, concerns skills/start-work/SKILL.md at tickets or tasks by title, say which one comes next and what it unblocks, in one

### "nothing runs alone whatever was typed" holds on the planning route only
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `skills/build-work/SKILL.md` "Where one of those five does not hold and this section was reached directly,"
- Status: Built, never walked
- Note: finding of the stock-take, concerns skills/start-work/SKILL.md at nothing runs alone whatever was typed; repaired 5 October 2026, version 0.129.0: the sentence is gone from the entry point, and the direct route reads the recorded answer through shared/mode-set-up.md and calls setup-checks step 8 where the mode is not set up; not among the eleven the order behind the entry of 5 October 2026 named

### the offer to land in plan-work says what a no leads to and not what a yes does
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: finding of the stock-take, concerns skills/plan-work/SKILL.md at Do not open a planning issue for it and do not plan it again. Offer to land

### build-prototype takes whichever branch matches the code with nobody there where its own section takes the logic branch
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: finding of the stock-take, concerns skills/build-prototype/SKILL.md at default to whichever branch better matches the surrounding code

### the pointer to the throwaway branch goes on an implementation issue that exists on neither route
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: finding of the stock-take, concerns skills/build-prototype/SKILL.md at leave a context pointer to that branch on the implementation issue

### a missing control document in diagnose-bug is handed to the user and nothing says what a run with nobody there does
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: finding of the stock-take, concerns skills/diagnose-bug/SKILL.md at do not improvise a replacement.

### diagnose-bug step 6 waits for a person and nothing says what a run with nobody there does
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: finding of the stock-take, concerns skills/diagnose-bug/SKILL.md at says. Then wait.

### record-lessons writes into checks.md, which checks-owner.md forbids
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: finding of the stock-take, concerns skills/record-lessons/SKILL.md at the "what these checks do not cover" section of

### the check on names in the roadmap prints every name under "Named, not built as skills" and can never be silent
- Wrong: the command prints every backticked lower-case name in docs/roadmap.md that is not a directory under skills/, 129 lines on 23 September 2026, the twenty-two names under "Named, not built as skills" among them, so it can never be silent and the sentence above it is not what it checks
- Should: subtract the names of that table as well, so that a line printed is a name the sentence forbids, and the section says that silence is green.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `docs/skill-conventions.md` "for m in sorted(n) if len(m)>=6 and e(x,m)<=2]"
- Status: Built, never walked
- Note: finding of the stock-take, concerns docs/skill-conventions.md at | tr -d '`' | sort -u) <(ls skills/ | sort)

### Run E is dated 19 September 2026 where its session log begins on 18 September
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `docs/skill-conventions.md` "**A run's date is copied from the session log of that run, not from memory.**"
- Status: Recorded, not built
- Note: finding of the stock-take, concerns docs/roadmap.md at **Run E, 19 September 2026, plugin 0.105.0, against the regrouping.** The

### the setup-checks measurement in devloop-test-o is dated 12 September 2026 where its log shows 13 September
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `docs/skill-conventions.md` "**A run's date is copied from the session log of that run, not from memory.**"
- Status: Recorded, not built
- Note: finding of the stock-take, concerns docs/roadmap.md at measured on 12 September 2026 in `devloop-test-o` on issue 49.** `setup-checks`

### no case of the self-test produces '--only without a path: message on stderr, exit 2'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("--only without a path","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if not only:

### no case of the self-test produces 'git failing on the shallow check, a directory that is no repository included: REFUSED with git's message, exit 2'
- Wrong: the outcome "git failing on the shallow check, a directory that is no repository included: REFUSED with git's message, exit 2" is produced by no case of the self-test, so nothing can walk it on purpose
- Should: a case in the self-test that produces it once, beside its green counterpart.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("git failing on the shallow check, a directory that is no ""
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at except RuntimeError as e:

### no case of the self-test produces 'the table cannot be read: one table error, nothing read, exit 2'
- Wrong: the outcome 'the table cannot be read: one table error, nothing read, exit 2' is produced by no case of the self-test, so nothing can walk it on purpose
- Should: a case in the self-test that produces it once, beside its green counterpart.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("the table cannot be read","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at except OSError as e:

### no case of the self-test produces 'the header is not the 20 columns: one table error, nothing read, exit 2'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("the header is not the 20 columns","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if not lines or lines[0].rstrip("\r").split("\t") != COLUMNS:

### no case of the self-test produces 'an absolute local path in any field: rejected'
- Wrong: the outcome 'an absolute local path in any field: rejected' is produced by no case of the self-test, so nothing can walk it on purpose
- Should: a case in the self-test that produces it once, beside its green counterpart.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("an absolute local path in a field","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if absolute_path(f[col]):

### no case of the self-test produces 'a file and anchor pair half empty: rejected'
- Wrong: the outcome 'a file and anchor pair half empty: rejected' is produced by no case of the self-test, so nothing can walk it on purpose
- Should: a case in the self-test that produces it once, beside its green counterpart.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a file and anchor pair half empty","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if (f[a] == "") != (f[b] == ""):

### no case of the self-test produces 'a check command or named skill with an empty note: rejected'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a check command with an empty note","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if f["kind"] in ("check command", "named skill") and f["note"] == "":

### no case of the self-test produces 'a run's date not YYYY-MM-DD: rejected'
- Wrong: the outcome "a run's date not YYYY-MM-DD: rejected" is produced by no case of the self-test, so nothing can walk it on purpose
- Should: a case in the self-test that produces it once, beside its green counterpart.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a run's date not YYYY-MM-DD","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if not DATE.match(f["date"]):

### no case of the self-test produces 'a run's source not entry, log or none: rejected'
- Wrong: the outcome "a run's source not entry, log or none: rejected" is produced by no case of the self-test, so nothing can walk it on purpose
- Should: a case in the self-test that produces it once, beside its green counterpart.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a run's source not entry, log or none","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if f["source"] not in SOURCES:

### no case of the self-test produces 'a run with both version and commit: rejected'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a run with both a version and a commit","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if has_v and has_c:

### no case of the self-test produces 'a run of source none carrying a version or commit: rejected'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a run of source none carrying a version","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if f["source"] == "none" and (has_v or has_c):

### no case of the self-test produces 'a run of source entry or log with neither version nor commit: rejected'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a run of source entry with neither version nor commit","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if f["source"] in ("entry", "log") and not (has_v or has_c):

### no case of the self-test produces 'a run naming a commit with a source other than entry: rejected'
- Wrong: the outcome 'a run naming a commit with a source other than entry: rejected' is produced by no case of the self-test, so nothing can walk it on purpose
- Should: a case in the self-test that produces it once, beside its green counterpart.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a run naming a commit with a source other than entry","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if has_c and f["source"] != "entry":

### no case of the self-test produces 'part of: naming nothing: rejected'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a part of naming nothing","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if target == "":

### no case of the self-test produces 'an anchor into a file that cannot be read: rejected'
- Wrong: the outcome 'an anchor into a file that cannot be read: rejected' is produced by no case of the self-test, so nothing can walk it on purpose
- Should: a case in the self-test that produces it once, beside its green counterpart.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("an anchor into a file that cannot be read","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at "no-file": "the file cannot be read",

### no case of the self-test produces 'an anchor longer than 80 characters: rejected'
- Wrong: the outcome 'an anchor longer than 80 characters: rejected' is produced by no case of the self-test, so nothing can walk it on purpose
- Should: a case in the self-test that produces it once, beside its green counterpart.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("an anchor longer than 80 characters","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if len(anchor) > 80:

### no case of the self-test produces 'an anchor shorter than 20 characters that is not a whole line: rejected'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("an anchor shorter than 20 characters that is not a whole line","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if len(anchor) < 20 and lines[lineno - 1].strip() != anchor:

### no case of the self-test produces 'an anchor with leading or trailing whitespace: rejected'
- Wrong: the outcome 'an anchor with leading or trailing whitespace: rejected' is produced by no case of the self-test, so nothing can walk it on purpose
- Should: a case in the self-test that produces it once, beside its green counterpart.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("an anchor with leading or trailing whitespace","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if anchor != anchor.strip():

### no case of the self-test produces 'a straight path under skills/ or shared/ of the wrong kind: rejected'
- Wrong: the outcome 'a straight path under skills/ or shared/ of the wrong kind: rejected' is produced by no case of the self-test, so nothing can walk it on purpose
- Should: a case in the self-test that produces it once, beside its green counterpart.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a straight path of the wrong kind","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if rec["kind"] != want:

### no case of the self-test produces 'a straight path outside skills/ and shared/: rejected'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a straight path outside skills/, shared/ and output-styles/","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at elif rec.parts and rec.parts[2] == STRAIGHT and site:

### no case of the self-test produces 'a calls segment not carrying the form exactly: rejected'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a calls segment not carrying the form exactly","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at rec.errors.append("note %r does not carry the form "

### no case of the self-test produces 'a call note on a thing outside skills/ and shared/: rejected'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a call note on a thing outside skills/ and shared/","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if not in_skill:

### no case of the self-test produces 'a calls followed by a segment that is none of the claim forms: rejected'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a calls followed by a segment that is none of the claim forms","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at rec.errors.append("note %r does not carry one of the forms "

### no case of the self-test produces 'a with nobody there segment without its calls before it: rejected'
- Wrong: the outcome 'a with nobody there segment without its calls before it: rejected' is produced by no case of the self-test, so nothing can walk it on purpose
- Should: a case in the self-test that produces it once, beside its green counterpart.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a with nobody there segment without its calls before it","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if s.startswith("with nobody there:"):

### no case of the self-test produces 'a segment starting like the root note and not carrying it exactly: rejected'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a segment starting like the root note and not carrying it","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at elif s.startswith("enters the unattended"):

### no case of the self-test produces 'a does the work of segment not carrying the form exactly: rejected'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a does the work of segment not carrying the form exactly","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at rec.errors.append("note %r does not carry the form 'does "

### no case of the self-test produces 'a segment starting like the not-stated note and not carrying it exactly: rejected'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a segment starting like the not-stated note and not carrying it","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at elif s.startswith("outcome with nobody there") and s != NOT_STATED:

### no case of the self-test produces 'the root note on a thing whose site is not under skills/: rejected'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("the root note on a thing whose site is not under skills/","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if not rec.errors and skill_of(rec["file"]) is None:

### no case of the self-test produces 'a run naming a commit that does not resolve here: rejected'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a run naming a commit that does not resolve","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if h is None:

### no case of the self-test produces 'a run naming a commit with no origin/main here: rejected'
- Wrong: the outcome 'a run naming a commit with no origin/main here: rejected' is produced by no case of the self-test, so nothing can walk it on purpose
- Should: a case in the self-test that produces it once, beside its green counterpart.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a run naming a commit with no origin/main here","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at elif origin_main is None:

### no case of the self-test produces 'evidence under a directory the tool classifies as neither shipped nor recorded: broken record, the thing in no state'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("evidence under a directory the tool classifies nowhere","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if loc is None:

### no case of the self-test produces 'a run naming a commit that does not contain the last change: does not count, the line named'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a run naming a commit that does not contain the last change","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at bad = [h for h in per_hash if not g.is_ancestor(h, run_c)]

### no case of the self-test produces 'a run naming a version never introduced into plugin.json on this history: broken record, does not count'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a run naming a version never introduced","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if vc is None:

### no case of the self-test produces 'a unit with no anchorable line at all: listed among the lines that can carry no anchor'
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("a unit with no anchorable line at all","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if not any(anchorable(text, lines[n - 1])

### exit 2 is produced by no case of the self-test
- Wrong: exit 2 is produced by no case of the self-test: neither exit_code() nor main() is called there
- Should: a case that calls exit_code() on a result with a broken record and on a refused one and sees 2.
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("exit code 2 on a broken record and on a refused repository","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if res.refused or res.broken_count():

### exit 1 is produced by no case of the self-test
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "case("exit code 1 on an uncovered line","
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if res.uncovered or res.no_straight_path:

### a run keyed to a rejected thing is dropped from the output while its anchor still covers its line
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "rec.errors.append("the thing named %r is rejected (line %d), ""
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at if t is None:

### the tool's header names order 9 as the order that moves the findings into the roadmap
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: none
- Status: Closed, lapsed: `scripts/devloop-stock-take` no longer carries "nowhere on it: order 10 of the stock-take moves each into the dated roadmap".
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at nowhere on it: order 9 of the stock-take moves each into the dated roadmap

### the tool's header names orders 2 to 8 where order 9 ends the same way
- Wrong: not stated
- Should: not stated
- Found: The stock-take of what is built, closed on 23 September 2026.
- Fix: `scripts/devloop-stock-take` "Every order from 2 to 9 of the stock-take ends when the tool reports, for the"
- Status: Built, never walked
- Note: finding of the stock-take, concerns scripts/devloop-stock-take at Every order from 2 to 8 of the stock-take ends when the tool reports, for the

### a check command's thing hangs on its anchor line alone, so a change to another line of its block leaves an earlier run walked
- Wrong: a check command's thing hangs on its anchor line alone, so a change to another line of the same command block on a later day leaves an earlier run standing as walked although it ran a different command
- Should: every line of a command block counts as a line of the thing, the way every line of a unit counts for its straight path
- Found: The check on names in the roadmap repaired, on 25 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: a finding of the table until 2 November 2026, at `scripts/devloop-stock-take` "rng[(rel, sline)] = "site""; the commit that wrote its row, 834b8d5, opened the entry under Found

### README.md says the roadmap tells when each side path is reached where it says so for one and gives the reason of the other
- Wrong: it now says that, and "decided" where it said "planned".
- Should: not stated
- Found: The control documents audited against the tree, and mended, on 26 September 2026.
- Fix: none
- Status: Closed, lapsed: `README.md` no longer carries "why the first has no trigger yet".
- Note: finding of the audit of 25 September 2026, mended 26 September 2026, concerns README.md under "What is missing"; closed 21 October 2026, lapsed, the sentence leaving the README with the roadmap entry of 20 October 2026 on milestone 3, part 2, its fifth commit

### the header quotes "Never assert state" with a hyphen where the heading carries a dash
- Wrong: the dash, as the heading has it.
- Should: not stated
- Found: The control documents audited against the tree, and mended, on 26 September 2026.
- Fix: `scripts/devloop-stock-take` "asserted state ("Never assert state — query it", docs/skill-conventions.md);"
- Status: Built, never walked
- Note: finding of the audit of 25 September 2026, mended 26 September 2026, concerns scripts/devloop-stock-take at the quote in its opening

### the header counts thirteen named things, nine notes and four side paths at A and at E
- Wrong: the header carries no number there and points at the tool's output, which is where a count lives, and that retires the finding.
- Should: not stated
- Found: The control documents audited against the tree, and mended, on 26 September 2026.
- Fix: `scripts/devloop-stock-take` "thing of kind named skill; how many is read off the tool's output, not off"
- Status: Built, never walked
- Note: finding of the audit of 25 September 2026, mended 26 September 2026, concerns scripts/devloop-stock-take at A and E, the finding the table carried since 25 September 2026

### the header counts three defects and seven mechanisms against nine rows in that stretch of the Pocock entry
- Wrong: the header says where that row stands.
- Should: not stated
- Found: The control documents audited against the tree, and mended, on 26 September 2026.
- Fix: `scripts/devloop-stock-take` "measured first and the remaining points being two of the three defects."
- Status: Built, never walked
- Note: finding of the audit of 25 September 2026, mended 26 September 2026, concerns scripts/devloop-stock-take at the three defects and seven mechanisms

### the header says two session logs of the benches carry no version and names neither
- Wrong: not stated
- Should: not stated
- Found: The control documents audited against the tree, and mended, on 26 September 2026.
- Fix: not determined
- Status: Undetermined
- Note: finding of the audit of 25 September 2026, mended 26 September 2026, concerns scripts/devloop-stock-take at "Two of the session logs of the benches carry no version at all"; no command in the tree names them

### the header dates the move into shared/ to 17 and 18 September where git has only the 18th
- Wrong: 18 September 2026.
- Should: not stated
- Found: The control documents audited against the tree, and mended, on 26 September 2026.
- Fix: `scripts/devloop-stock-take` "- Text that moved unchanged into shared/ on 18 September 2026 counts for no"
- Status: Built, never walked
- Note: finding of the audit of 25 September 2026, mended 26 September 2026, concerns scripts/devloop-stock-take at the limit on text that moved into shared/

### a check command's run was held against the commit date of its line, which a squash merge re-dates
- Wrong: the branch that held the date takes every run, on the line that opens it. The self-test's case for the date, red on the day of the change, is the case for the version instead: the third commit of its temporary repository now changes the line the check stands on, a run dated after that change under the first version does not count, the version named as predating the change, and a run under the second version counts and reads walked. The message the date rule produced is gone, and the count of messages the self-test reads off its own source went from 73 to 72, every one asserted by a case. One convention entered `docs/skill-conventions.md` beside "A figure taken from a command is copied out of that command's output": a measurement nothing depends on never becomes a condition for the next step, written because two days of work waited on a run that changed one line of a table and nothing else.
- Should: not stated
- Found: The control documents audited against the tree, and mended, on 26 September 2026.
- Fix: `scripts/devloop-stock-take` "if rec["commit"] != "":"
- Status: Walked
- Note: finding of the audit of 25 September 2026, mended 26 September 2026, concerns scripts/devloop-stock-take at the two lines that held the date rule, the finding the table carried since 25 September 2026

### no line of untangle-idea says what the next session picks up where a mapping session ends before the map is done
- Wrong: no line of untangle-idea says at the end of a mapping session what the next one picks up, what stands is the map loaded once per session, which every session orients to, and "When the map is done", which carries straight on into planning, so the document is not wrong about itself and a piece of the workflow is missing
- Should: untangle-idea says, where a mapping session ends before the map is done, what the next session picks up, or this entry names the map as what every session orients to
- Found: The control documents audited against the tree, and mended, on 26 September 2026.
- Fix: none
- Status: Recorded, not built
- Note: a finding of the table until 2 November 2026, at `docs/roadmap.md` "by reading it, and `untangle-idea` already says at the end of a mapping"; the commit that wrote its row, a44dc20, opened the entry under Found

### nothing in the set says what a package manager command does to a machine beyond the package it names
- Wrong: not stated
- Should: the report half alone, what the package manager did beside the package standing in the report of the install, skills/build-work/SKILL.md line 507 and skills/setup-checks/SKILL.md line 545
- Found: An install command passed the auto-mode classifier with nobody answering, measured on 28 September 2026.
- Fix: `shared/install-alone.md` "**What the report says the package manager did besides is what the whole"
- Status: Walked
- Note: measured 28 September 2026: brew updated itself, fetched a portable Ruby, updated two taps and ran a cleanup on one install; said the same day in build-work step 3 point 7 as the reason the report carries what the package manager did besides, and in setup-checks step 3; the question that would say it to the person is drafted, not built; not exercised; evidence back on the status line on 19 October 2026 by the entry of that date on the list of the defects that concern milestone 3 checked point by point: skills/build-work/SKILL.md line 507 carries the report half of the should, what the package manager did besides, with skills/setup-checks/SKILL.md line 545, and the question half, said where the kind's cost is said, stands nowhere - built is the report half, not built the question half; should changed 20 October 2026 by the roadmap entry of 20 October 2026 on milestone 3, part 1, the old quoted there: the report half alone, what the package manager did beside the package standing in the report of the install, skills/build-work/SKILL.md line 507 and skills/setup-checks/SKILL.md line 545; the question's half dropped by shared/install-question.md lines 35 to 36, the yes implying nothing untrue; the evidence on line 507, the defect built; the half in the text of the decision of 24 October 2026 on point 8 built that day, version 0.159.0, the roadmap entry of 24 October 2026 on the install rules reaching the build subagent: shared/install-alone.md in build-work step 3 and setup-checks step 4, the install alone in its call and not cut, its report saying what the whole output shows and what came into the folders for browsers, nothing assumed, the evidence moved onto its line; a run to come after the four parts; run 2 of 26 October 2026 met its case at both installs and it held, the folders for browsers read in part, defect 9 of the roadmap entry of 27 October 2026 on the three closing runs

### the guard read where a route lands for brew, go and npm alone and blocked every other route under every answer, so on a stack whose routes were among those a yes opened nothing
- Wrong: not stated
- Should: not stated
- Found: The install guard resolves eleven routes instead of three, the record carries routes beside places, and a pip inside the project passes; built and measured on 29 September 2026, version 0.116.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "pnpm) envs PNPM_HOME; P=$(absolute"
- Status: Walked
- Note: found 28 September 2026 putting the question in, recorded as a finding on skills/setup-project/SKILL.md; repaired 29 September 2026 on task/install-routes by the guard resolving eleven routes, cargo by reading; the two sentences of the question the repair leaves unmatched stand as a defect of their own; measured 29 September 2026 against the working tree, not on a bench

### the install question says which places exactly stand written in the record and says nothing of a bare pip, while a route's place is read on the machine at the moment of the command and a bare pip opens nothing
- Wrong: not stated
- Should: not stated
- Found: The install guard resolves eleven routes instead of three, the record carries routes beside places, and a pip inside the project passes; built and measured on 29 September 2026, version 0.116.0.
- Fix: none
- Status: Closed, left on purpose: decided in `docs/roadmap.md` at "The question does not say that a bare pip opens nothing under a yes.".
- Note: drafted 29 September 2026 in the report of task/install-routes; the question's wording was approved on 28 September 2026 and is not rewritten there; the first half went with the sentence on 30 September 2026, version 0.119.0, when the question was cut to what carries the decision and stopped saying where the places stand; the bare-pip half stands; closed 20 October 2026, left on purpose, by the roadmap entry of 20 October 2026 on milestone 3, part 1: the bare-pip half goes, the guard blocking a bare pip and naming the way, the run taking the way the message names, and the draft implying something untrue; the evidence on the closing line

### the block for a route that does not answer names the query and not what the query said on stderr
- Wrong: the block for a route that does not answer names the query and not what the query said on stderr, which for `bun` names the cause and the fix.
- Should: not stated
- Found: The install guard resolves eleven routes instead of three, the record carries routes beside places, and a pip inside the project passes; built and measured on 29 September 2026, version 0.116.0.
- Fix: none
- Status: Closed, left on purpose: decided in `docs/roadmap.md` at "not its output on stderr, on purpose".
- Note: found 29 September 2026 exercising bun against the real program on task/install-routes: bun's stderr names the missing manifest and the fix, the guard sends every route's stderr to /dev/null, so the block says did not answer and no more; the block itself is right; the search of the roadmap for stderr beside guard, route or block came back without a match; the other finding of that hour, bun's directory not on the search path, names no defect, since the install report's what came back carries the vendor's warning; closed 20 October 2026, left on purpose, by the roadmap entry of 20 October 2026 on milestone 3, part 1: the block names the query and not its stderr, since a foreign program's output can carry the home directory with the user name, the cause goes into an issue with nobody there and the install handed over resolves the case; the evidence on the closing line

### the block message chains two colons into one sentence behind does not open it where the cause opens with a label and a colon of its own, seven causes
- Wrong: not stated
- Should: not stated
- Found: The install guard's block message cut to the approved wording, on 29 September 2026, version 0.117.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "does not open it, because $CAUSE. The install is the user's to run"
- Status: Built, never walked
- Note: found 29 September 2026 reading the joined sentence for every cause the guard can produce, on task/install-guard-message: no default branch, the ref cannot be read, no record, unknown value twice and the record could not be read twice open with a label and a colon, and the fallback for a missing reader quotes the shell's error with two absolute paths and a line number; every cause ends clean, none in a full stop, a quotation mark or a colon; the causes stand unchanged, as the order that approved the wording said; built 21 October 2026, version 0.154.0, in the wordings the person approved that day: the seven causes of bin/devloop-install-record one clause each without a label and a colon of their own, the fallback for a reader that gave no cause saying so, and the frame joining the cause behind does not open it, because, the roadmap entry of that date on milestone 3, part 3

### the nineteen runs of the first measurement of 29 September 2026 stand under version 0.116.0, which the squash merge of pull request #141 never introduced into plugin.json on the main history, so the tool rejects them as broken records
- Wrong: not stated
- Should: not stated
- Found: The install guard's block message cut to the approved wording, on 29 September 2026, version 0.117.0.
- Fix: `scripts/devloop-stock-take` "res.broken.append((rec.lineno, "version %s was introduced at ""
- Status: Walked
- Note: found 29 September 2026 running scripts/devloop-stock-take on main at 188648d before any change of task/install-guard-message: BROKEN RECORDS 19, every one a run of that measurement with version 0.116.0; the roadmap searched for 0.116.0, broken record, never introduced and squash names it nowhere; not repaired here, the branch's final state those runs should have been recorded at being gone; mended 29 September 2026 on task/mend-broken-runs: the nineteen re-anchored to 0.116.1, the version the squash landed, no shipped file differing between 3802d25 and 188648d, and the squash check on the evidence line says on a branch what main will say

### nothing runs the stock-take at the merge: no workflow under .github/ and main unprotected, so a red branch merges by hand unseen
- Wrong: the workflow stands in `.github/workflows/stock-take.yml` and has never run, and the required check on main is a setting still to be set. The tool reads the defect of the entry above off this line, and it says what the header's limits say: it rejects an evidence under `.github/`, since that is neither a shipped directory nor docs/, so a fix standing in a workflow cannot carry a state, and the defect keeps reading as recorded while the file stands on disk; recorded as a finding on the tool's location rule, the search of this file for `.github` and `evidence under` having come back with the entry above and the self-test's outcome only.
- Should: not stated
- Found: The merge gate, its half in the files: a workflow that runs the stock-take and its self-test on every pull request into main, against the merged state; 29 September 2026, version 0.117.2.
- Fix: `.github/workflows/stock-take.yml` "branches: [main]"
- Status: Walked
- Note: found 29 September 2026 reading the repository: no .github/, branch protection answering 404 Branch not protected, rulesets answering an empty list, and the merge run by hand in a terminal; built in two halves: .github/workflows/stock-take.yml since 29 September 2026, version 0.117.2, running the tool and its self-test on every pull request into main against the merged state, run first on pull request #144 the same day and green on every run since, #145 to #148; and the check stock-take required on main with strict and enforce_admins, set 29 September 2026 at 23:34 CEST, a setting of the repository read off the platform on 30 September 2026 and standing in no file, which held the merges of #145 to #148; the site stands on the line of the entry of 29 September 2026 that said half built and the evidence on the workflow's branches: line since 30 September 2026, the audit entry of that date; the red outcome, a pull request refused, has not been produced

### step 3 of setup-project skipped the whole of step 4 where there is no code, so a project set up empty was never put the install permission and carries no record
- Wrong: step 3 of `setup-project` skips the questions that need code and puts the others, question 4 among them, since 29 September 2026, version 0.118.0; the defect's evidence stands on that line. Nothing has run on a bench: the question has been put to nobody in an empty project, and the two runs milestone 3 ends with have not happened.
- Should: not stated
- Found: The empty case of `setup-project` asks the questions that need no code, the install permission among them: step 3 skips the two questions that need code, not step 4; 29 September 2026, version 0.118.0.
- Fix: `skills/setup-project/SKILL.md` "there is something to check. Step 4 is not skipped: it skips the one question"
- Status: Walked
- Note: finding of the stock-take made 28 September 2026 on the skipping line, moved into the entry of 29 September 2026 and repaired there: step 3 skips the questions that need code, not step 4; site on the entry's status line, evidence on the repaired line

### the install question was put through the harness's choice widget on its first asking and none of its thirteen points arrived whole, nothing in the skill naming the form
- Wrong: not stated
- Should: not stated
- Found: The install question put through the harness's choice widget on its first asking, none of its thirteen points arriving whole; the question cut to the four that carry the decision and the form named; 30 September 2026, version 0.119.0.
- Fix: `skills/setup-project/SKILL.md` "widget, and everything that carries the"
- Status: Built, never walked
- Note: found 29 September 2026 in devloop-test-q on the first asking, under 0.118.0, the bench and the day read off the session log on 30 September 2026; repaired the same day, version 0.119.0: the form named in step 4's opening and in question 4, the question cut to the four points that carry the decision, step 0's sentence scoped to a choice two lines carry; the route named with no stack stands as part of this, its source not settled from the files; the form requirement holds only when a run meets it, and the catch is a bench run read off its transcript; put three times: once before this build, in devloop-test-q under 0.118.0 on 29 September 2026, and twice after it, in devloop-test-s and devloop-test-t under 0.120.0 on 30 September 2026, where the form did not hold, the entry of that date; since 3 October 2026, version 0.126.0, the form is the widget's own fields, each point of question 3 in one named field, the prose form having been met by a tab of a form in three runs

### two delivered texts grew by justified additions and neither was read as a whole afterwards, the block message to 337 words and the install question to thirteen points, nothing saying what an addition to such a text has to do
- Wrong: not stated
- Should: not stated
- Found: A rule on the length and the form of a delivered text, drawn from the two cuts of 29 and 30 September 2026, the message and the question; 30 September 2026, version 0.119.0.
- Fix: `docs/skill-conventions.md` "## A text is as long as what carries the decision, and written for its form"
- Status: Recorded, not built
- Note: the rule drawn on 30 September 2026 from the cuts of 29 and 30 September 2026: nothing that carries the reader's decision comes out and nothing that does not stays in, a text written for the form that carries it, the duty at the moment of adding read off the report; a written convention and no mechanism, none to build, so the evidence stays under docs/

### the description of record-lessons has ten words against the under-ten limit of the Frontmatter section, the one text whose form fixes a length
- Wrong: the description of `record-lessons` has ten words against "under ten words" under "Frontmatter" in `docs/skill-conventions.md`; not changed here, since the frontmatter is no part of this rule. The roadmap, searched for `ten words` and `under ten`, names it nowhere.
- Should: not stated
- Found: A rule on the length and the form of a delivered text, drawn from the two cuts of 29 and 30 September 2026, the message and the question; 30 September 2026, version 0.119.0.
- Fix: none
- Status: Recorded, not built
- Note: found 30 September 2026 by the count in the entry, concerns skills/record-lessons/SKILL.md at description: Write down what went wrong so it does not repeat, ten words where docs/skill-conventions.md under Frontmatter says under ten; roadmap searched for ten words and under ten, nothing; not changed on this branch, the frontmatter being no part of the rule

### shared/how-to-ask.md says every question states why it comes up now while question 4 of setup-project as cut on 30 September 2026 states it nowhere
- Wrong: `shared/how-to-ask.md` says every question states why it comes up now, and question 4 of `setup-project`, cut on 30 September 2026, states it nowhere, the entry of that date having judged it not to carry the decision; the two disagree as written, and the reading that reconciles them stands only in the new section. Not changed here: the shared line stands in six skills, with the conventions' heading and the template beside it, and rewriting the three is a change of its own. The roadmap, searched for `why it comes up now` and `comes up now`, names it nowhere. `grep -n -i -w "short\|long\|length\|words" docs/skill-conventions.md` over the rest finds "Writing long files", about a heredoc truncated on paste and not about a text read; `caffeinate` running "as long as" a process; "the shape of the list matters more than its length" on `mergeStateStatus`; and the lines of the check on names. No sentence in the file says that a text says everything true, or that a text is shortened without being read, so nothing says the opposite. Recorded, not built: the rule stands in `docs/skill-conventions.md` as a written convention, a duty done at the moment of adding and read off the report, and no mechanism.
- Should: not stated
- Found: A rule on the length and the form of a delivered text, drawn from the two cuts of 29 and 30 September 2026, the message and the question; 30 September 2026, version 0.119.0.
- Fix: `shared/how-to-ask.md` "Every question that survives all of that has four things reach the user by the"
- Status: Built, never walked
- Note: found 30 September 2026 reading the conventions through after the rule, concerns shared/how-to-ask.md at answer means in practice, what it costs, and why it comes up now, inserted into six skills, against question 4 of setup-project step 4 as cut the same day; the new section reads the four as what has reached the person by the time they answer; roadmap searched for why it comes up now and comes up now, nothing; not changed on this branch; built 16 October 2026, version 0.141.0, point 25 of part B of the roadmap entry of 12 October 2026 on the decisions: shared/how-to-ask.md, the conventions and the template of untangle-idea brought to the reading that the four things are what has reached the person by the time they answer

### question 4 of setup-project came out wrong twice on 29 September 2026 from two texts, its surroundings pulling it toward a question about tools for check classes
- Wrong: not stated
- Should: not stated
- Found: Question 4 of `setup-project` came out wrong twice on 29 September 2026, from two different texts, its surroundings pulling it toward a question about tools for check classes; the pulls that could be removed removed, and three things in the options that arrived in the run's own words stated at the point where the run writes them; 30 September 2026, version 0.120.0.
- Fix: `shared/install-question.md` "- **In the question line: the subject and its scope.** Whether the run may"
- Status: Walked
- Note: found 30 September 2026 by the reading of the two runs, carried in the order of this branch; repaired the same day, version 0.120.0: the announcement in question 3 cut, shared/backed-command.md moved into A guard's block is not a decline, the task before the check class in point 4, the checker last in point 1, the third heading true read as a statement and naming the leak, the boundary inside the leak as a rule on the run; nothing here reaches the form, which the transcript alone tells; not exercised: the two runs milestone 3 ends with have not happened; since 3 October 2026, version 0.126.0, the leak stands in the question line directly behind the subject, the boundary out of the question; since 5 October 2026, version 0.129.0, the question stands in shared/install-question.md and its line carries the subject and its scope alone; the leak this record stood on is out of the text, and the new wording is not counted as a repair

### three things in the options of question 4 arrived in the run's own words, a declined class left open, the class as an issue, the no as a promise to ask, none of the three stated at point 4 where the run writes them
- Wrong: the five pulls answered in `setup-project`, since 30 September 2026, version 0.120.0 — the announcement cut, the block moved, the task and the checker moved, the heading changed — and point 3 carrying the leak with the boundary inside it; the three wrong options stated at point 4 in the skill's words. Nothing has run on a bench: the two runs milestone 3 ends with have not happened, and the question has been put twice, both times before this build.
- Should: not stated
- Found: Question 4 of `setup-project` came out wrong twice on 29 September 2026, from two different texts, its surroundings pulling it toward a question about tools for check classes; the pulls that could be removed removed, and three things in the options that arrived in the run's own words stated at the point where the run writes them; 30 September 2026, version 0.120.0.
- Fix: none
- Status: Closed, lapsed: `skills/setup-project/SKILL.md` no longer carries "What a yes also lets through", removed at `e484536`.
- Note: found 30 September 2026 in the second run of the question, under 0.119.0; repaired the same day, version 0.120.0: point 4's no says that with nobody there nothing is asked, the task becomes an issue carrying the exact command, or a check class goes skipped with that reason, not empty and not open; the site is the entry's status line, the head carrying the defect of the pulls; not exercised: the question has not been put since; since 3 October 2026, version 0.126.0, the three things stand as a rule on the run in question 3's paragraph on what stays out of the question, said to nobody, the no's line saying that nothing is installed without them; since 5 October 2026, version 0.129.0, the repair this record names is no longer in the text: the rule on the run on where a no leads with nobody there is out of the question's description, since with nobody there the record says yes by start condition 6, which this evidence stands on now; not counted as a repair; closed 20 October 2026 as lapsed, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### the repair of point 3 of question 4 made on 30 September 2026 did not hold in either run of that day at 0.120.0, the boundary arriving lifted out of the leak
- Wrong: not stated
- Should: not stated
- Found: The two runs milestone 3 ends with, both on 30 September 2026 under 0.120.0 and both attended: the record saying yes in `devloop-test-s`, the record saying no in `devloop-test-t`; what they establish, what they do not, and the findings read off them; 30 September 2026, version 0.120.1.
- Fix: `shared/install-question.md` "Two things stay out of the question, on purpose. It says nothing about"
- Status: Walked
- Note: found 30 September 2026 by the order carrying the two runs, in devloop-test-s and devloop-test-t under 0.120.0; concerns skills/setup-project/SKILL.md at **What a yes also lets through, in the message.**, the point rewritten that day with the boundary as the leak's object, whose defect stands recorded in the entry of 30 September 2026 above as repaired; both runs produced the boundary as a sentence of its own after the leak, the fourth and fifth time the question was put and the third and fourth time the boundary arrived alone; should: the leak reaches the person or nothing about runtimes does; built 3 October 2026, version 0.126.0, the first way of its should: the leak in the question line directly behind the subject, the boundary out of the question as a rule on the run and not promised to the person; not exercised: the question has not been put since; since 5 October 2026, version 0.129.0, the second way of its should stands in the text instead of the first: the question says nothing about runtimes, the leak out with the boundary; a new wording and not counted as a repair, the audit's defect on the fifth delivery standing as it stood

### the yes run's check chain went red on govulncheck and gosec not found on the PATH make runs under, got past in the session and written nowhere in devloop-test-s
- Wrong: not stated
- Should: not stated
- Found: The two runs milestone 3 ends with, both on 30 September 2026 under 0.120.0 and both attended: the record saying yes in `devloop-test-s`, the record saying no in `devloop-test-t`; what they establish, what they do not, and the findings read off them; 30 September 2026, version 0.120.1.
- Fix: `hooks/stop-checks.sh` "OUT="This check did not run and found nothing: $MISSING is not found on the"
- Status: Walked
- Note: found 30 September 2026 in devloop-test-s under 0.120.0, read off its Makefile calling the bare names, its environment.md saying nothing of ~/go/bin, and this machine's shell PATH carrying no ~/go/bin; the duty of setup-checks step 5 on a red not from the code was never in front of the run since setup-checks was not called, and build-work step 3 point 8 and setup-checks step 3 put the standing fact into environment.md, where it is not; should: a red from a tool not on the PATH is read as that and the fact that closes it lands in the repository; built 21 October 2026, version 0.155.0: hooks/stop-checks.sh and hooks/post-tool-use-checks.sh read every red through bin/devloop-missing-tool and, where it names a tool, say that the check did not run and found nothing, which tool is missing and that what closes it belongs in the repository, the roadmap entry of 21 October 2026 on milestone 3, part 4; walked by the bench of that day

### a project whose setup fills every class itself never reaches setup-checks, so the offer of the unattended mode in its step 8 and the duties of its steps 3 to 8 are never met
- Wrong: not stated
- Should: not stated
- Found: The two runs milestone 3 ends with, both on 30 September 2026 under 0.120.0 and both attended: the record saying yes in `devloop-test-s`, the record saying no in `devloop-test-t`; what they establish, what they do not, and the findings read off them; 30 September 2026, version 0.120.1.
- Fix: `skills/setup-project/SKILL.md` "now set up as a step of their own, then run `setup-checks`. Every project"
- Status: Walked
- Note: found 30 September 2026 by the two runs, both of which had setup-project decide every class; concerns skills/setup-project/SKILL.md at step 9, which runs setup-checks only where classes are still empty, and skills/setup-checks/SKILL.md at ## Step 8 — Offer the unattended mode, the one place the mode is offered; plan-work's Stage 1 then does not ask, the mode never having been offered; should: the offer and the duties of steps 3 to 8 stand on the path every project takes whose suite is complete, whichever skill completed it; repaired 1 October 2026, version 0.122.0: setup-project fills no class and runs setup-checks in every project with code; not exercised

### plan-work posts Stage 1 to the planning issue once after the mode question, so a session ended inside Stage 1 leaves the issue empty, and the pick-up in devloop-test-s found it empty and began Stage 1 again without saying so
- Wrong: not stated
- Should: not stated
- Found: The two runs milestone 3 ends with, both on 30 September 2026 under 0.120.0 and both attended: the record saying yes in `devloop-test-s`, the record saying no in `devloop-test-t`; what they establish, what they do not, and the findings read off them; 30 September 2026, version 0.120.1.
- Fix: `skills/plan-work/SKILL.md` "round. After every round, post the settled answers as"
- Status: Built, never walked
- Note: found 30 September 2026 in devloop-test-s, issue #2 opened at 08:10:49 UTC and its Stage 1 comment posted at 08:17:36 UTC by the next session; concerns skills/plan-work/SKILL.md at Post the settled answers and the hard core as a comment on the planning issue, which stands after the mode question, and at If it is the same work, read the issue and its comments, which asks for the last finished stage to be said; whether the post was skipped or the session ended first is not established, the transcript not read; should: the settled answers reach the issue before the mode question, and a pick-up finding a being-planned issue with no stage comment says so and says it starts Stage 1 again; built 16 October 2026, version 0.141.0, point 20 of part B of the roadmap entry of 12 October 2026 on the decisions: the settled answers go to the planning issue after every round; the second half of the should, a pick-up that finds a being-planned issue without a stage comment saying so, is not built, the roadmap entry of 16 October 2026 on planning and building recording it

### under install-tools no the record and the session-start line list six places and a route with nothing saying they are closed, so the line reads as though something were open
- Wrong: not stated
- Should: not stated
- Found: The two runs milestone 3 ends with, both on 30 September 2026 under 0.120.0 and both attended: the record saying yes in `devloop-test-s`, the record saying no in `devloop-test-t`; what they establish, what they do not, and the findings read off them; 30 September 2026, version 0.120.1.
- Fix: `bin/devloop-install-record` "if [ "$TOOLS" = "no" ]; then PLACES=""; ROUTES=""; fi"
- Status: Built, never walked
- Note: found 30 September 2026 in devloop-test-t, whose record on main carries install-tools no, six install-place lines and install-route go; concerns skills/setup-project/SKILL.md at The six `install-place` lines are the places a yes opens in this version, which writes them under either answer by design, and hooks/session-start.sh at the [InstallRecord] line, which prints tools, places and routes alike under a no; should: under a no the record and the line say the places and routes are what a yes would open, or carry none; built 20 October 2026, version 0.153.0, the roadmap entry of that date on milestone 3, part 2: under a no the record carries the answer and the date alone, shared/install-record.md, and the line says none for the places and routes whatever an older record carries, the should met by its second half, carry none; the line formed by bin/devloop-install-record --line since 28 October 2026, the evidence there

### the permissions passage of setup-project step 0 arrives before anything can happen on it and is gone by the time a confirmation comes, and names the unattended mode only to deny it where nothing has introduced the mode
- Wrong: the permissions passage of `setup-project` step 0 arrives before anything can happen on it and is gone by the time a confirmation comes, and it names the unattended mode only to deny it where nothing has introduced the mode; what should hold is that the passage says what a confirmation is and where the grant is set at the moment one can come, and names no mode the person has not met. The roadmap, searched for `Permissions, before the first command`, `preparation` and `introduce a term`, finds the audit's defect on the options and nothing on these.
- Should: not stated
- Found: The two runs milestone 3 ends with, both on 30 September 2026 under 0.120.0 and both attended: the record saying yes in `devloop-test-s`, the record saying no in `devloop-test-t`; what they establish, what they do not, and the findings read off them; 30 September 2026, version 0.120.1.
- Fix: none
- Status: Closed, lapsed: `skills/setup-project/SKILL.md` no longer carries "advice that arrives afterwards", removed at `49bd995`.
- Note: found 30 September 2026 by the order carrying the two runs, in three runs of the setup; concerns skills/setup-project/SKILL.md at ### Permissions, before the first command, whose advice on a confirmation stands where none can come, and at **Say what this is not, in the preparation itself.**, which requires the words this is not the unattended mode before the mode has been named; the recorded defect of 26 September 2026 on this passage was its speaking of options and a yes, repaired at 0.119.0, and is not this; should: the passage says what a confirmation is and where the grant is set at the moment one can come, and names no mode the person has not met; since 12 October 2026 the passage falls altogether, the decision falling in Claude Code's own prompt, which replaces this should, point 8 of part B of the entry of 12 October 2026 on the decisions; built 16 October 2026, version 0.140.0, point 8 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026; closed 20 October 2026 as lapsed, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### the form named for question 4 on 30 September 2026 was met in neither run of that day under 0.120.0, the question arriving as one tab of a form beside auto-merge, and nothing in the repository can read whether it was met
- Wrong: not stated
- Should: not stated
- Found: The two runs milestone 3 ends with, both on 30 September 2026 under 0.120.0 and both attended: the record saying yes in `devloop-test-s`, the record saying no in `devloop-test-t`; what they establish, what they do not, and the findings read off them; 30 September 2026, version 0.120.1.
- Fix: none
- Status: Closed, left on purpose: decided in `docs/roadmap.md` at "The rule stays that the install question stands alone in its call.".
- Note: found 30 September 2026 by the order carrying the two runs, in devloop-test-s and devloop-test-t under 0.120.0, as in devloop-test-q under 0.118.0 on 29 September 2026 before the form was named; concerns skills/setup-project/SKILL.md at Put it in prose, in the run's own message, the requirement since 0.119.0 whose defect stands recorded in the entry of 30 September 2026 above as repaired; the entry of that date said a bench run reading the transcript is what catches a run that does not meet it, and two have; should: a form the run cannot fail to deliver, the four points written for the widget's own slots and the call carrying this question alone, or a mechanism at the call; built in part 3 October 2026, version 0.126.0: the points written for the widget's own fields, each named in question 3; the call carrying this question alone stays a sentence nothing reads, the finding row of that date on its line; not exercised: the question has not been put since; evidence back on the status line on 19 October 2026 by the entry of that date on the list of the defects that concern milestone 3 checked point by point: skills/setup-project/SKILL.md line 254 carries the text half of the should, every point in a field of the widget and the call alone, and nothing on it reads whether the form was met - built is that text half, not built a form the run cannot fail to deliver or a mechanism at the call, finding 12 of the tool; closed 20 October 2026, left on purpose, by the roadmap entry of 20 October 2026 on milestone 3, part 1: the rule that the call carries the install question alone stays as text, with the reason that what needs weighing goes alone, as shared/three-questions.md says in its first sentence, in place of the one submit, the ceiling on questions in a round having stood here as that reason until the audit of 23 October 2026, from the first commit of that branch, which its correction replaced, and no mechanism, since a hook cannot tell the install question from another; the evidence on the closing line

### question 2 of setup-project step 4 leads with a recommendation to switch auto-merge on, under the opening line of the step, while question 4 and the offer of the mode give none
- Wrong: not stated
- Should: not stated
- Found: The two runs milestone 3 ends with, both on 30 September 2026 under 0.120.0 and both attended: the record saying yes in `devloop-test-s`, the record saying no in `devloop-test-t`; what they establish, what they do not, and the findings read off them; 30 September 2026, version 0.120.1.
- Fix: `skills/setup-project/SKILL.md` "Only these, each only under its condition. No question of this step carries a"
- Status: Built, never walked
- Note: found 30 September 2026 by the order carrying the two runs, in three runs of the setup, the option reading Ja, einschalten (Empfehlung); concerns skills/setup-project/SKILL.md at Lead with your recommendation so a, which excepts question 4 alone, and at 2. **Auto-merge** — only if the remote has it switched off; the rule the order names, that nothing reaching past the project is recommended, stands nowhere as a sentence, only as question 4's Give no recommendation and setup-checks step 8's Do not recommend a yes on a first project; should: question 2 gives no recommendation and the step's opening says so; built 16 October 2026, version 0.140.0, point 10 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026; evidence re-anchored 17 October 2026, version 0.142.0, the line replaced by the order of that day, which names the field of the recommendation; evidence re-anchored 20 October 2026, version 0.152.0, by the roadmap entry of 20 October 2026 on milestone 3, part 1: the opening of step 4 says that no question of the step carries a recommendation, question 2 among them, by the person's decision of that day; the should stands

### the run of 30 September 2026 spoke of our labels to the person, and question 6 of setup-project step 4 says add ours alongside
- Wrong: not stated
- Should: not stated
- Found: The two runs milestone 3 ends with, both on 30 September 2026 under 0.120.0 and both attended: the record saying yes in `devloop-test-s`, the record saying no in `devloop-test-t`; what they establish, what they do not, and the findings read off them; 30 September 2026, version 0.120.1.
- Fix: `skills/setup-project/SKILL.md` "have to decide — is said in one sentence in the message with which the"
- Status: Built, never walked
- Note: found 30 September 2026 by the order carrying the two runs, twice in one run; concerns skills/setup-project/SKILL.md at Then ask: map onto the existing ones, or add ours alongside, the one place the set says ours to a person; the defect that question 6 names five labels where issue-tracker.md names seven stands recorded already and is a different one; should: the labels are named as this workflow's and by what they do, and the word leaves the skill; built 16 October 2026, version 0.140.0, point 9 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### step 2 of setup-project reports that the repository carries none of this workflow's labels, which holds for every repository before its setup and changes nothing
- Wrong: not stated
- Should: step 2 says nothing of what was found, what a question of step 4 turns on standing in its fields
- Found: The two runs milestone 3 ends with, both on 30 September 2026 under 0.120.0 and both attended: the record saying yes in `devloop-test-s`, the record saying no in `devloop-test-t`; what they establish, what they do not, and the findings read off them; 30 September 2026, version 0.120.1.
- Fix: `skills/setup-project/SKILL.md` "Nothing of what step 1 found is said"
- Status: Built, never walked
- Note: found 30 September 2026 by the order carrying the two runs, read here as the repository being set up; concerns skills/setup-project/SKILL.md at Ten lines at most. Say explicitly what you did **not** find, with step 1's Existing labels in the tracker, if one is reachable in front of it; what step 4 acts on is question 6's condition, labels with overlapping meaning, and both repositories carry GitHub's ten defaults; should: step 2 says whether labels with overlapping meaning exist and not the absence of what step 6 creates; built 16 October 2026, version 0.140.0, point 9 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026; should revised 17 October 2026 by the roadmap entry of 17 October 2026 on the reports of what was done: step 2 says nothing of what was found, what a question of step 4 turns on standing in its fields

### question 3 of setup-project step 4 says the guard blocks an install during a first setup, while the guard is silent until step 6 has created docs/agents, so the installs of the yes run met no guard established to have seen them
- Wrong: not stated
- Should: not stated
- Found: The two runs milestone 3 ends with, both on 30 September 2026 under 0.120.0 and both attended: the record saying yes in `devloop-test-s`, the record saying no in `devloop-test-t`; what they establish, what they do not, and the findings read off them; 30 September 2026, version 0.120.1.
- Fix: `skills/setup-project/SKILL.md` "here — so the first install a project meets is the check setup's, after step"
- Status: Walked
- Note: found 30 September 2026 establishing the yes run in devloop-test-s, whose two tools carry a timestamp two minutes before the commit that carries the record; concerns skills/setup-project/SKILL.md at not landed yet, so the guard blocks the command and it is handed over, and hooks/pre-tool-use-install-guard.sh at [ -d "docs/agents" ] || exit 0, recorded as the silent pass where the project is not set up; where step 6 has run the guard blocks with the reader's cause, no environment.md on origin/main, a block and not the decline question 3 describes; which of the two the run met is the transcript's; should: a first setup hands the install over on the ground question 3 gives without leaning on a block that comes only after step 6, or the run installs nothing before step 8 has landed the record; repaired 1 October 2026, version 0.122.0, by the second way out: nothing is installed during the setup, question 3 having left for setup-checks; not exercised

### the block message of hooks/pre-tool-use-merge-guard.sh stands at 618 words, grown the way the install guard's grew and never read as a whole for the run that receives it
- Wrong: not stated
- Should: not stated
- Found: The two runs milestone 3 ends with, both on 30 September 2026 under 0.120.0 and both attended: the record saying yes in `devloop-test-s`, the record saying no in `devloop-test-t`; what they establish, what they do not, and the findings read off them; 30 September 2026, version 0.120.1.
- Fix: `hooks/pre-tool-use-merge-guard.sh` "The program's last line says how it ended. not started:"
- Status: Built, never walked
- Note: found 30 September 2026 by wc -w over the heredoc of hooks/pre-tool-use-merge-guard.sh, 618 words, the same shape as the install guard's message at 337 before the cut of 29 September 2026; concerns that file at Blocked: merging is not yours to perform, in any form; the rule under A text is as long as what carries the decision in docs/skill-conventions.md covers what a hook prints into a session and names two texts, neither this one; should: read for the run with nothing else in front of it, held part by part, and cut to what the run does differently for it; answered 17 October 2026 by the roadmap entry of 17 October 2026 on arming past the gate: the message read whole for the run that receives it, held part by part and cut to what the run does differently for it, 618 words on 30 September 2026, 375 at 275be3d and 382 at the tip of that branch, 4552dcc, the reading the program does gone from it; 605 since 18 October 2026, d373314, every duty of shared/merge-handover.md in the message by the second addendum of the roadmap entry of that date on the merge handover; the counts corrected 18 October 2026 by the consistency audit of that day, where the note said 375 since

### the session-start line printing the install record arrives in the run's context and not in front of the person, while the conventions and the hook's own comment call it what a second person who cloned the repository meets
- Wrong: not stated
- Should: not stated
- Found: The two runs milestone 3 ends with, both on 30 September 2026 under 0.120.0 and both attended: the record saying yes in `devloop-test-s`, the record saying no in `devloop-test-t`; what they establish, what they do not, and the findings read off them; 30 September 2026, version 0.120.1.
- Fix: none
- Status: Closed, corrected in the document: `docs/skill-conventions.md` carries "reaches the run as context at the start of every session, and not the".
- Note: found 30 September 2026 by the order carrying the two runs; concerns docs/skill-conventions.md at **A hook cannot force wording.** `SessionStart` stdout arrives as context, which settles where the line goes, against the same file under The install guard reads a record and hooks/session-start.sh at what a second person who cloned, which say the person meets it; nothing says the run repeats it to the person; should: a place where the run says it to the person at its first turn in a project with a record, or the three sentences saying the run meets it and the person does not; built 20 October 2026, version 0.153.0, the roadmap entry of that date on milestone 3, part 2, by the second way: the hook's comment and docs/skill-conventions.md under The install guard reads a record say the line reaches the run and not the person, A hook cannot force wording standing as before; closed 21 October 2026, corrected in the document, the sentence of the conventions saying the line reaches the run and not the person, the hook's comment saying the same, the roadmap entry of 20 October 2026 on milestone 3, part 2, its fifth commit

### a fix standing in a workflow under .github/ could carry no state, the tool rejecting an evidence there as neither a shipped directory nor docs/
- Wrong: the tool reads `.github/` as shipped and the workflow's lines as the search set since 30 September 2026, version 0.121.0, and the defect of the merge gate reads walked.
- Should: not stated
- Found: The consistency audit before the handover, run on 30 September 2026 against `f4f4dc9`, the tree at 0.120.1, and its fourteen disagreements mended the same day, version 0.121.0.
- Fix: `scripts/devloop-stock-take` "SHIPPED = ("skills", "shared", "output-styles", "hooks", "bin", "scripts","
- Status: Built, never walked
- Note: finding of 29 September 2026 on the merge gate, in the table until 30 September 2026; mended 30 September 2026, version 0.121.0: .github/ is a shipped directory, a workflow's outcomes are things of kind program outcome and its lines the search set, the header's A, D and E; the self-test builds no workflow, so the rule has no case of its own there; since 15 October 2026 output-styles/ stands among the shipped directories as well

### the first asking of question 4 stood in devloop-test-p on 30 September 2026 in three entries, a thing name and two notes, where the logs place it in devloop-test-q on 29 September 2026
- Wrong: the first asking of question 4 stood in the wrong bench on the wrong day in three entries, a thing name and two notes, mended in all seven.
- Should: not stated
- Found: The consistency audit before the handover, run on 30 September 2026 against `f4f4dc9`, the tree at 0.120.1, and its fourteen disagreements mended the same day, version 0.121.0.
- Fix: none
- Status: Recorded, not built
- Note: finding of the audit of 30 September 2026, mended 30 September 2026, concerns the entries of 29 and 30 September 2026 above and two notes of this table at devloop-test-p; the session logs under ~/.claude/projects/ open at 20:33 UTC for p under 0.117.2 with the question skipped, 21:49 UTC for q under 0.118.0 with the three-tab form, 23:18 UTC for r under 0.119.0 with the two-tab form, all on 29 September 2026; seven places corrected

### build-work under With nobody there counted four places and named five, the question about the work being the fifth case and not the fourth
- Wrong: the section counts five and the question is the fifth case, in `build-work` and in the conventions, since 30 September 2026.
- Should: not stated
- Found: The consistency audit before the handover, run on 30 September 2026 against `f4f4dc9`, the tree at 0.120.1, and its fourteen disagreements mended the same day, version 0.121.0.
- Fix: `skills/build-work/SKILL.md` "written in eight places already"
- Status: Built, never walked
- Note: finding of the audit of 30 September 2026, mended 30 September 2026, concerns skills/build-work/SKILL.md at written in four places already and this fourth case, and docs/skill-conventions.md at the fourth case under With nobody there; the install bullet of 28 September 2026 made five; seven since 9 October 2026, the class setup-checks cannot set up and the check chain that does not finish added, the question the seventh case; since 16 October 2026 eight places, the eighth the changed file or the commits of their own at a fetch, and the question about the work called the eighth case in both of its sentences, the last of which had read fifth

### build-work step 3 point 7 and setup-checks step 3 described the guard's pass by places alone, the routes of 29 September 2026 missing
- Wrong: both sentences in both skills name the answer of a route the record names, since 30 September 2026.
- Should: not stated
- Found: The consistency audit before the handover, run on 30 September 2026 against `f4f4dc9`, the tree at 0.120.1, and its fourteen disagreements mended the same day, version 0.121.0.
- Fix: `shared/install-tool.md` "where every place it lands is one the record names or the answer of a route"
- Status: Built, never walked
- Note: finding of the audit of 30 September 2026, mended 30 September 2026, concerns skills/build-work/SKILL.md at where every place it lands is one the record names and at anything landing outside the places the record names, and skills/setup-checks/SKILL.md at the same two sentences; pull request #141 touched neither

### the tool's header, Registering a skill and Working on devloop itself said nothing of the workflow and the required check main has stood behind since 29 September 2026
- Wrong: the header names the workflow and the required check since 30 September 2026, and the conventions and the README say the same under their headings.
- Should: not stated
- Found: The consistency audit before the handover, run on 30 September 2026 against `f4f4dc9`, the tree at 0.120.1, and its fourteen disagreements mended the same day, version 0.121.0.
- Fix: `scripts/devloop-stock-take` "branch that fills the table. Since 29 September 2026 it also runs, with its"
- Status: Built, never walked
- Note: finding of the audit of 30 September 2026, mended 30 September 2026, concerns scripts/devloop-stock-take at It runs where the table is used, docs/skill-conventions.md under Registering a skill, README.md under Working on devloop itself; the README says it there and nowhere else, the gate being a setting on this repository

### six benches stood as the count in README.md, milestone 4 of the plan and the entry on throwaway projects, where eleven repositories stand
- Wrong: the count is gone from the three places and the five benches are named with their dates.
- Should: not stated
- Found: The consistency audit before the handover, run on 30 September 2026 against `f4f4dc9`, the tree at 0.120.1, and its fourteen disagreements mended the same day, version 0.121.0.
- Fix: none
- Status: Closed, lapsed: `README.md` no longer carries "It has been exercised on throwaway".
- Note: finding of the audit of 30 September 2026, mended 30 September 2026, concerns README.md at six throwaway projects, docs/plan.md milestone 4 at none of the six benches, docs/roadmap.md under Throwaway projects that exist at the other four, the only one of the six and the only project; no number replaces the number, gh repo list answering eleven on 30 September 2026; closed 21 October 2026, lapsed, the sentence leaving the README with the roadmap entry of 20 October 2026 on milestone 3, part 2, its fifth commit

### the note of the widget defect said the question had been put once, before that build, where it has been put twice since
- Wrong: the note says three times, once before and twice after, with the benches, and its evidence is this line, the table being where the mend stands.
- Should: not stated
- Found: The consistency audit before the handover, run on 30 September 2026 against `f4f4dc9`, the tree at 0.120.1, and its fourteen disagreements mended the same day, version 0.121.0.
- Fix: none
- Status: Recorded, not built
- Note: finding of the audit of 30 September 2026, mended 30 September 2026, concerns docs/stock-take.tsv at the note of the widget defect; the mend stands in the table, so the evidence is this line

### setup-project step 0 said the setup takes two or three questions, where it puts three to seven with code
- Wrong: the step says a few questions, since 30 September 2026.
- Should: not stated
- Found: The consistency audit before the handover, run on 30 September 2026 against `f4f4dc9`, the tree at 0.120.1, and its fourteen disagreements mended the same day, version 0.121.0.
- Fix: `skills/setup-project/SKILL.md` "Nothing else of what it does is said there: not that it takes a few minutes,"
- Status: Built, never walked
- Note: finding of the audit of 30 September 2026, mended 30 September 2026, concerns skills/setup-project/SKILL.md step 0 at two or three questions; decided to mend it; the sentence rewritten 1 October 2026, version 0.122.0, to name no count and nothing about checks

### a project set up before 0.122.0 carries filled rows setup-project wrote without the red proof of setup-checks step 5, and the refresh leaves them as they are
- Wrong: not stated
- Should: not stated
- Found: The check classes get one owner: `setup-project` fills none and calls `setup-checks` in every project with code, the nine canonical target names stand in `shared/canonical-targets.md`, the answer "none" leaves `setup-checks` step 2, the step after a merge brings a project set up without code to the whole check setup, and `start-work` sends a set-up project with no class filled there first; 1 October 2026, version 0.122.0.
- Fix: none
- Status: Recorded, not built
- Note: found 1 October 2026 while walking the fifth situation of the order of that day; the refresh in setup-project rewrites the header and the column rules and leaves the rows; the roadmap, searched for `red proof` and `without the red`, names it nowhere but here

### record-lessons in a project not set up writes docs/agents/standards.md as the directory's first file on whatever branch the run stands on, the guard silent
- Wrong: not stated
- Should: not stated
- Found: The branch cut of both setup skills stands behind the last question, the branches carry fixed names, `devloop-setup` and `devloop-checks`, and a branch of that name with nothing written on it is deleted and cut afresh, the checked-out one included; 1 October 2026, version 0.123.0.
- Fix: none
- Status: Recorded, not built
- Note: found reading every writer under docs/agents/ on 1 October 2026: grep -rn 'docs/agents' skills shared, record-lessons carrying no setup check and no branch cut; the one path onto the main branch left in the text

### the commands of shared/cut-branch.md and the gate queries write main literally where the hooks resolve the main branch
- Wrong: the commands of the three cases write main literally, here and in the two switch lines, while hooks/pre-tool-use-branch-guard.sh resolves the main branch from origin/HEAD and then main or master, so in a repository whose main branch is master the commands name a branch that is not there; the gate queries of both setup skills, branches/main/protection, carry the same literal
- Should: the text says what main stands for, the main branch as the hooks resolve it, or the commands take its name from the same resolution; recorded 1 October 2026, grep -n -i master docs/roadmap.md came back empty; the three commands came with the branch cut of 1 October 2026, version 0.123.0, commit 2a6e713: before it, git show 62f5ed4:shared/cut-branch.md | grep -n main prints lines 3 and 10 only, the main-branch guard and Never commit to the main branch directly, prose both, no command naming the main branch; extended 5 October 2026: shared/mode-set-up.md and setup-checks step 3 read the three records with git show origin/main:docs/agents/environment.md, the same literal, and no second record is written for it; extended 6 October 2026, second addendum: the fetch and fast-forward before a fresh cut, built that day, write origin/main and main as well, in two more command lines; extended 6 October 2026, third addendum: git reset --keep origin/main in shared/fetch-three-times.md, a command handed to the person, and git rev-parse origin/main in shared/mark-command.md, whose own git fetch -q origin main is gone; the retry command of the shared block, git fetch -q origin, names no branch
- Found: The status of a check class takes four forms and a guard holds the table to them, the unattended mode starts on two permissions more and is set up in `setup-checks` step 8 or through `--auto`, a state is read before a task is released, and a review finding about the table goes a third way; 5 October 2026, version 0.129.0.
- Fix: none
- Status: Recorded, not built
- Note: a finding of the table until 2 November 2026, at `shared/cut-branch.md` "git merge-base --is-ancestor devloop-setup main"; the commit that wrote its row, 03c78af, opened the entry under Found

### the third case of shared/cut-branch.md says nothing about a switch git refuses over a dirty file
- Wrong: the third case says switch to the branch with something written on it and nothing about a switch git refuses: measured 1 October 2026 with git 2.50.1 in a scratch repository, a dirty file that differs between the branches makes git switch abort with Your local changes to the following files would be overwritten by checkout, exit 1, the branch unchanged, while a dirty file identical on both is carried over, exit 0
- Should: the run resolves a refused switch itself, without handing the user a git command, since the set hands a command over only where the run may not act, under Every skill carries these two in docs/skill-conventions.md; recorded 1 October 2026, grep -n -i 'dirty|unclean|local changes|would be overwritten' docs/roadmap.md found only mergeStateStatus DIRTY and this branch's own entry
- Found: The branch cut of both setup skills stands behind the last question, the branches carry fixed names, `devloop-setup` and `devloop-checks`, and a branch of that name with nothing written on it is deleted and cut afresh, the checked-out one included; 1 October 2026, version 0.123.0.
- Fix: none
- Status: Recorded, not built
- Note: a finding of the table until 2 November 2026, at `shared/cut-branch.md` "Switch to it rather than making a"; the commit that wrote its row, 2a6e713, opened the entry under Found

### build-work step 1 reads every red check as a base to clear, where a project with no class filled fails its target until setup-checks has filled one
- Wrong: step 1 reads every red check as a base to clear, with diagnose-bug and three ways out, while a project set up without code carries a check target that fails saying the suite is not configured until setup-checks has filled a class, which the entry of 1 October 2026 on the check classes describes as the path of the first build, so the first build of such a project meets a red base no revert and no fix clears
- Should: step 1 tells a check failing for want of any filled class from a red base and says what follows, the build going on with the suite set up after its merge by step 6, or the entry says the first build waits for setup-checks; recorded 2 October 2026, grep -n -i 'red base|base is red|already red|base was red' docs/roadmap.md finds the nobody-there finding of 23 September 2026 at let the user choose how to clear it and nothing else, grep -n 'not configured' docs/roadmap.md only the entry of 1 October 2026 describing the path
- Found: Four things an earlier order left undone: two places of the documents dated, the finding on `shared/cut-branch.md` given its history, and the findings of two reports of 1 October 2026 held against the table and the files; 2 October 2026, version 0.124.0.
- Fix: none
- Status: Recorded, not built
- Note: a finding of the table until 2 November 2026, at `skills/build-work/SKILL.md` "**If the base is already red, do not start a task on it.** The cause is not in"; the commit that wrote its row, 3d6bc6a, opened the entry under Found

### the in-flight report of start-work reads a pull request closing no issue as one that does not say which work it belongs to, the setup's two among them
- Wrong: the in-flight report reads a pull request closing no issue as one that does not say which work it belongs to and forbids reading its branch name, while the two pull requests this workflow opens without an issue are the setup's, setup-project step 8 on devloop-setup and setup-checks step 7 on devloop-checks, names fixed since 1 October 2026, and a session that ends before the hand merge of either begins its next with that report
- Should: start-work names a pull request on one of the two fixed branch names as the setup it is, the names being this workflow's own strings, or the two setup skills write into the body what the pull request is and start-work reads the body; recorded 2 October 2026, grep -n 'closes: -' docs/roadmap.md came back empty
- Found: Where each text devloop owes the person stays, goes into a pull request, an issue or a file, or drops, built after the decisions of the person of 17 October 2026: the introduction of `start-work`, the sentences that say why a question comes now in the wording approved that day, the last message of the run with nobody there in two groups, and the lines of the skills, the inserted texts and two hooks brought in line with the output style; 17 October 2026, version 0.143.0.
- Fix: none
- Status: Recorded, not built
- Note: a finding of the table until 2 November 2026, at `skills/start-work/SKILL.md` "- **`closes: -`** — it names no issue, so it does not say which work it"; the commit that wrote its row, 6793c5c, opened the entry under Found

### the sentence on services-up in setup-project does not say whether the target passes or fails where nothing has to run
- Wrong: the sentence says the target says so where nothing has to run and nothing says whether it then passes or fails, while the three placeholders beside it, check, test-one and fmt-write, are each said to fail and name what is not configured, and shared/canonical-targets.md names services-up without a word on what it does; the target is called by no hook and no skill, so what it does where nothing runs is the run's own choice at every setup
- Should: the sentence says whether services-up passes or fails where nothing has to run, as the three beside it do, or the shared table says what the target is for; recorded 2 October 2026, grep -n 'services-up' docs/roadmap.md finds the target listed in the entry of 1 October 2026 and nothing on this case
- Found: Four things an earlier order left undone: two places of the documents dated, the finding on `shared/cut-branch.md` given its history, and the findings of two reports of 1 October 2026 held against the table and the files; 2 October 2026, version 0.124.0.
- Fix: none
- Status: Recorded, not built
- Note: a finding of the table until 2 November 2026, at `skills/setup-project/SKILL.md` "`services-up` comes from the answer to question 4, and where nothing has to"; the commit that wrote its row, 3d6bc6a, opened the entry under Found

### the refresh of setup-project asked nothing anew, so a project without an install record on the main branch met the question on no path but the second asking in setup-checks step 8
- Wrong: the refresh of `setup-project` puts the install question where no record stands on the main branch, with the person there, and writes the record as step 6 does, `skills/setup-project/SKILL.md` lines 87 to 101 at `d1250d1`; its should since this entry, in place of finding 9's: the refresh puts every question of `setup-project` whose stored answer is missing on the main branch, as a first setup puts it, and none whose answer stands, today the install question; the old should of finding 9, quoted: "the refresh, reading a checks.md whose marker is older than 0.122.0, calls setup-checks whole with the person there, where step 5 is met, the way the entry of 1 October 2026 asks for step 5 alone". A stored answer with a value other than yes or no, which `bin/devloop-install-record` lines 50 to 54 answer with exit 1 and the cause "unknown value": named in the report, section 3 item 4, with two ways, and answered by the rules at the check before the merge, the paragraph after (h) below. Recorded, not built: `README.md` line 234 says that the question that writes the install record is put at setup, where since 20 October 2026 it is put at a refresh as well where no record stands on the main branch
- Should: the refresh puts every question of setup-project whose stored answer is missing on the main branch, as a first setup puts it, and none whose answer stands
- Found: Milestone 3, part 1, the install question, built as the person decided on 20 October 2026: the refresh of `setup-project` puts the install question where no record stands on the main branch and writes the record; no question of its step 4 carries a recommendation, the rule standing in `shared/how-to-ask.md`; the call of the install question stays alone, without a mechanism, for the reason that what needs weighing goes alone; the no of the install question names the exception of a package that downloads something when it is installed, in the wording approved that day; the bullet of `setup-project` for a blocked install with nobody there says the case cannot arise, and the insert of `shared/backed-command.md` goes; the person's decisions of that day on the clusters of the checked list recorded with what follows from the rules; four findings of the tool brought in as defects, three of them built and one closed, four defects closed as left on purpose and one as lapsed; 20 October 2026, version 0.152.0.
- Fix: `skills/setup-project/SKILL.md` "the one whose stored answer is missing on the main branch"
- Status: Built, never walked
- Note: finding 9 of the tool, recorded 2 October 2026 on skills/setup-project/SKILL.md line 84, moved into the roadmap entry of 20 October 2026 on milestone 3, part 1 and built there, version 0.152.0: the refresh puts the install question where no record stands on the main branch, with the person there, and writes the record as step 6 does; should since that entry: the refresh puts every question of setup-project whose stored answer is missing on the main branch, as a first setup puts it, and none whose answer stands; the old should quoted in the entry; a stored answer with a value other than yes or no answered at the check of that branch before the merge: nothing asked and nothing written over it, the program's cause said; until the audit of 23 October 2026 this note read that it was not decided, named in the report

### a devloop-setup branch with something written on it is switched to, and nothing says how what stands there is taken up
- Wrong: not stated
- Should: not stated
- Found: A program answers how far the setup of a project has got, `bin/devloop-setup-state`, read off the default branch as last fetched and never off the working tree; the places that read it off the tree read through it, the status line has three states, and the guards keep their directory test; 3 October 2026, version 0.125.0.
- Fix: none
- Status: Recorded, not built
- Note: the third case of shared/cut-branch.md, Taking up what stands there is not described here.; since 3 October 2026, version 0.125.0, a setup written and not landed is read as not set up by bin/devloop-setup-state, so the next run takes the first-setup path, asks the questions again and meets this case at the cut; the entry of 3 October 2026 names it; sited on the status line of the entry of 3 October 2026, the entry of 1 October 2026 naming it first at taking up what stands there is not built

### step 1 of setup-checks skips a type class where another class catches the errors, a rule two runs read opposite ways on one stack
- Wrong: step 1 skips a type class where the same errors are already caught by a tool another class runs, and the two attended runs of 30 September 2026 decided types opposite ways on the same stack under this line, filled with go build in devloop-test-t and skipped in devloop-test-s, which the entry of that date records under judged that differently; a rule two runs read opposite ways on one stack decides nothing, while step 6 of the same file demands Never guess for the Status column
- Should: the rule names what decides it, which tool of which filled class catches the type errors of this stack, so that two runs on one stack write the same cell, or the class is filled wherever the language has a type checker and the overlap goes into What these checks do not cover; recorded 3 October 2026, grep -n 'judged that differently' docs/roadmap.md finds the observation in the entry of 30 September 2026 and no should on it, the entry of 2 October 2026 calling it no rule; extended 4 October 2026: the two runs of 3 and 4 October 2026 under 0.126.0 decided it again, the Rust run in devloop-test-u on a second stack and a third reasoning, skipped: covered by lint, clippy compiles the crate and reports type errors, and the Go run in devloop-test-v skipped it on the reasoning of devloop-test-s, Go compiler type-checks on every build, and lint covers the rest; the entry of 4 October 2026 names it and writes no second record
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: none
- Status: Recorded, not built
- Note: a finding of the table until 2 November 2026, at `skills/setup-checks/SKILL.md` "**format, lint, types** — apply to any project with source code"; the commit that wrote its row, 5380134, opened the entry under Found

### the guard-block bullet of setup-project wrote the case with nobody there, an issue and a report, in a skill the unattended mode does not reach
- Wrong: the bullet of `setup-project` for a blocked install says the case with nobody there cannot arise here, `skills/setup-project/SKILL.md` lines 49 to 54 at `d1250d1`; its should as finding 11 had it, met by its second way: "the bullet names the case with them there alone, or says the case cannot arise here, as setup-checks does under With nobody there for its third route". Line 27167, the insert of `shared/backed-command.md` in `setup-project` whose only use went with the install handed over, its should the insert going or a line that hands a command over using it: Closed, lapsed: `skills/setup-project/SKILL.md` no longer carries "devloop-text backed-command". The closing names no commit, since the commit of this branch does not resolve on `main` after the squash merge, section D of the tool's header; the text stood in the file since `d713819` of 18 September 2026, `git log -S`. No line of the skill hands a command that fetches something over, read with `grep -n -i 'hand' skills/setup-project/SKILL.md`: `gh auth login` at line 195 fetches nothing, the merge handover is its own text, and the refresh question hands nothing over since nothing is installed in the setup. (f) Cluster 3, line 6266: Closed, left on purpose: decided in `docs/roadmap.md` at "The question does not say that a bare pip opens nothing under a yes.". Cluster 6, line 26220: its should since this entry is that what the second question needs stands in its fields, in the wording approved on 17 October 2026, and that nothing the decision needs stands only before the call, `output-styles/devloop.md` line 38 carrying the instruction; the old should, quoted: "what the mode question needs stands in its fields, in the wording approved on 17 October 2026, and the line before each second question in its question field, naming their no where the record says no, nothing as text before either call"; the walk of 19 October 2026 at records 496 and 497 of project z, lines 29807 to 29820, enters the defect's row as a run under 0.148.0 with this file as its source, by the rule of the answer to question 5, since that entry read the records for exactly this case; the run counts, the site line last changed at `89fb29a` of 16 October 2026 and the evidence line at `b24542a` of 17 October 2026, both before `3f810fd`, which introduced 0.148.0. Cluster 13, line 6442: Closed, left on purpose: decided in `docs/roadmap.md` at "not its output on stderr, on purpose". (g) `docs/plan.md` carries after its paragraph on the decision of 20 October 2026 under milestone 3, line 394, the dated sentence that the examination of the sandbox leaves the list the milestone stands on, with the decision of cluster 16. (h) Everything else above is recorded only.
- Should: not stated
- Found: Milestone 3, part 1, the install question, built as the person decided on 20 October 2026: the refresh of `setup-project` puts the install question where no record stands on the main branch and writes the record; no question of its step 4 carries a recommendation, the rule standing in `shared/how-to-ask.md`; the call of the install question stays alone, without a mechanism, for the reason that what needs weighing goes alone; the no of the install question names the exception of a package that downloads something when it is installed, in the wording approved that day; the bullet of `setup-project` for a blocked install with nobody there says the case cannot arise, and the insert of `shared/backed-command.md` goes; the person's decisions of that day on the clusters of the checked list recorded with what follows from the rules; four findings of the tool brought in as defects, three of them built and one closed, four defects closed as left on purpose and one as lapsed; 20 October 2026, version 0.152.0.
- Fix: `skills/setup-project/SKILL.md` "check setup decides. The case with nobody there cannot"
- Status: Built, never walked
- Note: finding 11 of the tool, recorded 2 October 2026 on skills/setup-project/SKILL.md line 50, moved into the roadmap entry of 20 October 2026 on milestone 3, part 1 and built there, version 0.152.0, by the should's second way: the bullet says the case cannot arise here

### setup-project step 8 fetched, fast-forwarded and switched once the merge was proven and described no path for a fetch or a fast-forward that fails, nor did setup-checks step 7 or build-work step 1
- Wrong: not stated
- Should: not stated
- Found: The status of a check class takes four forms and a guard holds the table to them, the unattended mode starts on two permissions more and is set up in `setup-checks` step 8 or through `--auto`, a state is read before a task is released, and a review finding about the table goes a third way; 5 October 2026, version 0.129.0.
- Fix: `skills/setup-project/SKILL.md` "branch cannot be brought to that state, and the check setup is not offered,"
- Status: Built, never walked
- Note: a finding row until 6 October 2026: step 8 fetches, fast-forwards and switches to the main branch once the merge is proven and describes no path for a fetch or a fast-forward that fails, while build-work step 6 says of its own fetch and fast-forward If that fails, say so and stop, and shared/command-does-not-answer.md, inserted here, reads an error as an answer and not as a missing one, so nothing covers it; the shared statement of 3 October 2026 for the four reading places does not belong here, since going on with the state as last fetched would go on without the setup, the check setup cutting its branch from a main branch that lacks it and the install guard reading no record — should: a fetch or a fast-forward that fails here is said with the command and git's message and the run stops before the close, as build-work step 6 does, and does not offer the check setup on top of it; recorded 3 October 2026, grep -n 'fast-forward\|fetch' docs/roadmap.md | grep -i should finds only the line on a command handed to the user that fetches something from outside, not this; the sentence came on 1 October 2026 under 0.122.0, not in this order; extended 6 October 2026: setup-checks step 7 fetches, fast-forwards and switches the same way since the addendum of that day, and says nothing of a fetch that fails either; extended 6 October 2026, second addendum: shared/cut-branch.md says since that day what a fetch, a switch or a fast-forward that fails before a fresh cut leads to, a stop with git's message and nothing cut on top of it, while step 8 here and step 7 of setup-checks still describe no path, and build-work step 1 fast-forwards a main branch only behind since the same day without saying what a fast-forward that fails leads to; repaired 6 October 2026 in the third addendum: the four places after a merge stop where the fetch fails on its third attempt or the fast-forward fails, with the opening for after a merge, setup-project offering the check setup no more than on a blocked merge, setup-checks step 7 not reaching step 8, step 8 of setup-checks cutting nothing more, and build-work step 1 stopping with the opening for before anything begins

### the half of the form rule that the widget call carries the install question alone had nothing that checks it, the repository reading no widget call
- Wrong: not stated
- Should: not stated
- Found: Milestone 3, part 1, the install question, built as the person decided on 20 October 2026: the refresh of `setup-project` puts the install question where no record stands on the main branch and writes the record; no question of its step 4 carries a recommendation, the rule standing in `shared/how-to-ask.md`; the call of the install question stays alone, without a mechanism, for the reason that what needs weighing goes alone; the no of the install question names the exception of a package that downloads something when it is installed, in the wording approved that day; the bullet of `setup-project` for a blocked install with nobody there says the case cannot arise, and the insert of `shared/backed-command.md` goes; the person's decisions of that day on the clusters of the checked list recorded with what follows from the rules; four findings of the tool brought in as defects, three of them built and one closed, four defects closed as left on purpose and one as lapsed; 20 October 2026, version 0.152.0.
- Fix: none
- Status: Closed, left on purpose: decided in `docs/roadmap.md` at "No mechanism holds it: a hook cannot tell the install question from another".
- Note: finding 12 of the tool, recorded 3 October 2026 on skills/setup-project/SKILL.md line 255, moved into the roadmap entry of 20 October 2026 on milestone 3, part 1 and closed there, left on purpose: the rule stays without a mechanism, a hook unable to tell the install question from another, the one mark it could read being one the run sets itself; the evidence on the closing line

### a review finding whose object is docs/agents/checks.md goes neither way of build-work step 4, and the run rewrote a skip reason itself
- Wrong: a review finding whose object is `docs/agents/checks.md` goes neither way of `build-work` step 4, and in `devloop-test-u` the run took the first and rewrote the `dependencies` reason itself; what should hold is that the prohibition of `shared/checks-owner.md` covers every cell of the table, reason cells included, and that step 4 carries a third destination for a finding whose object is that file — `setup-checks` for that class, which reads the install record — named together with the single-class route of `setup-checks` it runs through and changed together with the two ways `README.md` gives under "Review".
- Should: not stated
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: `shared/finding-on-check-table.md` "- **Hand it to the check setup** if its object is `docs/agents/checks.md` — a"
- Status: Built, never walked
- Note: found 4 October 2026 by the order recording the runs of 3 and 4 October 2026, in devloop-test-u under 0.126.0, read off commit 3af8a2d on the branch of pull request #14, eleven seconds after the review filed issue #13, both states of the dependencies row quoted in the entry; concerns skills/build-work/SKILL.md at Each finding goes one of two ways: and shared/checks-owner.md at **Do not edit `docs/agents/checks.md` yourself.**, inserted into step 3 of the same skill; that the run reported the rewrite among the fixes of the task is the order's account, the body of #14 not naming the commit; the second instance of the pattern of docs/roadmap.md / Known gaps / record-lessons writes into checks.md, which checks-owner.md forbids; named 4 October 2026 by the consistency audit of that day under the fifth of the five sentences of docs/plan.md: docs/roadmap.md / Known gaps / setup-checks step 9 sends a single-class call to the first piece of work instead of back to the build and docs/roadmap.md / Known gaps / the offer of the unattended mode is said to stand in a first setup while the single-class route meets step 8, both repaired 1 October 2026 and never walked, and README.md under Review at Obvious fixes are made; should: the prohibition covers every cell of the table, reason cells included, and step 4 carries a third destination for a finding whose object is that file, setup-checks for that class, which reads the install record, named together with the single-class route it runs through and changed together with the two ways README.md gives under Review; grep -n 'third destination\|reason cells\|stale skip reason' docs/roadmap.md, run before the entry was written, came back without a match; repaired 5 October 2026, version 0.129.0: a third way stands in shared/finding-on-check-table.md, inserted into build-work step 4 and review-changes, shared/checks-owner.md says the prohibition covers every cell, the reason beside skipped included, the single-class route of setup-checks names the call, and README.md under Review ends on the three

### the case of a class whose fill needs the person's say opens with There under With nobody there in setup-checks, which can be read as the whole route of an expired reason after a merge
- Wrong: under "With nobody there" in `setup-checks` the case of a class whose fill needs the person's say opens with "There", which can be read as the whole route of an expired reason after a merge rather than as the case where "Ask anyway" meets nobody to ask; what should hold is that the sentence names its case in its own words — a fill that would add to their manifest, or put on their machine what the install record does not allow — so that the route itself reads as step 2 has it, the class filled.
- Should: not stated
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: none
- Status: Closed, lapsed: `skills/setup-checks/SKILL.md` no longer carries "There the class stays", removed at `03c78af`.
- Note: found 4 October 2026 by the order recording the runs of 3 and 4 October 2026, in devloop-test-u under 0.126.0, rewritten the same day by the order correcting that entry, and corrected the same day by the consistency audit: read with the condition standing before it, setup-checks under With nobody there gives one answer, There standing behind where Ask anyway in step 2 can meet nobody to ask and the issue it names carrying the two things Ask anyway reaches, a dependency in their manifest and an install the record does not allow, so the claim of four places disagreeing and the should that the answer turns on the install record fall and what is left is the word There; concerns skills/setup-checks/SKILL.md under With nobody there at There the class stays as it is, and step 2 at **Ask anyway where filling it changes their project rather than this workflow's; the class went unfilled in devloop-test-u for docs/roadmap.md / Known gaps / a review finding whose object is docs/agents/checks.md goes neither way of build-work step 4, and the run rewrote a skip reason itself and docs/roadmap.md / Known gaps / a run that is not setup-checks rewrote a skipped cell's reason, removing the trigger build-work step 6 reads, and nothing tells a reason that expires from one the person decided, not for this; should: the sentence names its case in its own words, a fill that would add to their manifest or put on their machine what the install record does not allow, so that the route itself reads as step 2 has it, the class filled; grep -n 'There the class stays' docs/roadmap.md, run for the correction, found this entry alone; repaired 5 October 2026, version 0.129.0: the sentence and its case are gone: no reason is read again after a merge, a state is read before the task is released, and with nobody there both records say yes, so a fill needing their say does not meet nobody; the paragraph under With nobody there says so; closed 20 October 2026 as lapsed, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### plan-work stops with nobody there where a draft fails an item of the list it was drafted against, where a second drafting round and a named pair of items that cannot both hold should decide instead
- Wrong: where a draft fails an item of the list it was drafted against, `plan-work` stops with nobody there; what should hold, changed together with the line of Stage 3 letting the person knowingly take a draft that failed an item, the line of its checking step that no agent decides what follows from a failed item, and the cost of the mode said in Stage 1, as the fifth of the five sentences of `docs/plan.md` requires, is that the stop falls away and the text says instead:
- Should: not stated
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: none
- Status: Recorded, not built
- Note: found 4 October 2026 by the order recording the runs of 3 and 4 October 2026, in devloop-test-u under 0.126.0, rewritten the same day by the order correcting that entry, and its should corrected the same day again: a return to where Stage 1 settled the item is the same stop, since plan-work says Stage 1 stays with the user, and a should without a hurdle leaves a run free to call an item unsatisfiable rather than draft again; there is a written rule and the run followed it, and the rule is what is wrong; that the person was not there is the order's account, the stop read off the Stage 3 comment of issue #5 and the amendment of story 4 in its body; concerns skills/plan-work/SKILL.md under With nobody there at a design choice where the check leaves nothing standing, or takes away the draft the comparison recommended, and the second place deciding the same, Stage 3 at they may still choose a draft that failed an item, Stage 3's line for the case alone going with the first; nearest: docs/roadmap.md / Known gaps / when the recommended draft falls, who chooses among the survivors and what happens when all fall is not decided, and docs/roadmap.md / Known gaps / the recommended draft was revised three times alone where plan-work says the run stops, and no sentence provides for a revision round, this run the second measurement of that case; the form of an ending: docs/roadmap.md / Known gaps / no line says that an unattended run which ends says so in its own message and never through the question widget; should: the stop falls away, one draft failing while others pass runs its drafting agent again with the failed items named until a draft carries them, every draft failing the same item gets a second drafting round given that item and the verdicts against it, only a second failure on the same item lets an agent that has not drafted hold the item against the other items and name the two that cannot both hold, with that pair named the part hanging on the item is cut out of the scope and filed as an issue carrying both names while the rest is planned and built, the run never goes back to the person in the middle and ends, as a report, only where the named pair takes the whole of the work, nothing being left to cut out, at a place of its own in the list under Unattended mode of build-work, and the line letting the person knowingly take a draft that failed an item, the line of the checking step that no agent decides what follows from a failed item, and the cost of the mode said in Stage 1 change in the same change, as the fifth of the five sentences of docs/plan.md requires; grep -n 'own draft\|drafts again\|absent person' docs/roadmap.md, run before the first version of the entry, and grep -n 'knowingly\|drafted against' docs/roadmap.md, run before the rewrite, came back without a match; corrected 4 October 2026 by the consistency audit of that day: settled with docs/roadmap.md / Known gaps / two sentences write what a run with nobody there does in cases the unattended mode cannot reach, the two triggers different and neither sentence taking the other's case, the ending where the named pair takes the whole of the work given a place of its own, the line on going back to where the item was settled dropped since Stage 1 stays with the person, and two places named under the fifth sentence, Stage 3 at A draft that fails an item is recorded as failing it and Stage 1 at where no draft carries the stories the run stops rather than guessing

### no sentence of the set says that a question about how this workflow runs carries no recommendation, whatever the command behind it touches
- Wrong: no sentence of the set says that a question about how this workflow runs carries no recommendation, and by this order's account both October runs attached one to such a question; what should hold is that a question carries a recommendation only where the person is deciding about the product being built; that a question about how this workflow runs — the install permission, auto-merge, the unattended mode, which tool a check class is built on — carries none, whatever the command behind it touches, a question being put only where the answer changes their machine, their repository's settings, their project's dependencies or how they want to be worked with, while this workflow's own convention is created and reported and not asked; that this stands in `shared/how-to-ask.md`, the block on asking, beside its sentence on a convention of this workflow; and that the opening of `setup-project` step 4 says which of its questions carry a recommendation and `setup-checks` step 8 gives none on any project, both in the same change.
- Should: not stated
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: `shared/how-to-ask.md` "question about how this workflow runs — the install permission, auto-merge,"
- Status: Walked
- Note: found 4 October 2026 by the order recording the runs of 3 and 4 October 2026, both runs under 0.126.0, the recommendations the order's account, rewritten the same day by the order correcting that entry, which dropped the argument that the question about fetching the secrets scanner reaches nothing past the project: the Go module cache lies outside the repository, read with go env GOMODCACHE on this machine, so the criterion of finding H of 30 September 2026 would have covered it too; concerns shared/how-to-ask.md at A recommendation attached to a question with no second sensible answer; nearest: docs/roadmap.md / Known gaps / question 2 of setup-project step 4 leads with a recommendation to switch auto-merge on, under the opening line of the step, while question 4 and the offer of the mode give none, whose effect on question 2 stays, since auto-merge is a question about the workflow either way, and whose reason, the questions reaching past the project, this replaces, H rewritten in the same change since its should carries that reason; corrected 4 October 2026 by the consistency audit of that day, which named three places under the fifth sentence, skills/setup-project/SKILL.md at Lead with your recommendation so a single word can answer, skills/setup-checks/SKILL.md at **Do not recommend a yes on a first project.**, and shared/how-to-ask.md at What is a convention of this workflow is not theirs to decide either, and the boundary between a question and a convention; decided the same day: no marking of each question and no hook refusing a question by its recommendation, the repair of docs/roadmap.md / Known gaps / the check for an either-or question does not find the labels question of setup-project taken instead; should: a question carries a recommendation only where the person is deciding about the product being built, a question about how this workflow runs, the install permission, auto-merge, the unattended mode, which tool a check class is built on, carries none whatever the command behind it touches, a question being put only where the answer changes their machine, their repository's settings, their project's dependencies or how they want to be worked with while this workflow's own convention is created and reported, that standing in shared/how-to-ask.md beside its sentence on a convention, the opening of setup-project step 4 saying which of its questions carry one and setup-checks step 8 giving none on any project; grep -n 'how the workflow runs\|carries no recommendation\|secrets scanner' docs/roadmap.md, run before the first version of the entry, came back without a match; built 16 October 2026, version 0.140.0, point 10, answered for question 2 alone and not as a rule, as that point says of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026; evidence re-anchored 17 October 2026, version 0.142.0, the line replaced by the order of that day, which names the field of the recommendation; evidence back on the status line on 19 October 2026 by the entry of that date on the list of the defects that concern milestone 3 checked point by point: skills/setup-project/SKILL.md line 234 gives questions 1, 4 and 5 a recommendation and carries no rule on a question about the workflow, so the line carried the should in part only - built is the opening of step 4 saying which questions carry a recommendation, lines 234 to 236, not built the rule in shared/how-to-ask.md that a question carries one only where the person decides about the product, and the reason at line 237; built 20 October 2026, version 0.152.0, by the roadmap entry of 20 October 2026 on milestone 3, part 1: the rule stands in shared/how-to-ask.md beside the sentence on a convention of this workflow, the opening of setup-project step 4 says no question of the step carries a recommendation, and setup-checks step 8 gave none already; the evidence on the rule's line

### a gh call whose title is several unquoted words hangs waiting for input, and a hung command ends a run with nobody there
- Wrong: a `gh` call whose title is several unquoted words hangs waiting for input, and `shared/body-through-file.md` keeps the title on the command line without saying how; what should hold is that the text says the title travels as one quoted argument and that the call takes its input from `/dev/null`, so that a call that waits for input fails instead of hanging, and that the sentence of `docs/skill-conventions.md` under "And a narrowing names every channel" is bounded to the guard in the same change.
- Should: not stated
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: none
- Status: Recorded, not built
- Note: found 4 October 2026 by the order recording the runs of 3 and 4 October 2026, under 0.126.0, the hang, the 120 seconds and the later < /dev/null the order's account, nothing of it in either repository; concerns shared/body-through-file.md at has no `--title-file`; named 4 October 2026 by the consistency audit of that day under the fifth sentence: docs/skill-conventions.md under And a narrowing names every channel at the rule is about what the text says rather than about how it travels, recorded as docs/roadmap.md / Known gaps / a sentence of the conventions says a title's rule is about what the text says and not how it travels, unbounded; its premise recorded as docs/roadmap.md / Known gaps / the premise of the defect on a hanging gh call is a claim about the platform with no evidence behind it; should: the text says the title travels as one quoted argument and the call takes its input from /dev/null, so that a call that waits for input fails instead of hanging, and the conventions sentence is bounded to the guard in the same change; grep -n 'unquoted\|120 seconds\|title as one' docs/roadmap.md, run before the entry was written, came back without a match; since 7 October 2026 a vendor's line stands behind the moving to the background and the 120 seconds, the changelog of Claude Code quoted under Environment constraints, measured in docs/skill-conventions.md, the hang and its ending a run on the account alone still

### body-through-file names no place for the body file, and both runs wrote it inside .git/
- Wrong: `shared/body-through-file.md` names no place for the body file, and both runs wrote it inside `.git/`; what should hold is that the text names the place, outside `.git/` and outside the tree the commit is built from.
- Should: not stated
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: `shared/body-through-file.md` "**The file lies outside the repository.** It goes into a directory `mktemp"
- Status: Walked
- Note: found 4 October 2026 by the order recording the runs of 3 and 4 October 2026, under 0.126.0, the place the order's account; concerns shared/body-through-file.md at **A body this run writes goes through a file, not through the command line.**; should: the text names the place, outside .git/ and outside the tree the commit is built from; grep -n -F -e 'body file' -e '.git/' docs/roadmap.md, run before the entry was written, came back without a match; built 16 October 2026, version 0.140.0, point 17 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### the red proof of the secrets class needs a break that looks like a real key, and nothing keeps that break out of the index
- Wrong: the red proof of the secrets class needs a break that looks like a real key, and nothing in step 5 of `setup-checks` keeps that break out of the index; what should hold is that step 5 says the break of the secrets class stands in an untracked file and never enters the index, and that the run queries the index after restoring.
- Should: not stated
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: `skills/setup-checks/SKILL.md` "**The break of the secrets class stands in an untracked file and never"
- Status: Built, never walked
- Note: found 4 October 2026 by the order recording the runs of 3 and 4 October 2026, in devloop-test-v under 0.126.0, the break read off the body of pull request #2, the failed git reset and the intent-to-add entry the order's account, the one commit of the branch carrying Makefile and docs/agents/checks.md alone; concerns skills/setup-checks/SKILL.md at can fail: break something on purpose, watch it go red, put it back.; should: step 5 says the break of the secrets class stands in an untracked file and never enters the index, and the run queries the index after restoring; grep -n 'intent-to-add\|looks like a real key\|untracked file' docs/roadmap.md, run before the entry was written, came back without a match; built 16 October 2026, version 0.140.0, point 16 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### the install record does not spell what the conventions decided for a fetch into a language's own cache, and a second question under a record saying no asked a permission that counts for nothing
- Wrong: the install record does not spell what `docs/skill-conventions.md` decided under "It does not cover tools", that what a wrapper downloads on first use lands under the one permission asked at setup, and in `devloop-test-v`, by this order's account, a second question under a record saying no asked a permission that counts for nothing; what should hold is that the record spells the case, its key list under "The install guard reads a record" gaining the line, that the question at setup says it in the same words, and that no run asks a second permission, the record's answer being the only one.
- Should: not stated
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: none
- Status: Closed, left on purpose: decided in `docs/roadmap.md` at "Defect 8 of the entry of 4 October 2026, answered otherwise than its".
- Note: found 4 October 2026 by the order recording the runs of 3 and 4 October 2026, in devloop-test-v under 0.126.0, the separate question and its yes the order's account, the command read off the Makefile of the open pull request #2, go run of gitleaks at v8.30.1, which the install guard passes without reading the record, fed on 4 October 2026; corrected the same day by the consistency audit: docs/skill-conventions.md decided the case under It does not cover tools, whatever a wrapper downloads on first use landing under the one permission asked at setup and nothing else counting as that permission, so the whether falls and two things are left, the record not spelling it and a second permission asked that counts for nothing; concerns skills/setup-project/SKILL.md under Step 6, the install-tools, install-place and install-route lines, and the key list of docs/skill-conventions.md under The install guard reads a record, the place that would gain a line; places named under the fifth sentence: docs/plan.md under Where the set ends at lands there under the person's explicit permission only, and docs/skill-conventions.md under A named install command may enter the verb list at whose download is a side effect; should: the record spells the case, its key list gaining the line, the question at setup says it in the same words, and no run asks a second permission; grep -n 'own cache\|module cache\|go run' docs/roadmap.md, run before the entry was written, came back without a match, the decision standing in the conventions, which it did not read; answered otherwise than its should on 8 October 2026, version 0.131.0: no line enters the record and the question keeps its words, the guard reading the record's existing answer for the fetch-and-run forms it reads since that day, go run with a version suffix among them, and shared/fetch-and-run.md saying that such a form counts as an install and that no second permission is asked, the record's answer being the only one; answered so because held against the places the forms would block under every answer, which both or neither rules out, and a line in the record would answer for a place no form lands in; the Makefile case itself stays covered by the rule alone, the form standing in a file and not in the command; closed 20 October 2026 as left on purpose, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### the auto-merge question says what a no costs and not that a yes still leaves the first pull request to be merged by hand
- Wrong: the auto-merge question says what a no costs and not that a yes still leaves the first pull request to be merged by hand; what should hold is that the question says, at the moment of asking, that a yes still leaves the first pull request to be merged by hand, because the gate it waits on does not exist until the check suite does.
- Should: not stated
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: `skills/setup-project/SKILL.md` "Where no gate stands, the question is not put. GitHub accepts no auto-merge"
- Status: Built, never walked
- Note: found 4 October 2026 by the order recording the runs of 3 and 4 October 2026, in devloop-test-v under 0.126.0, read off the platform: auto-merge on, pull request #1 merged by the account with no auto-merge request on it, #2 open with none and no gate; the same in devloop-test-u, #1 to #3 merged by hand before the required check stood; concerns skills/setup-project/SKILL.md at Say what a no costs, at the moment of asking; another defect than the recommendation on the same question, finding H of 30 September 2026; should: the question says, at the moment of asking, that a yes still leaves the first pull request to be merged by hand, because the gate it waits on does not exist until the check suite does; grep -n 'still leaves\|merged by hand\|what a yes still' docs/roadmap.md, run before the entry was written, came back without a match; built 16 October 2026, version 0.140.0, point 10 as revised on 16 October 2026: the question is not put where no gate stands, so the case this defect described no longer arises of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### question 5 of setup-project asks about this workflow's own labels, against the rule of how-to-ask that a convention of this workflow is created and reported
- Wrong: question 5 of `setup-project` step 4 asks about this workflow's own labels, against the rule of `shared/how-to-ask.md`, inserted into the same skill, that a convention of this workflow gets created and reported, and its two answers are not a decision; what should hold is that question 5 goes, this workflow's labels created and reported and not asked about, and that where the tracker has labels of overlapping meaning, that is said in the report.
- Should: not stated
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: `skills/setup-project/SKILL.md` "Create all seven in the tracker as part of this step, in every setup, whatever"
- Status: Built, never walked
- Note: found 4 October 2026 by the order recording the runs of 3 and 4 October 2026, both projects carrying GitHub's ten defaults beside the seven, read off the platform, whether question 5 was put not in either repository; corrected the same day by the consistency audit: a breach of a rule that stands and not a missing sentence, shared/how-to-ask.md, inserted into setup-project, saying What is a convention of this workflow is not theirs to decide either; it gets created and reported, dated with git log -S to 9d7a784 of 17 August 2026 in setup-project itself, fcd0ce9 of pull request #59 on 22 August 2026 and ca0ff3a of pull request #123 on 18 September 2026; concerns skills/setup-project/SKILL.md at **Labels** — only if the tracker already has labels with overlapping meaning.; the recorded defects on the same question, docs/roadmap.md / Known gaps / the run of 30 September 2026 spoke of our labels to the person, and question 6 of setup-project step 4 says add ours alongside, and docs/roadmap.md / Known gaps / step 2 of setup-project reports that the repository carries none of this workflow's labels, which holds for every repository before its setup and changes nothing, building either first writing text this one deletes, the order between them settled when they are built; should: question 5 goes, this workflow's labels created and reported and not asked about, and where the tracker has labels of overlapping meaning, that is said in the report; grep -n 'should exist at all\|not asked about\|created and reported' docs/roadmap.md, run before the entry was written, came back without a match, the rule standing in shared/, which it did not read; since 12 October 2026 question 5 goes, the seven labels are always created and reported with the approved sentence, and the half of the should that names overlapping labels in the report falls, point 9 of part B of the entry of 12 October 2026 on the decisions; built 16 October 2026, version 0.140.0, point 9 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### a run that is not setup-checks rewrote a skipped cell's reason, removing the trigger build-work step 6 reads, and nothing tells a reason that expires from one the person decided
- Wrong: a run that is not `setup-checks` rewrote a skipped cell's reason in `devloop-test-u` and so removed the trigger `build-work` step 6 reads, and nothing tells a reason that expires from one the person decided; what should hold, changed together with steps 1 and 2 of `setup-checks`, is two things. Every skipped reason carries one of two forms, one naming what makes it expire and one naming that the person decided it, and the re-read after a merge looks for the first and never puts the second back. And a hook refuses a write that leaves a reason in neither form, while a target in the project's own check suite finds one that got in another way.
- Should: not stated
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: `hooks/pre-tool-use-table-guard.sh` "Commit refused: docs/agents/checks.md has a status in no allowed form: $LIST."
- Status: Built, never walked
- Note: found 4 October 2026 by the order correcting the entry of that date, in devloop-test-u under 0.126.0, read through gh: the dependencies cell and its line under What these checks do not cover named a state, no third-party crates yet, with its expiry beside it, on main after the merge of #2 at c4c71fa, and commit 3af8a2d on the branch of #14 made them name issue 13 and no state, which main carried after the merges of #14 and #17 until #18 filled the row; concerns skills/build-work/SKILL.md step 6 at Nothing else ever reads those reasons; the review finding that led to the rewrite is docs/roadmap.md / Known gaps / a review finding whose object is docs/agents/checks.md goes neither way of build-work step 4, and the run rewrote a skip reason itself; corrected 4 October 2026 by the consistency audit of that day: the second half of the first should, step 6 reading the state of the project rather than the reason, falls, since setup-checks step 2, as decided on 1 October 2026, puts a class the person declined into the cell as skipped with their reason and reads it again after a merge like any reason, and asking again hands back a decision they already made; the owner sentence is a rule on the run and not a guard, no hook telling which skill runs; places named under the fifth sentence: setup-checks step 1 at A reason that will expire is still a reason and step 2 at named as theirs, and is read again after a merge like any reason, and the rule on the Status column in docs/skill-conventions.md, recorded as docs/roadmap.md / Known gaps / the rule of the conventions on the Status column of checks.md spells one shape for a reason that expires and one the person decided; should: every skipped reason carries one of two forms, one naming what makes it expire and one naming that the person decided it, the re-read after a merge looking for the first and never putting the second back, and a hook refuses a write leaving a reason in neither form while a target in the project's own check suite finds one that got in another way; grep -n 'written only by\|state of the project against' docs/roadmap.md, run before the defect was written, came back without a match; repaired 5 October 2026, version 0.129.0: the two forms skipped (state) and skipped (user) stand in shared/status-forms.md and in steps 1, 2 and 6 of setup-checks, the reading before the release looks for the first and never changes the second without the person, and a guard refuses a commit while a cell carries neither form; built otherwise than the should asked in two respects, the commit refused and not the write, and no target in the project's own check chain, the entry of 5 October 2026 saying why

### a task's own text instructed the run to fill checks.md directly, and neither the skill writing the spec nor the one cutting the tasks forbids such an instruction
- Wrong: a task's own text in `devloop-test-u` instructed the run to fill `docs/agents/checks.md` directly, and neither the skill that writes the spec nor the one that cuts the tasks says that a task may not; what should hold is that `plan-work` and `cut-into-tasks` say that no task instructs a write to a file another skill owns, and name `checks.md` as one, so that the instruction cannot be written in the first place.
- Should: not stated
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: `skills/cut-into-tasks/SKILL.md` "`docs/agents/checks.md`: only the check setup writes that file, and a class"
- Status: Built, never walked
- Note: found 4 October 2026 by the order correcting the entry of that date, in devloop-test-u under 0.126.0, read through gh: task #6 says Fill the unit class in docs/agents/checks.md, and make sure make check runs it, and commit 0990164 on the branch of #14 filled the unit row; concerns shared/checks-owner.md at **Do not edit `docs/agents/checks.md` yourself.**, skills/cut-into-tasks/SKILL.md, where grep -n 'checks.md' comes back empty, and skills/plan-work/SKILL.md, where it finds the file at the reading of the classes and at the Missing checks item, neither saying who may write it; should: plan-work and cut-into-tasks say that no task instructs a write to a file another skill owns, and name checks.md as one, so that the instruction cannot be written in the first place; grep -n 'another skill owns\|instructs a write\|Fill the unit class' docs/roadmap.md, run before the defect was written, came back without a match; repaired 5 October 2026, version 0.129.0: cut-into-tasks says that a task never says to write the file, and the Missing checks item of plan-work that a class is filled by setup-checks and never by a task as work of its own

### diagnose-bug and review-changes are reached by the unattended mode and carry neither a section for the case nor the rules on asking
- Wrong: `diagnose-bug` and `review-changes` are reached by the unattended mode and carry no section for the case, and neither inserts `shared/how-to-ask.md`; `review-changes` runs on every task, so by conclusion and not by measurement a review that meets a question ends the run; what should hold, beside the two defects of 23 September 2026 on `diagnose-bug` and narrowing their should, is that both carry a section for the case, in the words of their own work, as `docs/skill-conventions.md` requires under "A hook that says "hand this to a person" assumes there is one", that neither ends a run over a question, and that the fallback sentence of `shared/how-to-ask.md` then covers no skill the mode reaches, which that text says where it stands.
- Should: not stated
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: none
- Status: Recorded, not built
- Note: found 4 October 2026 by the order correcting the entry of that date, holding the reached set this tool prints, seven skills, against grep -l '^## With nobody there' skills/*/SKILL.md, five files, neither of the two inserting shared/how-to-ask.md; concerns shared/how-to-ask.md at A skill without such a section has no unattended path, and skills/build-work/SKILL.md step 4, from which review-changes is reached on every task; a different defect from the finding on setup-project at With nobody there, there is no one to ask: it becomes an issue, since the mode does not reach setup-project; corrected 4 October 2026 by the consistency audit of that day: the empty search is the wrap of the paragraphs, two defects of 23 September 2026 naming diagnose-bug already, docs/roadmap.md / Known gaps / a missing control document in diagnose-bug is handed to the user and nothing says what a run with nobody there does and docs/roadmap.md / Known gaps / diagnose-bug step 6 waits for a person and nothing says what a run with nobody there does, which this stands beside, narrowing their should to a section of each skill's own; grep -c 'how-to-ask' skills/review-changes/SKILL.md skills/diagnose-bug/SKILL.md answers 0 for both; docs/skill-conventions.md requires the section under A hook that says hand this to a person assumes there is one; that a review meeting a question ends the run is concluded, not measured; should: both skills carry a section for the case in the words of their own work, neither ends a run over a question, and the fallback sentence of shared/how-to-ask.md then covers no skill the mode reaches, which that text says where it stands; grep -n -i 'without such a section\|has no section\|carries no section\|no section of its own\|no such section' docs/roadmap.md and grep -n 'diagnose-bug' docs/roadmap.md | grep -i 'section\|unattended\|nobody', run before the defect was written, came back without a match

### two sentences write what a run with nobody there does in cases the unattended mode cannot reach
- Wrong: two sentences write what a run with nobody there does where the mode cannot arrive, the `secrets` exception under a guard's block in `setup-checks` and the stop of `plan-work` where the whole of the work hangs on one question; what should hold is that the first says this case arrives only with the person there, or goes, and that the second goes unless a real case is named, the three steps of the order above it standing as covering every case until one is.
- Should: not stated
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: none
- Status: Closed, left on purpose: decided in `docs/roadmap.md` at "The sentence that the run stops at `secrets` with".
- Note: found 4 October 2026 by the order correcting the entry of that date, one status line for the pair; concerns skills/setup-checks/SKILL.md at `secrets` is the exception it always is, held against condition 1 of Unattended mode in skills/build-work/SKILL.md, No class in checks.md is empty, so that class is filled before an unattended run starts, and skills/plan-work/SKILL.md at Where the whole of the work hangs on the question and no option is less committing, where four things have to hold at once and no entry and no run has named a case; should: the first sentence says this case arrives only with the person there, or goes, and the second goes unless a real case is named, the three steps of the order above it standing as covering every case until one is; grep -n 'exception it always is' docs/roadmap.md and grep -n 'whole of the work hangs' docs/roadmap.md, run before the defect was written, came back without a match; settled 4 October 2026 by the consistency audit of that day with docs/roadmap.md / Known gaps / plan-work stops with nobody there where a draft fails an item of the list it was drafted against, where a second drafting round and a named pair of items that cannot both hold should decide instead: the two triggers differ and neither sentence takes the other's case, the drafts route ending where the pair it names takes the whole of the work at a place of its own, the stop here staying as this defect has it; since 6 October 2026 the first case exists: through the third way a run with nobody there reaches setup-checks for secrets, through a finding about its row, and the sentence stays, the addendum of 6 October 2026 to the entry of 5 October 2026 saying so; closed 20 October 2026 as left on purpose, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### no line says that an unattended run which ends says so in its own message and never through the question widget
- Wrong: no line says the form in which an unattended run that ends says so, and by this order's account a run ended through the question widget, which is a wait; what should hold is that `build-work` step 6 and the list under `## Unattended mode` that collects where the mark is deleted say that an unattended run that ends says it in its own message — what is finished, what it was held on, what the person has to do — and never through the question widget, and that a hook refuses the question tool while the mark stands with this run's commit, never on a mark another run left.
- Should: not stated
- Found: The two runs of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there: the record saying yes in `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read against a landed record under both answers, the install with nobody there not reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.
- Fix: none
- Status: Recorded, not built
- Note: found 4 October 2026 by the order correcting the entry of that date, the run ending through the question widget the order's account and in neither repository; corrected the same day by the consistency audit: the sentence of setup-checks it named, Three rounds against the same failing checks, stands in step 8 in what is said to the person and ends no run, and the place is build-work step 6 and the list under Unattended mode; concerns skills/build-work/SKILL.md step 6 at **Three rounds on the same signature is standstill**, at A refusal there is a stop with the reason named, and at running out there is a stop with the reason named, the list under Unattended mode at **And where the mark is deleted**, and skills/plan-work/SKILL.md at A stop with a reason is allowed; a wait for a person is not; a hook refusing the question tool while the mark .claude/unattended.local stands with this run's commit needs no marking of questions, and must not block a question with the person there on a mark another run left, shared/mark.md at A mark carrying any other commit is another run's; should: build-work step 6 and that list say that an unattended run that ends says it in its own message, what is finished, what it was held on, what the person has to do, and never through the question widget, and a hook refuses the question tool while the mark stands with this run's commit; grep -n 'wait for a person' docs/roadmap.md, run before the defect was written, came back without a match, and grep -n 'stop with a reason' docs/roadmap.md found two lines, both on a standstill in the middle of a task; since 7 October 2026, by the order of the consistency audit of that day, the order for this defect also decides what a run with nobody there does at the halts the third addendum of 6 October 2026 to the entry of 5 October 2026 left not built and not a finding - build-work step 1 on a fetch or a fast-forward that fails and on commits of its own on the local main branch, step 6 after a merge and at BEHIND - together with the handovers the table carries with the words nothing says what a run with nobody there does, seven things on 7 October 2026, one of them repaired on 28 September 2026; the proposal of the report of that addendum is the starting point there and not decided: the halt names its reason in the run's own message, the mark is deleted, and the list of deletion sites in build-work names these halts

### no shared text says how the mark is deleted, and build-work, plan-work and cut-into-tasks word it each in their own way
- Wrong: no shared text says how the mark is deleted, and `build-work`, `plan-work` and `cut-into-tasks` word it each in their own way, so no one search finds every ending without a person; what should hold is that one shared text says it, inserted at each place the unattended part ends, and that it replaces the wording of those places rather than standing beside it, since a line a skill keeps word for word is what the copy check prints.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: `shared/mark-deletion.md` "**The mark goes with a shell command**, and nothing is said of it where it"
- Status: Built, never walked
- Note: found 4 October 2026 by the consistency audit of that day; concerns skills/build-work/SKILL.md at **And where the mark is deleted** and its sites, skills/cut-into-tasks/SKILL.md at Then delete the mark with a shell command, say that you did, and stop., and skills/plan-work/SKILL.md at the mark deleted and at It is deleted wherever the unattended part ends, beside shared/mark-command.md for the creation; setup-checks and setup-project hold no ending that deletes the mark, setup-project naming unattended.local once, in step 5; the copy check under Before a handover, run these, measured with a scratch file read beside shared/*.md: a text written fresh printed nothing, one put together from the lines of cut-into-tasks and build-work printed both; should: one shared text says how the mark is deleted, inserted at each place the unattended part ends, replacing the wording there rather than standing beside it; searched across the lines of Known gaps for delete[sd]? (the|its|a|such a) mark|mark (is |was )?deleted|mark left standing and for where the mark is deleted|creation and deletion|deleting the mark|mark-command, nothing on its wording; built 16 October 2026, version 0.141.0, point 24 of part B of the roadmap entry of 12 October 2026 on the decisions: shared/mark-deletion.md, inserted in build-work at the rule for every stop with a reason, at the standstill of step 6 and at the finishing sentence, in plan-work at its stop and in cut-into-tasks at the halt; the roadmap entry of 16 October 2026 on planning and building

### the list in build-work of where the mark is deleted misses the stops of plan-work
- Wrong: the list under `## Unattended mode` in `build-work` that collects where the mark is deleted misses the stops of `plan-work` under "With nobody there", which delete it where they stand; what should hold is that the list names them, and the ending of defect 3 of the entry beside this one where nothing is left to cut out, at a place of its own.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: `skills/build-work/SKILL.md` "build: where the whole of the work hangs on a question and"
- Status: Built, never walked
- Note: found 4 October 2026 by the consistency audit of that day; concerns skills/build-work/SKILL.md under Unattended mode at **And where the mark is deleted**, so that creation and deletion stand in one place, against skills/plan-work/SKILL.md under With nobody there at the run stops, with the question named, the mark deleted and under The mark. at a stop with a reason; should: the list names the stops of plan-work, and the ending of docs/roadmap.md / Known gaps / plan-work stops with nobody there where a draft fails an item of the list it was drafted against, where a second drafting round and a named pair of items that cannot both hold should decide instead where nothing is left to cut out, at a place of its own; searched as for docs/roadmap.md / Known gaps / no shared text says how the mark is deleted, and build-work, plan-work and cut-into-tasks word it each in their own way; built 16 October 2026, version 0.141.0, point 24 of part B of the roadmap entry of 12 October 2026 on the decisions: the list names the three stops of plan-work and the ending of the drafts route, which stands in plan-work as the stop at the design choice today and not yet as the second drafting round

### the table holds no thing for an install with nobody there under a yes that succeeds, so the open half of milestone 3 was invisible in the tool
- Wrong: `docs/stock-take.tsv` holds no thing for an install that runs with nobody there under a yes on record and succeeds, the thing for the case without a person carrying only its two blocks and the two things for the yes bundling both halves, so the open half of milestone 3 was invisible in the tool; what should hold is a thing of its own, "the install runs with nobody there under a yes on record and the tool stands at the path", sited on the line of `build-work` step 3 point 7 that says it, and the outcome of `setup-project` that names both halves split the same way, so that a run with the person there walks only its own half.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: `shared/install-tool.md` "user there and with nobody there, without asking again, with ten minutes"
- Status: Built, never walked
- Note: found 4 October 2026 by the consistency audit of that day; concerns docs/stock-take.tsv at build-work / Step 3 — Build it / install with nobody there: the record says yes, the mode not starting otherwise, what the guard blocks under it a block and not a decline, which carries only the two blocks, and the two things bundling both halves of the yes, build-work / Step 3 — Build it / install under a record saying yes and setup-project / Step 4 — Questions / yes to the install permission, the second read as walked off the run of 3 October 2026 with the person there; skills/build-work/SKILL.md step 3 point 7 carries the line user there and with nobody there, without asking again; the guard passes it, named by no record and standing once in the file; should: a thing of its own, the install runs with nobody there under a yes on record and the tool stands at the path, sited on that line, and the outcome of setup-project naming both halves split the same way; the names of the things of the table holding nobody there and install, nine, read one by one, none the success; mended 9 October 2026, version 0.133.0, decision 7: the thing build-work / Step 3 — Build it / install with nobody there under a yes that goes through stands in the table on that line

### the rule keeping runtimes out of the install question was delivered as an assurance a fifth time in five runs, and a rewording is spent
- Wrong: the rule of `setup-project` step 4 that the leak is said and the assurance on runtimes is not, built on 3 October 2026, was delivered as an assurance again in the yes run of that day, by the account of the order that recorded it, the fifth time in five runs, and the table shows the repair as never walked; what should hold is that no further wording is taken as the repair, and that a mechanism at the question tool holds it or the rule goes, the choice of mechanism open and its first measurement the one the finding on `setup-project` at "question and no other" names.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: `shared/install-question.md` "nothing of it is said. And the first no"
- Status: Built, never walked
- Note: found 4 October 2026 by the consistency audit of that day, off the entry on the two October runs, which gives the fifth delivery as the account of the order that recorded the runs and writes no record; concerns skills/setup-project/SKILL.md at so the leak is said and the assurance is not, and docs/roadmap.md / Known gaps / the repair of point 3 of question 4 made on 30 September 2026 did not hold in either run of that day at 0.120.0, the boundary arriving lifted out of the leak, read by the tool as built and never walked, its note saying the question has not been put since; code.claude.com/docs/en/hooks.md, read 4 October 2026, names AskUserQuestion under PreToolUse with questions in its input, nothing measured; should: no further wording is taken as the repair, a mechanism at the question tool holds it or the rule goes, the choice of mechanism open; searched across the lines of Known gaps for fifth time|wording is spent|no wording|did not hold in, nothing on the repair of 3 October 2026; the evidence moved on 14 October 2026 by the consistency audit of that day onto the line of shared/install-question.md saying nothing of runtimes is said since 5 October 2026, the rule gone being the second of the two ways the should names, the site staying on the status line; the evidence re-anchored 1 November 2026, when the date left the line of shared/install-question.md it stood on; until then it read "2026 nothing of it is said. And the first no does not say that work without", the text the closing line of the defect of 14 October 2026 on this row names as the corrected one

### milestone 3 of the plan carries a measurement record, which the opening of the plan says it holds none of
- Wrong: milestone 3 of `docs/plan.md`, not landed, carries versions, dates, benches and what its runs walked, where the opening of that file and the roadmap entry of 19 September 2026 say the plan holds no measurement record; what should hold is that the record stands in the roadmap entries that carry it already and milestone 3 keeps what it covers and what ends it, moved by an order of its own that passes over every line of the file naming a version or a date.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: none
- Status: Recorded, not built
- Note: found 4 October 2026 by the consistency audit of that day, section 3.1 of its report; concerns docs/plan.md, its opening at This is the plan and not a measurement record, and milestone 3 at The two runs above ran on 30 September 2026, both attended and at both halves of both runs on a bench, against the roadmap entry of 19 September 2026 at the plan holds neither; the sentence on records rewritten in milestone 3 on 4 October 2026 is another such line; should: the record stands in the roadmap entries and milestone 3 keeps what it covers and what ends it, moved by an order of its own passing over every line of the plan naming a version or a date; grep -n 'not a measurement record' docs/roadmap.md docs/stock-take.tsv came back without a match

### README.md says no question about the process is asked, and the set puts several
- Wrong: property 1 of `README.md`, "No question about the process, only about the thing", is contradicted by the same file and by the questions of `setup-project` and `setup-checks`; what should hold is that the property says what it rules out, a question about which step comes next, and that the questions about how the person wants to be worked with stand beside it as the corrected defect 4 of the entry beside this one bounds them.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: none
- Status: Recorded, not built
- Note: found 4 October 2026 by the consistency audit of that day, section 4.2 of its report; concerns README.md at 1. **No question about the process, only about the thing.**, against README.md at Without the flag you are asked once, at the end of the sharpening, and the questions of setup-project step 4 and setup-checks step 8; should: the property says what it rules out, a question about which step comes next, the questions about how the person wants to be worked with standing beside it as the corrected docs/roadmap.md / Known gaps / no sentence of the set says that a question about how this workflow runs carries no recommendation, whatever the command behind it touches bounds them; grep -c 'question about the process' docs/roadmap.md docs/stock-take.tsv answered 0 and 0

### README.md states the finish of an unattended run in the words build-work names as the cause of a halt
- Wrong: `README.md` says an unattended run goes until nothing in scope is ready any more, the finish `build-work` records as the cause of a halt on 9 September 2026; what should hold is that `README.md` states the finish with both its conditions, as `build-work` has them.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: none
- Status: Recorded, not built
- Note: found 4 October 2026 by the consistency audit of that day, section 4.2 of its report; concerns README.md at it runs until nothing in scope is ready any more, against skills/build-work/SKILL.md at **Do not phrase the finish in the readiness query's terms alone.**; the check for a competing finish under Before a handover, run these reads skills/ and shared/ only; should: README.md states the finish with both its conditions, as build-work has them; grep -c 'ready any more' docs/roadmap.md docs/stock-take.tsv answered 0 and 0

### README.md says the set was exercised once with nobody watching, where the roadmap dates at least three such runs
- Wrong: `README.md` says the set was exercised once with nobody watching, where the roadmap dates at least three such runs; what should hold is that `README.md` says how often by pointing at the dated entries rather than by a count of its own.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: none
- Status: Closed, lapsed: `README.md` no longer carries "with nobody watching".
- Note: found 4 October 2026 by the consistency audit of that day, section 4.2 of its report; concerns README.md at once with nobody watching, standing since 97babda of 18 August 2026, against the roadmap heads on runs with nobody there of 6 and 7, 13 and 14 September 2026; should: README.md says how often by pointing at the dated entries rather than by a count of its own; searched across the lines of Known gaps for ready any more|nobody watching, no entry; closed 21 October 2026, lapsed, the sentence leaving the README with the roadmap entry of 20 October 2026 on milestone 3, part 2, its fifth commit

### README.md hangs the opening of the install record on a list that includes sudo and a piped installer
- Wrong: the sentence of `README.md` on the install guard hangs its "unless" on a list that includes `sudo` and an installer piped from the network, which `docs/skill-conventions.md` keeps blocked under every answer; what should hold is that the sentence says those two stay blocked whatever the record says.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: none
- Status: Closed, corrected in the document: `README.md` carries "would install stay with you whatever the record says".
- Note: found 4 October 2026 by the consistency audit of that day, section 4.2 of its report; concerns README.md under The check suite at an installer piped from the network and its unless clause, against docs/skill-conventions.md under The install guard reads a record at stay blocked under every answer; should: the sentence says sudo and a piped installer stay blocked whatever the record says; searched across the lines of Known gaps for piped from the network|under every answer, eight entries on the guard and the install question, none on this sentence; repaired 5 October 2026, version 0.129.0: the paragraph says that sudo and an installer piped from the network stay with the user whatever the record says; a text of README.md, so the tool reads it as recorded; the sentence re-read 8 October 2026 when the two new cases the guard stops and the two that stay with the user came in, the clause on what stays with the user standing as its own sentence since 4 October 2026; closed 20 October 2026 as corrected in the document, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### a sentence of the conventions says a title's rule is about what the text says and not how it travels, unbounded
- Wrong: the sentence of `docs/skill-conventions.md` under "And a narrowing names every channel" says, unbounded, that the rule for a title is about what the text says rather than how it travels, where defect 5 of the entry beside this one asks how it travels; what should hold is that the sentence is bounded to the guard, in the same change as that repair.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: none
- Status: Recorded, not built
- Note: found 4 October 2026 by the consistency audit of that day, section 5.1 of its report, which says the rule requires a change; concerns docs/skill-conventions.md under And a narrowing names every channel at the rule is about what the text says rather than about how it travels, against the should of docs/roadmap.md / Known gaps / a gh call whose title is several unquoted words hangs waiting for input, and a hung command ends a run with nobody there, which names it as a place since 4 October 2026; shared/body-through-file.md bounds the thought to the guard; should: the sentence is bounded to the guard in the same change as that repair; searched across the lines of Known gaps for how it travels|names every channel, the entry of 6 September 2026 alone

### the rule of the conventions on the Status column of checks.md spells one shape for a reason that expires and one the person decided
- Wrong: the rule of `docs/skill-conventions.md` on the `Status` column of `checks.md` spells one shape, `skipped: <reason>`, for a reason that expires and for one the person decided, which the corrected defect 11 of the entry beside this one needs a hook to tell apart; what should hold is that the rule spells the two forms exactly, in the same change as that repair.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: `docs/skill-conventions.md` "every column after it. The `Status` column takes four forms and no other —"
- Status: Recorded, not built
- Note: found 4 October 2026 by the consistency audit of that day, section 5.6 of its report, settled for the cell by the correction of docs/roadmap.md / Known gaps / a run that is not setup-checks rewrote a skipped cell's reason, removing the trigger build-work step 6 reads, and nothing tells a reason that expires from one the person decided; concerns docs/skill-conventions.md under The checks.md parsers are shell scripts at The `Status` column takes only; the key list under The install guard reads a record, the other rule section 5 names, is named in docs/roadmap.md / Known gaps / the install record does not spell what the conventions decided for a fetch into a language's own cache, and a second question under a record saying no asked a permission that counts for nothing as the place that gains a line and has no thing of its own; should: the rule spells the two forms of a skipped reason exactly, in the same change as that repair; searched across the lines of Known gaps for spelled exactly|Status column|status column, no entry; repaired 5 October 2026, version 0.129.0: the rule spells the four forms, the two of skipped among them; a convention, so the tool reads it as recorded

### milestone 7 of the plan names the places counting five control documents and misses three added on 3 October 2026
- Wrong: milestone 7 of `docs/plan.md` names the places that count the five control documents and misses `start-work`, `bin/devloop-setup-state` and `docs/skill-conventions.md`, which count them since 3 October 2026; what should hold is that the milestone names those places by the search that finds them, run when it is built, rather than by a list that goes stale.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: none
- Status: Recorded, not built
- Note: found 4 October 2026 by the consistency audit of that day, section 7.2 of its report; concerns docs/plan.md, milestone 7, at The sixth file moves every place that counts five, against skills/start-work/SKILL.md at one file or all five, bin/devloop-setup-state at the five setup-project step 6 writes and its FILES= line, and docs/skill-conventions.md at the five of `setup-project` step 6, all from pull request #153 of 3 October 2026, version 0.125.0; should: the milestone names those places by the search that finds them, run when it is built; searched across the lines of Known gaps for counts five|sixth file|sixth control, the audit of 30 September 2026 on another count

### the conventions say three shared words carry real weight and define four
- Wrong: `docs/skill-conventions.md` says three shared words carry real weight and defines four, the count left behind when the lens was added; what should hold is that the sentence counts four or counts nothing.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: none
- Status: Recorded, not built
- Note: found 4 October 2026 by the consistency audit of that day, section 7.2 of its report; concerns docs/skill-conventions.md under Shared words are defined in one place at Three carry real weight here., over four definitions, a seam, a condition, a class and a lens; should: the sentence counts four or counts nothing; grep -n 'carry real weight' docs/roadmap.md docs/stock-take.tsv came back without a match

### the check for an either-or question does not find the labels question of setup-project
- Wrong: the check under "Before a handover, run these" that says it looks for a question put as an either-or does not find question 5 of `setup-project`, "map onto the existing ones, or add ours alongside"; what should hold is that the check finds an either-or by its shape, two answers joined by "or" after a word that asks, and prints that line.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: `skills/setup-project/SKILL.md` "5. **Where glossary and decision records live** — only if something"
- Status: Built, never walked
- Note: found 4 October 2026 by the consistency audit of that day, section 5.8 of its report; concerns docs/skill-conventions.md under Before a handover, run these at put a question as an either-or and its command, which prints in setup-project only offer to create one and Offer to switch it on, against skills/setup-project/SKILL.md at Then ask: map onto the existing ones, or add ours alongside.; taken instead of a marking or a hook by the corrected docs/roadmap.md / Known gaps / no sentence of the set says that a question about how this workflow runs carries no recommendation, whatever the command behind it touches; should: the check finds an either-or by its shape and prints that line; searched across the lines of Known gaps for either-or|either or|map onto, finding I of 30 September 2026 alone; built 16 October 2026, version 0.140.0, point 9, the question and its example gone of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### the head of the entry on the two October runs says all fifteen defects were read off the runs
- Wrong: the head of the entry of 4 October 2026 on the two runs says its fifteen defects were read off them, where defects 13 and 14 were read off the files and the tool; what should hold is that the head says what the defects were read off, or counts only those the runs carry.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: none
- Status: Recorded, not built
- Note: found 4 October 2026 by the consistency audit of that day, section 6.1 of its report; concerns the head of the entry of 4 October 2026 on the two runs at and fifteen defects read off them, against its defect 13, read off the tool and the files, and its defect 14, read off two files; should: the head says what the defects were read off, or counts only those the runs carry

### status lines and record names of the entry on the two October runs drop the mark of the order's account
- Wrong: the status lines and record names of the entry of 4 October 2026 on the two runs drop the mark its own rule asks for where they state what only the order's account carries, which stands after this entry's corrections in the status lines of defects 5 and 6 and in the names of both; what should hold is that they carry the mark, as the bodies and the notes do.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: none
- Status: Recorded, not built
- Note: found 4 October 2026 by the consistency audit of that day, section 6.2 of its report; concerns the entry of 4 October 2026 on the two runs at What only the runs' own account carries stands here as this order's account, against the status lines of its defects 4, 5, 6 and 15, the head of its defect 2, and the names docs/roadmap.md / Known gaps / a gh call whose title is several unquoted words hangs waiting for input, and a hung command ends a run with nobody there and docs/roadmap.md / Known gaps / body-through-file names no place for the body file, and both runs wrote it inside .git/; the corrections of 4 October 2026 rewrote the head of 2 and the status lines of 4 and 15 with the mark; should: the status lines of 5 and 6 and their names carry the mark, as the bodies and the notes do

### nothing in a repository tells setup-checks called for one class from a build that wrote the cell itself
- Wrong: nothing in a repository tells `setup-checks` called for one class from a build that wrote `checks.md` itself, since no commit carries a skill's name and `setup-checks` names no place for the red proof of a class filled without an install; what should hold is that the single-class route reports its red proof in the pull request body that lands the class, as step 4 does for an install, so that a row filled with no proof in that body reads as written by something else.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: `skills/setup-checks/SKILL.md` "**The proof is written into the pull request that switches the class on**,"
- Status: Built, never walked
- Note: found 4 October 2026 by the consistency audit of that day, section 8.1 of its report, read through gh in devloop-test-u: commit 0990164 and the commits and body of pull request #14; concerns skills/setup-checks/SKILL.md at the one the run was called on is kept, and step 4 at in the pull request body that lands the class, which names a place for an install only; the message, the order and the missing red proof of test-unit point at the build, and only the session log could tell; should: the single-class route reports its red proof in the pull request body that lands the class, as step 4 does for an install; searched across the lines of Known gaps for single-class route|single class, the entries on that route, none on telling the two apart; repaired 5 October 2026, version 0.129.0: step 5 of setup-checks writes the red proof into the pull request that switches the class on, the caller's on the single-class route, and build-work step 6 carries it in the body

### Stage 2 of plan-work skips on no code yet, undetermined against a stub, and names no place for the skip
- Wrong: Stage 2 of `plan-work` skips "if there is no code yet", which a skeleton leaves undetermined, and asks the run to say that it skipped without saying where, and issue #5 of `devloop-test-u` carries no Stage 2 comment; what should hold is that Stage 2 says what counts as code for its skip, as `setup-checks` step 2 says a stub turns no reason false, and that a skip is posted on the planning issue as the stage's comment.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: none
- Status: Recorded, not built
- Note: found 4 October 2026 by the consistency audit of that day, section 8.2 of its report, read through gh on issue #5 of devloop-test-u: comments for Stage 1 at 21:30:23 UTC and Stage 3 at 21:34:28 UTC, none for Stage 2; concerns skills/plan-work/SKILL.md at Skip this stage if there is no code yet, and say that you skipped it. and at **After each stage**, post that stage's output; should: Stage 2 says what counts as code for its skip, and a skip is posted on the planning issue as the stage's comment; searched across the lines of Known gaps for no code yet|say that you skipped|skipped it, nothing on Stage 2

### a spec assigned the filling of a check class to its first task where plan-work alone raises an issue
- Wrong: the spec of issue #5 in `devloop-test-u` assigned the filling of the unit class to its first task, where the "Missing checks" item of `plan-work` raises the class as an issue alone and says nothing of who fills it with the person there; what should hold is that the item says, in both modes, that a class is filled by `setup-checks` and never assigned to a task as its own work.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: `skills/plan-work/SKILL.md` "code. A missing class is filled by `setup-checks` and never by a task as"
- Status: Built, never walked
- Note: found 4 October 2026 by the consistency audit of that day, section 8.1 and the closing lines of its report, read through gh on issue #5 of devloop-test-u at The first task fills the unit class; concerns skills/plan-work/SKILL.md, the **Missing checks** item, at Alone, that second half goes through the order; the step before docs/roadmap.md / Known gaps / a task's own text instructed the run to fill checks.md directly, and neither the skill writing the spec nor the one cutting the tasks forbids such an instruction; should: the item says in both modes that a class is filled by setup-checks and never assigned to a task as its own work; searched across the lines of Known gaps for Missing checks|first task fills|fills the unit class, no entry; repaired 5 October 2026, version 0.129.0: the Missing checks item says in both modes that setup-checks fills a class and never a task, names each class with where it stands, and raises no issue

### the premise of the defect on a hanging gh call is a claim about the platform with no evidence behind it
- Wrong: defect 5 of the entry of 4 October 2026 on the two runs rests on a claim about the platform, that a `gh` call with a title of several unquoted words hangs waiting for input and is moved to the background after 120 seconds, the moving and the 120 seconds with a vendor's line behind them since 7 October 2026, the hang and its ending a run with neither a dated measurement nor a vendor's line; what should hold is that one of the two stands behind those before its repair is written, or that the defect says it rests on the account alone.
- Should: not stated
- Found: The consistency audit of 4 October 2026, read against the entry beside it: two counts on its fifteen defects, those fifteen corrected there in place, and twenty defects of its own; 4 October 2026, version 0.128.0.
- Fix: none
- Status: Recorded, not built
- Note: found 4 October 2026 by the consistency audit of that day, the closing lines of its report; concerns docs/roadmap.md / Known gaps / a gh call whose title is several unquoted words hangs waiting for input, and a hung command ends a run with nobody there, its hang and its 120 seconds the account of the order that recorded the runs, against docs/skill-conventions.md at **A claim about the platform's behaviour holds only with evidence**; should: a dated measurement or a vendor's line stands behind it before its repair is written, or the defect says it rests on the account alone; searched across the lines of Known gaps for primary source|measurement carrying a date|title-file|hangs? waiting, nothing on this hang; corrected 7 October 2026 by the addendum of that day to the audit of 7 October 2026: a vendor's line stands behind the moving to the background and the 120 seconds since, the changelog of Claude Code, the hang and its ending a run on the account alone still

### README said the guard blocks file writes on the main branch while the branch guard reads Bash only for git commit and git push, a file written through the shell passing it unseen
- Wrong: `README.md` separates what the guard on the main branch stops from what it does not, a file written through the shell reaching the working tree and no commit or push reaching the branch — the finding of 1 October 2026 on `hooks/hooks.json`. Built: step 8 of `setup-checks` names the heading and the lines the answer about the mode takes, and `setup-project` names the section in its account of `environment.md` — the finding of 2 October 2026 on step 8. Built: step 3 of `setup-checks` says under a no and under no record what the no of the install question says, in one form — the finding of 2 October 2026 on step 3.
- Should: not stated
- Found: The status of a check class takes four forms and a guard holds the table to them, the unattended mode starts on two permissions more and is set up in `setup-checks` step 8 or through `--auto`, a state is read before a task is released, and a review finding about the table goes a third way; 5 October 2026, version 0.129.0.
- Fix: none
- Status: Closed, corrected in the document: `README.md` carries "writes, `git commit` and a `git push` to it — a file written through the shell".
- Note: a finding row until 5 October 2026: the branch guard runs for Bash only on git commit and git push (hooks/pre-tool-use-branch-guard.sh line 36), so a file written through the shell on the main branch passes it unseen, while README.md under The check suite says the guard blocks file writes on the main branch; should: the description separates the two: a write through the shell reaches the working tree, and nothing reaches the main branch, because the same hook blocks git commit and git push there (lines 38 to 39 and 41 to 79); recorded 1 October 2026, no entry under Known gaps names it, the entry of 14 September 2026 on the mark names the mechanism for its own file and no gap; repaired 5 October 2026, version 0.129.0: README.md under The check suite says that the guard blocks the editing tool's writes, git commit and a git push to the main branch while it is checked out, and that a file written through the shell is not stopped and a push from another branch is not read; a text of README.md, so the tool reads it as recorded; closed 21 October 2026, corrected in the document, the README separating the two since 5 October 2026, the roadmap entry of 20 October 2026 on milestone 3, part 2, its fifth commit

### setup-checks step 8 recorded the answer about the unattended mode with no heading and no line, each run in its own wording, where plan-work reads it
- Wrong: step 8 of `setup-checks` names the heading and the lines the answer about the mode takes, and `setup-project` names the section in its account of `environment.md` — the finding of 2 October 2026 on step 8. Built: step 3 of `setup-checks` says under a no and under no record what the no of the install question says, in one form — the finding of 2 October 2026 on step 3.
- Should: not stated
- Found: The status of a check class takes four forms and a guard holds the table to them, the unattended mode starts on two permissions more and is set up in `setup-checks` step 8 or through `--auto`, a state is read before a task is released, and a review finding about the table goes a third way; 5 October 2026, version 0.129.0.
- Fix: `skills/setup-checks/SKILL.md` "`unattended-mode` is `yes` where they said yes to the question, or typed the"
- Status: Built, never walked
- Note: a finding row until 5 October 2026: step 8 says to record the answer about the unattended mode in environment.md either way and names no heading and no line for it, while the install permission three paragraphs further up in the same file and in setup-project's environment.md template is spelled down to the key and the value, and skills/plan-work/SKILL.md reads the answer at only where environment.md records that the unattended mode was offered and accepted for this repository, so what one run writes and what a later run finds is each run's own wording; should: the section names the heading and the line the answer takes, a key and a value as the install record has, here and in setup-project's environment.md template, so that plan-work's read is a grep on a spelled line; recorded 2 October 2026, grep -n -i 'Record the answer in|offered and accepted|mode answer|records the answer' docs/roadmap.md came back empty; repaired 5 October 2026, version 0.129.0: step 8 writes the section Unattended mode with unattended-mode, unattended-reason under a no and unattended-answered, setup-project names the section in its account of environment.md as one the check setup writes and a refresh leaves, and plan-work reads the line through shared/mode-set-up.md

### setup-checks step 3 said never install system-wide without asking under a no and under no record, an asking with no yes the run could act on, against the no of the install question
- Wrong: step 3 of `setup-checks` says under a no and under no record what the no of the install question says, in one form — the finding of 2 October 2026 on step 3.
- Should: not stated
- Found: The status of a check class takes four forms and a guard holds the table to them, the unattended mode starts on two permissions more and is set up in `setup-checks` step 8 or through `--auto`, a state is read before a task is released, and a review finding about the table goes a third way; 5 October 2026, version 0.129.0.
- Fix: `skills/setup-checks/SKILL.md` "installs nothing, which is what the no of the install"
- Status: Built, never walked
- Note: a finding row until 5 October 2026: step 3 says that where the record says no or was never written the run never installs system-wide without asking, while the no of the install question, setup-project step 4 question 3, says the run hands them the command and they decide, and the guard blocks the run's own install under install-tools: no and under no record whatever they answer, so the asking step 3 names has no yes the run could act on; should: step 3 says under a no and under no record what the question's no says, the command handed over backed with them there and the class skipped on a decline, in one form; recorded 2 October 2026, grep -n 'without asking' docs/roadmap.md finds the line listed as untouched in the entry of 19 September 2026 and the question's own wording in the entries of 28 and 30 September 2026, no entry naming the two forms against each other; repaired 5 October 2026, version 0.129.0: step 3 says that under a no and under no record the run installs nothing and hands the command over backed, and that the class becomes skipped (user) only where the only candidate is left with no way

### the line of prose before a second question in setup-checks step 8 was approved in one wording ending on their having said no, where the question is put for every record not saying yes
- Wrong: not stated
- Should: not stated
- Found: The status of a check class takes four forms and a guard holds the table to them, the unattended mode starts on two permissions more and is set up in `setup-checks` step 8 or through `--auto`, a state is read before a task is released, and a review finding about the table goes a third way; 5 October 2026, version 0.129.0.
- Fix: `skills/setup-checks/SKILL.md` "follows in the same field, that they said no to it; where no record stands"
- Status: Built, never walked
- Note: a finding row until 6 October 2026: the line of prose before a second question in step 8 is approved in one wording that ends on their having said no, while the question is put for every record that does not say yes, a record never written included — a project set up before 0.115.0 with no install record, or any project whose check setup ran before 0.129.0 with no record on the dependency file, reached through --auto — so the skill says the half about …; repaired 6 October 2026: the short wording approved, the second sentence only where the record says no, the first sentence alone where no record stands on the main branch; evidence re-anchored 17 October 2026, version 0.142.0, the line replaced by the order of that day; the line stands in the question field since that day

### the third line under the no of the question on a single tool, that the check stays off, was untrue while another candidate was left for the class
- Wrong: not stated
- Should: not stated
- Found: The status of a check class takes four forms and a guard holds the table to them, the unattended mode starts on two permissions more and is set up in `setup-checks` step 8 or through `--auto`, a state is read before a task is released, and a review finding about the table goes a third way; 5 October 2026, version 0.129.0.
- Fix: `skills/setup-checks/SKILL.md` "**Where the tool has no way outside the project and another tool is left for"
- Status: Built, never walked
- Note: a finding row until 6 October 2026: the question on a single tool has three approved lines under its no, installed outside by the run, the command handed over, the check stays off, and the third is untrue while another candidate is left for the class, the class going skipped (user) only where none is; the skill says the line is where a no leads as it stands at that moment and gives the three; repaired 6 October 2026: three answers where the tool has no way outside the project and another tool is left, the other tool or the check off, two answers in every other case

### the question on whose decision a row in no allowed form was had no form and no wording
- Wrong: not stated
- Should: not stated
- Found: The status of a check class takes four forms and a guard holds the table to them, the unattended mode starts on two permissions more and is set up in `setup-checks` step 8 or through `--auto`, a state is read before a task is released, and a review finding about the table goes a third way; 5 October 2026, version 0.129.0.
- Fix: `skills/setup-checks/SKILL.md` "- **The text does not say whose decision it was**: with the user there, ask"
- Status: Built, never walked
- Note: a finding row until 6 October 2026: a row in no allowed form whose text does not say whose decision it was is put to the user with no form named and no wording approved, where every other question built on 5 October 2026 names the widget, the call and the field of each point, and docs/skill-conventions.md says under A text is written for the form that carries it that the form is named where the text is specified; repaired 6 October 2026: the question field by field through the widget, in the wording of the second approval of 5 October 2026

### setup-checks step 7 proved the merge and neither fetched nor fast-forwarded nor left the branch it landed
- Wrong: not stated
- Should: not stated
- Found: The status of a check class takes four forms and a guard holds the table to them, the unattended mode starts on two permissions more and is set up in `setup-checks` step 8 or through `--auto`, a state is read before a task is released, and a review finding about the table goes a third way; 5 October 2026, version 0.129.0.
- Fix: `skills/setup-checks/SKILL.md` "**Once the merge is proven, on either way to it: fetch, fast-forward the"
- Status: Built, never walked
- Note: a finding row until 6 October 2026: step 7 proves the merge and neither fetches nor fast-forwards nor leaves the branch it landed, where setup-project step 8 does all three since 1 October 2026; since 5 October 2026 step 8 fetches and switches to the main branch before it cuts its own branch, and only where it writes something, so a check setup whose step 8 writes nothing goes on from step 9 with the tree on the landed branch devloop-checks; repaired 6 October 2026: step 7 fetches, fast-forwards, switches and deletes devloop-checks once the merge is proven, on either way to it

### README named five of the seven conditions for running alone that build-work numbers under Unattended mode
- Wrong: not stated
- Should: not stated
- Found: The status of a check class takes four forms and a guard holds the table to them, the unattended mode starts on two permissions more and is set up in `setup-checks` step 8 or through `--auto`, a state is read before a task is released, and a review finding about the table goes a third way; 5 October 2026, version 0.129.0.
- Fix: none
- Status: Closed, corrected in the document: `README.md` carries "auto-merge enabled and a required check for it to wait on — no task in scope".
- Note: a finding row until 6 October 2026: the README names five of the seven conditions for running alone that build-work numbers under "Unattended mode" since 5 October 2026 — every class configured or switched off with a reason, a failing gate that blocks, the repository able to merge without a person, and the two permissions — and leaves out that no task in range is blocked from outside it and that the tool classes the run needs are approved for the …; repaired 6 October 2026: the README names the seven, with the two consequences of the two that were missing, and says that all but the one about the tasks are read where the person is asked; closed 20 October 2026 as corrected in the document, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### docs/plan.md milestone 3 ended with two runs on one bench and milestone 7 on the interface bench from milestone 4, where every further run gets a fresh project
- Wrong: not stated
- Should: not stated
- Found: The status of a check class takes four forms and a guard holds the table to them, the unattended mode starts on two permissions more and is set up in `setup-checks` step 8 or through `--auto`, a state is read before a task is released, and a review finding about the table goes a third way; 5 October 2026, version 0.129.0.
- Fix: none
- Status: Closed, corrected in the document: `docs/plan.md` carries "Ends with two runs on one fresh project, in this order, the second reusing".
- Note: a finding row until 6 October 2026: milestone 3 ends with two runs on one bench and milestone 7 ends on the interface bench from milestone 4, a bench used for more than one run, while since 5 October 2026 the existing benches are out of use and every further run gets a fresh project, which the plan says under Open and in milestone 9 and at neither of these two places; repaired 6 October 2026: the rule under Open allows a run to reuse a project an earlier run from 0.129.0 on created, naming project and reason, milestone 3 ends with two runs on one fresh project in an order and names its reuse, milestone 7 builds on the interface project of milestone 4, which the rule allows; closed 20 October 2026 as corrected in the document, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### the line without code said devloop sets the checks up once the first work has merged, where build-work step 6 does so only after a merge that lands code
- Wrong: not stated
- Should: not stated
- Found: The status of a check class takes four forms and a guard holds the table to them, the unattended mode starts on two permissions more and is set up in `setup-checks` step 8 or through `--auto`, a state is read before a task is released, and a review finding about the table goes a third way; 5 October 2026, version 0.129.0.
- Fix: `skills/plan-work/SKILL.md` "in `checks.md` is `empty`, nothing. Otherwise"
- Status: Built, never walked
- Note: a finding row until 6 October 2026: the line without code says that once the first work has merged devloop sets the checks up, in the wording approved on 6 October 2026, while build-work step 6 calls the check setup after a merge only where the repository now has code, so after a first work that lands no code, a spec or documents, the line has promised what that merge does not bring — should: the line says once the first work that lands code has merged, in a wording the user approves, or the ground is written beside the approved wording; recorded 6 October 2026, grep -n -i 'first work\|erste Arbeit\|lands code\|lands no code' docs/roadmap.md printed only lines 11599 and 11603 of the corrected paragraph of the first addendum of 6 October 2026, no should; repaired 6 October 2026 in the third addendum: the line says once the first work that lands code has merged, in the wording approved that day, the replaced form standing beside it under The approved wording; since 17 October 2026, by the roadmap entry of 17 October 2026 on the reports of what was done, no line is said for a class empty, with code or without, so the line this defect concerned is gone

### the two commands before a fresh cut do not catch a local main branch with commits of its own while the remote has nothing new
- Wrong: the two commands before a fresh cut do not catch a local main branch with commits of its own while the remote has nothing new: measured 6 October 2026 with git 2.50.1, git merge --ff-only origin/main answers Already up to date., exit 0, and the cut is made from the local main branch with that commit on it, not from the main branch as the remote holds it, which the text promises; no detection is built, by the decision of the third addendum of 6 October 2026, since such commits arise only outside this workflow, the branch guard blocking a write, git commit and git push on the main branch in a session and a branch being cut only with the person there
- Should: before every fresh cut the run reads whether the local main branch has commits the remote lacks, git rev-list --count origin/main..main answering 1 in the measured case, and where it has, stops, cuts nothing, says how many, and the person decides whether they go to the remote or onto a branch of their own; recorded 6 October 2026, grep -n -i 'ahead of\|commits of its own\|commit of its own' docs/roadmap.md | grep -i should came back empty
- Found: The loaded texts lose their history, reasons move to docs/rationale.md.
- Fix: none
- Status: Recorded, not built
- Note: a finding of the table until 2 November 2026, at `shared/cut-branch.md` "remote has nothing new, the fast-forward answers `Already"; the commit that wrote its row, f665141, opened the entry under Found

### at the three places that read BEHIND nothing says what happens where the rebase meets a conflict or the force-push is rejected
- Wrong: at the three places that read BEHIND — build-work step 6 here, setup-project step 8, setup-checks step 7 — nothing says what happens where the rebase onto the base meets a conflict, fails for another reason, or the force-push is rejected: grep -n -i 'conflict' skills/build-work/SKILL.md skills/setup-project/SKILL.md skills/setup-checks/SKILL.md printed nothing on 6 October 2026; not built in the third addendum of that day, since who resolves a conflict, with the person there and without, needs a decision of its own, the named skill resolve-merge-conflict standing unbuilt
- Should: where the rebase meets a conflict the run aborts it and the branch stays as it was, where it fails for another reason the branch stays as it was too, and in both cases the run stops and says what is in the way, the files at a conflict; who resolves a conflict, with the person there and without, is decided before this is built; where the push is rejected the run stops and passes the message on; recorded 6 October 2026, grep -n -i 'rebase' docs/roadmap.md | grep -i 'conflict\|should' printed one line, 12128, the should of the third addendum itself
- Found: Arming past the gate, built after the decisions of the person of 17 October 2026: the reading of a pull request's state and the arming in one call, by a program of the plugin, and with nobody there one restart of the runs that carry a required check where that check was through before GitHub could accept the arming; defect 5 of the entry of 16 October 2026 on the runs of that day with it; 17 October 2026, version 0.144.0.
- Fix: none
- Status: Recorded, not built
- Note: a finding of the table until 2 November 2026, at `skills/build-work/SKILL.md` "the branch onto the base, force-push it, and call the program again: it"; the commit that wrote its row, 12d04b5, opened the entry under Found

### setup-checks step 3 reads the record on the packages after a fetch and says nothing of a fetch that fails
- Wrong: step 3 reads the record on the packages off the main branch after a fetch and says nothing of a fetch that fails, where since 6 October 2026 every fetch something is built on is tried three times and the third failure stops the run, shared/fetch-three-times.md, and this place was not among those the third addendum of that day named
- Should: the fetch here is tried three times by that block, and where the third fails the run says the record could not be read, with the command and the message, and does not read it as a no or as absent; recorded 6 October 2026, grep -n -i 'fetch' docs/roadmap.md | grep -i should printed one line, 1538, the Should hold on a command handed to the user that fetches something from outside, not this
- Found: The status of a check class takes four forms and a guard holds the table to them, the unattended mode starts on two permissions more and is set up in `setup-checks` step 8 or through `--auto`, a state is read before a task is released, and a review finding about the table goes a third way; 5 October 2026, version 0.129.0.
- Fix: none
- Status: Recorded, not built
- Note: a finding of the table until 2 November 2026, at `skills/setup-checks/SKILL.md` "fetched, `git show origin/main:docs/agents/environment.md` after a fetch,"; the commit that wrote its row, 03c78af, opened the entry under Found

### the command of shared/mode-set-up.md that reads the three records shows nothing where the fetch fails, so a failed fetch reads as the mode not set up
- Wrong: the command that reads the three records fetches first and shows nothing where the fetch fails, so that a fetch that failed reads as records not saying yes and the mode as not set up, in setup-checks step 8, at the end of Stage 1 and at the start of a build — a conclusion drawn from an answer that did not come, against shared/command-does-not-answer.md; not among the places the third addendum of 6 October 2026 named
- Should: the fetch is tried three times by shared/fetch-three-times.md, and where the third fails the run says the records could not be read, names the command and the message, and reads the mode neither as set up nor as not; recorded 6 October 2026, grep -n -i 'fetch' docs/roadmap.md | grep -i should printed one line, 1538, the Should hold on a command handed to the user that fetches something from outside, not this
- Found: The status of a check class takes four forms and a guard holds the table to them, the unattended mode starts on two permissions more and is set up in `setup-checks` step 8 or through `--auto`, a state is read before a task is released, and a review finding about the table goes a third way; 5 October 2026, version 0.129.0.
- Fix: none
- Status: Recorded, not built
- Note: a finding of the table until 2 November 2026, at `shared/mode-set-up.md` "git fetch -q origin main && git show origin/main:docs/agents/environment.md"; the commit that wrote its row, 03c78af, opened the entry under Found

### the third exit of shared/rule-not-written-down.md is computed on origin/main after a fetch and says nothing of a fetch that fails
- Wrong: the third exit is computed on origin/main after a fetch and the block says nothing of a fetch that fails, where since 6 October 2026 every fetch something is built on is tried three times, shared/fetch-three-times.md; not among the places the third addendum of that day named
- Should: the fetch is tried three times by that block, and where the third fails nothing comes out by this exit and the fetch that failed is said, as a missing query is; recorded 6 October 2026, grep -n -i 'fetch' docs/roadmap.md | grep -i should printed one line, 1538, the Should hold on a command handed to the user that fetches something from outside, not this
- Found: The status of a check class takes four forms and a guard holds the table to them, the unattended mode starts on two permissions more and is set up in `setup-checks` step 8 or through `--auto`, a state is read before a task is released, and a review finding about the table goes a third way; 5 October 2026, version 0.129.0.
- Fix: none
- Status: Recorded, not built
- Note: a finding of the table until 2 November 2026, at `shared/rule-not-written-down.md` "**The third exit is computed, never judged, on `origin/main` after a fetch.**"; the commit that wrote its row, 03c78af, opened the entry under Found

### shared/fetch-three-times.md and the third addendum of 6 October 2026 said a fetch that fails passes, where the decision was that such a failure can be transient
- Wrong: `shared/fetch-three-times.md` says that a fetch that fails says only that the remote could not be reached just now, and that this may be transient, where it said "and that passes"; the third addendum's "which passes" is corrected in place to "which may pass", with what it read. Built: `shared/fetch-three-times.md` says that a fetch that does not come back is a failed attempt too — until the addendum below, later the same day, this read that the command ends on the harness's own time limit with no message of git's, which is named in the message's place, and that the attempts still owed, three less those the output shows made, are then made one at a time, `sleep 15; git fetch -q origin` each, until three have been made, the command standing as it was; that did not hold, since Claude Code moves a command that reaches the limit of its call to the background and does not end it, so each attempt runs under `bin/devloop-bounded` with thirty seconds since, which ends it and names it in one line in the message's place, the addendum below saying why. Built: the halt of `setup-checks` at `secrets` with nobody there names the runtime as the example of what is in the way and not the only cause, an install through a route or to a place the record does not name standing beside it, which the guard blocks under a yes as "With nobody there" says; the approved German wording and its example stand unchanged. Recorded: what a run with nobody there does at the halts the third addendum of 6 October 2026 left not built and not a finding — `build-work` step 1 on a fetch or a fast-forward that fails and on commits of its own on the local main branch, step 6 after a merge and at `BEHIND` — belongs to the order for defect 15 of the entry of 4 October 2026 on the two runs, together with the handovers the table carries with "nothing says what a run with nobody there does", seven things on 7 October 2026, one of them repaired on 28 September 2026; the proposal of the report of the third addendum is the starting point there and not decided: the halt names its reason in the run's own message, the mark is deleted, and the list of deletion sites in `build-work` names these halts. The note of the record carrying defect 15 says so. Recorded, as proposals and not as approved wording: three sentences from the report of the third addendum, for the round on the texts a person reads. At the example with `git stash`, one sentence more: "Hat GitHub dieselbe Zeile geändert, meldet `git stash pop` einen Konflikt in der Datei; dann entscheidest du, welche Fassung gilt. Deine Änderung bleibt bis dahin im Stash." At the writing of the mark, a form of the first sentence of the opening for before anything begins, since nothing is fast-forwarded there: "Ich kann gerade nicht lesen, wo der Hauptzweig auf GitHub steht, deshalb fange ich hier nichts an." At the example with `git reset --keep`, one sentence more: "Ist dabei eine geänderte Datei im Weg, verweigert `git reset --keep` und ändert nichts; leg sie dann zuerst mit `git stash` beiseite."
- Should: not stated
- Found: The consistency audit of 7 October 2026 before the handover, ordered on 6 October 2026, read against the entry beside it: the entry of 5 October 2026 with its eight addenda held against itself, its records and the code at `03c78af`, three statements of it corrected in place, five notes of the table corrected, four findings, and the five things the order settled, three built and two recorded; 7 October 2026, version 0.130.0.
- Fix: `shared/fetch-three-times.md` "says only that the remote could not be reached just now, and that may be"
- Status: Built, never walked
- Note: found by the order of the consistency audit of 7 October 2026, the first of the five things it settled before anything was read; repaired 7 October 2026, version 0.130.0, at both places, the line of the third addendum corrected in place with what it read

### shared/fetch-three-times.md named only a fetch that fails, where the third addendum of 6 October 2026 decided a fetch that fails or does not answer
- Wrong: `shared/fetch-three-times.md` says that a fetch that does not come back is a failed attempt too — until the addendum below, later the same day, this read that the command ends on the harness's own time limit with no message of git's, which is named in the message's place, and that the attempts still owed, three less those the output shows made, are then made one at a time, `sleep 15; git fetch -q origin` each, until three have been made, the command standing as it was; that did not hold, since Claude Code moves a command that reaches the limit of its call to the background and does not end it, so each attempt runs under `bin/devloop-bounded` with thirty seconds since, which ends it and names it in one line in the message's place, the addendum below saying why. Built: the halt of `setup-checks` at `secrets` with nobody there names the runtime as the example of what is in the way and not the only cause, an install through a route or to a place the record does not name standing beside it, which the guard blocks under a yes as "With nobody there" says; the approved German wording and its example stand unchanged. Recorded: what a run with nobody there does at the halts the third addendum of 6 October 2026 left not built and not a finding — `build-work` step 1 on a fetch or a fast-forward that fails and on commits of its own on the local main branch, step 6 after a merge and at `BEHIND` — belongs to the order for defect 15 of the entry of 4 October 2026 on the two runs, together with the handovers the table carries with "nothing says what a run with nobody there does", seven things on 7 October 2026, one of them repaired on 28 September 2026; the proposal of the report of the third addendum is the starting point there and not decided: the halt names its reason in the run's own message, the mark is deleted, and the list of deletion sites in `build-work` names these halts. The note of the record carrying defect 15 says so. Recorded, as proposals and not as approved wording: three sentences from the report of the third addendum, for the round on the texts a person reads. At the example with `git stash`, one sentence more: "Hat GitHub dieselbe Zeile geändert, meldet `git stash pop` einen Konflikt in der Datei; dann entscheidest du, welche Fassung gilt. Deine Änderung bleibt bis dahin im Stash." At the writing of the mark, a form of the first sentence of the opening for before anything begins, since nothing is fast-forwarded there: "Ich kann gerade nicht lesen, wo der Hauptzweig auf GitHub steht, deshalb fange ich hier nichts an." At the example with `git reset --keep`, one sentence more: "Ist dabei eine geänderte Datei im Weg, verweigert `git reset --keep` und ändert nichts; leg sie dann zuerst mit `git stash` beiseite."
- Should: not stated
- Found: The consistency audit of 7 October 2026 before the handover, ordered on 6 October 2026, read against the entry beside it: the entry of 5 October 2026 with its eight addenda held against itself, its records and the code at `03c78af`, three statements of it corrected in place, five notes of the table corrected, four findings, and the five things the order settled, three built and two recorded; 7 October 2026, version 0.130.0.
- Fix: `shared/fetch-three-times.md` "fetch that does not come back is a failed attempt too: the program ends it"
- Status: Built, never walked
- Note: found by the order of the consistency audit of 7 October 2026, the second of the five things it settled; repaired 7 October 2026, version 0.130.0, the command unchanged; the repair rebuilt 7 October 2026 by the addendum of that day, the attempt ended by bin/devloop-bounded

### the halt of setup-checks at secrets with nobody there named a runtime as the only thing in the way, where under a yes the guard also blocks a route or a place the record does not name
- Wrong: the halt of `setup-checks` at `secrets` with nobody there names the runtime as the example of what is in the way and not the only cause, an install through a route or to a place the record does not name standing beside it, which the guard blocks under a yes as "With nobody there" says; the approved German wording and its example stand unchanged. Recorded: what a run with nobody there does at the halts the third addendum of 6 October 2026 left not built and not a finding — `build-work` step 1 on a fetch or a fast-forward that fails and on commits of its own on the local main branch, step 6 after a merge and at `BEHIND` — belongs to the order for defect 15 of the entry of 4 October 2026 on the two runs, together with the handovers the table carries with "nothing says what a run with nobody there does", seven things on 7 October 2026, one of them repaired on 28 September 2026; the proposal of the report of the third addendum is the starting point there and not decided: the halt names its reason in the run's own message, the mark is deleted, and the list of deletion sites in `build-work` names these halts. The note of the record carrying defect 15 says so. Recorded, as proposals and not as approved wording: three sentences from the report of the third addendum, for the round on the texts a person reads. At the example with `git stash`, one sentence more: "Hat GitHub dieselbe Zeile geändert, meldet `git stash pop` einen Konflikt in der Datei; dann entscheidest du, welche Fassung gilt. Deine Änderung bleibt bis dahin im Stash." At the writing of the mark, a form of the first sentence of the opening for before anything begins, since nothing is fast-forwarded there: "Ich kann gerade nicht lesen, wo der Hauptzweig auf GitHub steht, deshalb fange ich hier nichts an." At the example with `git reset --keep`, one sentence more: "Ist dabei eine geänderte Datei im Weg, verweigert `git reset --keep` und ändert nichts; leg sie dann zuerst mit `git stash` beiseite."
- Should: not stated
- Found: The consistency audit of 7 October 2026 before the handover, ordered on 6 October 2026, read against the entry beside it: the entry of 5 October 2026 with its eight addenda held against itself, its records and the code at `03c78af`, three statements of it corrected in place, five notes of the table corrected, four findings, and the five things the order settled, three built and two recorded; 7 October 2026, version 0.130.0.
- Fix: `skills/setup-checks/SKILL.md` "is in the way — for instance a runtime the tool would need"
- Status: Built, never walked
- Note: found by the order of the consistency audit of 7 October 2026, the third of the five things it settled, against setup-checks at A command the guard blocks under a yes - a runtime, a place the record does not name; repaired 7 October 2026, version 0.130.0, the approved German wording and its example unchanged

### bin/devloop-setup-state bounds its fetch with its own bounded and kill_tree where bin/devloop-bounded does the same
- Wrong: bin/devloop-setup-state bounds its fetch with its own bounded and kill_tree, and bin/devloop-bounded does the same since 7 October 2026, the bounding built twice
- Should: the bounding stands in one place and bin/devloop-setup-state calls bin/devloop-bounded; recorded 7 October 2026, grep -n 'devloop-bounded' bin/devloop-setup-state finds nothing
- Found: The consistency audit of 7 October 2026 before the handover, ordered on 6 October 2026, read against the entry beside it: the entry of 5 October 2026 with its eight addenda held against itself, its records and the code at `03c78af`, three statements of it corrected in place, five notes of the table corrected, four findings, and the five things the order settled, three built and two recorded; 7 October 2026, version 0.130.0.
- Fix: none
- Status: Recorded, not built
- Note: a finding of the table until 2 November 2026, at `bin/devloop-setup-state` "# Runs a command with a watchdog that kills it after $1 seconds"; the commit that wrote its row, 89fb52e, opened the entry under Found

### the defect on the cost list and the description was answered since 5 October 2026 while its evidence stood on the status line and the entry did not name it
- Wrong: not stated
- Should: not stated
- Found: The consistency audit of 7 October 2026 before the handover, ordered on 6 October 2026, read against the entry beside it: the entry of 5 October 2026 with its eight addenda held against itself, its records and the code at `03c78af`, three statements of it corrected in place, five notes of the table corrected, four findings, and the five things the order settled, three built and two recorded; 7 October 2026, version 0.130.0.
- Fix: none
- Status: Recorded, not built
- Note: finding of the consistency audit of 7 October 2026, the third; repaired 7 October 2026, version 0.130.0, by the addendum of that day; the evidence of that defect on setup-checks step 8 the same day

### the finding of 23 September 2026 on the first route with nobody there was answered since 5 October 2026 while its evidence stood on the status line and the entry did not name it
- Wrong: not stated
- Should: not stated
- Found: The consistency audit of 7 October 2026 before the handover, ordered on 6 October 2026, read against the entry beside it: the entry of 5 October 2026 with its eight addenda held against itself, its records and the code at `03c78af`, three statements of it corrected in place, five notes of the table corrected, four findings, and the five things the order settled, three built and two recorded; 7 October 2026, version 0.130.0.
- Fix: none
- Status: Recorded, not built
- Note: finding of the consistency audit of 7 October 2026, the fourth; repaired 7 October 2026, version 0.130.0, by the addendum of that day; the evidence of that thing on With nobody there of setup-checks the same day

### a fetch and the wait on the checks relied on the time limit of a call ending a command, which Claude Code does not end but moves to the background, no program bounding a command on a stock macOS
- Wrong: not stated
- Should: not stated
- Found: The consistency audit of 7 October 2026 before the handover, ordered on 6 October 2026, read against the entry beside it: the entry of 5 October 2026 with its eight addenda held against itself, its records and the code at `03c78af`, three statements of it corrected in place, five notes of the table corrected, four findings, and the five things the order settled, three built and two recorded; 7 October 2026, version 0.130.0.
- Fix: `bin/devloop-bounded` "echo "no answer within $secs seconds: $*" >&2"
- Status: Built, never walked
- Note: found by the order of the addendum of 7 October 2026 to the audit of that day, the first of the three things it built; repaired 7 October 2026, version 0.130.0

### shared/fetch-three-times.md said that a fetch that does not come back ends on the harness time limit and that the attempts still owed are made one at a time, where Claude Code moves the command to the background and a repeat would start a second fetch beside it
- Wrong: not stated
- Should: not stated
- Found: The consistency audit of 7 October 2026 before the handover, ordered on 6 October 2026, read against the entry beside it: the entry of 5 October 2026 with its eight addenda held against itself, its records and the code at `03c78af`, three statements of it corrected in place, five notes of the table corrected, four findings, and the five things the order settled, three built and two recorded; 7 October 2026, version 0.130.0.
- Fix: `shared/fetch-three-times.md` "counts as failed**, each attempt bounded to thirty seconds and ten seconds"
- Status: Built, never walked
- Note: found by the order of the addendum of 7 October 2026 to the audit of that day, the second of the three things it built; repaired 7 October 2026, version 0.130.0

### build-work step 6 told the run to repeat the wait on the checks after the time limit of its call, which would start a second wait beside the first
- Wrong: not stated
- Should: not stated
- Found: The consistency audit of 7 October 2026 before the handover, ordered on 6 October 2026, read against the entry beside it: the entry of 5 October 2026 with its eight addenda held against itself, its records and the code at `03c78af`, three statements of it corrected in place, five notes of the table corrected, four findings, and the five things the order settled, three built and two recorded; 7 October 2026, version 0.130.0.
- Fix: `skills/build-work/SKILL.md` "devloop-bounded 100 gh pr checks <number> --watch --interval 60"
- Status: Built, never walked
- Note: found by the order of the addendum of 7 October 2026 to the audit of that day, the third of the three things it built; repaired 7 October 2026, version 0.130.0

### under a no npm install cypress or puppeteer downloads a browser outside the project through the package's postinstall step, unseen by the guard, while the no said nothing is installed without them
- Wrong: the no of the install question says at both askings that some packages of the project download something themselves when they are installed and that the no does not stop it, `shared/install-question.md` lines 16 to 20 at `d1250d1`; its should since this entry, in place of finding 19's: the line under the no says that installing a package of the project can download something on the side, a browser say, and that the no does not stop that, and the guard stays as it is; the old should of finding 19, quoted: "under a no nothing lands outside the project without the person, a browser that the installation of a package downloads included". Line 5986, the question's half: its should since this entry is the report half alone — what a package manager did beside the package stands in the report of the install, `skills/build-work/SKILL.md` line 507 and `skills/setup-checks/SKILL.md` line 545 — and the defect reads built with its evidence on line 507; the old should, quoted: "it has to be said where the question is put, as part of what the tool kind costs — the milestone's 'what each kind costs' — and it has to stand in the report of what came back". `docs/plan.md` line 244 names the cost among the question's points of 19 September 2026 and lines 503 to 507 record the cut of 30 September 2026 to the four points that carry the decision, so nothing there changes. (e) Cluster 17. `skills/setup-project/SKILL.md` lines 49 to 56 at `d1250d1` say that the case with nobody there cannot arise here, the run without the person reaching the skill on no way and a setup never running without the person, and that until 20 October 2026 the bullet said the command becomes an issue; the insert at line 63 goes, "How to ask" following the bullets directly. The defect of line 27503 reads built since this entry, its evidence on line 49, its should met by its second way, the text for the run with nobody there gone. Built: the bullet of `setup-project` for a blocked install says the case with nobody there cannot arise here, `skills/setup-project/SKILL.md` lines 49 to 54 at `d1250d1`; its should as finding 11 had it, met by its second way: "the bullet names the case with them there alone, or says the case cannot arise here, as setup-checks does under With nobody there for its third route". Line 27167, the insert of `shared/backed-command.md` in `setup-project` whose only use went with the install handed over, its should the insert going or a line that hands a command over using it: Closed, lapsed: `skills/setup-project/SKILL.md` no longer carries "devloop-text backed-command". The closing names no commit, since the commit of this branch does not resolve on `main` after the squash merge, section D of the tool's header; the text stood in the file since `d713819` of 18 September 2026, `git log -S`. No line of the skill hands a command that fetches something over, read with `grep -n -i 'hand' skills/setup-project/SKILL.md`: `gh auth login` at line 195 fetches nothing, the merge handover is its own text, and the refresh question hands nothing over since nothing is installed in the setup. (f) Cluster 3, line 6266: Closed, left on purpose: decided in `docs/roadmap.md` at "The question does not say that a bare pip opens nothing under a yes.". Cluster 6, line 26220: its should since this entry is that what the second question needs stands in its fields, in the wording approved on 17 October 2026, and that nothing the decision needs stands only before the call, `output-styles/devloop.md` line 38 carrying the instruction; the old should, quoted: "what the mode question needs stands in its fields, in the wording approved on 17 October 2026, and the line before each second question in its question field, naming their no where the record says no, nothing as text before either call"; the walk of 19 October 2026 at records 496 and 497 of project z, lines 29807 to 29820, enters the defect's row as a run under 0.148.0 with this file as its source, by the rule of the answer to question 5, since that entry read the records for exactly this case; the run counts, the site line last changed at `89fb29a` of 16 October 2026 and the evidence line at `b24542a` of 17 October 2026, both before `3f810fd`, which introduced 0.148.0. Cluster 13, line 6442: Closed, left on purpose: decided in `docs/roadmap.md` at "not its output on stderr, on purpose". (g) `docs/plan.md` carries after its paragraph on the decision of 20 October 2026 under milestone 3, line 394, the dated sentence that the examination of the sandbox leaves the list the milestone stands on, with the decision of cluster 16. (h) Everything else above is recorded only.
- Should: the line under the no says that installing a package of the project can download something on the side and that the no does not stop that, the guard staying as it is by the ruling of 28 September 2026
- Found: Milestone 3, part 1, the install question, built as the person decided on 20 October 2026: the refresh of `setup-project` puts the install question where no record stands on the main branch and writes the record; no question of its step 4 carries a recommendation, the rule standing in `shared/how-to-ask.md`; the call of the install question stays alone, without a mechanism, for the reason that what needs weighing goes alone; the no of the install question names the exception of a package that downloads something when it is installed, in the wording approved that day; the bullet of `setup-project` for a blocked install with nobody there says the case cannot arise, and the insert of `shared/backed-command.md` goes; the person's decisions of that day on the clusters of the checked list recorded with what follows from the rules; four findings of the tool brought in as defects, three of them built and one closed, four defects closed as left on purpose and one as lapsed; 20 October 2026, version 0.152.0.
- Fix: `shared/install-question.md` "some packages of their project download something themselves when they are"
- Status: Walked
- Note: finding 19 of the tool, recorded 8 October 2026 on shared/install-question.md line 14, moved into the roadmap entry of 20 October 2026 on milestone 3, part 1 and built there, version 0.152.0, in the wording the person approved that day; should since that entry: the line under the no says that installing a package of the project can download something on the side and that the no does not stop that, the guard staying as it is by the ruling of 28 September 2026; the old should quoted in the entry

### @puppeteer/browsers install with --path to a place outside the project passes under every answer, the guard taking its default
- Wrong: not stated
- Should: not stated
- Found: The install guard reads the commands that fetch a tool and run it without saying install, and the browser downloads for tests, which it holds against the vendor's default place for the system it runs on; the drivers half of milestone 3 built, defect 8 of 4 October 2026 answered otherwise, one finding; 8 October 2026, version 0.131.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "--path=*) PP=$((PP + 1)); onpath "${W[$k]#--path=}" ;;"
- Status: Walked
- Note: found in the review of pull request #159 on 8 October 2026: --path moves the download from the current directory, its default, to the place written, and npx @puppeteer/browsers install chrome@stable --path ~/.cache/puppeteer passes under a no as well, since the guard reads that command for --install-deps alone; the decision of 8 October 2026 on a moved location takes the vendor's default and reads no setting, this --path with it; the conventions say it in the paragraph on the moved location; not built; built 21 October 2026, version 0.154.0, by the decision of 20 October 2026 on cluster 14: --path attached or as the next word read as a variable before the command is read, inside the project opening nothing, outside held against the places, under a no blocked, not readable a block; puppeteer browsers install defines no --path, read off the vendor at 6fde1bd, the roadmap entry of that date on milestone 3, part 3; the evidence since 23 October 2026 on the line that reads every --path of both puppeteer forms, each held for itself, until then on the line that read the last one of this form alone, the roadmap entry of 23 October 2026 on the catch-up after the audit of that day; no longer holds milestone 3 open since the person's decision of 24 October 2026, (9) of the roadmap entry of 24 October 2026 on how an install is recorded, which gives the reason; built all the same where it is built or costs a few lines of text, neither a run nor a bench required for the milestone

### the install guard reads the first browser download of a line alone, so a help, --dry-run or --list before it passes the download after it
- Wrong: every browser download on a line read for itself.
- Should: not stated
- Found: The open findings on the install guard, eight, measured on this machine; four questions never examined; the decisions for the next orders of milestone 3 and the texts the person approved, word for word; three corrections; 9 October 2026, version 0.132.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "playwright|playwright.ps1) case "${W[$((j + 1))]:-}" in"
- Status: Walked
- Note: found by the order of 9 October 2026 and measured on this machine that day, nine commands under four records, 36 runs: the five browser readers take the first hit of the line, grep -oE … | head -1, lines 208, 218, 223, 228 and 236 of the guard at 2460bb7, so a help, --dry-run or --list in the first command passes the download, the branded browser or the system packages in the second, and a download in the first hides a branded browser or system packages in the second under a yes; what should hold is every matching command of the line read for itself; to be built with the command boundaries after the closing runs of milestone 3, decision 13 of the entry of 9 October 2026; built 12 October 2026, version 0.137.0, the roadmap entry of that date on the command reader, which carries the measurement

### four patterns of the install guard read across a separator into the next command, blocking make build && npm install
- Wrong: a pattern of the guard ending at the separator.
- Should: not stated
- Found: The open findings on the install guard, eight, measured on this machine; four questions never examined; the decisions for the next orders of milestone 3 and the texts the person approved, word for word; three corrections; 9 October 2026, version 0.132.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "V1="${W[$((F + 1))]:-}"; [ $((F + 1)) -lt "$N" ] || V1="""
- Status: Walked
- Note: found by the order of 9 October 2026 and measured on this machine that day, four commands under four records: lines 177, 53, 175 and 179 of the guard at 2460bb7 read across &&, the semicolon and the pipe into the next command, so make build && npm install blocks under every record and npm install && git log -g --oneline reads a global install; what should hold is a pattern ending at the separator; to be built with the command boundaries after the closing runs of milestone 3, decision 13 of the entry of 9 October 2026; built 12 October 2026, version 0.137.0, the roadmap entry of that date on the command reader, which carries the measurement; every command a line of the reader, a word a word

### the install guard reads a make variable before install and not behind it
- Wrong: a make variable behind install read as one before it.
- Should: not stated
- Found: The open findings on the install guard, eight, measured on this machine; four questions never examined; the decisions for the next orders of milestone 3 and the texts the person approved, word for word; three corrections; 9 October 2026, version 0.132.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "EXEC_PREFIX=?*) MD=yes; dest "${W[$j]#*=}""
- Status: Walked
- Note: found by the order of 9 October 2026 and measured on this machine that day: line 404 of the guard at 2460bb7 reads PREFIX, DESTDIR, BINDIR and the other variables before install only, so make install BINDIR=~/bin blocks under a yes as naming no destination while make BINDIR=~/bin install passes; what should hold is a variable counting before and behind install alike; that PREFIX is taken as written is no finding; to be built with the command boundaries after the closing runs of milestone 3, decision 13 of the entry of 9 October 2026; built 12 October 2026, version 0.137.0, the roadmap entry of that date on the command reader, which carries the measurement

### the six hooks turn a newline in the command into a space, so two commands on separate lines run together
- Wrong: a newline in the command read as a command boundary.
- Should: not stated
- Found: The open findings on the install guard, eight, measured on this machine; four questions never examined; the decisions for the next orders of milestone 3 and the texts the person approved, word for word; three corrections; 9 October 2026, version 0.132.0.
- Fix: `bin/devloop-command-reader` "print "parsed: yes""
- Status: Walked
- Note: found by the order of 9 October 2026 and measured on this machine that day, three two-line commands under four records, each fed with the escaped newline and with a newline character: line 4 of the six hooks that prepare the tool's JSON, tr and sed, turns the newline into a space, by the conventions' rule that a hook must undo the escapes first, so make build on one line and npm install on the next block as make install, and df -h on the line after a browser download passes it as the installer's help; what should hold is commands on separate lines read as separate commands and a backslash continuation as one; how and in which hooks is open, decided with the command boundaries after the closing runs of milestone 3, decision 13 of the entry of 9 October 2026; built 12 October 2026, version 0.137.0, the roadmap entry of that date on the command reader, which carries the measurement; the newline a separator of the reader

### the install guard reads the destination of the first make, cargo or gem command of a line alone
- Wrong: every destination on a line held against the places.
- Should: not stated
- Found: The open findings on the install guard, eight, measured on this machine; four questions never examined; the decisions for the next orders of milestone 3 and the texts the person approved, word for word; three corrections; 9 October 2026, version 0.132.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "install|binstall|install-update|use|tap) item cargo "root=$(value --root)""
- Status: Built, never walked
- Note: found by the order of 9 October 2026 and measured on this machine that day, three commands under four records: head -1 on the make variables at line 404, on --root behind cargo at 298 and on --bindir behind gem at 336 of the guard at 2460bb7, so a second command of the same kind going to /srv/tools passes under a yes; what should hold is every destination of the line held against the places; to be built with the command boundaries after the closing runs of milestone 3, decision 13 of the entry of 9 October 2026; built 12 October 2026, version 0.137.0, the roadmap entry of that date on the command reader, which carries the measurement

### npm's other spellings of a global install, -g before install, --location=global, an abbreviated option or an alias of install, pass the install guard
- Wrong: npm's other spellings of a global install read.
- Should: not stated
- Found: The open findings on the install guard, eight, measured on this machine; four questions never examined; the decisions for the next orders of milestone 3 and the texts the person approved, word for word; three corrections; 9 October 2026, version 0.132.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "--locat=global|--locati=global|--locatio=global) GLOB=yes ;;"
- Status: Walked
- Note: found by the order of 9 October 2026 and measured on this machine that day, four commands under four records, exit 0 each: line 53 of the guard at 2460bb7 demands install, i or add and then exactly -g or --global, while npm/cli reads -g before the command, --location=global, an unambiguous abbreviation and the aliases in, ins, inst, insta, instal, isnt, isnta, isntal and isntall, read off config.md, definitions.js and cmd-list.js on 9 October 2026; what should hold is every form npm reads as a global install read as npm install -g; open beside the plan; built 12 October 2026, version 0.137.0, the roadmap entry of that date on the command reader, which carries the measurement; --glob left out, which npm 11.12.1 does not read; built further 21 October 2026, version 0.154.0, by the decision of 20 October 2026 on cluster 15: the abbreviated forms at least one of npm 10.9.4, 11.12.1 and 12.2.0 reads as global, measured that day on Linux and on this Mac, read as global, the seven no version reads so not read; what the measurement does not cover the entry names, the roadmap entry of that date on milestone 3, part 3

### a variable before the command that moves the destination, GOBIN= or npm_config_prefix=, is not read by the install guard
- Wrong: the variable before the command that moves the place.
- Should: not stated
- Found: The open findings on the install guard, eight, measured on this machine; four questions never examined; the decisions for the next orders of milestone 3 and the texts the person approved, word for word; three corrections; 9 October 2026, version 0.132.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "for p in $v; do [ "$(moved "$p")" = INSIDE ] && return; done"
- Status: Walked
- Note: found by the order of 9 October 2026 and measured on this machine that day, two commands under four records, 2 2 0 0 each, the two passes hanging on the machine: the guard asks the place in its own process, go env at line 288, npm prefix -g at 320, pipx environment at 324, CARGO_INSTALL_ROOT out of its own environment at 311 of the guard at 2460bb7, and does not see a variable set for the command alone, PIPX_BIN_DIR=, UV_TOOL_BIN_DIR= and CARGO_INSTALL_ROOT= the same; the should is open, decision 15 of the entry of 9 October 2026: the variable read as the place, or the gap named in the conventions as the moved browser location is; built 12 October 2026, version 0.137.0, the roadmap entry of that date on the command reader, which carries the measurement

### eight install routes the install guard does not read, deno, dotnet tool, conda, nix profile, pkgx, gh extension, volta and fnm
- Wrong: eight install routes the guard does not know.
- Should: not stated
- Found: The open findings on the install guard, eight, measured on this machine; four questions never examined; the decisions for the next orders of milestone 3 and the texts the person approved, word for word; three corrections; 9 October 2026, version 0.132.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "install|add|use|tap) item "ver:$NAME" "" ;; esac ;;"
- Status: Walked
- Note: found by the order of 9 October 2026 and measured on this machine that day, eight commands under four records, exit 0 each: none of deno install, dotnet tool install, conda install, nix profile install, pkgx install, gh extension install, volta install and fnm install stands in MANAGER at line 50 of the guard at 2460bb7; what should hold is each read like the route it resembles, a version manager the person's under every answer as nvm is, a tool installer read with its destination, and what is not read named in the conventions with the reason; open beside the plan; built 12 October 2026, version 0.137.0, the roadmap entry of that date on the command reader, which carries the measurement

### when the build subagent in auto mode hands its report back is not measured
- Wrong: when the build subagent hands back, measured.
- Should: not stated
- Found: The open findings on the install guard, eight, measured on this machine; four questions never examined; the decisions for the next orders of milestone 3 and the texts the person approved, word for word; three corrections; 9 October 2026, version 0.132.0.
- Fix: none
- Status: Recorded, not built
- Note: recorded by the order of 9 October 2026: the changelog of Claude Code says at 2.1.271 that a subagent in auto mode reports back through a dedicated hand-back call the classifier reviews, at 2.1.285 that its run ends as soon as it hands its report back, at 2.1.290 that plugin hooks read an empty answer on turn.complete for such a subagent, and at 2.1.243 that background subagents did not wake when their last background Bash task completed, read 9 October 2026 at 2.1.295; no skill and no shared text says when the build subagent hands back, and outside the entry of 9 October 2026 the roadmap names SubagentHandback only as seen in run 10 of 17 September 2026; what should hold is measured and recorded

### the sandbox of Claude Code is not examined for whether it touches installs and the install guard
- Wrong: the sandbox of Claude Code examined for the guard.
- Should: not stated
- Found: The open findings on the install guard, eight, measured on this machine; four questions never examined; the decisions for the next orders of milestone 3 and the texts the person approved, word for word; three corrections; 9 October 2026, version 0.132.0.
- Fix: none
- Status: Recorded, not built
- Note: recorded by the order of 9 October 2026: grep -rniE sandbox over docs, README, skills, shared and hooks empty before the entry of 9 October 2026, which it finds since; the page on the sandboxed Bash tool, read that day, says the sandbox covers shell commands only and hooks run outside it with full access, that sandboxed commands write to the working directory, the temp directory and added directories by default, npm among the commands that may need sandbox.filesystem.allowWrite, and the hooks reference that PermissionRequest hooks do not run for a sandboxed command's network request; no settings file of this machine carries a sandbox key; what should hold is examined whether it touches installs and the guard, and recorded

### whether the Stop hook fires at the end of the main run's turn while the build subagent builds in the background is not read
- Wrong: the Stop hook while the subagent builds, measured.
- Should: not stated
- Found: The open findings on the install guard, eight, measured on this machine; four questions never examined; the decisions for the next orders of milestone 3 and the texts the person approved, word for word; three corrections; 9 October 2026, version 0.132.0.
- Fix: none
- Status: Recorded, not built
- Note: recorded by the order of 9 October 2026: since 2.1.232 subagents run in the background by default; hooks/stop-checks.sh on Stop runs the whole check chain in the same directory and counts the turn ends with the red classes unchanged, at three handing the problem over, and with nobody there build-work puts the task down, lines 520 to 531 at 2460bb7, which can be the task the subagent still builds; the hooks reference, read 9 October 2026, says Stop runs when the main agent has finished responding and gives its input a background_tasks array with subagent among the types, saying nothing of a check chain run meanwhile; what should hold is measured and recorded; measured 27 October 2026 in the log of run 1 of 26 October 2026, the addendum of the roadmap entry of 27 October 2026 on the three closing runs: the hook fired at the end of every turn of the main run while the build subagent built, 21 times, six of them with a background agent pending, ran the chain in the one working copy each time and counted the red of the subagent's half-done rename as attempt 1 at #883; the should that follows stands as defect 11 of that entry; no run recorded here, since this defect is not built, and its state stays, no closing form fitting a dated sentence

### whether the VS Code extension runs the skills of devloop is not read, the extension running a subset of the commands and skills
- Wrong: whether VS Code runs the skills of devloop.
- Should: not stated
- Found: The open findings on the install guard, eight, measured on this machine; four questions never examined; the decisions for the next orders of milestone 3 and the texts the person approved, word for word; three corrections; 9 October 2026, version 0.132.0.
- Fix: none
- Status: Recorded, not built
- Note: recorded by the order of 9 October 2026: the page VS Code extension vs. Claude Code CLI, read 9 October 2026, lists Commands and skills as All for the CLI and Subset (type / to see available) for the extension; whether the skills of devloop are in that subset is not read; what should hold is read for the milestone on every operating system and every surface, decision 3 of the entry of 9 October 2026

### the block on a command that does not answer allowed one second attempt that would run beside a command moved to the background at the time limit of its call
- Wrong: not stated
- Should: not stated
- Found: The behaviour with nobody there: a refusal, a command that does not finish inside its call, an install that does not go through, the two halts of `setup-checks`, a hook for permission prompts, and start condition 4 off the permission mode; 9 October 2026, version 0.133.0.
- Fix: `shared/command-does-not-answer.md` "**A command that does not finish inside its call is not answered, and is not"
- Status: Walked
- Note: finding of the addendum of 7 October 2026 to the audit of that day, recorded in the table on shared/command-does-not-answer.md line 3 at ab34f96; mended 9 October 2026, version 0.133.0, decision 2 of the entry of 9 October 2026: the block names the case and allows the second attempt no longer for it

### step 8 read the gate, its binding and auto-merge before asking and learned that the platform refuses the protection only after the question
- Wrong: not stated
- Should: not stated
- Found: Step 8 of `setup-checks`: a reading before the question, the question field by field, the rule for auto mode after its yes; a guard on the identity of a commit; milestone 12 in the plan; the findings of 9 October 2026; 9 October 2026, version 0.134.0.
- Fix: `skills/setup-checks/SKILL.md` "**Read, before the question, whether GitHub offers the protection on this"
- Status: Built, never walked
- Note: finding of the addendum of 6 October 2026, recorded in the table on setup-checks at **Read the state before asking; never carry an impression of it.** Whether the, should: step 8 reads before the question whether the platform allows the protection and says so instead of asking where it does not, measured once first on a private repository under a plan that does not allow it; mended 9 October 2026, version 0.134.0, decision 8, the measurement of 8 October 2026 in the entry of 9 October 2026 on the open findings

### the question of step 8 on the unattended mode had no form, no field naming the points of its decision
- Wrong: not stated
- Should: not stated
- Found: Step 8 of `setup-checks`: a reading before the question, the question field by field, the rule for auto mode after its yes; a guard on the identity of a commit; milestone 12 in the plan; the findings of 9 October 2026; 9 October 2026, version 0.134.0.
- Fix: `skills/setup-checks/SKILL.md` "**The question, in the form of the other questions of this skill**: a choice"
- Status: Built, never walked
- Note: finding of the addendum of 6 October 2026, recorded in the table on setup-checks at **What the question has to carry.** What it decides: whether work in this, should: the question is described field by field like the others, in a wording the user approves, before the measuring run of milestone 3; mended 9 October 2026, version 0.134.0, decision 9, text 6

### step 8 told the person the run goes on until nothing it raised against itself is still waiting, while build-work ends the run with a needs-human issue open
- Wrong: not stated
- Should: not stated
- Found: Step 8 of `setup-checks`: a reading before the question, the question field by field, the rule for auto mode after its yes; a guard on the identity of a commit; milestone 12 in the plan; the findings of 9 October 2026; 9 October 2026, version 0.134.0.
- Fix: `skills/setup-checks/SKILL.md` "Nor is it said that the run takes up the issues it raised against itself,"
- Status: Built, never walked
- Note: finding of 28 September 2026, recorded in the table on setup-checks at way is still waiting** — its own reviews and checks file issues, should: step 8 says that an issue the run raised for a person to decide stays open when the run ends and is named at the finish, and that the closing sentence is said once nothing is ready and nothing the run can take itself is waiting, the finish build-work states; answered 9 October 2026, version 0.134.0, by the omission text 6 fixes and not by its should: step 8 states the finish to the person no more, and build-work states it once under Unattended mode

### an exit of a hook through a function stands in no search set of the stock-take
- Wrong: an exit of a hook through a function, such as `|| pass` in `hooks/pre-tool-use-mark-guard.sh` lines 68, 69, 121 and 122, stands in no search set, which for hooks takes lines with `if`, `elif`, `else`, `case` or `exit` alone, `scripts/devloop-stock-take` lines 412 to 413 and 543
- Should: such a line stands in the search set as an `exit` does. Decision 13 of the entry above: the tool changes with the command boundaries after the closing runs of milestone 3, each change with its cases in the self-test.
- Found: Step 8 of `setup-checks`: a reading before the question, the question field by field, the rule for auto mode after its yes; a guard on the identity of a commit; milestone 12 in the plan; the findings of 9 October 2026; 9 October 2026, version 0.134.0.
- Fix: `scripts/devloop-stock-take` "case("an exit through a function: a call after ||, in the search set","
- Status: Built, never walked
- Note: finding of the reports of 9 October 2026; concerns scripts/devloop-stock-take at the search set for hooks; should: such a line stands in the search set as an exit does; built with the command boundaries after the closing runs of milestone 3, decision 13 of the entry of 9 October 2026 on the open findings; built on 12 October 2026 in the search set of the tool, the rule in its head, section E, with its cases in the self-test, the entry of 12 October 2026 on the four changes to the tool

### a comment line of a hook or a program holding a search word stands in the search set as code
- Wrong: a comment line of a hook or a program holding one of the search words stands in the search set as code does, lines 1153 to 1169 of the tool
- Should: comment lines of hooks and programs stand in no search set. Decision 13, as above.
- Found: Step 8 of `setup-checks`: a reading before the question, the question field by field, the rule for auto mode after its yes; a guard on the identity of a commit; milestone 12 in the plan; the findings of 9 October 2026; 9 October 2026, version 0.134.0.
- Fix: `scripts/devloop-stock-take` "case("a comment line of a hook holding if or exit: in no search set","
- Status: Built, never walked
- Note: finding of the reports of 9 October 2026; concerns scripts/devloop-stock-take at the search set; should: comment lines of hooks and programs stand in no search set; built with the command boundaries after the closing runs of milestone 3, decision 13; built on 12 October 2026 in the search set of the tool, docstrings of a python program included, the rule in its head, section E, with its cases in the self-test, the entry of 12 October 2026 on the four changes to the tool

### an anchor found more than once is reported without the lines it stands on
- Wrong: an anchor found more than once is reported as "found more than once, so it is not an anchor", line 1270 of the tool, and not where
- Should: the message names the lines. Decision 13, as above.
- Found: Step 8 of `setup-checks`: a reading before the question, the question field by field, the rule for auto mode after its yes; a guard on the identity of a commit; milestone 12 in the plan; the findings of 9 October 2026; 9 October 2026, version 0.134.0.
- Fix: `scripts/devloop-stock-take` "case("an anchor on two lines: both named","
- Status: Built, never walked
- Note: finding of the reports of 9 October 2026; concerns scripts/devloop-stock-take at the anchor check; should: the message names the lines; built with the command boundaries after the closing runs of milestone 3, decision 13; built on 12 October 2026, the message naming the lines, with its cases in the self-test, the entry of 12 October 2026 on the four changes to the tool

### build-work, shared/fetch-three-times.md and bin/devloop-bounded said as a fact that a call without a limit of its own is moved to the background and runs on, where the conventions say the changelog says so and nothing here has measured it
- Wrong: `build-work` step 6, `shared/fetch-three-times.md` and the head of `bin/devloop-bounded` say that the changelog of Claude Code says a call reaching the limit of its call is moved to the background and runs on, and that nothing here has measured it. `build-work` lines 1033 to 1036, "call where nothing sets it, because a call that reaches that limit is not ended but moved to the background, where it runs on, and a repeat would start a second one beside it", read since `cb22b6e`, lines 1033 to 1037: "because the changelog of Claude Code says that a call reaching that limit is not ended but moved to the background and runs on, which nothing here has measured, and a repeat would then start a second one beside it". `shared/fetch-three-times.md` lines 23 to 26, "a command that reaches that limit is not ended but moved to the background, where it runs on, and a run that repeated the fetch would start a second one beside it", read since `cb22b6e`, lines 23 to 27: "the changelog of Claude Code says a command that reaches that limit is not ended but moved to the background and runs on there, and nothing here has measured that; a run that repeated the fetch would then start a second one beside it". `bin/devloop-bounded` lines 3 to 6, "a command that reaches that limit is moved to the background and goes on running there, not ended, and a skill that repeats it would start a second one beside the first", read since `cb22b6e`, lines 3 to 7: "the changelog of Claude Code says a command that reaches that limit is moved to the background and goes on running there, not ended, and nothing here has measured that; a skill that repeats it would then start a second one beside the first". The check on shared copies is silent at `cb22b6e`, and the head of `bin/devloop-bounded` holds none of the five words of the search set, before and after.
- Should: not stated
- Found: The arrangement of the two closing runs of milestone 3 as decided on 10 October 2026, three places that said as a fact what is not measured, two sentences in entries; 10 October 2026, version 0.135.0.
- Fix: `skills/build-work/SKILL.md` "call reaching that limit is not ended but moved to the background"
- Status: Built, never walked
- Note: found 10 October 2026 in a reading of the documents against 1458419, before the order of that day; repaired 10 October 2026, version 0.135.0, at all three places, build-work step 6, shared/fetch-three-times.md and the head of bin/devloop-bounded

### setup-checks step 8 was not reached at a first setup: after the merge of #2 was proven, the run went on to planning, with no reading of the gate, no question on the unattended mode and no record of its answer
- Wrong: not stated
- Should: not stated
- Found: The first closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying no, read off its session log and the project, with the decisions of that day on the arrangement of the closing runs: eleven defects, four met again, one open question; 11 October 2026, the version stays 0.135.0.
- Fix: `skills/setup-checks/SKILL.md` "**Step 8 follows now, at a first setup and on the route from the step after"
- Status: Walked
- Note: found 11 October 2026 by the order recording the first closing run of milestone 3, in the session log of that run in devloop-test-w, records 231 to 247, and in environment.md after the run, which carries no Unattended mode section; concerns skills/setup-checks/SKILL.md at offers the mode in step 8, line 40, and at ## Step 8 — Offer the unattended mode, line 720, whose opening line Only when no class is `empty` any more held after #2 with one filled and eight skipped; should: once the merge of step 7 is proven at a first setup and no class is empty, step 8 runs, and its question is put with auto-merge off as well; built 16 October 2026, version 0.140.0, defect 1 of the first closing run of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### no handover of a pull request named the command that lands it, five times, and no message of the run contains gh pr merge
- Wrong: not stated
- Should: not stated
- Found: The first closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying no, read off its session log and the project, with the decisions of that day on the arrangement of the closing runs: eleven defects, four met again, one open question; 11 October 2026, the version stays 0.135.0.
- Fix: `shared/merge-handover.md` "**The merge is handed over in one text, and the command in it runs from"
- Status: Built, never walked
- Note: found 11 October 2026 by the order recording the first closing run of milestone 3, in the session log of that run in devloop-test-w, records 124, 231, 665, 994 and 1147, the five handovers, none naming gh pr merge; concerns skills/setup-project/SKILL.md at user the one command that lands it, line 788, skills/setup-checks/SKILL.md at Then hand the user the one command that lands it, line 701, and skills/build-work/SKILL.md at one command that lands it, say which case it was, line 976; should: every such handover names the one command, as those three lines say; built 16 October 2026, version 0.140.0, point 11, defect 2 of the first closing run of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### after the person's no to Prettier, to ESLint and to @types/node, the run handed over npm install --save-dev commands for them, which enter them into the project's packages the person had just declined
- Wrong: not stated
- Should: not stated
- Found: The first closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying no, read off its session log and the project, with the decisions of that day on the arrangement of the closing runs: eleven defects, four met again, one open question; 11 October 2026, the version stays 0.135.0.
- Fix: `skills/setup-checks/SKILL.md` "The command of the second way installs the tool outside the project — on a"
- Status: Walked
- Note: found 11 October 2026 by the order recording the first closing run of milestone 3, in the session log of that run in devloop-test-w, records 163, 170 and 199, the three answers no, and record 231, the handover listing npm install --save-dev typescript @types/node, prettier and eslint; concerns skills/setup-checks/SKILL.md at stands at that moment — one of three, line 385, the three ways a no to a single tool leads; should: the command handed over installs outside the project where such a way exists, and where none exists the check stays off and no command is handed over; built 16 October 2026, version 0.140.0, defect 3 of the first closing run of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### with the unattended mode not set up and no record of it, no message of the planning said that work without the person is not set up in this project and that typing --auto where a piece of work starts sets it up
- Wrong: not stated
- Should: not stated
- Found: The first closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying no, read off its session log and the project, with the decisions of that day on the arrangement of the closing runs: eleven defects, four met again, one open question; 11 October 2026, the version stays 0.135.0.
- Fix: none
- Status: Recorded, not built
- Note: found 11 October 2026 by the order recording the first closing run of milestone 3, in the session log of that run in devloop-test-w, records 247 to 470, the messages of the planning, the sentence standing only in the handover of #2, record 231, and the close, record 1183; concerns skills/plan-work/SKILL.md at Otherwise — no record, or a yes with, line 328, to line 332; should: that one line is said

### the project read not set up here and the run wrote no introduction, the idea having come with the command, while start-work step 2 says after the introduction to ask what they would like to build and stop, which a run that already has the idea cannot follow
- Wrong: not stated
- Should: the introduction only where the idea did not come with the command, closing on the question
- Found: The first closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying no, read off its session log and the project, with the decisions of that day on the arrangement of the closing runs: eleven defects, four met again, one open question; 11 October 2026, the version stays 0.135.0.
- Fix: `skills/start-work/SKILL.md` "**Then one of two things, read off whether the idea came with the command.**"
- Status: Built, never walked
- Note: found 11 October 2026 by the order recording the first closing run of milestone 3, in the session log of that run in devloop-test-w, records 5, 35 and 112, the status line, the thinking block and the first text; concerns skills/start-work/SKILL.md at Then ask what they would like to build, line 91; should: the introduction is written whenever the project is not set up, and where the idea came with the command the run carries on without asking; built 16 October 2026, version 0.140.0, point 7, defect 5 of the first closing run of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026; should revised 17 October 2026 by the roadmap entry of 17 October 2026 on the reports of what was done: the introduction only where the idea did not come with the command, closing on the question; with the idea none, the setup half in the setup's first question

### at the close of the review of the third task the run wrote a rule into docs/agents/standards.md that names no situation of the project, putting only the call that can fail inside a try block, a principle the standards lens found the defect by without any rule
- Wrong: at the close of the review of the third task the run wrote a rule into `docs/agents/standards.md` that names no situation of the project, putting only the call that can fail inside a try block, a principle the standards lens found the defect by without any rule, `shared/rule-not-written-down.md` line 11
- Should: that rule is not written, and the run says which of the two sentences that fail the test it is.
- Found: The first closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying no, read off its session log and the project, with the decisions of that day on the arrangement of the closing runs: eleven defects, four met again, one open question; 11 October 2026, the version stays 0.135.0.
- Fix: none
- Status: Recorded, not built
- Note: found 11 October 2026 by the order recording the first closing run of milestone 3, in the session log of that run in devloop-test-w, records 1065 and 1100 and the rule landed in ccf34e5 of that project; concerns shared/rule-not-written-down.md at sentences fail that test and are not written, line 11, the second of the two sentences; should: that rule is not written, and the run says which of the two sentences that fail the test it is

### one reply came in English while the person wrote German, Labels are created, next commit, push and open the PR, auto-merge is off so you merge it yourself
- Wrong: not stated
- Should: not stated
- Found: The first closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying no, read off its session log and the project, with the decisions of that day on the arrangement of the closing runs: eleven defects, four met again, one open question; 11 October 2026, the version stays 0.135.0.
- Fix: none
- Status: Recorded, not built
- Note: found 11 October 2026 by the order recording the first closing run of milestone 3, in the session log of that run in devloop-test-w, record 112, the one English text of 58; concerns shared/language-opening.md at Answer in the language the user writes in, line 1; should: every reply is in the language the person writes in

### the permissions passage of setup-project still says that an unattended run needs those permissions granted up front and that the grant is one of the mode's preconditions, while since 9 October 2026 start condition 4 reads auto mode alone and no allow rule is read
- Wrong: not stated
- Should: not stated
- Found: The first closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying no, read off its session log and the project, with the decisions of that day on the arrangement of the closing runs: eleven defects, four met again, one open question; 11 October 2026, the version stays 0.135.0.
- Fix: none
- Status: Closed, lapsed: `skills/setup-project/SKILL.md` no longer carries "permissions granted up front", removed at `49bd995`.
- Note: found 11 October 2026 by the order recording the first closing run of milestone 3, in the session log of that run in devloop-test-w, record 46, where the passage stood in a thinking block; concerns skills/setup-project/SKILL.md at unattended run needs those permissions granted up front, line 168, and at It is true that this grant is one of that mode's preconditions, line 211, against docs/skill-conventions.md at allow rules are not read, line 2184; point F of the entry of 30 September 2026 is another defect and stands; should: the passage ties the grant to the unattended mode nowhere; since 12 October 2026 the passage falls altogether, which replaces this should, point 8 of part B of the entry of 12 October 2026 on the decisions; built 16 October 2026, version 0.140.0, point 8 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026; closed 20 October 2026 as lapsed, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### after the merge of #2 the run deleted the branch devloop-checks on GitHub without reading whether it still stood, git answering failed to push some refs, the person's merge having deleted it already, and the same after the four other merges
- Wrong: after the merge of #2 the run deleted the branch `devloop-checks` on GitHub without reading whether it still stood, git answering "error: failed to push some refs", the person's merge having deleted it already, and the same after the four other merges, `setup-checks` line 707
- Should: the run reads whether the branch stands and deletes it only then, at `setup-checks` line 707, `setup-project` line 716 and `build-work` line 1121 alike.
- Found: The first closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying no, read off its session log and the project, with the decisions of that day on the arrangement of the closing runs: eleven defects, four met again, one open question; 11 October 2026, the version stays 0.135.0.
- Fix: `shared/branch-deletion.md` "**The branch on GitHub is deleted only after the run has read that it still"
- Status: Built, never walked
- Note: found 11 October 2026 by the order recording the first closing run of milestone 3, in the session log of that run in devloop-test-w, records 132, 238, 672, 1007 and 1160, one after each merge, and record 1170, remote ref does not exist; concerns skills/setup-checks/SKILL.md at where it still stands there, on the remote, line 707, beside skills/setup-project/SKILL.md at and switch to it, and delete `devloop-setup` locally and, where it still, line 716, and skills/build-work/SKILL.md at Delete the merged branch locally and on the remote, line 1121, which carries no condition; should: the run reads whether the branch stands and deletes it only then, at all three lines; built 16 October 2026, version 0.140.0, point 12, defect 9 of the first closing run of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### docs/plan.md milestone 3 says the first closing run ends with the guard blocking and the command handed over, while build-work step 3 point 7 hands the install over under a record saying no without trying it, so no run that follows it meets the guard, and in this run there was no attempt and no block
- Wrong: not stated
- Should: not stated
- Found: The first closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying no, read off its session log and the project, with the decisions of that day on the arrangement of the closing runs: eleven defects, four met again, one open question; 11 October 2026, the version stays 0.135.0.
- Fix: none
- Status: Closed, corrected in the document: `docs/plan.md` carries "hands the command over without trying it, as `build-work` step 3 point 7".
- Note: found 11 October 2026 by the order recording the first closing run of milestone 3, in the session log of that run in devloop-test-w, record 691, the handover without a call, and the whole log, which holds no block of the guard; concerns docs/plan.md at record says no and the person is there: a build needs a tool, the guard, line 270, and at no, a task needs a browser for tests, the guard blocks the download, and the, line 301, against skills/build-work/SKILL.md at runtime under it. Where the record says no, or was never written, the, line 460; should: the plan says that the run hands the command over without trying it, and where the guard's block under a no stands walked; built on 11 October 2026 by the entry on the second closing run: both sentences of docs/plan.md corrected, lines 270 to 271 and 301 to 302 at c2c8bd5, the evidence moved onto the corrected line and the site staying on the status line of the entry on the first run; closed 20 October 2026 as corrected in the document, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### the forms of Nix that fetch a package and run it, nix run and nix shell, are read by the install guard nowhere and named by shared/fetch-and-run.md nowhere
- Wrong: not stated
- Should: not stated
- Found: The first closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying no, read off its session log and the project, with the decisions of that day on the arrangement of the closing runs: eleven defects, four met again, one open question; 11 October 2026, the version stays 0.135.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "run|shell) RUN="$RUN nix"; BEYOND=yes ;;"
- Status: Walked
- Note: found 11 October 2026 by the order recording the first closing run of milestone 3, reading the Nix manual at nix.dev, nix3-run under latest and nix3-shell under 2.18, against the guard and the rule; concerns hooks/pre-tool-use-install-guard.sh at RUN="$RUN uvx", line 98, the list of forms at lines 97 to 106, and shared/fetch-and-run.md at It does not read `npx`, `npm exec`, `npm create`, `npm init` with a package, lines 2 to 9; finding 8 of the entry of 9 October 2026 names nix profile install alone, and docker run stands under the rule since 8 October 2026; should: the guard reads them as it reads uvx, or the rule names them; built 12 October 2026, version 0.137.0, the roadmap entry of that date on the command reader, which carries the measurement

### the five parts before the mode question and the line of prose before each second question stood in thinking blocks or nowhere, no message of the run carrying them
- Wrong: the five parts before the mode question and the line of prose before each second question stood in thinking blocks or nowhere, no message of the run carrying them, records 146 to 152 and 167 to 172
- Should: the awake line of the mode question reads „Auf dem Mac hält ihn caffeinate wach, solange es in einem eigenen Terminal läuft und der Laptop aufgeklappt bleibt.“ in place of the sentence approved on 17 October 2026, the earlier should keeping its other points
- Found: The second closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying yes, set up through `--auto`, read off its session log and the project, with the runs of both closing runs on the things of the table and the context the two runs used: nine defects, two met again, the open question met again; 11 October 2026, the version stays 0.135.0.
- Fix: `skills/setup-checks/SKILL.md` "before the call: what no field carries is not said"
- Status: Built, never walked
- Note: found 11 October 2026 by the order recording the second closing run of milestone 3, in the session log of that run in devloop-test-w, records 146 to 152, the thinking block of record 151 claiming the explanation as given, and records 167 to 172, the line before the install question in the thinking block of record 167 and record 171 naming the permission alone; concerns skills/setup-checks/SKILL.md at field can carry**: five parts, in this order, in ordinary words, and, line 811, to line 847, and at Before each widget stands one line of prose, in the run's own message, that, line 919, to line 923; should: what the mode question needs stands in its fields in the wording approved on 17 October 2026 and nothing as text before its call, and the line before each second question stands in its question field, naming their no where the record says no; from 15 to 17 October 2026 the output style of the plugin, output-styles/devloop.md, forced for every session in which devloop is enabled, said that such text stands as a text block of the message before the question, the entry of that date on the output style; no run on a bench shows it yet, which that entry records; should revised 17 October 2026 by the order of that day, the earlier should quoted in the roadmap entry of that date; built 17 October 2026, version 0.142.0, the evidence on the line that carries the repair; the should changed by the person on 19 October 2026, the roadmap entry of that date on the two runs of that day, defect 13: the awake line of the mode question reads „Auf dem Mac hält ihn caffeinate wach, solange es in einem eigenen Terminal läuft und der Laptop aufgeklappt bleibt.“ in place of the sentence approved on 17 October 2026, the earlier should keeping its other points

### after the yes to the install record and to the dependency file, step 8 entered no check tool and filled no class that was off for the first no, checks.md after the run holding format, lint, types and secrets as skipped (user) with the first run's reasons
- Wrong: not stated
- Should: not stated
- Found: The second closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying yes, set up through `--auto`, read off its session log and the project, with the runs of both closing runs on the things of the table and the context the two runs used: nine defects, two met again, the open question met again; 11 October 2026, the version stays 0.135.0.
- Fix: `skills/setup-checks/SKILL.md` "it.** What follows is read off `checks.md` before anything lands: every row"
- Status: Walked
- Note: found 11 October 2026 by the order recording the second closing run of milestone 3, in the session log of that run in devloop-test-w, records 173 to 176, the run going from the dependency question to the records and the pull request, and checks.md on the main branch after the run; concerns skills/setup-checks/SKILL.md at 2. **Under a yes to the dependency file**, every check tool that is, line 948, to line 959, and docs/plan.md at off for the first no is filled in `setup-checks` step 8 with the person, line 279; should: points 2 and 3 of step 8 run after the two yes and before the gate; built 16 October 2026, version 0.140.0, defect b of the second closing run of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### the rule that environment.md is written with the editing tool names the workflow file nowhere, reached neither build subagent for that file and has no copy in setup-checks step 8, so that the guard blocked two subagents writing the workflow file from the shell and the main run wrote environment.md from the shell twice unblocked
- Wrong: not stated
- Should: not stated
- Found: The second closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying yes, set up through `--auto`, read off its session log and the project, with the runs of both closing runs on the things of the table and the context the two runs used: nine defects, two met again, the open question met again; 11 October 2026, the version stays 0.135.0.
- Fix: `shared/editing-tool.md` "**A file whose content is text about commands is written with the editing"
- Status: Walked
- Note: found 11 October 2026 by the order recording the second closing run of milestone 3, in the session log of that run in devloop-test-w, records 97 and 98 of agent-a6bc4331d9f616008, records 37 and 38 of agent-a8936023d19a5de13, the two blocks on text at 19:28:20 and 19:51:42 UTC, the handovers at records 523 and 793 naming environment.md and the editing tool and not the workflow file, and records 181 and 276 of the main log, environment.md written with sed and printf and with a Python heredoc in step 8; the ground of the entry of 6 September 2026 at line 1319, that the normal path no longer runs through the false positive, did not hold in this run; concerns skills/build-work/SKILL.md at **`docs/agents/environment.md` is written with the editing tool, not appended, line 221, and shared/body-through-file.md at **The file itself is written with the editing tool.** A heredoc, an `echo` or a, line 13; should: the rule names every file whose content is prose about commands, the workflow file among them, is handed to the build subagent for all of them, and stands where step 8 of setup-checks writes environment.md; built 16 October 2026, version 0.141.0, point 26 of part B of the roadmap entry of 12 October 2026 on the decisions: shared/editing-tool.md, inserted in build-work in place of the rule and in setup-checks step 8, named in the handover to the build subagent

### a title naming the problem, dasel download in CI has no checksum and is installed with sudo, was blocked by the install guard for the word sudo, the body having gone through a file as the rule says
- Wrong: a title naming the problem, "dasel download in CI has no checksum and is installed with sudo", was blocked by the install guard for the word `sudo`, record 726, the body having gone through a file as the rule says
- Should: the title rule says what a title does where the problem's name is a word the guard reads, or the guard reads the title's option as text.
- Found: The second closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying yes, set up through `--auto`, read off its session log and the project, with the runs of both closing runs on the things of the table and the context the two runs used: nine defects, two met again, the open question met again; 11 October 2026, the version stays 0.135.0.
- Fix: `shared/body-through-file.md` "all the same, the title is not changed: the"
- Status: Built, never walked
- Note: found 11 October 2026 by the order recording the second closing run of milestone 3, in the session log of that run in devloop-test-w, records 725 and 726, the gh issue create with --body-file blocked with the cause it needs sudo, the body written with the editing tool at record 713; what the run did next stands under Met again as the defect of the entry of 6 September 2026 met again; concerns shared/body-through-file.md at **A title names the problem; it does not quote the command.** The title stays on, line 20, to line 29, the file having 29 lines, corrected on 12 October 2026 by the consistency audit of that day; should: the title rule says what a title does where the problem's name is a word the guard reads, or the guard reads the title's option as text; built 12 October 2026, version 0.137.0, the roadmap entry of that date on the command reader, which carries the measurement

### the run declared re2js missing on brew search, which searches formula names, and on what it knew, asked the person what they meant and recommended dropping the requirement they had named, where the formula's file list and the vendor's manual held the answer
- Wrong: the run declared `re2js` missing on `brew search`, which searches formula names, and on what it knew, record 65, asked the person what they meant and recommended dropping the requirement they had named, where the formula's file list and the vendor's manual held the answer, read at records 74 to 101 after the person's hint
- Should: a question with a right answer to find is looked up before it is asked, `shared/how-to-ask.md` line 4, and a tool's existence is read off what ships it and not off a search by name.
- Found: The second closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying yes, set up through `--auto`, read off its session log and the project, with the runs of both closing runs on the things of the table and the context the two runs used: nine defects, two met again, the open question met again; 11 October 2026, the version stays 0.135.0.
- Fix: none
- Status: Recorded, not built
- Note: found 11 October 2026 by the order recording the second closing run of milestone 3, in the session log of that run in devloop-test-w, records 59 to 65, the search and the question with a recommendation, record 70, the person's answer three hours and eight minutes later, and records 74 to 101, the formula and the manual read and the error conceded; concerns shared/how-to-ask.md at - **There is no right answer to find.** A question about how something works has, line 4, inserted into plan-work under How to ask, line 150; no line of a skill governs how a tool's existence is read, and docs/skill-conventions.md names the shape at A claim about the platform's behaviour holds only with evidence, line 977, and at **A query is scoped to a type, and a stock-take built on it inherits that, line 1074, as rules for whoever writes a skill; should: a question with a right answer to find is looked up before it is asked, and a tool's existence is read off what ships it and not off a search by name

### the merge commands handed over at records 200 and 249, gh pr merge 13 --squash and gh pr merge 14 --squash, carry nothing that makes them run from the terminal the person runs them in, no directory and no --repo
- Wrong: not stated
- Should: not stated
- Found: The second closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying yes, set up through `--auto`, read off its session log and the project, with the runs of both closing runs on the things of the table and the context the two runs used: nine defects, two met again, the open question met again; 11 October 2026, the version stays 0.135.0.
- Fix: `shared/merge-handover.md` "gh pr merge <number> --squash --repo OWNER/REPO"
- Status: Built, never walked
- Note: found 11 October 2026 by the order recording the second closing run of milestone 3, in the session log of that run in devloop-test-w, records 200 and 249, the two handovers, and records 203 and 253, the person merging all the same; gh pr view 13 in an empty directory answering failed to run git: fatal: not a git repository, measured 11 October 2026 with gh 2.96.0; concerns skills/setup-checks/SKILL.md at and handed to them to merge where none does yet, since they are here. After, line 1005, skills/setup-project/SKILL.md at user the one command that lands it, line 788, skills/setup-checks/SKILL.md at Then hand the user the one command that lands it, line 701, and skills/build-work/SKILL.md at one command that lands it, say which case it was, line 976; should: the command handed over runs as it stands from where the person is, at all four lines; built 16 October 2026, version 0.140.0, point 11, defect f of the second closing run of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### both closing runs did the setup, the planning and every task in one session, the first reaching 410,613 and the second 343,921 tokens of context, while the four lines that send a run from one stage into the next keep the session and no line ends one
- Wrong: not stated
- Should: not stated
- Found: The second closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying yes, set up through `--auto`, read off its session log and the project, with the runs of both closing runs on the things of the table and the context the two runs used: nine defects, two met again, the open question met again; 11 October 2026, the version stays 0.135.0.
- Fix: none
- Status: Recorded, not built
- Note: found 11 October 2026 by the order recording the second closing run of milestone 3, in the session log of that run in devloop-test-w and of the first run, the main logs of both, 113 distinct assistant messages each, the sum of input_tokens, cache_creation_input_tokens and cache_read_input_tokens of the last message 410,613 and 343,921, the vendor's formula for used_percentage; concerns skills/start-work/SKILL.md at - **Anything else, including a fresh idea** — `plan-work` from the start. It, line 266, skills/plan-work/SKILL.md at Then say you are cutting it into tasks, and do it — run `cut-into-tasks`. Say, line 567, skills/cut-into-tasks/SKILL.md at goes on by itself from here, and run `build-work`. Its section on the, line 160, and skills/build-work/SKILL.md at ## Step 7 — Back to step 2, line 1156; the vendor's guidance read 11 October 2026 on code.claude.com/docs/en/best-practices, a fresh session to execute a spec and /clear between unrelated tasks; should: a new session after the planning and between tasks that do not need each other's context, the state standing in the tracker and in git; how a run with nobody there goes on into a new session is not decided; since 12 October 2026 decided as not built now, the workflow of the plugin an option for milestone 9 with three measurements first and claude -p per task rejected, point 3 of part C of the entry of 12 October 2026 on the decisions

### after the fixes of the review's findings the run opened the pull request without a second round over the new commits, in this run for #16 and #18 and in the first run for #4, #5 and #6
- Wrong: after the fixes of the review's findings the run opened the pull request without a second round over the new commits, in this run for #16 and #18, records 657 to 731 and 932 to 986, and in the first run for #4, #5 and #6
- Should: the step runs again on the commits added since the last review, `build-work` line 704, before the pull request is opened.
- Found: The second closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying yes, set up through `--auto`, read off its session log and the project, with the runs of both closing runs on the things of the table and the context the two runs used: nine defects, two met again, the open question met again; 11 October 2026, the version stays 0.135.0.
- Fix: `skills/build-work/SKILL.md` "agents gets a round over exactly those commits, after every round, before"
- Status: Walked
- Note: found 11 October 2026 by the order recording the second closing run of milestone 3, in the session log of that run in devloop-test-w, records 633 to 731 and 917 to 986, the fixes at 657 to 677 and 932 to 970 and no lens agent between them and the pull requests, and in the first run's log records 600 to 665, 930 to 994 and 1100 to 1147, the same shape three times; beyond the order of this day; concerns skills/build-work/SKILL.md at **If the diff changes after this step, this step runs again on what changed.**, line 704, to line 722; should: the step runs again on the commits added since the last review before the pull request is opened; since 12 October 2026 a second round over the commits changed after the report of the review agents is decided, the sentence at build-work lines 709 to 710 revised, point 21 of part B of the entry of 12 October 2026 on the decisions; built 16 October 2026, version 0.141.0, point 21 of part B of the roadmap entry of 12 October 2026 on the decisions: the exception at build-work gone, every fix made after a round reviewed in a round over its commits before the pull request

### step 8 landed the three records alone as pull request #13 and the workflow file as #14, two merges by the person where point 1 puts both in one pull request where nothing is installed under the records
- Wrong: not stated
- Should: not stated
- Found: The second closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying yes, set up through `--auto`, read off its session log and the project, with the runs of both closing runs on the things of the table and the context the two runs used: nine defects, two met again, the open question met again; 11 October 2026, the version stays 0.135.0.
- Fix: `skills/setup-checks/SKILL.md` "the main branch as last fetched. Where the list is empty, so that nothing"
- Status: Walked
- Note: found 11 October 2026 by the order recording the second closing run of milestone 3, in the session log of that run in devloop-test-w, records 195 to 253, pull request #13 at record 195 with the reason at record 200, #14 at record 242, both merged by the person, and #15 at record 283 armed; nothing installed in step 8; beyond the order of this day; concerns skills/setup-checks/SKILL.md at they land in one pull request with the rest of this step; otherwise in, line 945, and at step stands wherever the run stood when the flag was typed. As few pull, line 1002, to line 1005; should: the records and the workflow file land in one pull request where nothing is installed under the records; built 16 October 2026, version 0.140.0, defect i of the second closing run of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### the table held no thing for the two defects the entry of 9 October 2026 on step 8 names as findings of its reports
- Wrong: the two defects the entry of 9 October 2026 on step 8 names as report findings stand in the table.
- Should: not stated
- Found: The consistency audit of 12 October 2026 before the handover, read against the nine entries since the audit of 7 October 2026 and the code at `704cd1d`: fourteen disagreements, ten mended in the documents and four recorded; the two lists of what the closing runs still measure answered item by item; a status word broken over a line break; two changes to this machine; 12 October 2026, the version stays 0.135.0.
- Fix: none
- Status: Recorded, not built
- Note: found 12 October 2026 by the consistency audit of that day against section A of the header of scripts/devloop-stock-take; mended 12 October 2026 by two defect things in the table, sited on the lines of the entry of 9 October 2026 on step 8 that name the two report findings

### whether milestone 3 landed with the two closing runs has more than one answer and the plan says both halves
- Wrong: whether milestone 3 landed with the two closing runs is the person's to decide, and the plan says both halves.
- Should: not stated
- Found: The consistency audit of 12 October 2026 before the handover, read against the nine entries since the audit of 7 October 2026 and the code at `704cd1d`: fourteen disagreements, ten mended in the documents and four recorded; the two lists of what the closing runs still measure answered item by item; a status word broken over a line break; two changes to this machine; 12 October 2026, the version stays 0.135.0.
- Fix: `docs/plan.md` "the milestone has not landed with the two closing runs; it lands when the"
- Status: Recorded, not built
- Note: found 12 October 2026 by the consistency audit of that day; concerns docs/plan.md milestone 3 at The two closing runs were made on 11 October 2026 and at The milestone has not landed; the answers named in the entry, not decided; evidenced since 12 October 2026 on the dated sentence of docs/plan.md under milestone 3, decided not landed, the entry of 12 October 2026 on the decisions

### the mark guard states the permission mode beside a command that only names the reader among its arguments
- Wrong: the mark guard's statement stands beside a command that only names the reader among its arguments.
- Should: not stated
- Found: The consistency audit of 12 October 2026 before the handover, read against the nine entries since the audit of 7 October 2026 and the code at `704cd1d`: fourteen disagreements, ten mended in the documents and four recorded; the two lists of what the closing runs still measure answered item by item; a status word broken over a line break; two changes to this machine; 12 October 2026, the version stays 0.135.0.
- Fix: none
- Status: Recorded, not built
- Note: found 12 October 2026 by the consistency audit of that day, measured at 08:04 UTC with the hook fed its JSON, three commands naming bin/devloop-permission-mode as an argument answering with the statement; concerns hooks/pre-tool-use-mark-guard.sh at the grep for the reader's name, line 48 at 704cd1d; should: the statement stands beside a command that runs the program, the token standing where a command starts

### a status word of docs/roadmap.md broken over a line break is read by the tool as none and nothing reports it
- Wrong: a status word broken over two lines of this file is read by the tool as none, and nothing reports it.
- Should: not stated
- Found: The consistency audit of 12 October 2026 before the handover, read against the nine entries since the audit of 7 October 2026 and the code at `704cd1d`: fourteen disagreements, ten mended in the documents and four recorded; the two lists of what the closing runs still measure answered item by item; a status word broken over a line break; two changes to this machine; 12 October 2026, the version stays 0.135.0.
- Fix: none
- Status: Closed, lapsed: `scripts/devloop-stock-take` no longer carries "STATUS WORDS OF docs/roadmap.md BROKEN OVER A LINE BREAK (a".
- Note: found by the order of 12 October 2026, met twice while the entry on the second closing run was written and rewrapped before the merge of #167; searched at 704cd1d with a program joining each line to the next, spanning matches 0; concerns scripts/devloop-stock-take at ROADMAP_STATUS, line 571 at 704cd1d, read one line at a time at line 1214; should: the tool reads a status word across a line break, or reports such a line as one that needs a record; the build comes with the command boundaries, decision 13 of the entry of 9 October 2026 on the open findings; renamed on 12 October 2026 from 'scripts/devloop-stock-take / whole file / a status word of docs/roadmap.md broken over a line break is read by the tool as none and nothing reports it', the site moved onto the status line of the audit as the evidence left it; built that day as a listing under a heading of its own with exit 1, the place rejected rather than read across the break, the should revised so by the person, the entry of 12 October 2026 on the four changes to the tool

### two entries of 10 October 2026 say a report names what was found and no finding was added to the table, two of those reports not on this disk
- Wrong: findings named in reports alone by two entries of 10 October 2026, two of those reports not on this disk.
- Should: not stated
- Found: The consistency audit of 12 October 2026 before the handover, read against the nine entries since the audit of 7 October 2026 and the code at `704cd1d`: fourteen disagreements, ten mended in the documents and four recorded; the two lists of what the closing runs still measure answered item by item; a status word broken over a line break; two changes to this machine; 12 October 2026, the version stays 0.135.0.
- Fix: none
- Status: Recorded, not built
- Note: found 12 October 2026 by the consistency audit of that day against section A of the header of scripts/devloop-stock-take; concerns docs/roadmap.md at the entry of 10 October 2026 on the arrangement at No finding was added to the table and at the addendum of 10 October 2026 to the entry on step 8; the reports of 9 and 10 October 2026 on step 8 and on the arrangement not on this disk on 12 October 2026; should: what a report finds enters the table as a finding or the entry as a defect in the same commit

### a project whose mode was set up before 0.134.0 meets the question on the rule for auto mode on no path, step 8 skipping where all five stand and plan-work asking nothing where the mode is set up and --auto was typed
- Wrong: not stated
- Should: not stated
- Found: Step 8 of `setup-checks`: a reading before the question, the question field by field, the rule for auto mode after its yes; a guard on the identity of a commit; milestone 12 in the plan; the findings of 9 October 2026; 9 October 2026, version 0.134.0.
- Fix: `skills/setup-checks/SKILL.md` "**The form for a start with `--auto`"
- Status: Built, never walked
- Note: found 9 October 2026 by the report of the order on step 8 of setup-checks, named in the entry of that day as not asked and as a finding of the report, in no row of the table until the consistency audit of 12 October 2026 added this thing; concerns skills/setup-checks/SKILL.md at the line where step 8 says so and skips the rest where the mode is set up by all five, and skills/plan-work/SKILL.md where --auto typed with the mode set up asks nothing; should: a project whose mode was set up before 0.134.0 is asked the rule question on some path; built 22 October 2026, version 0.156.0, the roadmap entry of that date on the conditions at the mark and the question after a refusal: such a project meets the question at a start with --auto once auto mode has refused an install by one of the ways the rule names in a run without the person, bin/devloop-auto-mode-question deciding it off the open issue that refusal left, in setup-checks step 8 called alone from build-work's direct route or plan-work's end of Stage 1, in the form for a start with --auto; the stored no of the first build of that day is gone, the question coming back while the issue is open; a run with the person is owed and comes in the closing run of the milestone; no longer holds milestone 3 open since the person's decision of 24 October 2026, (9) of the roadmap entry of 24 October 2026 on how an install is recorded, which gives the reason; built all the same where it is built or costs a few lines of text, neither a run nor a bench required for the milestone; since 24 October 2026, version 0.160.0, the roadmap entry of 24 October 2026 on the questions, the form names each refused install with its issue's number and nothing of the run's own, and setup-checks is called for that question at every start that meets it, the defect of run 3a's second start built; the line of its evidence unchanged
- Bench: `docs/roadmap.md` "The bench of the second order, 22 October 2026, against the hooks and"

### ~/.claude itself a link to a directory that does not exist: bin/devloop-auto-mode-rule write makes the directory the link points to, the case decided for a linked file alone and not arising in practice
- Wrong: not stated
- Should: not stated
- Found: Step 8 of `setup-checks`: a reading before the question, the question field by field, the rule for auto mode after its yes; a guard on the identity of a commit; milestone 12 in the plan; the findings of 9 October 2026; 9 October 2026, version 0.134.0.
- Fix: none
- Status: Closed, left on purpose: decided in `docs/roadmap.md` at "case does not arise in practice: where `~/.claude` is itself a link to a".
- Note: found 10 October 2026 by the order on the program writing through a link, named in the addendum of that day as a finding of its report and not built since the case does not arise in practice, in no row of the table until the consistency audit of 12 October 2026 added this thing; concerns bin/devloop-auto-mode-rule at write_file, os.path.realpath resolving that link; should: the program makes no directory where ~/.claude is a link to one that does not exist, or its head says that it does and why; closed 20 October 2026 as left on purpose, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### setup-checks step 3 names the check commands as something to grant three steps before step 6 writes them
- Wrong: setup-checks step 3 names the check commands as something to grant three steps before step 6 writes them, `skills/setup-checks/SKILL.md` lines 333 to 340
- Should: the paragraph falls, point 8 of part B. Replaces the finding of the table on `skills/setup-checks/SKILL.md` "step 3 says Name what you just wrote down …", recorded 1 October 2026, which leaves the table.
- Found: The decisions of 12 October 2026: milestone 3 has not landed with the two closing runs and no run with Go follows; twenty-seven things to build before the next run, on the install guard, at the setup and at planning and building; three things decided and not built now; the person's wordings, word for word; who changed the check targets in the second closing run; 12 October 2026, the version stays 0.135.0.
- Fix: `skills/setup-checks/SKILL.md` "This step does not name the check commands to the person as something to"
- Status: Built, never walked
- Note: found 1 October 2026 as a finding of the table on skills/setup-checks/SKILL.md and recorded 12 October 2026 as a defect by the order recording the decisions of that day; concerns skills/setup-checks/SKILL.md at **Name what you just wrote down as something to grant.** A check command, line 333, to line 340; should: the paragraph falls, point 8 of part B of the entry of 12 October 2026 on the decisions; replaces the finding step 3 says Name what you just wrote down as something to grant, which left the table; built 16 October 2026, version 0.140.0, point 8 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### no step of a first setup writes the version marker, so that the next start refreshes
- Wrong: no step of a first setup writes the version marker, so that the next start refreshes, `skills/setup-project/SKILL.md` line 114
- Should: step 6 writes it, the marker line above the top heading of each of the five files, point 13 of part B. Replaces the finding of the table on `skills/setup-project/SKILL.md` "the marker paragraph stands under Refreshing an existing setup …", recorded 3 October 2026, which leaves the table.
- Found: The decisions of 12 October 2026: milestone 3 has not landed with the two closing runs and no run with Go follows; twenty-seven things to build before the next run, on the install guard, at the setup and at planning and building; three things decided and not built now; the person's wordings, word for word; who changed the check targets in the second closing run; 12 October 2026, the version stays 0.135.0.
- Fix: `skills/setup-project/SKILL.md` "Write the running version there, read from"
- Status: Built, never walked
- Note: found 3 October 2026 as a finding of the table on skills/setup-project/SKILL.md and recorded 12 October 2026 as a defect by the order recording the decisions of that day; concerns skills/setup-project/SKILL.md at Each file records the plugin version it was last written from, on its own line., line 114, under Refreshing an existing setup, and step 6; should: step 6 writes the marker line above the top heading of each of the five files, point 13 of part B of the entry of 12 October 2026 on the decisions; replaces the finding the marker paragraph stands under Refreshing an existing setup, which left the table; built 16 October 2026, version 0.140.0, point 13 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### setup-checks step 3 names the compiler and the runtime and not the system packages of --with-deps
- Wrong: setup-checks step 3 names the compiler and the runtime and not the system packages of --with-deps, `skills/setup-checks/SKILL.md` line 409
- Should: the sentence names the system packages beside the compiler and the runtime, so that the line gives the command where the browser needs them, point 15 of part B. Replaces the finding of the table on `skills/setup-checks/SKILL.md` "step 3 says the line that the run installs a tool outside the project comes only where …", recorded 8 October 2026, which leaves the table.
- Found: The decisions of 12 October 2026: milestone 3 has not landed with the two closing runs and no run with Go follows; twenty-seven things to build before the next run, on the install guard, at the setup and at planning and building; three things decided and not built now; the person's wordings, word for word; who changed the check targets in the second closing run; 12 October 2026, the version stays 0.135.0.
- Fix: `skills/setup-checks/SKILL.md` "the install brings no compiler, no runtime and no system packages along —"
- Status: Built, never walked
- Note: found 8 October 2026 as a finding of the table on skills/setup-checks/SKILL.md and recorded 12 October 2026 as a defect by the order recording the decisions of that day; concerns skills/setup-checks/SKILL.md at the install brings no compiler and no runtime along, line 409; should: the sentence names the system packages beside the compiler and the runtime, so that the line gives the command where the browser needs them, point 15 of part B of the entry of 12 October 2026 on the decisions; replaces the finding step 3 says the line that the run installs a tool outside the project comes only where, which left the table; built 16 October 2026, version 0.140.0, point 15 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### a build subagent changed three check targets in the Makefile itself, the rule of shared/checks-owner.md reached it nowhere, and the main run did not call setup-checks
- Wrong: a build subagent changed three check targets in the Makefile itself in the second closing run, the rule of `shared/checks-owner.md` reached it nowhere, and the main run did not call `setup-checks`
- Should: the build subagent gets the rule as its third, changes no check target itself and names a needed change in its report, and the main run calls `setup-checks` for that class on the task's branch where a report names one, point 22 of part B.
- Found: The decisions of 12 October 2026: milestone 3 has not landed with the two closing runs and no run with Go follows; twenty-seven things to build before the next run, on the install guard, at the setup and at planning and building; three things decided and not built now; the person's wordings, word for word; who changed the check targets in the second closing run; 12 October 2026, the version stays 0.135.0.
- Fix: `skills/build-work/SKILL.md` "names is the main run's: where the subagent's report names a check target"
- Status: Built, never walked
- Note: found 12 October 2026 by the order recording the decisions of that day, read at the source: d4d97b0 on the main branch of devloop-test-w and records 59, 74, 78 and 136 of the log of the build subagent of #16 of the second closing run, the main log loading setup-checks at records 134 and 136 alone; concerns skills/build-work/SKILL.md step 3 at the two rules it reads nowhere else, line 383, and shared/checks-owner.md, inserted at line 511 of that skill; should: the build subagent gets the rule as its third, changes no check target itself and names a needed change in its report, and the main run calls setup-checks for that class on the task branch where a report names one, point 22 of part B of the entry of 12 October 2026 on the decisions; built 16 October 2026, version 0.141.0, point 22 of part B of the roadmap entry of 12 October 2026 on the decisions: the handover of step 3 names the rule as the third, the subagent changes no target and names a needed change in its report, the main run calls setup-checks for that class on the task's branch before step 4

### an install command handed over carries no change into the project directory, in the first closing run npx playwright install chromium
- Wrong: an install command handed over carries no change into the project directory, in the first closing run `npx playwright install chromium`, lines 17141 to 17146
- Should: every command handed to the person runs as it stands from anywhere, an install command with the change into the project directory before it and the merge command with `--repo`, point 18 of part B.
- Found: The decisions of 12 October 2026: milestone 3 has not landed with the two closing runs and no run with Go follows; twenty-seven things to build before the next run, on the install guard, at the setup and at planning and building; three things decided and not built now; the person's wordings, word for word; who changed the check targets in the second closing run; 12 October 2026, the version stays 0.135.0.
- Fix: `shared/skill-name.md` "**A command handed over runs as it stands, from wherever the person is.** No"
- Status: Walked
- Note: found 12 October 2026 by the order recording the decisions of that day, in the entry on the first closing run at lines 17141 to 17146, the handover of record 691 of that log; concerns skills/build-work/SKILL.md step 3 point 7 and skills/setup-checks/SKILL.md step 3, where an install command is handed over; should: every command handed to the person runs as it stands from anywhere, an install command with the change into the project directory before it and the merge command with --repo, point 18 of part B of the entry of 12 October 2026 on the decisions; built 16 October 2026, version 0.140.0, point 18 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### the messages at a failed fetch hand git commands over where the run can do the thing itself after a question
- Wrong: the messages at a failed fetch hand git commands over where the run can do the thing itself after a question, `shared/fetch-three-times.md` lines 56 to 71
- Should: the run asks and does it, for a changed file, for the same line changed on both sides and for commits of their own on the main branch, in the wordings approved on 12 October 2026, point 19 of part B.
- Found: The decisions of 12 October 2026: milestone 3 has not landed with the two closing runs and no run with Go follows; twenty-seven things to build before the next run, on the install guard, at the setup and at planning and building; three things decided and not built now; the person's wordings, word for word; who changed the check targets in the second closing run; 12 October 2026, the version stays 0.135.0.
- Fix: `shared/fetch-three-times.md` "person gets no git command where the run can do the thing itself.** Four"
- Status: Built, never walked
- Note: found 12 October 2026 by the order recording the decisions of that day; concerns shared/fetch-three-times.md at the examples approved for it are these, and the run takes the one that fits, line 55, to line 71, inserted into build-work, plan-work, setup-project and setup-checks; should: the run asks and does it, for a changed file set aside and brought back, for the same line changed on both sides shown and asked about, and for commits of their own put on a branch and the main branch brought to the state on GitHub, in the wordings approved on 12 October 2026, point 19 of part B of the entry of 12 October 2026 on the decisions; replaces the two proposals of the audit of 7 October 2026 on git stash pop and git reset --keep; built 16 October 2026, version 0.140.0, point 19 of part B of the roadmap entry of 12 October 2026, the roadmap entry of 16 October 2026

### text that belongs in the message stood in the thinking part at six further places of the two closing runs
- Wrong: text that belongs in the message stood in the thinking part at six further places of the two closing runs, beyond defect a — `setup-project` step 2 and `cut-into-tasks` line 159 in the first run, `start-work` line 274, `cut-into-tasks` line 159 and `review-changes` lines 105 to 114 twice in the second
- Should: it stands in the message, built after the measurement of the cause, point 27 of part B.
- Found: The decisions of 12 October 2026: milestone 3 has not landed with the two closing runs and no run with Go follows; twenty-seven things to build before the next run, on the install guard, at the setup and at planning and building; three things decided and not built now; the person's wordings, word for word; who changed the check targets in the second closing run; 12 October 2026, the version stays 0.135.0.
- Fix: `output-styles/devloop.md` "Text a skill of devloop owes the person reaches them in one of two places: in"
- Status: Built, never walked
- Note: found 12 October 2026 by the order recording the decisions of that day, in the entries on the two closing runs: setup-project step 2 and cut-into-tasks line 159 in the first run, start-work line 274, cut-into-tasks line 159 and review-changes lines 105 to 114 twice in the second, lines 17394 to 17397, 18221 to 18223, 18266 to 18268 and 17909 to 17929; concerns skills/setup-project/SKILL.md step 2, skills/start-work/SKILL.md at **`--auto` travels with that choice.**, skills/cut-into-tasks/SKILL.md at - **Alone, `build`**: say you are starting on the first task and that the build and skills/review-changes/SKILL.md at the trigger's own words, negated, item by item; should: the text stands in the message, built after a measurement of the cause on the two session logs as an order of its own, point 27 of part B of the entry of 12 October 2026 on the decisions; since 15 October 2026 the entry of that day on the thinking part of the two closing runs measured it on their session logs: every block with text stands before a tool call in the form of the model's progress update, of which the log keeps a summary only, text that ends a turn arriving as text every time; at defect a's two places the cause lies with the model, at these six it cannot be decided from the logs, and the bench that would decide it is described there; in the first run the place of cut-into-tasks is line 154, With them, not line 159; 29 further places stand as a defect of their own in that entry; since 15 October 2026 the output style of the plugin, output-styles/devloop.md, says that such text stands as a text block of the message before the tool call, the entry of that date on the output style, each of the six places held against its words there; the bench of the entry on the thinking part stands not run, which that entry records; evidence re-anchored 17 October 2026, version 0.142.0, onto the opening of the output style as rewritten that day: owed text stands in the question or in the message that ends the turn, nothing between two tool calls

### the person's principle stands at four places as a reason and as no rule of the conventions
- Wrong: the person's principle stands at four places as a reason and as no rule of the conventions, `docs/skill-conventions.md` lines 1850 and 1953, `hooks/pre-tool-use-install-guard.sh` lines 68 and 81 and `hooks/permission-request-unattended.sh` lines 16 to 17
- Should: a rule of its own in `docs/skill-conventions.md` beside "Every failure is a block", the four places pointing at it, point 5 of part B.
- Found: The decisions of 12 October 2026: milestone 3 has not landed with the two closing runs and no run with Go follows; twenty-seven things to build before the next run, on the install guard, at the setup and at planning and building; three things decided and not built now; the person's wordings, word for word; who changed the check targets in the second closing run; 12 October 2026, the version stays 0.135.0.
- Fix: `docs/skill-conventions.md` "**In doubt, a run with nobody there is not blocked.** The person's principle,"
- Status: Recorded, not built
- Note: found 12 October 2026 by the order recording the decisions of that day, decision 14 of the entry of 9 October 2026 on the open findings having left it open; concerns docs/skill-conventions.md at and the person's principle, written down in, line 1850, and at by the person's principle in the roadmap entry of that date that in doubt a, line 1953, hooks/pre-tool-use-install-guard.sh lines 68 and 81 and hooks/permission-request-unattended.sh lines 16 to 17; should: a rule of its own in docs/skill-conventions.md beside Every failure is a block, the four places pointing at it, point 5 of part B of the entry of 12 October 2026 on the decisions; built 12 October 2026, version 0.137.0, the roadmap entry of that date on the command reader, which carries the measurement; the should is a rule of the conventions, which the tool reads as recorded by its own rule on evidence under docs/, and that is right

### fourteen of the nineteen checks under Before a handover, run these have a fixed expected answer and run only where somebody starts them
- Wrong: fourteen of the nineteen checks under "Before a handover, run these" have a fixed expected answer and run only where somebody starts them — the checks introduced by the fourteen sentences above
- Should: they run in `.github/workflows/stock-take.yml` on every pull request, the five whose output somebody judges staying under the heading.
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: none
- Status: Recorded, not built
- Note: recorded 12 October 2026, point 8 of the order on the command reader; the five whose output somebody judges stay under the heading

### devloop names nowhere the version of Claude Code it needs, while onFailure block needs 2.1.295
- Wrong: devloop names nowhere the version of Claude Code it needs, searched with the commands above, while `"onFailure": "block"` needs 2.1.295 and what an older version does with the field is documented nowhere
- Should: devloop names the lowest version it needs, and a session on an older one learns that before the first command.
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: none
- Status: Recorded, not built
- Note: recorded 12 October 2026, point 9 of the order on the command reader; the changelog names the field under 2.1.295 alone, and what an older version does with it is documented nowhere

### a redirection behind a compound command belonged to no command the reader printed, so a mark written through a group went unseen outside auto mode and a heredoc behind done was read as commands
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `bin/devloop-command-reader` "judge(d, 0, first)"
- Status: Walked
- Note: found 13 October 2026 in the review of pull request #171 at the code, finding 1 of the addendum of 13 October 2026 to the roadmap entry on the command reader, built the same day in 6a62e4d

### a browser landing inside the project put the command's beyond back to where it stood before the command, taking a sudo on the same command with it
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "INSIDE) : ;; # inside the project: opens nothing and brings nothing outside"
- Status: Walked
- Note: found 13 October 2026 in the review of pull request #171 at the code, finding 2 of the addendum of 13 October 2026 to the roadmap entry on the command reader, built the same day in 6a62e4d

### the reader read as wrappers the two vendors' lists and exec alone, so a program outside them that runs its argument as a command was judged itself and the command behind it went through
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `bin/devloop-command-reader` "ONEWORD = " - timeout time nice nohup stdbuf command builtin noglob nocorrect"
- Status: Walked
- Note: found 13 October 2026 in the review of pull request #171 at the code, finding 3 of the addendum of 13 October 2026 to the roadmap entry on the command reader, built the same day in 6a62e4d; the group decided by the person that day, and the wording of the cause under a yes approved by them

### subcommands the vendors document as placing a program were not read: nix-env, nix-shell -p, cargo binstall and the updates of brew, pipx, uv tool, npm and gem
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "install|reinstall|upgrade|add|use|tap) item brew "" "$V1" ;;"
- Status: Built, never walked
- Note: found 13 October 2026 in the review of pull request #171 at the code, finding 4 of the addendum of 13 October 2026 to the roadmap entry on the command reader, built the same day in 6a62e4d; the evidence line carries the verb for the way of the rule since 23 October 2026, the roadmap entry of 23 October 2026 on the catch-up after the audit of that day

### command-does-not-answer.md named the workflow file among the texts a rule of this set writes with the editing tool, and no such rule stands until point 26 of the decisions of 12 October 2026 is built
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `shared/command-does-not-answer.md` "editing tool for `environment.md`, a file behind `--body-file` for a body —"
- Status: Built, never walked
- Note: found 13 October 2026 in the review of pull request #171 at the code, finding 5 of the addendum of 13 October 2026 to the roadmap entry on the command reader, built the same day in 6a62e4d

### the table guard's comment on git_command said -1 where none while the function prints nothing and ends with 1
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `hooks/pre-tool-use-table-guard.sh` "the exit where none stands, as in hooks/pre-tool-use-branch-guard.sh."
- Status: Built, never walked
- Note: found 13 October 2026 in the review of pull request #171 at the code, finding 6 of the addendum of 13 October 2026 to the roadmap entry on the command reader, built the same day in 6a62e4d

### three handlers started only where their if field matched, a filter the vendor calls best-effort that looks behind no sh -c and no runner, so caffeinate -i git push origin main and sh -c "gh pr merge 5" started no guard
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `hooks/hooks.json` ""command": "${CLAUDE_PLUGIN_ROOT}/hooks/pre-tool-use-merge-guard.sh""
- Status: Built, never walked
- Note: found 13 October 2026 in the review of the addendum of that day to the roadmap entry on the command reader, finding 7 there, decided by the person the same day and built in 6a62e4d: the three if fields gone, the workflow's step holding every handler under PreToolUse to carrying none

### the group of the programs that run a command was put together from single programs and was incomplete, so parallel, tmux, screen, entr, watchexec, nodemon, git rebase -x, bisect run and submodule foreach, fd -x, npm exec -c and uv run passed the hooks on the branch where main stopped them
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `bin/devloop-command-reader` "ONEWORD = " - timeout time nice nohup stdbuf command builtin noglob nocorrect wa"
- Status: Walked
- Note: found 13 October 2026 in the review of pull request #171 at the code at 66f1bc2, finding A of the second addendum of 13 October 2026 to the roadmap entry on the command reader, built the same day in 67e97a4

### mise exec and x were read as an installation against the decision that a command is one only where it names it, and nix develop was judged itself for the same reason
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "mise|rtx) case "$V1" in install|i|use|u|upgrade|up|self-update|install-into|add|"
- Status: Walked
- Note: found 13 October 2026 in the review of the first addendum of that day, finding B of the second addendum of 13 October 2026 to the roadmap entry on the command reader, built the same day in 67e97a4

### setpriv was a stop under every answer whatever its options, where only an option that sets another user, a group or the supplementary groups runs the command with other privileges
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "setpriv) priv_if "$i" --ruid --euid --reuid ;;"
- Status: Walked
- Note: found 13 October 2026 in the order of that day, finding 1 of the third addendum of 13 October 2026 to the roadmap entry on the command reader, built 14 October 2026 in cde29cf; --keep-groups of the order's list left out by the vendor's sentence; the group options --rgid, --egid, --regid, --groups, --clear-groups and --init-groups no stop since the fourth addendum of 14 October 2026, by the decision of that day

### hyperfine was read with -S taking a value and every benchmarked command as a text for the shell against v2.0.0, which runs them with no shell, refuses a bare operator and takes -S as an alias of --shell=default
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `bin/devloop-command-reader` "function hyper_command(d, w, cmode"
- Status: Walked
- Note: found 13 October 2026 in the order of that day, finding 2 of the third addendum of 13 October 2026 to the roadmap entry on the command reader, whose premise that v1.20.0 is the newest release did not hold; built 14 October 2026 in cde29cf

### the options whose value is a command were read as values, hyperfine --prepare, --setup, --cleanup and --conclude, the script behind nodemon --exec and flock -c before the file, and programs already in the group lost a command where an option that takes a value was missing from their table
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `bin/devloop-command-reader` "if (index(HYPERTEXTS, " " m " ") > 0) {"
- Status: Walked
- Note: found 13 October 2026 in the order of that day, finding 3 of the third addendum of 13 October 2026 to the roadmap entry on the command reader, and on 14 October 2026 by the check of the reading again against the code; built 14 October 2026 in cde29cf

### the search for the group read the manuals of a few projects and tools found by name, so that programs of every kind outside them, gosu, chpst, tini, retry, foreman, concurrently and pm2 among them, passed the hooks on the branch where main stopped them
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `bin/devloop-command-reader` "ONEWORD = ONEWORD "enosys gosu su-exec fakeroot snooze mqtt-exec xvfb-run"
- Status: Walked
- Note: found 13 October 2026 in the order of that day, finding 4 of the third addendum of 13 October 2026 to the roadmap entry on the command reader, the searches by kind and two passes of a check for completeness; built 14 October 2026 in cde29cf

### sg ran the command as another group and passed under a yes, read as no stop since the group changed and not the user
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `bin/devloop-command-reader` "if (name == "sg") {"
- Status: Walked
- Note: found 14 October 2026 while finding 1 of the third addendum of 13 October 2026 to the roadmap entry on the command reader was built, by its should that another group is a stop; built the same day in cde29cf; decided against 14 October 2026, the fourth addendum: a change of group alone is no stop, sg read over to the one word it hands sh -c, the evidence on the reader's line that reads it

### under Linux the reader did not run, awk refusing its program as one argument of 204 937 bytes, so that every hook blocked every Bash call there
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `bin/devloop-command-reader` "-f /dev/fd/3 3<<'AWK'"
- Status: Walked
- Note: found 14 October 2026 in the order of that day, finding 1 of the fourth addendum of 14 October 2026 to the roadmap entry on the command reader, built 14 October 2026 in 1d295f2: the program a here-document on file descriptor 3

### the self-test's encoder of a command into the JSON of a hook doubled no backslash under busybox awk, fourteen cases red under Alpine, which the fourth addendum had recorded as the reader reading a backslash before a newline otherwise
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `bin/devloop-command-reader` "{ gsub(/\\/, "&&"); gsub(/"/"
- Status: Walked
- Note: found 14 October 2026 in Docker alpine:3.22 with busybox awk 1.37.0 while measuring finding 1 of the fourth addendum of 14 October 2026 to the roadmap entry on the command reader, recorded there as the reader reading a backslash before a newline otherwise, which the fifth addendum of 14 October 2026 to the roadmap entry on the command reader corrects: the reader read it right, the self-test's encoder j() differed, gsub taking two backslashes of a replacement for one as POSIX says; built 14 October 2026 in ef1b470 with gsub(/\\/, "&&"); the old name: busybox awk of Alpine reads a backslash before a newline inside a word otherwise than the awk of macOS, mawk and gawk, one case of the reader's self-test red there

### nothing showed that the reader and the hooks run under macOS and under Windows with Git Bash, the self-test running on ubuntu-latest alone and no .gitattributes fixing the line endings
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `.github/workflows/stock-take.yml` "hooks-on-every-system:"
- Status: Walked
- Note: found 14 October 2026 in the order of that day, finding 2 of the fourth addendum of 14 October 2026 to the roadmap entry on the command reader, built 14 October 2026 in 1d295f2: the job hooks on every system and .gitattributes; windows-latest not run before the push

### a change of the group or of the supplementary groups alone was a stop under every answer at the install guard, sg and the group options of setpriv, capsh, s6-applyuidgid and nine more
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "s6-applyuidgid) priv_if "$i" -u -U ;;"
- Status: Walked
- Note: found 14 October 2026 in the order of that day, finding 3 of the fourth addendum of 14 October 2026 to the roadmap entry on the command reader, built 14 October 2026 in 1d295f2 by the person's decision of that day; sudo -g stays a stop as sudo is

### the reader read a doubt on the blocking side at the 21 points of the third addendum's check, at man -P under man-db, at a text typed into a terminal and at the names ts and dotenv, where the rule says a doubt lets through
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `bin/devloop-command-reader` "if (j <= NW[d] && W[d, j] == "record") return skip_opts(d, j + 1, VALS["rr"])"
- Status: Walked
- Note: found 14 October 2026 in the order of that day, finding 4 of the fourth addendum of 14 October 2026 to the roadmap entry on the command reader, built 14 October 2026 in 1d295f2 by the person's decision of that day, each point at its place in the reader; where the system decides, the system decides; the typed text, which this build had read as a doubt, is read as shell text again since the fifth addendum of 14 October 2026 to the roadmap entry on the command reader, the person's decision of that day, and the evidence moved off the stuff line onto rr's

### the reader's self-test depended on the system it ran on and stopped at the first red case: red under Windows with Git Bash, where four cases expected the reading of macOS and Linux, and the hooks never started after it
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `bin/devloop-command-reader` "fail() { echo "FAIL $1: $2""
- Status: Walked
- Note: found 14 October 2026 in the order of that day, finding 1 of the fifth addendum of 14 October 2026 to the roadmap entry on the command reader, the check hooks on every system (windows-latest) of pull request #171 red at 6365a96; built 14 October 2026 in ef1b470: every red case named, the four cases pinned to Linux, the Windows readings a case of their own, the step running the handlers after a red self-test

### a text typed into a terminal that ends a line came past the guards since 6365a96, tmux send-keys with Enter, screen -X stuff and zellij action write-chars and paste with a line's end not read
- Wrong: not stated
- Should: not stated
- Found: The command reader: every hook reads its input through one program that decodes the JSON and takes the command apart as the shell runs it; the install guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the browser and route variables before the command; every handler under PreToolUse and PermissionRequest blocks the action where the hook fails; two rules in the conventions; a block reported and not reworded; two findings recorded, not built; 12 October 2026, version 0.137.0.
- Fix: `bin/devloop-command-reader` "else if (c == "send-keys" && n > 0)"
- Status: Walked
- Note: found 14 October 2026 in the order of that day, finding 2 of the fifth addendum of 14 October 2026 to the roadmap entry on the command reader, the person's decision of that day; built 14 October 2026 in ef1b470: the three branches of 84f1aab back, ends_line back, the line's end taken off the text with line_end_off

### README.md named sudo, the piped installer, the branded browser and the system packages as what stays with the person whatever the record says, and not the programs that run a command as an administrator or as another user
- Wrong: README.md names the programs that run a command as an administrator or as another user among what stays with the person whatever the record says.
- Should: not stated
- Found: The consistency audit of 14 October 2026 before the handover, read against the three entries since the audit of 12 October 2026, the five addenda of the third among them, and the code at `a03a720`: fifteen disagreements, seven mended in the documents, two rows of the table brought to the tool's rule and six recorded; the nine points of the order answered, two of them measured on the tool; the platform's run of pull request #171 read; 14 October 2026, the version stays 0.137.0.
- Fix: none
- Status: Closed, corrected in the document: `README.md` carries "administrator or as another user — `doas`, `su`, `run0`, `pkexec` and the".
- Note: found 14 October 2026 by the consistency audit of that day; concerns README.md under The check suite at would install stay with you whatever the record says; since 13 October 2026 every program of the first kind of the group is a stop under every answer, hooks/pre-tool-use-install-guard.sh line 281 and cond_priv at a03a720, docs/skill-conventions.md under The second kind is a browser for tests; should: README names them beside sudo with the date; mended 14 October 2026; closed 20 October 2026 as corrected in the document, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### README.md said the branch protection on main requires the one check stock-take, where five checks are required since 14 October 2026
- Wrong: README.md says the branch protection on main requires five checks since 14 October 2026.
- Should: README says five checks are required, without a date, the README carrying none
- Found: The consistency audit of 14 October 2026 before the handover, read against the three entries since the audit of 12 October 2026, the five addenda of the third among them, and the code at `a03a720`: fifteen disagreements, seven mended in the documents, two rows of the table brought to the tool's rule and six recorded; the nine points of the order answered, two of them measured on the tool; the platform's run of pull request #171 read; 14 October 2026, the version stays 0.137.0.
- Fix: none
- Status: Closed, lapsed: `README.md` no longer carries "the branch protection on main requires that check".
- Note: found 14 October 2026 by the consistency audit of that day; concerns README.md under Working on devloop itself at the branch protection on main requires that check; read off the platform 14 October 2026 with gh api repos/jayjay-create/claude-devloop/branches/main/protection, five contexts, strict true, enforce_admins true; mended 14 October 2026; should since 20 October 2026, the roadmap entry of that date on milestone 3, part 2: README says five checks are required, without a date, the README carrying none; the old should, quoted: README says five checks are required since 14 October 2026; built 20 October 2026, version 0.153.0; closed 21 October 2026, lapsed, the paragraph on the merge gate leaving the README with the roadmap entry of 20 October 2026 on milestone 3, part 2, its fifth commit

### the defect on the rule keeping runtimes out of the install question read recorded and not built while the question says nothing of runtimes since 5 October 2026
- Wrong: the defect on the rule keeping runtimes out of the install question carries its evidence on the line of shared/install-question.md saying nothing of it is said since 5 October 2026.
- Should: not stated
- Found: The consistency audit of 14 October 2026 before the handover, read against the three entries since the audit of 12 October 2026, the five addenda of the third among them, and the code at `a03a720`: fifteen disagreements, seven mended in the documents, two rows of the table brought to the tool's rule and six recorded; the nine points of the order answered, two of them measured on the tool; the platform's run of pull request #171 read; 14 October 2026, the version stays 0.137.0.
- Fix: none
- Status: Closed, corrected in the document: `docs/defects.md` carries "2026 nothing of it is said. And the first no does not say that work without".
- Note: found 14 October 2026 by the consistency audit of that day; concerns docs/stock-take.tsv, the row of the defect of the audit of 4 October 2026 on the rule keeping runtimes out of the install question, whose evidence stood on its status line docs/roadmap.md line 10349 at a03a720 while shared/install-question.md lines 22 to 28 say nothing of runtimes is said since 5 October 2026, the rule gone being the second of the two ways the should named; should: the evidence stands on that line of the shared text by section D of the head of the tool; the row changed 14 October 2026; closed 20 October 2026 as corrected in the document, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### the defect on domain.md naming the two places as created in step 6 read recorded and not built while step 6 creates them and the sentence says so since 1 October 2026
- Wrong: the defect on domain.md and the two places carries its evidence on line 634 of setup-project and its site on its status line.
- Should: not stated
- Found: The consistency audit of 14 October 2026 before the handover, read against the three entries since the audit of 12 October 2026, the five addenda of the third among them, and the code at `a03a720`: fifteen disagreements, seven mended in the documents, two rows of the table brought to the tool's rule and six recorded; the nine points of the order answered, two of them measured on the tool; the platform's run of pull request #171 read; 14 October 2026, the version stays 0.137.0.
- Fix: none
- Status: Recorded, not built
- Note: found 14 October 2026 by the consistency audit of that day; concerns docs/stock-take.tsv, the row of the defect of the stock-take of 23 September 2026 on domain.md and the two places, whose evidence stood on its status line docs/roadmap.md line 5307 at a03a720 while skills/setup-project/SKILL.md line 634 reads the two just created, step 6 creating them since 1 October 2026; should: the evidence stands on line 634 and the site on the status line it left, by section D of the head of the tool; the row changed 14 October 2026

### the identity guard's comment says a line routed through a function stands in no search set, which has not held since 12 October 2026
- Wrong: the identity guard's comment gives as its reason that a line routed through a function stands in no search set, which has not held since 12 October 2026.
- Should: not stated
- Found: The consistency audit of 14 October 2026 before the handover, read against the three entries since the audit of 12 October 2026, the five addenda of the third among them, and the code at `a03a720`: fifteen disagreements, seven mended in the documents, two rows of the table brought to the tool's rule and six recorded; the nine points of the order answered, two of them measured on the tool; the platform's run of pull request #171 read; 14 October 2026, the version stays 0.137.0.
- Fix: `hooks/pre-tool-use-identity-guard.sh` "and the block's record in docs/stock-take.tsv stands on the one exit line"
- Status: Built, never walked
- Note: found 14 October 2026 by the consistency audit of that day; concerns hooks/pre-tool-use-identity-guard.sh lines 45 to 47 at a03a720, since a line routed through a function stands in no search set; a line calling a function that ends the program stands in the set since 12 October 2026, the entry of that day on the four changes to the tool, point 1; should: the comment says why the block leaves through the two lines without that reason, or drops it; outside docs/, not built; built 14 October 2026 by the catch-up of that day: the comment says why the two lines at the end are shared, the message standing once and the block's record on the one exit line, and no longer gives that reason; the site stays on the status line

### the workflow's comment and the fifth addendum name the installation of the Alpine step and not its marking the checkout a safe directory for git
- Wrong: the workflow's comment and the fifth addendum name the Alpine step's installation and not its marking the checkout a safe directory for git.
- Should: not stated
- Found: The consistency audit of 14 October 2026 before the handover, read against the three entries since the audit of 12 October 2026, the five addenda of the third among them, and the code at `a03a720`: fifteen disagreements, seven mended in the documents, two rows of the table brought to the tool's rule and six recorded; the nine points of the order answered, two of them measured on the tool; the platform's run of pull request #171 read; 14 October 2026, the version stays 0.137.0.
- Fix: `.github/workflows/stock-take.yml` "since git refuses in a container a repository owned by another user"
- Status: Built, never walked
- Note: found 14 October 2026 by the consistency audit of that day; concerns .github/workflows/stock-take.yml lines 112 to 132 and 158 at a03a720 and docs/roadmap.md, the fifth addendum of 14 October 2026, lines 23421 to 23423; the step marks the checkout a safe directory for git since 84a0bf6, the branch's last commit, after the addendum; should: the comment names both halves and why the second; outside docs/ for the comment, the addendum standing as written, not built; built 14 October 2026 by the catch-up of that day: the comment names both halves of the Alpine step and why the second; the fifth addendum stands as written, as the audit decided; the site stays on the status line

### the head of the reader sends to the three addenda of 13 October 2026 for the sources of the group, where the two of 14 October 2026 read vendors as well
- Wrong: the head of the reader sends to three addenda of 13 October 2026 for the sources of the group, where two of 14 October 2026 read vendors as well.
- Should: not stated
- Found: The consistency audit of 14 October 2026 before the handover, read against the three entries since the audit of 12 October 2026, the five addenda of the third among them, and the code at `a03a720`: fifteen disagreements, seven mended in the documents, two rows of the table brought to the tool's rule and six recorded; the nine points of the order answered, two of them measured on the tool; the platform's run of pull request #171 read; 14 October 2026, the version stays 0.137.0.
- Fix: none
- Status: Closed, corrected in the document: `bin/devloop-command-reader` carries "the entry on the command reader and its five addenda of 13 and 14 October".
- Note: found 14 October 2026 by the consistency audit of that day; concerns bin/devloop-command-reader line 75 at a03a720, its three addenda of 13 October 2026; the fourth and fifth addenda of 14 October 2026 read vendors as well; should: the head sends to the five addenda of 13 and 14 October 2026; outside docs/, not built; built 14 October 2026 by the catch-up of that day: the head sends to the five addenda of 13 and 14 October 2026; the site stays on the status line; closed 20 October 2026 as corrected in the document, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### 89 not-a-thing records stand on lines outside the search set and nothing in the tool lists them
- Wrong: 89 not-a-thing records stand on lines outside the search set at a03a720 and the tool lists none of them.
- Should: not stated
- Found: The consistency audit of 14 October 2026 before the handover, read against the three entries since the audit of 12 October 2026, the five addenda of the third among them, and the code at `a03a720`: fifteen disagreements, seven mended in the documents, two rows of the table brought to the tool's rule and six recorded; the nine points of the order answered, two of them measured on the tool; the platform's run of pull request #171 read; 14 October 2026, the version stays 0.137.0.
- Fix: none
- Status: Recorded, not built
- Note: found 14 October 2026 by the consistency audit of that day with search_set and find_anchor of the tool at a03a720, 89 records, 62 under bin/, 16 under skills/, 5 under docs/, 4 under hooks/, 1 under shared/, 1 under .github/, where 22 stood at 3ab792a; concerns scripts/devloop-stock-take, which checks nothing of it; should: the tool lists such records under a heading of its own, as it lists the lines that can carry no anchor; whether the rows go is each order's to decide, two ways in the report; not built; decided 14 October 2026 by the catch-up of that day: the 89 stay, a part-of record binding its thing's runs to its line in the search set or not, scripts/devloop-stock-take lines 1474 and 1475 at 78a250d; the listing under a heading of its own is not built, having no purpose once dropping is ruled out, the entry says why; the site stays on the status line

### 24 of the 162 runs under 0.137.0 were recorded on the branch before later commits changed lines of their things, and the tool counts them on main against the squash commit
- Wrong: 24 of the 162 runs under 0.137.0 were recorded before later commits of the branch changed lines of their things, and the tool counts them on main.
- Should: not stated
- Found: The consistency audit of 14 October 2026 before the handover, read against the three entries since the audit of 12 October 2026, the five addenda of the third among them, and the code at `a03a720`: fifteen disagreements, seven mended in the documents, two rows of the table brought to the tool's rule and six recorded; the nine points of the order answered, two of them measured on the tool; the platform's run of pull request #171 read; 14 October 2026, the version stays 0.137.0.
- Fix: `scripts/devloop-stock-take` "row = None if b is None or b[0] is None else b[0]"
- Status: Built, never walked
- Note: found 14 October 2026 by the consistency audit of that day in a throwaway worktree at 84a0bf6 with analyse of the tool, git blame and git merge-base --is-ancestor, 24 of 162 runs on 15 things, 6 of them with no other run under 0.137.0; concerns scripts/devloop-stock-take, section C of its head, a run under the version a branch introduces recorded only at the branch's final state, which the branch of #171 did not keep, and the tool holding every run on main against the squash commit; should: on a branch whose version is the tree's and introduced there the tool holds a run's row commit against the commits of its thing's lines and reports a row older than a line; the 24 rows two ways in the report; not built; built 14 October 2026 by the catch-up of that day: the 24 rows taken out of the table by the person's decision, and the tool rejecting such a run since, by the commit of its row read off git blame of the table, where the tree's version was introduced on the branch; the site stays on the status line

### the evidence under ~/devloop-lauf1 and ~/devloop-lauf2 and the four reports of 11 October 2026 the entries of that day name are not on this disk
- Wrong: the evidence and the reports the four entries of 11 October 2026 name are not on this disk since the person deleted them, and the entries are their record.
- Should: not stated
- Found: The consistency audit of 14 October 2026 before the handover, read against the three entries since the audit of 12 October 2026, the five addenda of the third among them, and the code at `a03a720`: fifteen disagreements, seven mended in the documents, two rows of the table brought to the tool's rule and six recorded; the nine points of the order answered, two of them measured on the tool; the platform's run of pull request #171 read; 14 October 2026, the version stays 0.137.0.
- Fix: none
- Status: Recorded, not built
- Note: found 14 October 2026 by the consistency audit of that day with ls -d on each of the six; concerns docs/roadmap.md lines 16799, 16897, 17017, 17031, 17420, 17436 and 17447 at a03a720, which name ~/devloop-lauf1, ~/devloop-lauf2 and the four reports of 11 October 2026, deleted by the person; should: nothing, the entries standing as the record of the runs; recorded so that a later reader does not look for the files

### the group of programs the reader reads over goes stale with new tools and options and nothing holds each program's named release against the vendor's newest
- Wrong: the group of programs the reader reads over goes stale as new tools and options appear, and nothing holds each program's named release against the vendor's newest.
- Should: not stated
- Found: The catch-up of 14 October 2026 after the consistency audit: the three comments outside `docs/` built as the audit's shoulds say, the 24 runs under 0.137.0 recorded before later commits of their branch changed their things taken out of the table, the 89 not-a-thing records outside the search set kept, the tool rejecting a run under the branch's own version whose row came in before a later commit changed its thing, a second test on the run's date built and taken out again by the person's decision, one defect recorded and not built on the group of programs the reader reads over going stale; four runs on the final code; the version raised to 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 14 October 2026, recorded at the person's wish by the catch-up of that day; concerns bin/devloop-command-reader, the group of programs it reads over, and every entry of docs/roadmap.md naming a program's release or commit; should: a check holding, per program, the release named in the roadmap against the vendor's newest and reading again only the programs with a newer one since, on the rule of docs/skill-conventions.md under A hook reads its input through one program that every reading names the release or commit and quotes the vendor's sentence; nothing built

### text owed in the message stood only in the model's progress updates at 29 further places of the two closing runs
- Wrong: text owed in the run's own message stood only in the model's progress updates at 29 further places of the two closing runs, on the 21 records the paragraph above lists
- Should: it stands in the message, with the six places of point 27 and defect a, built after this measurement.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: `output-styles/devloop.md` "Text a skill of devloop owes the person reaches them in one of two places: in"
- Status: Walked
- Note: found 15 October 2026 by the measurement of the thinking part on the two session logs of the closing runs of milestone 3, the order of that day, records 35, 46, 149, 287, 422, 437, 453, 470, 676 and 1011 of the first run and 47, 467, 483, 502, 516, 522, 560, 730, 792, 863 and 1025 of the second; concerns skills/start-work/SKILL.md lines 96, 137, 190 and 269, skills/setup-project/SKILL.md line 133, skills/setup-checks/SKILL.md line 267, skills/plan-work/SKILL.md lines 254, 450, 507, 565 and 567, skills/cut-into-tasks/SKILL.md lines 131, 139 and 146, skills/build-work/SKILL.md lines 320, 1124, 1343 and 1420, skills/review-changes/SKILL.md line 148 and shared/command-does-not-answer.md line 75; beyond the six places of point 27 of part B of the entry of 12 October 2026 and defect a of the second closing run; should: the text stands in the message, built with point 27 after this measurement; since 15 October 2026 the output style of the plugin, output-styles/devloop.md, says that such text stands as a text block of the message, the entry of that date on the output style, each of the twenty-nine places held against its words there; no run on a bench shows it yet, which that entry records; evidence re-anchored 17 October 2026, version 0.142.0, onto the opening of the output style as rewritten that day: owed text stands in the question or in the message that ends the turn, nothing between two tool calls

### text owed in the message reached neither a message nor a thinking block, or came without a part its line names, at ten places of the two closing runs
- Wrong: text owed in the run's own message reached neither a message nor a thinking block, or came without the part its line names, at ten places of the two closing runs, which the paragraph above lists
- Should: each stands in the message as its line says.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the measurement of the thinking part on the two session logs of the closing runs of milestone 3, the order of that day; concerns skills/setup-project/SKILL.md lines 294 and 794, skills/plan-work/SKILL.md lines 256 and 494, skills/build-work/SKILL.md lines 340, 656 and 1343, skills/review-changes/SKILL.md lines 56, 169 and 209 and shared/rule-not-written-down.md line 36; should: each text stands in the message as its line says

### four review findings of the first closing run stayed in the conversation, neither fixed nor filed
- Wrong: four review findings of the first closing run stayed in the conversation, records 930 and 974, neither fixed nor filed and called unreachable in the same breath
- Should: each is fixed, filed or explicitly deferred, `shared/finding-not-in-conversation.md` line 1.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the measurement of the thinking part on the two session logs of the closing runs of milestone 3, the order of that day, records 930 and 974 of the first run; concerns shared/finding-not-in-conversation.md line 1; the entry on the second closing run, line 18299, has that text holding in the first run, which it did not at record 930; should: each finding is fixed, filed or explicitly deferred

### with the spec closed the first closing run took neither loose raised-here issue and called them not urgent
- Wrong: with the spec closed the first closing run took neither loose issue carrying raised-here and ended, record 1183, calling them not urgent
- Should: the run takes one by clause 3, which and why not said, the clause named for each that waits
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the measurement of the thinking part on the two session logs of the closing runs of milestone 3, the order of that day, records 1163 to 1183 of the first run; concerns skills/build-work/SKILL.md lines 346 and 349; should: the run takes one by clause 3, says which and why and names the clause of each issue; should revised 17 October 2026 by the roadmap entry of 17 October 2026 on the reports of what was done: the run takes one by clause 3, which and why not said, the clause named for each that waits

### bin/devloop-install-record line 46 reads the install record off the default branch, not measured with CRLF on Windows
- Wrong: `bin/devloop-install-record` line 46 reads `docs/agents/environment.md` off the default branch with `git show`, for the install guard at its line 757 and the session start at its line 64, and finds the section by its heading with `grep -qxF` at line 47, the whole line compared and a carriage return part of it; what arrives is the blob as stored, not measured on Windows
- Should: a record with CRLF is read as the same record with LF, measured in milestone 12 on Windows with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and git's own documentation at v2.56.0; concerns bin/devloop-install-record line 46; what arrives at core.autocrlf=true: the blob on the default branch as stored, for the install guard and the session start; should: a file with CRLF is read as the same file with LF, measured in milestone 12 on Windows with real input

### bin/devloop-setup-state line 185 reads the markers of the setup off the default branch, not measured with CRLF on Windows
- Wrong: `bin/devloop-setup-state` line 185 reads the marker of each of the five files off the default branch with `git show` and `grep -o`, for the session start and the skills; what arrives is the blob as stored, not measured on Windows
- Should: a file with CRLF is read as the same file with LF, measured in milestone 12 on Windows with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and git's own documentation at v2.56.0; concerns bin/devloop-setup-state line 185; what arrives at core.autocrlf=true: the blobs on the default branch as stored; should: a file with CRLF is read as the same file with LF, measured in milestone 12 on Windows with real input

### setup-checks line 346 prescribes git show of the environment record, not measured with CRLF on Windows
- Wrong: `skills/setup-checks/SKILL.md` line 346 prescribes `git show origin/main:docs/agents/environment.md` after a fetch, whose output the run reads; what arrives is the blob as stored, not measured on Windows
- Should: a record with CRLF is read as the same record with LF, measured in milestone 12 on Windows with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and git's own documentation at v2.56.0; concerns skills/setup-checks/SKILL.md line 346; what arrives at core.autocrlf=true: the blob on origin/main as stored; should: a file with CRLF is read as the same file with LF, measured in milestone 12 on Windows with real input

### shared/mode-set-up.md line 14 prescribes git show of the environment record, not measured with CRLF on Windows
- Wrong: `shared/mode-set-up.md` line 14 prescribes `git fetch -q origin main && git show origin/main:docs/agents/environment.md`, inserted into `build-work` line 1272, `plan-work` line 307 and `setup-checks` line 726; what arrives is the blob as stored, not measured on Windows
- Should: the records with CRLF are read as the same records with LF, measured in milestone 12 on Windows with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and git's own documentation at v2.56.0; concerns shared/mode-set-up.md line 14, inserted into build-work, plan-work and setup-checks; what arrives at core.autocrlf=true: the blob on origin/main as stored; should: a file with CRLF is read as the same file with LF, measured in milestone 12 on Windows with real input

### shared/rule-not-written-down.md line 45 prescribes git log -S over the standards file, not measured with CRLF on Windows
- Wrong: `shared/rule-not-written-down.md` line 45 prescribes `git log -1 --format=%H -S'<the line>' origin/main -- docs/agents/standards.md`, which compares a rule's line with the stored blobs, not measured on Windows
- Should: a standards file with CRLF is searched as the same file with LF, measured in milestone 12 on Windows with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and git's own documentation at v2.56.0; concerns shared/rule-not-written-down.md line 45; what arrives at core.autocrlf=true: the blobs on origin/main as stored; should: a file with CRLF is read as the same file with LF, measured in milestone 12 on Windows with real input

### shared/rule-not-written-down.md line 73 prescribes git log -p over the standards file, not measured with CRLF on Windows
- Wrong: `shared/rule-not-written-down.md` line 73 prescribes `git log -p origin/main -- docs/agents/standards.md`, whose lines the run reads for a rule removed before; what arrives is the stored blobs, not measured on Windows
- Should: a standards file with CRLF is read as the same file with LF, measured in milestone 12 on Windows with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and git's own documentation at v2.56.0; concerns shared/rule-not-written-down.md line 73; what arrives at core.autocrlf=true: the blobs on origin/main as stored; should: a file with CRLF is read as the same file with LF, measured in milestone 12 on Windows with real input

### hooks/stop-checks.sh line 11 reads the runner off the check table, not measured with CRLF on Windows
- Wrong: `hooks/stop-checks.sh` line 11 reads the runner off `docs/agents/checks.md` in the working tree with `grep` and `sed`, which strip the key and leave a carriage return on the runner's name, run at line 23; what arrives is CRLF where git checked the file out, not measured on Windows
- Should: a table with CRLF is read as the same table with LF, measured in milestone 12 on Windows with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and git's own documentation at v2.56.0; concerns hooks/stop-checks.sh line 11; what arrives at core.autocrlf=true: the file in the working tree, CRLF where git checked it out; should: a file with CRLF is read as the same file with LF, measured in milestone 12 on Windows with real input

### hooks/stop-checks.sh line 28 reads the rows of the check table, not measured with CRLF on Windows
- Wrong: `hooks/stop-checks.sh` line 28 reads the rows of `docs/agents/checks.md` in the working tree, split on the bars with `read`; what arrives is CRLF where git checked the file out, the carriage return in the field after the last bar, not measured on Windows
- Should: a table with CRLF is read as the same table with LF, measured in milestone 12 on Windows with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and git's own documentation at v2.56.0; concerns hooks/stop-checks.sh line 28; what arrives at core.autocrlf=true: the file in the working tree, CRLF where git checked it out; should: a file with CRLF is read as the same file with LF, measured in milestone 12 on Windows with real input

### hooks/post-tool-use-checks.sh line 19 reads the runner off the check table, not measured with CRLF on Windows
- Wrong: `hooks/post-tool-use-checks.sh` line 19 reads the runner off `docs/agents/checks.md` in the working tree as `hooks/stop-checks.sh` line 11 does, run at line 35; what arrives is CRLF where git checked the file out, not measured on Windows
- Should: a table with CRLF is read as the same table with LF, measured in milestone 12 on Windows with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and git's own documentation at v2.56.0; concerns hooks/post-tool-use-checks.sh line 19; what arrives at core.autocrlf=true: the file in the working tree, CRLF where git checked it out; should: a file with CRLF is read as the same file with LF, measured in milestone 12 on Windows with real input

### hooks/post-tool-use-checks.sh line 40 reads the rows of the check table, not measured with CRLF on Windows
- Wrong: `hooks/post-tool-use-checks.sh` line 40 reads the rows of `docs/agents/checks.md` in the working tree, their globs and status, split on the bars; what arrives is CRLF where git checked the file out, not measured on Windows
- Should: a table with CRLF is read as the same table with LF, measured in milestone 12 on Windows with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and git's own documentation at v2.56.0; concerns hooks/post-tool-use-checks.sh line 40; what arrives at core.autocrlf=true: the file in the working tree, CRLF where git checked it out; should: a file with CRLF is read as the same file with LF, measured in milestone 12 on Windows with real input

### bin/devloop-check-table line 50 reads the status cells of the check table, not measured with CRLF on Windows
- Wrong: `bin/devloop-check-table` line 50 reads the status cells of `docs/agents/checks.md` in the working tree for both table guards, a cell compared with the four forms after its blanks are trimmed; what arrives is CRLF where git checked the file out, not measured on Windows
- Should: a table with CRLF is read as the same table with LF, measured in milestone 12 on Windows with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and git's own documentation at v2.56.0; concerns bin/devloop-check-table line 50, for both table guards; what arrives at core.autocrlf=true: the file in the working tree, CRLF where git checked it out; should: a file with CRLF is read as the same file with LF, measured in milestone 12 on Windows with real input

### hooks/permission-request-unattended.sh line 30 reads the third line of the mark, not measured on Windows
- Wrong: `hooks/permission-request-unattended.sh` line 30 reads the third line of the mark `.claude/unattended.local` and compares it with the session's id at line 31; the mark is written by the command of `shared/mark-command.md`, ignored by git and never checked out, so it arrives as written, not measured on Windows
- Should: the mark is read as the command wrote it on every system, measured in milestone 12 on Windows with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and git's own documentation at v2.56.0; concerns hooks/permission-request-unattended.sh line 30; what arrives at core.autocrlf=true: the mark as the command of shared/mark-command.md wrote it, git never checking it out; should: the mark is read as the command wrote it on every system, measured in milestone 12 on Windows with real input

### hooks/stop-checks.sh line 37 reads the file of check attempts, not measured on Windows
- Wrong: `hooks/stop-checks.sh` line 37 reads `.claude/check-attempts.local`, which the hook itself writes at line 40 and git never checks out, so it arrives as written, not measured on Windows
- Should: the file is read as the hook wrote it, measured in milestone 12 on Windows with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and git's own documentation at v2.56.0; concerns hooks/stop-checks.sh line 37; what arrives at core.autocrlf=true: the file as the hook wrote it at line 40, git never checking it out; should: the file is read as the hook wrote it, measured in milestone 12 on Windows with real input

### hooks/pre-tool-use-install-guard.sh line 826 reads a cargo configuration of the project, not measured with CRLF on Windows
- Wrong: `hooks/pre-tool-use-install-guard.sh` line 826 reads `.cargo/config.toml` and `.cargo/config` in the command's directory and each one above it with a pattern not anchored at the line's end; what arrives is CRLF where git checked such a file out, not measured on Windows
- Should: a cargo configuration with CRLF is read as the same file with LF, measured in milestone 12 on Windows with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and git's own documentation at v2.56.0; concerns hooks/pre-tool-use-install-guard.sh line 826; what arrives at core.autocrlf=true: the file in the working tree, CRLF where git checked it out; should: a file with CRLF is read as the same file with LF, measured in milestone 12 on Windows with real input

### hooks/pre-tool-use-table-guard.sh line 64 calls awk, not reached by the check under Alpine
- Wrong: `hooks/pre-tool-use-table-guard.sh` line 64 calls awk to join the cells it names, and the check "hooks on every system (alpine)" does not reach it, `ls` being no `git commit`, so that line 56 exits first; not measured under busybox awk
- Should: busybox awk gives what awk gives on the other systems, measured in milestone 12 under Alpine with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and at .github/workflows/stock-take.yml; concerns hooks/pre-tool-use-table-guard.sh line 64; the check hooks on every system (alpine) does not reach it with its inputs: ls is no git commit, so that line 56 exits first; should: busybox awk gives what awk gives on the other systems, measured in milestone 12 under Alpine with real input

### hooks/post-tool-use-table-guard.sh line 27 calls awk, not reached by the check under Alpine
- Wrong: `hooks/post-tool-use-table-guard.sh` line 27 calls awk to join the cells it names, and the check "hooks on every system (alpine)" does not reach it, the Edit naming the README, so that line 20 exits first; not measured under busybox awk
- Should: busybox awk gives what awk gives on the other systems, measured in milestone 12 under Alpine with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and at .github/workflows/stock-take.yml; concerns hooks/post-tool-use-table-guard.sh line 27; the check hooks on every system (alpine) does not reach it with its inputs: the Edit names the README, so that line 20 exits first; should: busybox awk gives what awk gives on the other systems, measured in milestone 12 under Alpine with real input

### bin/devloop-install-record line 49 calls awk, not reached by the check under Alpine
- Wrong: `bin/devloop-install-record` line 49 calls awk to cut the section out of the record, and the check "hooks on every system (alpine)" does not reach it: at the session start line 46 finds no `docs/agents/environment.md` on the throwaway project's main branch and exits, and the install guard calls it only past its line 749, which `ls` never reaches; not measured under busybox awk
- Should: busybox awk gives what awk gives on the other systems, measured in milestone 12 under Alpine with real input.
- Found: The thinking part of the two closing runs of milestone 3 measured on their session logs, and two questions on milestone 12 held as not measured: the text a skill owes in the run's own message went, before a tool call, into the model's progress updates, of which the log keeps a summary only; the cause lies with the model at defect a's two places and cannot be decided from the logs at point 27's six; four defects beyond point 27; fourteen places that read a file of the person's project and three that call awk, none measured on Windows or under Alpine; 15 October 2026, the version stays 0.138.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the second question on milestone 12 in the order of that day, read at the file and at .github/workflows/stock-take.yml; concerns bin/devloop-install-record line 49; the check hooks on every system (alpine) does not reach it with its inputs: line 46 finds no record in the throwaway project at the session start, and the install guard calls it only past its line 749; should: busybox awk gives what awk gives on the other systems, measured in milestone 12 under Alpine with real input

### no run on a bench shows that the forced output style brings the owed text into the message
- Wrong: no run on a bench shows that the forced style brings the owed text into the message at a place where the two closing runs put it in a progress update, the style being an instruction the model follows and nothing that enforces it
- Should: the bench the entry of 15 October 2026 on the thinking part describes, each of the six places of point 27 again from the state the run had, several times under the style, counting text blocks, thinking blocks with text and neither.
- Found: The output style of devloop, forced for the plugin, brings the text a skill owes the person into the message as visible text instead of a progress note, and a hook says, once per session, where it does not apply and why; measured with throwaway plugins under Claude Code 2.1.299 before anything was built; 15 October 2026, version 0.139.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the order on the output style, after the measurements and the build; concerns output-styles/devloop.md whole; should: the bench the entry of 15 October 2026 on the thinking part describes, each of the six places of point 27 again from the state the run had, several times under the style, counting text blocks, thinking blocks with text and neither

### the hook reads the style in effect off a transcript record no page documents
- Wrong: the hook reads the style in effect off a transcript record whose shape no page of the vendor documents, measured under 2.1.299 and 2.1.300, and the day the shape changes it finds no record and says that none stands, which is loud and wrong
- Should: a documented reading, a field of the hook input naming the style in effect or the record's shape on a page, read when the vendor publishes one.
- Found: The output style of devloop, forced for the plugin, brings the text a skill owes the person into the message as visible text instead of a progress note, and a hook says, once per session, where it does not apply and why; measured with throwaway plugins under Claude Code 2.1.299 before anything was built; 15 October 2026, version 0.139.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the order on the output style, the measurement of 4 e; concerns hooks/post-tool-use-output-style.sh at the grep over output_style_instructions; should: a documented reading, a field of the hook input naming the style in effect or the record shape on a page, read when the vendor publishes one

### the /output-style listing names default as current under a forced plugin style
- Wrong: `/output-style` in a session under a forced plugin style lists `default` as current and the forced style by its name only, measured under 2.1.299, so a person who asks the session which style is on is told the wrong one
- Should: the listing marks the forced style as current, which is the vendor's to build; until then README.md says that devloop's style stands in place of theirs while devloop is enabled.
- Found: The output style of devloop, forced for the plugin, brings the text a skill owes the person into the message as visible text instead of a progress note, and a hook says, once per session, where it does not apply and why; measured with throwaway plugins under Claude Code 2.1.299 before anything was built; 15 October 2026, version 0.139.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 by the order on the output style, measured in -p under Claude Code 2.1.299 with a throwaway plugin forcing a style, the listing printing default (current); concerns the vendor, nothing of this set; should: the listing marks the forced style as current, the vendor to build; README.md says meanwhile that devloop's style stands in place of the person's

### the hook on the output style strips a style's name to letters, digits and ._:- in what the run is handed to say
- Wrong: `hooks/post-tool-use-output-style.sh` line 41 keeps of the style's name only letters, digits and `._:-`, so that the person's own style named with a space, as `Diagrams first` on the page "Output styles", is named `Diagramsfirst` in what the run is handed to say; measured on 15 October 2026 with a crafted transcript against the hook of this version
- Should: the run is handed the name as the record carries it, the stripped form serving the mark's path alone.
- Found: The output style of devloop, forced for the plugin, brings the text a skill owes the person into the message as visible text instead of a progress note, and a hook says, once per session, where it does not apply and why; measured with throwaway plugins under Claude Code 2.1.299 before anything was built; 15 October 2026, version 0.139.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 at the check of the branch of the order on the output style before the merge, measured with a crafted transcript whose record names the style Diagrams first, the run handed Diagramsfirst; concerns hooks/post-tool-use-output-style.sh line 41; should: the run is handed the name as the record carries it, the stripped form serving the mark's path alone

### the hook on the output style hands the run a claim on versions of Claude Code beyond the two measured
- Wrong: `hooks/post-tool-use-output-style.sh` lines 54 and 61 hand the run, where the record names no style or the person's own, that the forced style applies "under a Claude Code that forces a plugin's output style, 2.1.299 or later", where only 2.1.299 and 2.1.300 were measured
- Should: what the run is handed names the versions measured and none beyond them.
- Found: The output style of devloop, forced for the plugin, brings the text a skill owes the person into the message as visible text instead of a progress note, and a hook says, once per session, where it does not apply and why; measured with throwaway plugins under Claude Code 2.1.299 before anything was built; 15 October 2026, version 0.139.0.
- Fix: none
- Status: Recorded, not built
- Note: found 15 October 2026 at the check of the branch of the order on the output style before the merge, read at the hook; concerns hooks/post-tool-use-output-style.sh lines 54 and 61, 2.1.299 or later where 2.1.299 and 2.1.300 were measured; should: what the run is handed names the versions measured and none beyond them

### with nobody there the run stops at a changed file in the way and at commits of their own on the main branch, where with them there it asks and does the thing itself
- Wrong: not stated
- Should: not stated
- Found: Part B of the decisions of 12 October 2026 at the setup, points 7 to 19, and the four defects of milestone 3 that lie with the setup — defects 1 and 3 of the first closing run, b and i of the second — built; the auto-merge question revised on 16 October 2026 to the case where a gate stands already; the merge handover and the branch deletion as shared texts; a changed file and commits of their own at a failed fetch asked about and done by the run; 16 October 2026, version 0.140.0.
- Fix: `shared/fetch-three-times.md` "answer. With nobody there it does the thing without asking"
- Status: Built, never walked
- Note: found 16 October 2026 at the build of point 19 of part B of the roadmap entry of 12 October 2026, which regulates the places with the person there; concerns shared/fetch-three-times.md and the places that insert it; should: the person decides whether the run with nobody there sets the file aside and brings it back, and puts their commits on a branch of their own, without asking, or stops as today; the question with both ways stands in the report; built 16 October 2026, version 0.141.0, the person's decision of 16 October 2026: the changed file set aside without asking and brought back where the mark is deleted, the commits put on my-commits and the main branch reset without asking, the connection and the sign-in a stop; the roadmap entry of 16 October 2026 on planning and building

### no line of setup-checks step 8 orders the section of environment.md on what checks a merge to be rewritten once the protection stands
- Wrong: no line of `setup-checks` step 8 orders the section of `environment.md` on what checks a merge to be rewritten once the protection stands, which the second closing run did in a pull request of its own, #15, records 276 to 283
- Should: the third point of the gate order rewrites the section with the gate it set up and lands it armed, or `setup-project` says the section is written once, at the setup, and read as of that date. Recorded, not built: nothing reads at the next start that step 8 of `setup-checks` was never reached where no class is `empty` and `environment.md` carries no section `## Unattended mode`, so a setup that ended as the first closing run did is caught by no later session — should: `start-work` step 4 reads the section off the main branch where no class is `empty` and calls the check setup for its step 8 where none stands, with a sentence to the person approved for it.
- Found: Part B of the decisions of 12 October 2026 at the setup, points 7 to 19, and the four defects of milestone 3 that lie with the setup — defects 1 and 3 of the first closing run, b and i of the second — built; the auto-merge question revised on 16 October 2026 to the case where a gate stands already; the merge handover and the branch deletion as shared texts; a changed file and commits of their own at a failed fetch asked about and done by the run; 16 October 2026, version 0.140.0.
- Fix: none
- Status: Closed, lapsed: `skills/setup-project/SKILL.md` no longer carries "**what checks a merge, and who**, from step 4, question 2", removed at `d373314`.
- Note: found 16 October 2026 reading the second closing run at records 276 to 283; concerns skills/setup-checks/SKILL.md step 8 under Setting the gate up; should: the third point of the gate order rewrites the section with the gate it set up and lands it armed, or setup-project says the section is written once at the setup; grep -n -i "what checks a merge" docs/roadmap.md before this entry found the section named and nothing on its rewriting after the gate; built 18 October 2026, version 0.146.0, a third way decided by the person that day, no section at all, the roadmap entry of 18 October 2026 on the merge handover and the section; closed 20 October 2026 as lapsed, the evidence on the closing line of the roadmap entry of 20 October 2026 on the person's answers and the closed state

### nothing reads at the next start that step 8 of setup-checks was never reached where no class is empty and environment.md carries no section on the unattended mode
- Wrong: not stated
- Should: not stated
- Found: Part B of the decisions of 12 October 2026 at the setup, points 7 to 19, and the four defects of milestone 3 that lie with the setup — defects 1 and 3 of the first closing run, b and i of the second — built; the auto-merge question revised on 16 October 2026 to the case where a gate stands already; the merge handover and the branch deletion as shared texts; a changed file and commits of their own at a failed fetch asked about and done by the run; 16 October 2026, version 0.140.0.
- Fix: none
- Status: Recorded, not built
- Note: found 16 October 2026 at defect 1 of the first closing run; concerns skills/start-work/SKILL.md step 4; should: start-work step 4 reads the section off the main branch where no class is empty and calls the check setup for its step 8 where none stands, with a sentence to the person approved for it; a text the person reads that no approved wording covers, so proposed in the report and not built

### shared/branch-deletion.md asks the remote with a query that matches the end of a longer branch name
- Wrong: `shared/branch-deletion.md` asks the remote with `git ls-remote --heads origin <branch>`, which matches the end of a longer name as well: measured on 16 October 2026 with git 2.43.0 at the check of this branch before the merge, a remote carrying `x/devloop-checks` and no `devloop-checks` answered the query for `devloop-checks` with the line of `x/devloop-checks`, exit 0, so that the run would delete a branch that no longer stands there, the case of defect 9 of the first closing run
- Should: the query names the exact ref, `git ls-remote origin refs/heads/<branch>`, which printed nothing, exit 0, on the same remote.
- Found: Part B of the decisions of 12 October 2026 at the setup, points 7 to 19, and the four defects of milestone 3 that lie with the setup — defects 1 and 3 of the first closing run, b and i of the second — built; the auto-merge question revised on 16 October 2026 to the case where a gate stands already; the merge handover and the branch deletion as shared texts; a changed file and commits of their own at a failed fetch asked about and done by the run; 16 October 2026, version 0.140.0.
- Fix: none
- Status: Recorded, not built
- Note: found 16 October 2026 at the check of the branch of the order on part B at the setup before the merge, measured with git 2.43.0 on a remote carrying x/devloop-checks and no devloop-checks, the query for devloop-checks answering with the line of x/devloop-checks; concerns shared/branch-deletion.md; should: the query names the exact ref, git ls-remote origin refs/heads/<branch>, which printed nothing on the same remote

### the message of the install guard says nothing of a command handed over running as it stands from wherever the person is
- Wrong: the message of `hooks/pre-tool-use-install-guard.sh` line 989 tells the run to hand the person the exact command, backed, and says nothing of point 18 of part B of the entry of 12 October 2026, that a command handed over runs as it stands from wherever the person is; the reason given above for leaving it, that a changed line of that guard would stop its walked runs from counting, is no reason on what the message says; found at the check of this branch before the merge
- Should: the message says that the command is handed over as it runs from wherever the person is, the change into the project's directory before it where it needs one.
- Found: Part B of the decisions of 12 October 2026 at the setup, points 7 to 19, and the four defects of milestone 3 that lie with the setup — defects 1 and 3 of the first closing run, b and i of the second — built; the auto-merge question revised on 16 October 2026 to the case where a gate stands already; the merge handover and the branch deletion as shared texts; a changed file and commits of their own at a failed fetch asked about and done by the run; 16 October 2026, version 0.140.0.
- Fix: `hooks/pre-tool-use-install-guard.sh` "Hand it over so that it runs from wherever they are, with the change into"
- Status: Built, never walked
- Note: found 16 October 2026 at the check of the branch of the order on part B at the setup before the merge, read at the hook; concerns hooks/pre-tool-use-install-guard.sh line 989; should: the message says that the command is handed over as it runs from wherever the person is, the change into the project's directory before it where it needs one; built 21 October 2026, version 0.154.0, in the wording the person approved that day, after both ways it can go at once, the roadmap entry of that date on milestone 3, part 3

### the pick-up of a plan that finds a being-planned issue with no stage comment says nothing of it and begins Stage 1 again unannounced
- Wrong: not stated
- Should: not stated
- Found: Part B of the decisions of 12 October 2026 at planning and building, points 20 to 26, built; the run with nobody there at a changed file in the way of the main branch and at commits of its own on it, decided by the person on 16 October 2026 and built — the change set aside under a name devloop knows and brought back where the mark goes, the commits onto a branch of their own, the question at the next start; the branch's name revised to `my-commits`; four shared texts; 16 October 2026, version 0.141.0.
- Fix: none
- Status: Recorded, not built
- Note: found 16 October 2026 at the build of point 20 of part B of the roadmap entry of 12 October 2026, the second half of the should of the defect of 30 September 2026 on the planning issue left empty, which the point did not name; concerns skills/plan-work/SKILL.md under Picking up an interrupted plan at If it is the same work, read the issue and its comments; should: the pick-up says that no stage was finished and that it starts Stage 1 again

### the name by which devloop knows a set-aside change stands in the push command of shared/fetch-three-times.md and is read by the sed of bin/devloop-setup-state, with no check holding the two together
- Wrong: not stated
- Should: not stated
- Found: Part B of the decisions of 12 October 2026 at planning and building, points 20 to 26, built; the run with nobody there at a changed file in the way of the main branch and at commits of its own on it, decided by the person on 16 October 2026 and built — the change set aside under a name devloop knows and brought back where the mark goes, the commits onto a branch of their own, the question at the next start; the branch's name revised to `my-commits`; four shared texts; 16 October 2026, version 0.141.0.
- Fix: none
- Status: Recorded, not built
- Note: found 16 October 2026 at the build of the decision of that day on the run with nobody there; concerns shared/fetch-three-times.md at git stash push -m "devloop ${DEVLOOP_SESSION_ID:-none} set aside <file>" and bin/devloop-setup-state at git stash list --format; the arming command and the status forms each have a check under Before a handover, run these holding the shared file to the hook; should: a check reads the message of the push command against the pattern of the program, or the program takes the push itself and the shared text calls it

### the question on a change set aside at a fetch is put only by the four skills that read the setup state at their start
- Wrong: the question on a change set aside at a fetch is put only by the four skills that read the setup state at their start, `start-work`, `plan-work`, `untangle-idea` and `setup-project`, so that a session opened with `build-work` or `cut-into-tasks`, say, puts it nowhere, where the person decided on 16 October 2026 that every start of devloop asks; found at the check of this branch before the merge, `grep -n 'set-aside-at-start' skills/*/SKILL.md` printing those four alone
- Should: every skill a session can be opened with asks it at its start.
- Found: Part B of the decisions of 12 October 2026 at planning and building, points 20 to 26, built; the run with nobody there at a changed file in the way of the main branch and at commits of its own on it, decided by the person on 16 October 2026 and built — the change set aside under a name devloop knows and brought back where the mark goes, the commits onto a branch of their own, the question at the next start; the branch's name revised to `my-commits`; four shared texts; 16 October 2026, version 0.141.0.
- Fix: none
- Status: Recorded, not built
- Note: found 16 October 2026 at the check of the branch of the order on planning and building before the merge, grep -n set-aside-at-start skills/*/SKILL.md printing start-work, plan-work, untangle-idea and setup-project alone; concerns shared/set-aside-at-start.md and the skills a session can be opened with; should: every skill a session can be opened with asks it at its start

### the last message names the branch for their commits off what the run remembers and not off git
- Wrong: that the run with nobody there put commits of their own on a branch of their own is named in its last message by `shared/mark-deletion.md` off what the run remembers, where a change set aside is read off git at the same place through the `set-aside:` lines, so that a session compacted in a long run can end without the branch named; found at the check of this branch before the merge
- Should: the end reads the branches the run made off git, as it reads the changes it set aside.
- Found: Part B of the decisions of 12 October 2026 at planning and building, points 20 to 26, built; the run with nobody there at a changed file in the way of the main branch and at commits of its own on it, decided by the person on 16 October 2026 and built — the change set aside under a name devloop knows and brought back where the mark goes, the commits onto a branch of their own, the question at the next start; the branch's name revised to `my-commits`; four shared texts; 16 October 2026, version 0.141.0.
- Fix: none
- Status: Recorded, not built
- Note: found 16 October 2026 at the check of the branch of the order on planning and building before the merge, read at shared/mark-deletion.md; concerns shared/mark-deletion.md; should: the end reads the branches the run made off git, as it reads the changes it set aside

### plan-work line 339 doubles a word in the yes of the question on whether the idea is understood
- Wrong: `skills/plan-work/SKILL.md` line 339 reads "the run plans on on that ground", a word doubled in the yes of the question on whether the idea is understood; found at the check of this branch before the merge
- Should: "the run plans on that ground".
- Found: Part B of the decisions of 12 October 2026 at planning and building, points 20 to 26, built; the run with nobody there at a changed file in the way of the main branch and at commits of its own on it, decided by the person on 16 October 2026 and built — the change set aside under a name devloop knows and brought back where the mark goes, the commits onto a branch of their own, the question at the next start; the branch's name revised to `my-commits`; four shared texts; 16 October 2026, version 0.141.0.
- Fix: none
- Status: Recorded, not built
- Note: found 16 October 2026 at the check of the branch of the order on planning and building before the merge, read at the line; concerns skills/plan-work/SKILL.md line 339, the run plans on on that ground; should: the run plans on that ground

### the introduction of start-work step 2 reached no message of project 1 on 16 October 2026, the four points, the fixed line and the idea as understood standing in a progress update alone
- Wrong: the introduction of `start-work` step 2, the four points, the fixed line and the idea as understood, reached no message of project 1, the only trace a progress update at record 43
- Should: it stands as text in the run own message, expanded 126 to 163
- Found: The two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off their session logs and the projects, the bench for defects d and 11 and for the install guard of defect c, and where milestone 3 stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11 held on the bench and met no run; fifteen new defects, nine met again; the milestone has not landed; 16 October 2026, the version stays 0.141.0.
- Fix: `skills/start-work/SKILL.md` "Where the idea did not come with the command, write a short introduction in"
- Status: Built, never walked
- Note: found 16 October 2026 by the order recording the two runs of that day in devloop-test-x and devloop-test-y, read off their session logs: project 1 records 16 to 44, the thinking block of 43 alone; concerns skills/start-work/SKILL.md step 2, expanded lines 126 to 163; should: the four points, the fixed line and the idea as understood stand as text in the run own message; should revised 17 October 2026 by the roadmap entry of 17 October 2026 on the reports of what was done, earlier: it stands as text in the run own message, expanded 126 to 163; since then: where no idea came the introduction in the message that ends the turn, closing on the question, with an idea none and the setup half in the setup's first question; built 17 October 2026, version 0.143.0, the evidence on the repaired line

### the sentence that seven labels were created in the tracker was said in neither run of 16 October 2026
- Wrong: the sentence that seven labels were created in the tracker was said in neither run, records 114 to 133 of project 1 and 124 to 156 of project 2
- Should: in one sentence of the run own message, expanded 1204 to 1207
- Found: The two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off their session logs and the projects, the bench for defects d and 11 and for the install guard of defect c, and where milestone 3 stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11 held on the bench and met no run; fifteen new defects, nine met again; the milestone has not landed; 16 October 2026, the version stays 0.141.0.
- Fix: `skills/setup-project/SKILL.md` "That seven labels were created in the tracker, with which the state of the"
- Status: Built, never walked
- Note: found 16 October 2026 by the order recording the two runs of that day in devloop-test-x and devloop-test-y, read off their session logs: project 1 records 114 to 133 and project 2 records 124 to 156, no text naming the labels; concerns skills/setup-project/SKILL.md the issue-tracker.md section, expanded lines 1204 to 1207; should: the sentence that seven labels were created stands in one sentence of the run own message; should revised 17 October 2026 by the roadmap entry of 17 October 2026 on the reports of what was done, earlier: in one sentence of the run own message, expanded 1204 to 1207; since then: in one sentence in the message with which the setup's turn ends, before the merge handover; built 17 October 2026, version 0.143.0

### Stage 1 of plan-work settled the frontier itself in a progress update, showed the hard core in no message and put the confirmation question over it, so that the person answered no and asked for the list and the questions
- Wrong: Stage 1 of project 1 settled the frontier itself in a progress update and a tracker comment, showed the hard core in no message before either confirmation, records 560 and 587, and put the confirmation question over a list of settled decisions, so that the person answered no and asked for the list and the questions at record 566 and the yes at 588 confirmed the decisions and three answers, not the hard core
- Should: the settled line stands in the message of its round, the hard core, the stories and what is out of scope, stands in the question field of the confirmation where it fits the widget with the question and otherwise in the message that ends the turn with the question put as text after it, what is left is asked in rounds, and Stage 1 says which decisions the run takes itself and which it puts to the person, where today its line "settle what you can settle yourself", expanded 810 to 811, and the test of `shared/how-to-ask.md` let a run settle a whole frontier itself, `plan-work` expanded 804 to 832 and 873 to 897; which boundary is the right one this entry does not decide; the place of the hard core revised by the roadmap entry of 17 October 2026, `plan-work` lines 333 to 347 as it left them, which quotes the earlier should.
- Found: The two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off their session logs and the projects, the bench for defects d and 11 and for the install guard of defect c, and where milestone 3 stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11 held on the bench and met no run; fifteen new defects, nine met again; the milestone has not landed; 16 October 2026, the version stays 0.141.0.
- Fix: `shared/three-questions.md` "**In this interview, every decision about the idea is a question"
- Status: Walked
- Note: found 16 October 2026 by the order recording the two runs of that day in devloop-test-x and devloop-test-y, read off their session logs: project 1 records 549 to 588, the thinking block of 559, the widget of 560, the person at 561 and 566, the text of 581, the comment of 582, the thinking block of 586 and the widget of 587, corrected the same day by the order checking the entry against the evidence; concerns skills/plan-work/SKILL.md Stage 1, expanded lines 804 to 832 and 873 to 897, and shared/how-to-ask.md lines 1 to 31; should: the settled line stands in the message of its round, the hard core, the stories and what is out of scope, in the question field of the confirmation where it fits the widget with the question and otherwise in the message that ends the turn with the question as text after it, what is left is asked in rounds, and Stage 1 says which decisions the run takes itself and which it puts to the person, which boundary is the right one not decided here; should revised 17 October 2026 by the order of that day, the earlier should quoted in the roadmap entry of that date; built 18 October 2026, version 0.145.0, the roadmap entry of 18 October 2026 on what the interview asks: every decision about the idea a question to the person with the recommendation, the run settling only what the first test of shared/how-to-ask.md sorts out and what the project's rules settle, and the line of what it settled standing where the round's questions are put, in shared/three-questions.md, which plan-work Stage 1 and the interview of untangle-idea insert, and plan-work Stage 1 pointing to it; the hard core in the question field of the confirmation built 17 October 2026

### the merge handover said what comes after the merge at three places of the runs of 16 October 2026 and carried a list beside it at two
- Wrong: the merge handover said what comes after the merge at records 355 and 454 of project 1 and 526 of project 2, carried a list beside it at 266 and 403, named auto-merge off beside the missing required check at 133, 266 and 355 and closed on "Das ist kein Fehler." at all four of project 1
- Should: the case of a missing required check reads as approved that day, two sentences, the second that devloop sets a required check up only where they allow it to work without them, in place of the one sentence of 12 October 2026
- Found: The two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off their session logs and the projects, the bench for defects d and 11 and for the install guard of defect c, and where milestone 3 stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11 held on the bench and met no run; fifteen new defects, nine met again; the milestone has not landed; 16 October 2026, the version stays 0.141.0.
- Fix: `shared/merge-handover.md` "and after it nothing: no second question, no proposal, no word on what comes"
- Status: Walked
- Note: found 16 October 2026 by the order recording the two runs of that day in devloop-test-x and devloop-test-y, read off their session logs: project 1 records 133, 266, 355 and 454 and project 2 records 403 and 526, record 156 alone holding, corrected the same day by the order checking the entry against the evidence; concerns shared/merge-handover.md lines 1 to 8 and 23 to 28; should: the handover says the three things and stands last in the message that ends the turn, before it what else the turn owes and beside and after it nothing, no second question, no proposal, no word on what comes after the merge, the case in the one sentence that fits it whether or not auto-merge is on, and not as something having gone wrong; should revised 17 October 2026 by the order of that day, the earlier should quoted in the roadmap entry of that date; built 18 October 2026, version 0.146.0, every text a run reads at a merge handover checked against it and three made to follow it, setup-project step 8, setup-checks step 7 and build-work step 6, the roadmap entry of 18 October 2026 on the merge handover and the section; the should changed by the person on 19 October 2026, the roadmap entry of that date on the two runs of that day, defect 15: the case of a missing required check reads as approved that day, two sentences, the second that devloop sets a required check up only where they allow it to work without them, in place of the one sentence of 12 October 2026

### the state of pull request 16 was read in one call and the arming done in the next, so that GitHub refused it as past its gate and the run without them ended there
- Wrong: the state of #16 was read in one call, record 1656, and the arming done in the next, record 1668, 25 seconds later, so that GitHub refused it as past its gate and the run without them ended there
- Should: the reading and the mutation stand in one call, `build-work` expanded 1634 to 1637.
- Found: The two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off their session logs and the projects, the bench for defects d and 11 and for the install guard of defect c, and where milestone 3 stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11 held on the bench and met no run; fifteen new defects, nine met again; the milestone has not landed; 16 October 2026, the version stays 0.141.0.
- Fix: `bin/devloop-arm` "BLOCKED) arm "$S" ;;"
- Status: Walked
- Note: found 16 October 2026 by the order recording the two runs of that day in devloop-test-x and devloop-test-y, read off their session logs: project 1 records 1656, 1665, 1668 and 1669, the stop at 1673 to 1678; concerns skills/build-work/SKILL.md step 6, expanded lines 1634 to 1637; should: the reading of mergeStateStatus and the arming stand in one call; built 17 October 2026, version 0.144.0, the roadmap entry of 17 October 2026 on arming past the gate: bin/devloop-arm reads mergeStateStatus and arms in the same pass of one call

### the main run changed the workflow file with sed from the shell in the build of 16 October 2026 with the rule on the editing tool loaded
- Wrong: the main run of project 1 changed `.github/workflows/checks.yml` with `sed` from the shell at record 1405, the rule on the editing tool loaded
- Should: a file whose content is text about commands is written with the editing tool, `shared/editing-tool.md` lines 1 to 4.
- Found: The two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off their session logs and the projects, the bench for defects d and 11 and for the install guard of defect c, and where milestone 3 stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11 held on the bench and met no run; fifteen new defects, nine met again; the milestone has not landed; 16 October 2026, the version stays 0.141.0.
- Fix: none
- Status: Recorded, not built
- Note: found 16 October 2026 by the order recording the two runs of that day in devloop-test-x and devloop-test-y, read off their session logs: project 1 record 1405, named by the run at 1412 and 1678; concerns shared/editing-tool.md lines 1 to 4; should: a file whose content is text about commands is written with the editing tool

### step 3 of setup-checks entered @types/node before its question, took TypeScript out after its yes, wrote a types reason naming both as declined and handed the Biome command over late and unbacked
- Wrong: step 3 of project 1 entered `@types/node` before its question, record 194, took TypeScript out after its yes, record 215, wrote a types reason naming both as declined, and handed the Biome command over nine minutes after the no and unbacked, record 266
- Should: nothing is entered before its question, a yes enters the tool, the reason names what was declined, and the command of the second way stands, backed, in the message that ends the turn after the no, the next one that ends with text where another question follows through the widget, `setup-checks` expanded 809 to 814 and 945 to 952 at `7e35090` and lines 403 to 420 as the roadmap entry of 17 October 2026 left them; that entry revised this should and quotes the earlier one.
- Found: The two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off their session logs and the projects, the bench for defects d and 11 and for the install guard of defect c, and where milestone 3 stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11 held on the bench and met no run; fifteen new defects, nine met again; the milestone has not landed; 16 October 2026, the version stays 0.141.0.
- Fix: none
- Status: Recorded, not built
- Note: found 16 October 2026 by the order recording the two runs of that day in devloop-test-x and devloop-test-y, read off their session logs: project 1 records 184 to 266, 194, 205, 210, 211, 215 and checks.md at 952af07; concerns skills/setup-checks/SKILL.md step 3, expanded lines 809 to 814, 873 to 888 and 945 to 952; should: nothing is entered before its question, a yes enters the tool, the reason names what was declined, and the command of the second way stands, backed, in the message that ends the turn after the no, the next one that ends with text where another question follows through the widget; should revised 17 October 2026 by the order of that day, the earlier should quoted in the roadmap entry of that date

### the line naming the classes the two yes open, each with its tool, stood in a progress update and in the handover tail and in no message of its own
- Wrong: the line naming the classes the two yes open, each with its tool, stood in a progress update at record 317 and in the handover's tail at 355 of project 1 and in no message of its own
- Should: one line of the run own message before the first pull request, expanded 1815 to 1825
- Found: The two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off their session logs and the projects, the bench for defects d and 11 and for the install guard of defect c, and where milestone 3 stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11 held on the bench and met no run; fifteen new defects, nine met again; the milestone has not landed; 16 October 2026, the version stays 0.141.0.
- Fix: `skills/setup-checks/SKILL.md` "the tool it takes, is said to the person in one line at the next message"
- Status: Walked
- Note: found 16 October 2026 by the order recording the two runs of that day in devloop-test-x and devloop-test-y, read off their session logs: project 1 records 310 to 355, the thinking block of 317; concerns skills/setup-checks/SKILL.md step 8, expanded lines 1815 to 1825; should: the line naming the classes the two yes open, each with its tool, stands in the run own message before the first pull request; should revised 17 October 2026 by the roadmap entry of 17 October 2026 on the reports of what was done, earlier: one line of the run own message before the first pull request, expanded 1815 to 1825; since then: one line at the next message that ends a turn with text, its details in the pull request; built 17 October 2026, version 0.143.0

### point 3 of step 8 fills a class off for an install not run by an install outside the project where the install record says yes now whatever the record on the packages says, and point 2 enters what stands outside before point 3 installs, so that biome went outside and was entered nowhere
- Wrong: point 3 of step 8 has a class off for an install handed over and not run filled by an install outside the project where the install record says yes now, whatever the record on the packages says, and point 2 enters what stands outside before point 3 installs, so that project 1 installed biome outside at record 365 under two yes and entered it nowhere
- Should: a class off for an install not run is filled with the tool in the packages where the record on them says yes now and the tool is a package of the stack, and outside the project only where it is not, and what point 3 installs outside is entered or point 2 follows it, `setup-checks` expanded 803 to 807 and 1835 to 1847.
- Found: The two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off their session logs and the projects, the bench for defects d and 11 and for the install guard of defect c, and where milestone 3 stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11 held on the bench and met no run; fifteen new defects, nine met again; the milestone has not landed; 16 October 2026, the version stays 0.141.0.
- Fix: `skills/setup-checks/SKILL.md` "in the packages where the record on them says yes now and the tool can be"
- Status: Walked
- Note: found 16 October 2026 by the order recording the two runs of that day in devloop-test-x and devloop-test-y, read off their session logs, and corrected the same day by the order checking the entry against the evidence: project 1 records 235, 310, 314, 365, 371 and 409, package.json on the main branch, the run following points 1 to 3 in their order; concerns skills/setup-checks/SKILL.md step 3 heading and step 8 points 2 and 3, expanded lines 803 to 807 and 1835 to 1847; should: a class off for an install not run is filled with the tool in the packages where the record on them says yes now and the tool is a package of the stack, and outside the project only where it is not, and what point 3 installs outside is entered or point 2 follows it; renamed from: docs/roadmap.md / Known gaps / step 8 installed biome outside the project under the yes to the dependency file and entered it into the packages nowhere though @biomejs/biome is a package of the stack; built 18 October 2026, version 0.147.0, the roadmap entry of that date on where step 8 puts the tool of a class off for an install not run: point 3 fills such a class with the tool in the packages where the record on them says yes now and the tool can be entered there and outside the project only where that does not hold, so that nothing it installs outside is a tool point 2 would have entered, the evidence on the line of point 3 that fills it in the packages

### text owed in the run own message stood in a progress update or nowhere at four further places of the runs of 16 October 2026, the close of setup-checks, the costs of the alone answers, the Stage 2 report with the mark and the glossary sentence
- Wrong: text owed in the run's own message stood in a progress update or nowhere at four further places, records 510, 603 and 612 of project 1 and the two places that created the glossary and the decision records, records 84 and 85 and 90
- Should: the costs of the two answers that send the run alone stand in their descriptions in the wordings approved that day, quoted there, in place of the sentence that the run stops where no draft carries the stories
- Found: The two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off their session logs and the projects, the bench for defects d and 11 and for the install guard of defect c, and where milestone 3 stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11 held on the bench and met no run; fifteen new defects, nine met again; the milestone has not landed; 16 October 2026, the version stays 0.141.0.
- Fix: `skills/plan-work/SKILL.md` "Write what you found in at most fifteen lines. This is input to the next stage,"
- Status: Walked
- Note: found 16 October 2026 by the order recording the two runs of that day in devloop-test-x and devloop-test-y, read off their session logs: project 1 records 510, 603 and 612, records 84 and 85 of project 1 and 90 of project 2; concerns skills/setup-checks/SKILL.md expanded 2047 to 2048, skills/plan-work/SKILL.md expanded 978 to 985, 1033 to 1036 and 1056 to 1057, skills/setup-project/SKILL.md expanded 1305 to 1306; should: what the two answers that send the run alone cost stands in their descriptions, and each other text stands in the message that ends the turn as its line says; should revised 17 October 2026 by the order of that day, the earlier should quoted in the roadmap entry of that date; should revised 17 October 2026 by the roadmap entry of 17 October 2026 on the reports of what was done, earlier: each other text in the message that ends the turn as its line says, setup-checks expanded 2047 to 2048, plan-work expanded 1033 to 1036 and 1056 to 1057, setup-project expanded 1305 to 1306; since then: the count of setup-checks and the glossary sentence in the message that ends the turn, Stage 2's report only on the planning issue, the mark written not said; built 17 October 2026, version 0.143.0, the evidence on the line of Stage 2's report, the other places as their lines say; the should changed by the person on 19 October 2026, the roadmap entry of that date on the two runs of that day, defect 14: the costs of the two answers that send the run alone stand in their descriptions in the wordings approved that day, quoted there, in place of the sentence that the run stops where no draft carries the stories

### question 4 of setup-project, the local environment, was not put in project 1 of 16 October 2026 though neither docker-compose.yml nor a README stood in the repository
- Wrong: question 4 of `setup-project`, the local environment, was not put in project 1 though neither `docker-compose.yml` nor a README stood in the repository, records 56 to 73
- Should: it is put as prose in the run's own message wherever there is code and neither file answers it, `setup-project` expanded 923 to 925.
- Found: The two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off their session logs and the projects, the bench for defects d and 11 and for the install guard of defect c, and where milestone 3 stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11 held on the bench and met no run; fifteen new defects, nine met again; the milestone has not landed; 16 October 2026, the version stays 0.141.0.
- Fix: none
- Status: Recorded, not built
- Note: found 16 October 2026 by the order recording the two runs of that day in devloop-test-x and devloop-test-y, read off their session logs: project 1 records 56 to 73, no README and no docker-compose.yml, the question not put; concerns skills/setup-project/SKILL.md step 4 question 4, expanded lines 923 to 925; should: the question is put as prose wherever there is code and neither file answers it

### a built-in safety check of Claude Code denied a command of a planning subagent, a refusal of a kind plan-work names nowhere, and the main run neither recorded it nor said it
- Wrong: a built-in safety check of Claude Code denied a command of a planning subagent of project 1, its record 22, a refusal of a kind `plan-work` names nowhere, and the main run neither recorded it where it records the question nor said it, records 705 and 714
- Should: the harness's own refusal stands among the refusals of `plan-work` expanded 738 to 749 and is recorded and said as they are.
- Found: The two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off their session logs and the projects, the bench for defects d and 11 and for the install guard of defect c, and where milestone 3 stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11 held on the bench and met no run; fifteen new defects, nine met again; the milestone has not landed; 16 October 2026, the version stays 0.141.0.
- Fix: `skills/plan-work/SKILL.md` "`hooks/permission-request-unattended.sh`, or the refusal of a safety check"
- Status: Built, never walked
- Note: found 16 October 2026 by the order recording the two runs of that day in devloop-test-x and devloop-test-y, read off their session logs: project 1 subagent a671b3d9 record 22 and 25, main log records 705 and 714; concerns skills/plan-work/SKILL.md With nobody there, expanded lines 738 to 749; should: the harness own refusal stands among the refusals named there and is recorded and said as they are; built 18 October 2026, version 0.147.0, the roadmap entry of that date: the safety check beside the three wherever devloop names the kinds of refusal, going as they go, and a refusal a subagent names in its report the main run's own, in shared/command-does-not-answer.md, plan-work With nobody there and Stage 3, the evidence on the line of plan-work With nobody there that names the check

### the mode question of project 1 of 16 October 2026 carried neither that the answer holds for every task of the idea nor that the run works only while the window is open and the machine awake
- Wrong: the mode question of project 1 at record 289 carried neither that the answer holds for every task of the idea nor that the run works only while the window is open and the machine awake
- Should: the awake line as approved that day, in place of the sentence of 17 October 2026 among the points
- Found: The two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off their session logs and the projects, the bench for defects d and 11 and for the install guard of defect c, and where milestone 3 stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11 held on the bench and met no run; fifteen new defects, nine met again; the milestone has not landed; 16 October 2026, the version stays 0.141.0.
- Fix: `skills/setup-checks/SKILL.md` "- **In the yes, label and description: what a yes means.** The label: that"
- Status: Built, never walked
- Note: found 16 October 2026 by the order recording the two runs of that day in devloop-test-x and devloop-test-y, read off their session logs: project 1 record 289 against project 2 record 444; concerns skills/setup-checks/SKILL.md step 8, expanded lines 1629 to 1642; should: every point of the wording approved on 17 October 2026 stands in its field; should revised 17 October 2026 by the order of that day, the earlier should quoted in the roadmap entry of that date; built 17 October 2026, version 0.142.0, the evidence on the line that carries the repair; the should changed by the person on 19 October 2026, the roadmap entry of that date on the two runs of that day, defect 13: the awake line as approved that day, in place of the sentence of 17 October 2026 among the points; built 19 October 2026, version 0.149.0, the label's point, the evidence on the line that carries it, its run of 19 October 2026 no longer counting, the line changed

### under the forced output style the five parts before the mode question and the line before the second install question stood in progress updates in both runs of 16 October 2026, and the line before the second packages question as text without that they had said no
- Wrong: under the forced output style the five parts before the mode question and the line before the second install question stood in progress updates at records 288 and 308 of project 1 and 443 of project 2, and the line before the second packages question at record 312 of project 1 as text without that they had said no
- Should: met where nothing the decision needs stands only before the call, output-styles/devloop.md line 38 staying as it is
- Found: The two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off their session logs and the projects, the bench for defects d and 11 and for the install guard of defect c, and where milestone 3 stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11 held on the bench and met no run; fifteen new defects, nine met again; the milestone has not landed; 16 October 2026, the version stays 0.141.0.
- Fix: `output-styles/devloop.md` "ends with text. Nothing stands as text before the call that shows the widget:"
- Status: Walked
- Note: found 16 October 2026 by the order checking the entry on the two runs of that day in devloop-test-x and devloop-test-y against the evidence, read off their session logs: project 1 records 288, 308 and 312 and project 2 record 443, the walk of defect a of the entry of 11 October 2026 on the second closing run, whose thing counts as walked and keeps its runs; concerns skills/setup-checks/SKILL.md step 8, expanded lines 1647 to 1684 and 1756 to 1762, under output-styles/devloop.md lines 11 to 27; should: what the mode question needs stands in its fields in the wording approved on 17 October 2026, and the line before each second question in its question field, naming their no where the record says no, nothing as text before either call; should revised 17 October 2026 by the order of that day, the earlier should quoted in the roadmap entry of that date; built 17 October 2026, version 0.142.0, the evidence on the line that carries the repair; should changed 20 October 2026 by the roadmap entry of 20 October 2026 on milestone 3, part 1, the old quoted there: met where nothing the decision needs stands only before the call, output-styles/devloop.md line 38 staying as it is; the walk of 19 October 2026 at records 496 and 497 of project z enters this row as a run under 0.148.0, source entry

### the questions of setup-checks named the classes by their labels alone in both runs of 16 October 2026, the proposal with what each catches standing in a progress update
- Wrong: the questions of `setup-checks` named the classes by their labels alone, records 168, 182, 183 and 211 of project 1 and 220 of project 2, the proposal with what each catches standing in a progress update at 167 and 219
- Should: a class is named by what it catches, in the proposal and in the question that follows it, and the question on a tool names the check in ordinary words, `setup-checks` expanded 756 to 758 and 862 to 863.
- Found: The two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off their session logs and the projects, the bench for defects d and 11 and for the install guard of defect c, and where milestone 3 stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11 held on the bench and met no run; fifteen new defects, nine met again; the milestone has not landed; 16 October 2026, the version stays 0.141.0.
- Fix: none
- Status: Recorded, not built
- Note: found 16 October 2026 by the order checking the entry on the two runs of that day in devloop-test-x and devloop-test-y against the evidence, read off their session logs: project 1 records 167, 168, 182, 183 and 211 and project 2 records 219 and 220, answered at 169, 184, 185, 212 and 221; a defect of its own and not a point of defect 7 of that entry, which is step 3 of project 1 and what it entered, took out, wrote and handed over; concerns skills/setup-checks/SKILL.md step 2 and step 3, expanded lines 756 to 758 and 862 to 863; should: a class is named by what it catches, in the proposal and in the question that follows it, and the question on a tool names the check in ordinary words

### no question said what happens on Type something. or Chat about this, the two answers the widget adds to every question
- Wrong: here: no question said what happens on "Type something." or "Chat about this"
- Should: a typed answer matching an offered one counts as it, any other and a chat are taken up and the question put again unless decided, `output-styles/devloop.md` line 56.
- Found: Where the text devloop owes the person stands, decided by the person on 17 October 2026, and every question put to it: what a decision needs in the question, everything else in the message that ends the turn, nothing between two tool calls; the mode question of `setup-checks` step 8 in the wording approved that day, in its fields and with nothing before it; 17 October 2026, version 0.142.0.
- Fix: `output-styles/devloop.md` "**The answers the widget adds.** The widget adds "Type something." and "Chat"
- Status: Built, never walked
- Note: found 17 October 2026 by the order building the rule on owed text and the questions, the question-field bench of that day, its report lines 311 to 316, and the inventory of that day, its line 537; concerns every question of every skill; should: a typed answer matching an offered one counts as it, any other and a chat are taken up and the question put again unless decided; built 17 October 2026, version 0.142.0, in the output style, the evidence on the line that carries it

### a one-line English note stood as a text block between two tool calls in four of five runs of the question-field bench that otherwise wrote German
- Wrong: a one-line English note stood as a text block between two tool calls in four of five runs that otherwise wrote German
- Should: no text stands between two tool calls, and what the run writes to the person is in their language, `output-styles/devloop.md` lines 25 to 34 and the language block.
- Found: Where the text devloop owes the person stands, decided by the person on 17 October 2026, and every question put to it: what a decision needs in the question, everything else in the message that ends the turn, nothing between two tool calls; the mode question of `setup-checks` step 8 in the wording approved that day, in its fields and with nothing before it; 17 October 2026, version 0.142.0.
- Fix: none
- Status: Recorded, not built
- Note: found 17 October 2026 by the order building the rule on owed text and the questions, the question-field bench of that day, its report lines 672 to 681 and 737 to 748; concerns output-styles/devloop.md and the language block; should: no text stands between two tool calls, and what the run writes to the person is in their language

### three pairs of lines disagree: start-work on a stray open issue, setup-checks on secrets with nobody there, plan-work on the issue number of the spec
- Wrong: three pairs of lines disagree, `start-work` 192–193 against 210–213, `setup-checks` 226–227 against 93–98, `plan-work` 631 against `shared/refer-by-name.md` 1–6
- Should: each pair agrees; `setup-checks` 226–227 reads as 93–98 and `plan-work` 631 names the spec by its title, the number inside it, by the conventions; for `start-work` no convention decides and this entry does not decide which.
- Found: Where the text devloop owes the person stands, decided by the person on 17 October 2026, and every question put to it: what a decision needs in the question, everything else in the message that ends the turn, nothing between two tool calls; the mode question of `setup-checks` step 8 in the wording approved that day, in its fields and with nothing before it; 17 October 2026, version 0.142.0.
- Fix: none
- Status: Recorded, not built
- Note: found 17 October 2026 by the order building the rule on owed text and the questions, the inventory of that day, its line 726, read again at the lines; concerns skills/start-work/SKILL.md lines 192 to 193 and 210 to 213, skills/setup-checks/SKILL.md lines 226 to 227 and 93 to 98, skills/plan-work/SKILL.md line 631 and shared/refer-by-name.md lines 1 to 6; should: each pair agrees, setup-checks reading as lines 93 to 98 and plan-work naming the spec by its title by the conventions, start-work not decided by that entry

### diagnose-bug does not insert the shared text on a missing command and names a command for a missing file in its own words
- Wrong: `diagnose-bug` does not insert `shared/missing-command.md` and names a command for a missing file in its own words, lines 72 to 74
- Should: the case is said there as in the seven skills that insert the shared text, and no command is handed over that the run could start itself.
- Found: Where the text devloop owes the person stands, decided by the person on 17 October 2026, and every question put to it: what a decision needs in the question, everything else in the message that ends the turn, nothing between two tool calls; the mode question of `setup-checks` step 8 in the wording approved that day, in its fields and with nothing before it; 17 October 2026, version 0.142.0.
- Fix: none
- Status: Recorded, not built
- Note: found 17 October 2026 by the order building the rule on owed text and the questions, the inventory of that day, its line 728, read again at the lines; concerns skills/diagnose-bug/SKILL.md lines 72 to 74, shared/missing-command.md and shared/skill-name.md lines 17 to 20; should: the case is said as in the seven skills that insert the shared text, and no command is handed over that the run could start itself

### a red base in build-work step 1 with nobody there is covered by no line
- Wrong: a red base in `build-work` step 1 with nobody there is covered by no line, lines 292 to 307
- Should: step 1 says what a run with nobody there does at a red base; this entry does not decide which way.
- Found: Where the text devloop owes the person stands, decided by the person on 17 October 2026, and every question put to it: what a decision needs in the question, everything else in the message that ends the turn, nothing between two tool calls; the mode question of `setup-checks` step 8 in the wording approved that day, in its fields and with nothing before it; 17 October 2026, version 0.142.0.
- Fix: none
- Status: Recorded, not built
- Note: found 17 October 2026 by the order building the rule on owed text and the questions, the inventory of that day, its line 729, read again at the lines; concerns skills/build-work/SKILL.md step 1, lines 292 to 307; should: step 1 says what a run with nobody there does at a red base, which way not decided by that entry

### the last message of the run with nobody there is described in build-work alone, which the stops of plan-work and the halt of cut-into-tasks never load
- Wrong: the last message of the run with nobody there is described in `build-work` lines 1545 to 1576 alone, which the stops of `plan-work` and the halt of `cut-into-tasks` never load
- Should: the description stands where every ending of that run reads it, in a shared text inserted at each, and `build-work` refers to it.
- Found: Where each text devloop owes the person stays, goes into a pull request, an issue or a file, or drops, built after the decisions of the person of 17 October 2026: the introduction of `start-work`, the sentences that say why a question comes now in the wording approved that day, the last message of the run with nobody there in two groups, and the lines of the skills, the inserted texts and two hooks brought in line with the output style; 17 October 2026, version 0.143.0.
- Fix: `shared/mark-deletion.md` "**The last message has two groups, and nothing outside them.**"
- Status: Built, never walked
- Note: found 17 October 2026 by the roadmap entry of 17 October 2026 on the reports of what was done, the pre-check, B5 of the order placing the description in build-work; concerns skills/build-work/SKILL.md lines 1545 to 1576, skills/plan-work/SKILL.md lines 211 to 218 and skills/cut-into-tasks/SKILL.md lines 166 to 176; should: the description stands where every ending of the run with nobody there reads it, in a shared text inserted at each; built on 17 October 2026 by the addendum to the roadmap entry of 17 October 2026 on the reports of what was done: the description stands in shared/mark-deletion.md, which build-work lines 112, 1175 and 1543, plan-work line 218 and cut-into-tasks line 176 insert at every end of the run with nobody there, and build-work lines 1555 to 1561 refer to it

### the heading of setup-project step 2 reads Report what you found while the step reports nothing
- Wrong: the heading of `setup-project` step 2, line 209, reads "Report what you found" while the step reports nothing since 17 October 2026
- Should: the heading says what the step does, the runs re-keyed by a rule the stock-take tool allows.
- Found: Where each text devloop owes the person stays, goes into a pull request, an issue or a file, or drops, built after the decisions of the person of 17 October 2026: the introduction of `start-work`, the sentences that say why a question comes now in the wording approved that day, the last message of the run with nobody there in two groups, and the lines of the skills, the inserted texts and two hooks brought in line with the output style; 17 October 2026, version 0.143.0.
- Fix: `skills/setup-project/SKILL.md` "## Step 2 — Nothing of what you found is said"
- Status: Built, never walked
- Note: found 17 October 2026 by the roadmap entry of 17 October 2026 on the reports of what was done; concerns skills/setup-project/SKILL.md line 209; should: the heading says what the step does, the runs re-keyed by a rule the stock-take tool allows; built on 17 October 2026 by the addendum to the roadmap entry of 17 October 2026 on the reports of what was done: the heading reads Step 2 — Nothing of what you found is said, its thing renamed in its unit part and its three runs re-keyed, none of which counted before

### setup-project inserts shared/backed-command.md, whose only use in the skill went with the install handed over at a guard's block
- Wrong: `setup-project` line 63 inserts `shared/backed-command.md`, whose only use in the skill went with the install handed over at a guard's block on 17 October 2026
- Should: the insert goes, or a line of the skill that hands a command over uses it.
- Found: Where each text devloop owes the person stays, goes into a pull request, an issue or a file, or drops, built after the decisions of the person of 17 October 2026: the introduction of `start-work`, the sentences that say why a question comes now in the wording approved that day, the last message of the run with nobody there in two groups, and the lines of the skills, the inserted texts and two hooks brought in line with the output style; 17 October 2026, version 0.143.0.
- Fix: none
- Status: Closed, lapsed: `skills/setup-project/SKILL.md` no longer carries "devloop-text backed-command".
- Note: found 17 October 2026 by the roadmap entry of 17 October 2026 on the reports of what was done; concerns skills/setup-project/SKILL.md line 63; should: the insert goes, or a line of the skill that hands a command over uses it; closed on 17 October 2026 by the addendum to the roadmap entry of 17 October 2026 on the reports of what was done with setup-project lines 49 to 51: with nobody there an install the guard blocked becomes an issue carrying the command, and shared/backed-command.md lines 10 to 13 count an issue carrying the command among the ways it travels, so the insert stays; the entry's no other line of the skill hands one over was not right; closed 20 October 2026, lapsed, by the roadmap entry of 20 October 2026 on milestone 3, part 1: the insert at line 63 went with its one use, the nobody-there case of the bullet, and no line of the skill hands a command that fetches something over; the closing names no commit, a commit of the branch not resolving on main after the squash; the evidence on the closing line

### setup-project says what the run does with nobody there at an install the guard blocked, and no way of the unattended mode reaches setup-project by the computed set
- Wrong: `setup-project` lines 49 to 53 say what the run does with nobody there at an install the guard blocked, and no way of the unattended mode reaches `setup-project` by the set the stock-take tool computes
- Should: either a way is named on which the run with nobody there reaches `setup-project` and the text stays, or the text for the run with nobody there goes.
- Found: Arming past the gate, built after the decisions of the person of 17 October 2026: the reading of a pull request's state and the arming in one call, by a program of the plugin, and with nobody there one restart of the runs that carry a required check where that check was through before GitHub could accept the arming; defect 5 of the entry of 16 October 2026 on the runs of that day with it; 17 October 2026, version 0.144.0.
- Fix: `skills/setup-project/SKILL.md` "check setup decides. The case with nobody there cannot"
- Status: Built, never walked
- Note: found 17 October 2026 by the order building the arming past the gate, its F5, off the addendum to the roadmap entry of 17 October 2026 on owed texts, lines 27281 to 27290 at 6793c5c; concerns skills/setup-project/SKILL.md lines 49 to 53; should: either a way is named on which the run with nobody there reaches setup-project and the text stays, or the text for the run with nobody there goes; built 20 October 2026, version 0.152.0, by the roadmap entry of 20 October 2026 on milestone 3, part 1, the should's second way: the text for the run with nobody there went, the bullet saying the case cannot arise here

### at the stop on a pull request past its gate with nobody there, the reason in the first group of the last message and the merge handover's sentence for that case in the second say the same
- Wrong: at the stop of `build-work` step 6 on a pull request past its gate with nobody there, the reason in the first group of the last message and the merge handover's sentence for that case in the second say the same
- Should: the reason stands once in that message, the person deciding which approved wording gives way.
- Found: Arming past the gate, built after the decisions of the person of 17 October 2026: the reading of a pull request's state and the arming in one call, by a program of the plugin, and with nobody there one restart of the runs that carry a required check where that check was through before GitHub could accept the arming; defect 5 of the entry of 16 October 2026 on the runs of that day with it; 17 October 2026, version 0.144.0.
- Fix: `skills/build-work/SKILL.md` "without the handover's sentence on why GitHub does not merge it itself"
- Status: Built, never walked
- Note: found 17 October 2026 by the order building the arming past the gate, reading the last message as the person receives it under docs/skill-conventions.md lines 770 to 786; concerns skills/build-work/SKILL.md step 6, the stop with nobody there, and shared/merge-handover.md lines 8 to 14; should: the reason stands once in that message, the person deciding which approved wording gives way; built in the addendum of 17 October 2026 to the roadmap entry of that day on arming past the gate: at that stop the merge goes into the second group without the handover's sentence on why GitHub does not merge it, docs/skill-conventions.md lines 675 to 681 and 759 to 768 deciding which wording gives way, the first group coming before the second; shared/merge-handover.md and both wordings unchanged; the evidence on the line of build-work that carries it, the site staying the status line

### setup-project and setup-checks say the program asks and prints the two gate queries, where a call that reads no mergeable value asks neither
- Wrong: `setup-project` line 845 and `setup-checks` line 786 say of the two gate queries that the program asks and prints them, where a call that reads no mergeable value asks neither — `BLOCKED` armed, or refused with `BLOCKED` read again, or a value it cannot place — `bin/devloop-arm` lines 19 to 21 and 31 to 35
- Should: the program's `gate:` lines named where it reads a mergeable value, and otherwise the reading of step 4 in `setup-project` and both queries asked by the run in `setup-checks`, where the case of auto-merge off after a refusal at `BLOCKED` needs a gate read. Recorded, not built: `build-work` line 1038, `setup-checks` lines 763 to 765 and `setup-project` lines 842 to 844 make the case of auto-merge off the one that comes as `refused:`, so that where a gate stands, auto-merge is off and the required check is through, the program ending with `past its gate:` without reading the field, they make it the case past the gate — should: the case of auto-merge off wherever a gate stands and the field reads false, `shared/merge-handover.md` lines 10 to 14, as the message of the merge guard has it since this addendum; with nobody there it cannot arise, start condition 5 of `build-work` requiring auto-merge on.
- Found: The merge handover: every text a run reads at it held to it, three places made to follow it; and the section of `environment.md` on what checks a merge gone, decided by the person on 18 October 2026; defect 4 of the entry of 16 October 2026 on the runs of that day and the finding of the same entry on that section with it; 18 October 2026, version 0.146.0.
- Fix: `skills/setup-project/SKILL.md` "protection: off the program's `gate:` lines where"
- Status: Built, never walked
- Note: found 18 October 2026 by the addendum of that day to the roadmap entry on the merge handover, reading bin/devloop-arm lines 19 to 21 and 31 to 35 and its self-test cases at lines 174 to 176, 211 to 213 and 222 to 224; concerns skills/setup-project/SKILL.md at Then read whether a gate exists from both queries in step 4, which, and skills/setup-checks/SKILL.md at classic protection), which the program asks and prints; built 18 October 2026 by the second addendum of that day to the roadmap entry on the merge handover: the gate off the program's gate: lines where it printed them and both queries asked by the run where it printed none, in setup-project not off the reading of step 4, which docs/skill-conventions.md lines 349 to 354 do not let stand; the evidence moved onto that line in setup-project, the site staying on the status line

### three skills make the case of auto-merge off the one that comes as refused:, so that a pull request past its gate with auto-merge off is the case past the gate
- Wrong: `build-work` line 1038, `setup-checks` lines 763 to 765 and `setup-project` lines 842 to 844 make the case of auto-merge off the one that comes as `refused:`, so that where a gate stands, auto-merge is off and the required check is through, the program ending with `past its gate:` without reading the field, they make it the case past the gate
- Should: the case of auto-merge off wherever a gate stands and the field reads false, `shared/merge-handover.md` lines 10 to 14, as the message of the merge guard has it since this addendum; with nobody there it cannot arise, start condition 5 of `build-work` requiring auto-merge on.
- Found: The merge handover: every text a run reads at it held to it, three places made to follow it; and the section of `environment.md` on what checks a merge gone, decided by the person on 18 October 2026; defect 4 of the entry of 16 October 2026 on the runs of that day and the finding of the same entry on that section with it; 18 October 2026, version 0.146.0.
- Fix: `skills/build-work/SKILL.md` "and as `past its gate:` where a gate stands and auto-merge is off, the"
- Status: Built, never walked
- Note: found 18 October 2026 by the addendum of that day to the roadmap entry on the merge handover, holding the merge guard's message to shared/merge-handover.md lines 10 to 14; concerns skills/build-work/SKILL.md at the first comes as `refused:`, skills/setup-checks/SKILL.md at its gate:` — and the first as GitHub's, `refused:` and skills/setup-project/SKILL.md at — `no required check:` and `past its gate:` — and the first GitHub's; with nobody there it cannot arise, start condition 5 of build-work requiring auto-merge on; built 18 October 2026 by the second addendum of that day to the roadmap entry on the merge handover: the first case where a gate stands and the field reads false, past its gate: included, in the three skills, and with nobody there past its gate: with the field false a stop before any restart; the evidence moved onto the line of build-work saying so, the site staying on the status line

### the agents of Stage 3 of plan-work are told nothing of a refusal, so that with nobody there one can try a refused command again or reach its result another way, and one it does not name does not reach the main run
- Wrong: the agents of Stage 3 of `plan-work` are told nothing of a refusal, lines 529 to 530, so that with nobody there one of them can try a refused command a second time or reach its result another way, which lines 223 to 224 rule out, and a refusal it does not name in its report does not reach the main run
- Should: a refusal an agent of `plan-work` meets is tried no second time with nobody there, reached no other way, and named in its report with the check, the command as it ran and the message.
- Found: Where step 8 of `setup-checks` puts the tool of a class off for an install not run, and the refusal of a safety check built into Claude Code among the refusals devloop names, a refusal a subagent names in its report the main run's own; defects 9 and 12 of the entry of 16 October 2026 on the runs of that day; 18 October 2026, version 0.147.0.
- Fix: `skills/plan-work/SKILL.md` "**Every agent this stage starts is handed two things more, since it reads this"
- Status: Built, never walked
- Note: found 18 October 2026 by the order building defects 9 and 12 of the roadmap entry of 16 October 2026 on the runs of that day, reading plan-work lines 529 to 530 and 223 to 224 and build-work lines 413 to 419 at d373314; concerns skills/plan-work/SKILL.md Stage 3 — Draft designs, the agents that draft and check; should: a refusal an agent of plan-work meets is tried no second time with nobody there, reached no other way, and named in its report with the check, the command as it ran and the message; built 18 October 2026, version 0.147.0, the addendum of that day to the roadmap entry of that date on where step 8 puts the tool of a class off for an install not run, decided by the person the same day: every agent of Stage 3, drafting, checking or a rerun, handed where the mark stands and what a refusal is and what follows one, the evidence on the head of that paragraph

### README.md said the cut is presented and can be renamed before it is created, which cut-into-tasks says is created first and said after since 17 October 2026
- Wrong: README.md says the cut is created without asking and seen once it is, since 17 October 2026.
- Should: README says so, without a date, the README carrying none
- Found: The consistency audit of 18 October 2026 before the handover, read against the eleven entries since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended — nine in the documents, three dated entries' line numbers corrected in place and seven said right here — three rows of the table brought to the tool's rule and eleven recorded; the two points of the order answered; 18 October 2026, the version stays 0.147.0.
- Fix: none
- Status: Closed, corrected in the document: `README.md` carries "and you see it as what was created, at the next point where the run waits".
- Note: found 18 October 2026 by the consistency audit of that day; concerns README.md under The steps, lines 89 to 91 at 786b71f; skills/cut-into-tasks/SKILL.md lines 138 to 141; mended 18 October 2026; should since 20 October 2026, the roadmap entry of that date on milestone 3, part 2: README says so, without a date, the README carrying none; the old should, quoted: README says so with the date; built 20 October 2026, version 0.153.0; closed 21 October 2026, corrected in the document, the README saying so without a date, the roadmap entry of 20 October 2026 on milestone 3, part 2, its fifth commit

### the step 6 thing on auto-merge off with nobody there was named unreachable by start condition 5, which reads it at the start alone
- Wrong: the step 6 thing on auto-merge off with nobody there is renamed, start condition 5 reading it at the start alone.
- Should: not stated
- Found: The consistency audit of 18 October 2026 before the handover, read against the eleven entries since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended — nine in the documents, three dated entries' line numbers corrected in place and seven said right here — three rows of the table brought to the tool's rule and eleven recorded; the two points of the order answered; 18 October 2026, the version stays 0.147.0.
- Fix: none
- Status: Recorded, not built
- Note: found 18 October 2026 by the consistency audit of that day; concerns docs/stock-take.tsv, the thing on auto-merge off with nobody there under build-work step 6; start condition 5, build-work lines 1408 to 1420, read where the build starts, lines 1356 to 1363, and a stop at step 6 by lines 1105 to 1109; no run on it; should: the name says the start alone, by section C of the head of the tool; the row renamed 18 October 2026

### the step 6 thing on no gate with nobody there was named unreachable by start condition 5, which reads the gate at the start alone
- Wrong: the step 6 thing on no gate with nobody there is renamed, start condition 5 reading the gate at the start alone.
- Should: not stated
- Found: The consistency audit of 18 October 2026 before the handover, read against the eleven entries since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended — nine in the documents, three dated entries' line numbers corrected in place and seven said right here — three rows of the table brought to the tool's rule and eleven recorded; the two points of the order answered; 18 October 2026, the version stays 0.147.0.
- Fix: none
- Status: Recorded, not built
- Note: found 18 October 2026 by the consistency audit of that day; concerns docs/stock-take.tsv, the thing on no gate with nobody there under build-work step 6; a gate gone since the start ends the program on no required check, build-work lines 1042 to 1044; no run on it; should: the name says the start alone, by section C of the head of the tool; the row renamed 18 October 2026

### the note of the defect on the merge guard's message said 375 words since 17 October 2026, where the message has 382 since that day's addendum and 605 since 18 October 2026
- Wrong: the note of the defect on the merge guard's message gives its word counts by commit, 605 since 18 October 2026.
- Should: not stated
- Found: The consistency audit of 18 October 2026 before the handover, read against the eleven entries since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended — nine in the documents, three dated entries' line numbers corrected in place and seven said right here — three rows of the table brought to the tool's rule and eleven recorded; the two points of the order answered; 18 October 2026, the version stays 0.147.0.
- Fix: none
- Status: Recorded, not built
- Note: found 18 October 2026 by the consistency audit of that day; concerns docs/stock-take.tsv, the row of the defect of 30 September 2026 on the block message of the merge guard; wc -w over the heredoc: 618 to 6793c5c, 375 at 275be3d, 382 at 4552dcc and 12d04b5, 549 at cafa256, 605 at d373314 and 786b71f; should: the note gives the counts by commit; the row changed 18 October 2026

### build-work step 6 calls the first two cases unreachable by start condition 5 and states nothing for no required check with nobody there
- Wrong: build-work step 6 calls the first two cases unreachable and states nothing for no required check with nobody there.
- Should: not stated
- Found: The consistency audit of 18 October 2026 before the handover, read against the eleven entries since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended — nine in the documents, three dated entries' line numbers corrected in place and seven said right here — three rows of the table brought to the tool's rule and eleven recorded; the two points of the order answered; 18 October 2026, the version stays 0.147.0.
- Fix: `skills/build-work/SKILL.md` "check:`, the second case, which comes as the program's own"
- Status: Built, never walked
- Note: found 18 October 2026 by the consistency audit of that day; concerns skills/build-work/SKILL.md lines 1146 to 1147 and 1105 to 1106 at 786b71f; start condition 5 reads auto-merge and the gate at the start alone, and the second case comes as the program's own no required check since 17 October 2026, lines 1042 to 1044; should: the sentence says unreachable at the start alone and step 6 says what follows no required check with nobody there; built 19 October 2026, version 0.148.0, by the catch-up of that day: no required check with nobody there a stop with the reason named, the mark going with it as at every such stop, and the sentence saying start condition 5 rules the first two cases out at the start alone

### build-work names every required check completed the third refusal case without the auto-merge on that it turns on since 18 October 2026
- Wrong: build-work names every required check completed the third case without the auto-merge it turns on since 18 October 2026.
- Should: not stated
- Found: The consistency audit of 18 October 2026 before the handover, read against the eleven entries since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended — nine in the documents, three dated entries' line numbers corrected in place and seven said right here — three rows of the table brought to the tool's rule and eleven recorded; the two points of the order answered; 18 October 2026, the version stays 0.147.0.
- Fix: `skills/build-work/SKILL.md` "the third refusal case below where auto-merge is on and the first where it"
- Status: Built, never walked
- Note: found 18 October 2026 by the consistency audit of that day; concerns skills/build-work/SKILL.md lines 994 to 996 at 786b71f against 1045 to 1046 and 1075 to 1076; should: the line names both cases; built 19 October 2026, version 0.148.0, by the catch-up of that day: the line names the third case with auto-merge on and the first with it off

### the bring-back pops stash entries by an index read once, so that a second pop takes another entry, the person's own among them
- Wrong: the bring-back pops stash entries by an index read once, so a second pop takes another entry, the person's own among them.
- Should: not stated
- Found: The consistency audit of 18 October 2026 before the handover, read against the eleven entries since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended — nine in the documents, three dated entries' line numbers corrected in place and seven said right here — three rows of the table brought to the tool's rule and eleven recorded; the two points of the order answered; 18 October 2026, the version stays 0.147.0.
- Fix: `shared/mark-deletion.md` "program again, without `--fetch`, immediately before its pop, and"
- Status: Built, never walked
- Note: found 18 October 2026 by the consistency audit of that day; concerns shared/mark-deletion.md line 16 and shared/set-aside-back.md lines 1 to 3, the entries named stash@{N} by bin/devloop-setup-state lines 29 and 215; measured 18 October 2026 in a throwaway repository: the second pop took the person's own entry and left the run's; should: each pop takes the entry as read just before it or the highest first, and never one whose message is not the run's; should, decided by the order of 19 October 2026, the highest number first left aside: each pop takes the entry a read immediately before it names, and none whose message is not the run's; built 19 October 2026, version 0.148.0, by the catch-up of that day in shared/mark-deletion.md and shared/set-aside-back.md, the two drops of shared/set-aside-at-start.md and shared/set-aside-back.md with them; measured again on 19 October 2026

### build-work lists the fetch stops of step 1 and step 6 among the places the mark goes, and neither site nor the fetch text says so
- Wrong: build-work lists two fetch stops among the places the mark goes, and neither site nor the fetch text says it.
- Should: not stated
- Found: The consistency audit of 18 October 2026 before the handover, read against the eleven entries since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended — nine in the documents, three dated entries' line numbers corrected in place and seven said right here — three rows of the table brought to the tool's rule and eleven recorded; the two points of the order answered; 18 October 2026, the version stays 0.147.0.
- Fix: `skills/build-work/SKILL.md` "be read or brought up to date is one. With nobody there the mark goes with"
- Status: Built, never walked
- Note: found 18 October 2026 by the consistency audit of that day; concerns skills/build-work/SKILL.md lines 1514 to 1516 and 1530 to 1531 at 786b71f, step 1 lines 283 to 287, and shared/fetch-three-times.md; should: the two stops say the mark goes, as at every stop with a reason; built 19 October 2026, version 0.148.0, by the catch-up of that day: each of the three fetch stops of build-work, step 1, BEHIND in step 6 and after the merge, says that with nobody there the mark goes with it, as at every stop with a reason; shared/fetch-three-times.md unchanged, inserted where the mark does not go as well

### shared/install-not-through.md names every failed installer attempt on the model of the fetch text, which names none followed by an answer since 17 October 2026
- Wrong: the install text names every failed attempt on the model of a fetch text that names none followed by an answer.
- Should: not stated
- Found: The consistency audit of 18 October 2026 before the handover, read against the eleven entries since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended — nine in the documents, three dated entries' line numbers corrected in place and seven said right here — three rows of the table brought to the tool's rule and eleven recorded; the two points of the order answered; 18 October 2026, the version stays 0.147.0.
- Fix: `shared/install-not-through.md` "that fails and is followed by one that goes through is not said"
- Status: Built, never walked
- Note: found 18 October 2026 by the consistency audit of that day; concerns shared/install-not-through.md lines 17 to 20 against shared/fetch-three-times.md lines 3 to 4 at 786b71f; should: one of two ways, the install text naming its failed attempts on its own ground or saying only the third; should, decided by the order of 19 October 2026: a failed attempt followed by one that goes through is not said, and what is said after the third and written into the issue the three tests decide; built 19 October 2026, version 0.148.0, by the catch-up of that day: all three ended with an error, the third's message, an earlier one's only where it names more in the way

### setup-project reads every issue without raised-here as from outside, and devloop files the issue of a conflicted bring-back without it since 16 October 2026
- Wrong: setup-project reads every issue without raised-here as from outside, and devloop files one without it since 16 October 2026.
- Should: not stated
- Found: The consistency audit of 18 October 2026 before the handover, read against the eleven entries since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended — nine in the documents, three dated entries' line numbers corrected in place and seven said right here — three rows of the table brought to the tool's rule and eleven recorded; the two points of the order answered; 18 October 2026, the version stays 0.147.0.
- Fix: `skills/setup-project/SKILL.md` "then a reading rather than a guess — all but the one issue devloop files"
- Status: Built, never walked
- Note: found 18 October 2026 by the consistency audit of that day; concerns skills/setup-project/SKILL.md line 578 against shared/mark-deletion.md line 26 at 786b71f; should: one of two ways, setup-project naming the issues devloop files without the label or that issue carrying a mark of its own; should, decided by the order of 19 October 2026: no place says every issue without raised-here is from outside, none has a run name an issue devloop filed as from outside, and what shared/mark-deletion.md keeps from a run's work stays away from it; built 19 October 2026, version 0.148.0, by the catch-up of that day in setup-project, build-work step 2 and start-work steps 2 and 5

### the mark guard's comment gives its texts as the ones approved on 9 October 2026, which 17 October 2026 changed
- Wrong: the mark guard's comment gives its texts as the ones of 9 October 2026 where 17 October 2026 changed them.
- Should: not stated
- Found: The consistency audit of 18 October 2026 before the handover, read against the eleven entries since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended — nine in the documents, three dated entries' line numbers corrected in place and seven said right here — three rows of the table brought to the tool's rule and eleven recorded; the two points of the order answered; 18 October 2026, the version stays 0.147.0.
- Fix: `hooks/pre-tool-use-mark-guard.sh` "# that day, but for the place where the run says them: since 17 October 2026"
- Status: Built, never walked
- Note: found 18 October 2026 by the consistency audit of that day; concerns hooks/pre-tool-use-mark-guard.sh lines 20 to 21 against its messages at lines 143 and 145 at 786b71f; should: the comment names the change of 17 October 2026; built 19 October 2026, version 0.148.0, by the catch-up of that day: the comment names the change of 17 October 2026 with B9 of its entry

### the workflow's comment says every handler added later runs without the hooks step being touched, where a new event and matcher needs its input
- Wrong: the workflow's comment says every handler added later runs without the hooks step being touched.
- Should: not stated
- Found: The consistency audit of 18 October 2026 before the handover, read against the eleven entries since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended — nine in the documents, three dated entries' line numbers corrected in place and seven said right here — three rows of the table brought to the tool's rule and eleven recorded; the two points of the order answered; 18 October 2026, the version stays 0.147.0.
- Fix: `.github/workflows/stock-take.yml` "# matcher this step has an input for runs without this step being touched;"
- Status: Built, never walked
- Note: found 18 October 2026 by the consistency audit of that day; concerns .github/workflows/stock-take.yml lines 127 to 128 against line 231 at 786b71f; should: the comment says a handler under a new event and matcher needs its input; built 19 October 2026, version 0.148.0, by the catch-up of that day: the comment says a handler under a known event and matcher runs untouched and one under a new pair needs its input

### the header approved on 17 October 2026 for the mode question is two words where the rule of the same day asks one
- Wrong: the approved header of the mode question is two words where the rule of the same day asks one.
- Should: not stated
- Found: The consistency audit of 18 October 2026 before the handover, read against the eleven entries since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended — nine in the documents, three dated entries' line numbers corrected in place and seven said right here — three rows of the table brought to the tool's rule and eleven recorded; the two points of the order answered; 18 October 2026, the version stays 0.147.0.
- Fix: `output-styles/devloop.md` "name for what the question is about, as telling as it can be, of at most"
- Status: Built, never walked
- Note: found 18 October 2026 by the consistency audit of that day; concerns docs/roadmap.md line 26647, the header Ohne dich, against line 26589, output-styles/devloop.md lines 46 to 47 and skills/setup-checks/SKILL.md line 387; should: one of two ways, the rule keeping twelve characters without the one word or the header one word; should, decided by the person on 19 October 2026: the header a name as telling as it can be for what the question is about, of at most twelve characters, the one word gone, every approved header as approved; built 19 October 2026, version 0.148.0, by the catch-up of that day in the output style, eight places of four skills, two shared texts and the conventions

### two entries of 17 October 2026 revised shoulds on status lines of dated entries in place, which the conventions say are never edited
- Wrong: two entries of 17 October 2026 revised shoulds in place in dated entries, which the conventions say are never edited.
- Should: not stated
- Found: The consistency audit of 18 October 2026 before the handover, read against the eleven entries since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended — nine in the documents, three dated entries' line numbers corrected in place and seven said right here — three rows of the table brought to the tool's rule and eleven recorded; the two points of the order answered; 18 October 2026, the version stays 0.147.0.
- Fix: `docs/skill-conventions.md` "**A should a later decision changes is written where the decision is, and in"
- Status: Recorded, not built
- Note: found 18 October 2026 by the consistency audit of that day; concerns docs/roadmap.md, the hunks of b24542a at 17619 and 25942 to 26177 and of 6793c5c at 433, 454, 7890, 17253, 24493 and 25877 to 26123, against docs/skill-conventions.md line 1397 and the audit of 14 October 2026 at lines 23647 to 23650; should: one of two ways, the conventions naming the case or the deciding entry carrying the revised should alone; should, decided by the order of 19 October 2026: a later decision's should stands in the entry that decides, the old one quoted there, and in the note of the row, the dated entry as it stands, the revisions of 17 October 2026 staying; written 19 October 2026 into docs/skill-conventions.md by the catch-up of that day, a convention, so recorded and not built

### the session of the audit of 18 October 2026 ran an output style older than the installed copy while the check before any change printed nothing
- Wrong: this session ran a style older than the installed copy while the check before any change printed nothing.
- Should: not stated
- Found: The consistency audit of 18 October 2026 before the handover, read against the eleven entries since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended — nine in the documents, three dated entries' line numbers corrected in place and seven said right here — three rows of the table brought to the tool's rule and eleven recorded; the two points of the order answered; 18 October 2026, the version stays 0.147.0.
- Fix: `docs/skill-conventions.md` "**So the session's own style is read too, before a skill is exercised.** The"
- Status: Built, never walked
- Note: found 18 October 2026 by the consistency audit of that day; concerns docs/skill-conventions.md under Before you change anything, run this, at Silence means what runs in this session and the sentence on output-styles; the session carried the text of output-styles/devloop.md of 9b40c07, the cached 0.139.0 to 0.141.0, the installed copy being 0.147.0; should: the conventions say when Claude Code reads a style and what the silence does not cover, measured; should, as the order of 19 October 2026 puts it: the conventions say what the silence shows and what not, and what happens before a run so that the session carries the installed copy, what is measured with its date and the rest as not measured; written 19 October 2026 under that check heading by the catch-up of that day, measured that day: a session started then carried the installed text

### step 8 of project z put the mode question at record 462 without reading the gate, auto-merge, the records, the visibility or uname -s in this step, the last readings standing at records 348 and 70
- Wrong: step 8 of project z put the mode question at record 462 without reading the gate, auto-merge, the records, the visibility or `uname -s` in this step, the last readings standing at records 348 and 70
- Should: the five things, the visibility and `uname -s` are read between the proven merge and the question, `setup-checks` expanded 1676 to 1699, 1705 to 1732, 1744 to 1758 and 1769 to 1778.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: none
- Status: Recorded, not built
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the records named in the entry; concerns skills/setup-checks/SKILL.md step 8, lines 841 to 934; should: the five things, the visibility and uname -s are read between the proven merge and the question, setup-checks expanded 1676 to 1699, 1705 to 1732, 1744 to 1758 and 1769 to 1778.

### the rule question of step 8 was put at record 474 before bin/devloop-auto-mode-rule read answered at 485
- Wrong: the rule question of step 8 was put at record 474 before `bin/devloop-auto-mode-rule read` answered at 485
- Should: the reading comes first and the question only where it answers exit 1, `setup-checks` expanded 1843 to 1845.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: none
- Status: Recorded, not built
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the records named in the entry; concerns skills/setup-checks/SKILL.md lines 988 to 1008; should: the reading comes first and the question only where it answers exit 1, setup-checks expanded 1843 to 1845.

### the branch devloop-checks was cut at record 278 and the question on @types/node put at 292, after it
- Wrong: the branch `devloop-checks` was cut at record 278 and the question on `@types/node` put at 292, after it
- Should: every question of step 3 comes before the cut, the tools a class needs read before it, `setup-checks` expanded 879 to 882 and 1055.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: none
- Status: Recorded, not built
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the records named in the entry; concerns skills/setup-checks/SKILL.md lines 355 and 504; should: every question of step 3 comes before the cut, the tools a class needs read before it, setup-checks expanded 879 to 882 and 1055.

### project z left the secrets class empty after the command was handed over, records 305 to 361, said the mode's loss in a subordinate clause at 361 and needed pull request #3 for the decision, record 421
- Wrong: project z left the secrets class `empty` after the command was handed over, records 305 to 361, said the mode's loss in a subordinate clause at 361 and needed pull request #3 for the decision, record 421
- Should: by the person's statement of 19 October 2026 the open decision is taken, as a question of theirs, before the offer of the mode is made or dropped, and `setup-checks` step 1 and step 3, expanded 749 to 755 and 1017 to 1024, say together what `secrets` becomes after a no to installing with the person there.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: `skills/setup-checks/SKILL.md` "question, before the offer of the unattended mode in step"
- Status: Built, never walked
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the person's statement of 19 October 2026 among it; concerns skills/setup-checks/SKILL.md lines 223 and 492; should: by the person's statement of 19 October 2026 the open decision is taken, as a question of theirs, before the offer of the mode is made or dropped, and setup-checks step 1 and step 3, expanded 749 to 755 and 1017 to 1024, say together what secrets becomes after a no to installing with the person there.; built 21 October 2026, version 0.155.0, as text: step 3 puts the decision at once as a question with the two answers the person approved, and step 1 says so of secrets, the roadmap entry of 21 October 2026 on milestone 3, part 4; walked by no run yet, a run and no bench being what it needs; kept with its two answers by the decision of 23 October 2026: no permission for a single tool under a no, the roadmap entry of 24 October 2026 on the six closing runs, decision (a), and the point under Decisions taken against

### pull requests #3, #4 and #5 of project z were created at records 421, 552 and 798 without arming and without a gate query, and handed over at 435, 566 and 813 on the reading of record 348
- Wrong: pull requests #3, #4 and #5 of project z were created at records 421, 552 and 798 without arming and without a gate query, and handed over at 435, 566 and 813 on the reading of record 348
- Should: every pull request of steps 7 and 8 is armed with `bin/devloop-arm`, and the case of its handover is read off the program's `gate:` lines or off both queries asked there, `setup-checks` expanded 1437 to 1442, 1547 to 1552 and 2116 to 2120.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: none
- Status: Recorded, not built
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the records named in the entry; concerns skills/setup-checks/SKILL.md lines 697, 791 and 1168; should: every pull request of steps 7 and 8 is armed with bin/devloop-arm, and the case of its handover is read off the program's gate: lines or off both queries asked there, setup-checks expanded 1437 to 1442, 1547 to 1552 and 2116 to 2120.

### gitleaks installed at /opt/homebrew/bin at record 602 of project z stands in no line of environment.md after the run
- Wrong: gitleaks installed at `/opt/homebrew/bin` at record 602 of project z stands in no line of `environment.md` after the run
- Should: the standing fact is written into `environment.md` with the install, `setup-checks` expanded 1185 to 1203.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: `bin/devloop-install-note` "> "$FILE.devloop-tmp" && mv "$FILE.devloop-tmp" "$FILE""
- Status: Built, never walked
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the records named in the entry; concerns skills/setup-checks/SKILL.md line 548; should: the standing fact is written into environment.md with the install, setup-checks expanded 1185 to 1203.; built 21 October 2026, version 0.155.0: the hook writes the line from the facts the guard left, the roadmap entry of 21 October 2026 on milestone 3, part 4; the should changed by the decisions of 20 and 21 October 2026 from the one quoted, the run writing the standing fact, to a hook writing it; walked by the bench of that day; the write moved on 24 October 2026 into bin/devloop-install-note put, which the hook calls, the evidence on its line there, the roadmap entry of 24 October 2026 on how an install is recorded

### the four questions of the rounds of project z, records 910 and 945, carried no recommended answer
- Wrong: the four questions of the rounds of project z, records 910 and 945, carried no recommended answer
- Should: each decision of a round is put with the run's recommended answer, `plan-work` expanded 920 to 924 and `shared/three-questions.md` lines 7 and 8.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: `shared/three-questions.md` "answer stands first, its label ends, in brackets, on the"
- Status: Built, never walked
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the records named in the entry; concerns skills/plan-work/SKILL.md line 283 and shared/three-questions.md lines 7 to 8; should: each decision of a round is put with the run's recommended answer, plan-work expanded 920 to 924 and shared/three-questions.md lines 7 and 8; built 19 October 2026, version 0.150.0, the roadmap entry of 19 October 2026 on the questions of a round: through the widget the recommended answer first, its label ending in brackets on the word for recommended in their language, its description saying why

### the settled line of the first round of project z stood in the question field of „Sprache“ at record 910, as the text puts it, and reads as part of that question
- Wrong: the settled line of the first round of project z stood in the question field of „Sprache“ at record 910, as the text puts it, and reads as part of that question
- Should: the line is recognisable as holding for every question of the round, the form to be decided by the person before the build, `shared/three-questions.md` lines 25 to 30.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: `shared/three-questions.md` "the first in the call that"
- Status: Built, never walked
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the person's statement of 19 October 2026 among it; concerns shared/three-questions.md lines 25 to 30, the form to be decided by the person; should: the line is recognisable as holding for every question of the round, the form to be decided by the person before the build, shared/three-questions.md lines 25 to 30; built 19 October 2026, version 0.150.0, the roadmap entry of 19 October 2026 on the questions of a round: the points a question of their own on the assumptions of the round, the first in the call, with the form the person approved that day

### the build of project z read at record 1304 the base and the mark and none of the seven preconditions again
- Wrong: the build of project z read at record 1304 the base and the mark and none of the seven preconditions again
- Should: all seven are read at the start of the build, the third among them, `build-work` expanded 2376 to 2381 and 2383 to 2437.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: `skills/build-work/SKILL.md` "**Read them by one call, on both routes**"
- Status: Built, never walked
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the records named in the entry; concerns skills/build-work/SKILL.md lines 1377 to 1381; should: all seven are read at the start of the build, the third among them, build-work expanded 2376 to 2381 and 2383 to 2437.; built 22 October 2026, version 0.156.0, the roadmap entry of that date on the conditions at the mark, as far as conditions 6 and 7 go on the direct route: the hook on the mark reads both through bin/devloop-install-record at the write of the mark and blocks where either does not say yes, whatever the run read before; what a run must still show is the reading of the other five at the start of the build on both routes and of 6 and 7 on the planning route, where the mark stands already; the should does not change; built 25 October 2026, version 0.161.0, the roadmap entry of that date on the start conditions read by one program, decision (5) of the roadmap entry of 24 October 2026: build-work reads all seven at the start of the build on both routes, six through one call of bin/devloop-start-conditions with the range and 4 as before, and the guard on the mark reads 1, 2, 5, 6 and 7 through the same program at the write; what a run must still show is the call at the start of the build on both routes, and a bench the guard, after the four parts; run 2 of 26 October 2026 met its case on the route through the planning and it held in part, condition 4 not read again at the build, and run 3 of 27 October 2026 on the direct route, where it held, the roadmap entry of 27 October 2026 on the three closing runs; condition 4 on the route through the planning built 28 October 2026, version 0.164.0, the roadmap entry of that date on the hook on SubagentStart: bin/devloop-start-conditions and bin/devloop-permission-mode in the one call, in build-work and in plan-work, decision (4) of the roadmap entry of 27 October 2026 on the tool state; a run on that route pending

### the main run of project z filled the end-to-end class and changed the types target itself, records 1885 and 2463, calling setup-checks nowhere and naming the check setup in the bodies
- Wrong: the main run of project z filled the end-to-end class and changed the `types` target itself, records 1885 and 2463, calling `setup-checks` nowhere and naming the check setup in the bodies
- Should: a state that has ended and a check target the task changes go to `setup-checks` for the class, on the task's branch, before the review, `build-work` expanded 1298 to 1320 and 1599 to 1605 and `shared/checks-owner.md` lines 1 to 15.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: none
- Status: Recorded, not built
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the records named in the entry; concerns skills/build-work/SKILL.md lines 579 to 581 and 755 and shared/checks-owner.md lines 1 to 15; should: a state that has ended and a check target the task changes go to setup-checks for the class, on the task's branch, before the review, build-work expanded 1298 to 1320 and 1599 to 1605 and shared/checks-owner.md lines 1 to 15.

### the end-to-end class of project z was filled Blocking: no at record 1885 because the workflow installs neither dasel nor a browser, and the last message gave that as the reason
- Wrong: the end-to-end class of project z was filled `Blocking: no` at record 1885 because the workflow installs neither dasel nor a browser, and the last message gave that as the reason
- Should: a filled class that depends on no service outside the project is blocking, and the tools it needs on the platform's machine enter the workflow file with it, `setup-checks` expanded 1326 to 1331 and 1406 to 1410.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: none
- Status: Recorded, not built
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the records named in the entry; concerns skills/setup-checks/SKILL.md lines 590 and 666; should: a filled class that depends on no service outside the project is blocking, and the tools it needs on the platform's machine enter the workflow file with it, setup-checks expanded 1326 to 1331 and 1406 to 1410.

### the last message of project z at record 2767 stood in three headings, opened on a stop no text names, gave the open issues no clause and the next run no word, carried under what is theirs a line that is none of that group's, and said nowhere where the result is seen
- Wrong: the last message of project z at record 2767 stood in three headings, opened on a stop no text names, gave the open issues no clause and the next run no word, carried under what is theirs a line that is none of that group's, and said nowhere where the result is seen
- Should: two groups as `shared/mark-deletion.md` line 51 and the paragraph it opens have them, the first naming why each loose issue is open and that the next run takes it, where the result is seen and why a class is not blocking in words a user understands, by the person's statement of 19 October 2026.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: none
- Status: Recorded, not built
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the person's statement of 19 October 2026 among it; concerns shared/mark-deletion.md line 51 and the paragraph it opens; should: two groups as shared/mark-deletion.md line 51 and the paragraph it opens have them, the first naming why each loose issue is open and that the next run takes it, where the result is seen and why a class is not blocking in words a user understands, by the person's statement of 19 October 2026.

### the awake line of the mode question, approved on 17 October 2026 as „… einen zugeklappten Laptop aber nicht.“ and said at record 462 of project z as "bei zugeklapptem Laptop nicht", names what does not suffice
- Wrong: the awake line of the mode question, approved on 17 October 2026 as „… einen zugeklappten Laptop aber nicht.“ and said at record 462 of project z as "bei zugeklapptem Laptop nicht", names what does not suffice
- Should: the line reads „Auf dem Mac hält ihn `caffeinate` wach, solange es in einem eigenen Terminal läuft und der Laptop aufgeklappt bleibt.“, approved on 19 October 2026, `setup-checks` expanded 1769 to 1778, to be built in the order after this one.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: `skills/setup-checks/SKILL.md` "goes on: under which conditions `caffeinate` keeps it awake, as long as"
- Status: Built, never walked
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the person's statement of 19 October 2026 among it; concerns skills/setup-checks/SKILL.md line 934, the wording approved on 19 October 2026 in place of the one of 17 October 2026, to be built in the order after this one; should: the line reads „Auf dem Mac hält ihn caffeinate wach, solange es in einem eigenen Terminal läuft und der Laptop aufgeklappt bleibt.“, approved on 19 October 2026, setup-checks expanded 1769 to 1778, to be built in the order after this one.; built 19 October 2026, version 0.149.0, the evidence on the line that carries the repair

### the descriptions of „Volle Flexibilität“ and „Plan ohne dich“ at record 991 of project z carry „trifft kein Entwurf, hält der Lauf an“ and „Gleiche Kosten: Design nach Liste, Rechner wach.“, as the text has them
- Wrong: the descriptions of „Volle Flexibilität“ and „Plan ohne dich“ at record 991 of project z carry „trifft kein Entwurf, hält der Lauf an“ and „Gleiche Kosten: Design nach Liste, Rechner wach.“, as the text has them
- Should: the two descriptions read „Alles wird ohne dich gebaut, du liest das Ergebnis danach. Der Rechner muss wach bleiben.“ and „Der Plan entsteht ohne dich und hält an, sobald du ihn lesen kannst
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: `skills/plan-work/SKILL.md` "of the two, beside what it means: the machine has to stay awake for as"
- Status: Built, never walked
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the person's statement of 19 October 2026 among it; concerns skills/plan-work/SKILL.md lines 423 to 427, the two wordings approved on 19 October 2026, to be built in the order after this one; should: the two descriptions read as approved on 19 October 2026, quoted in this defect, and plan-work lines 423 to 427 say so, to be built in the order after this one.; built 19 October 2026, version 0.149.0, the evidence on the line that carries the repair; should since the decision of 23 October 2026, its wording approved on 24 October 2026, the roadmap entry of 24 October 2026 on the six closing runs, decision (c), in place of the wording of 19 October 2026 quoted there: the two descriptions read „Alles wird ohne dich gebaut, du liest das Ergebnis danach. Der Rechner muss wach bleiben.“ and „Der Plan entsteht ohne dich und hält an, sobald du ihn lesen kannst; danach geht es weiter wie bei der ersten Antwort. Der Rechner muss wach bleiben.“, recorded and not built as defect c of that entry; that should built 27 October 2026, version 0.162.0, as defect c of the entry of 24 October 2026, the roadmap entry of 27 October 2026 on the three visible texts, the evidence on the line that carries the repair

### the handovers of project z said the case of a missing required check at records 172, 361, 435, 566 and 813 as "Auto-Merge geht nicht, weil auf main noch kein Required Check steht, auf den GitHub warten könnte."
- Wrong: the handovers of project z said the case of a missing required check at records 172, 361, 435, 566 and 813 as "Auto-Merge geht nicht, weil auf `main` noch kein Required Check steht, auf den GitHub warten könnte."
- Should: the case reads as approved on 19 October 2026, „GitHub kann ihn nicht selbst mergen, weil es noch keine Pflichtprüfung gibt, auf die es warten könnte. Eine Pflichtprüfung richtet devloop nur ein, wenn du ihm erlaubst, ohne dich zu arbeiten.“, `shared/merge-handover.md` lines 8 to 10, to be built in the order after this one.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: `shared/merge-handover.md` "on, and that devloop sets a required check up only"
- Status: Built, never walked
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the person's statement of 19 October 2026 among it; concerns shared/merge-handover.md lines 8 to 10, the wording approved on 19 October 2026, to be built in the order after this one; should: the case reads as approved on 19 October 2026, „GitHub kann ihn nicht selbst mergen, weil es noch keine Pflichtprüfung gibt, auf die es warten könnte. Eine Pflichtprüfung richtet devloop nur ein, wenn du ihm erlaubst, ohne dich zu arbeiten.“, shared/merge-handover.md lines 8 to 10, to be built in the order after this one.; built 19 October 2026, version 0.149.0, the evidence on the line that carries the repair

### project y decided the rows end-to-end off and types off at record 92 without the question the fourth case of step 1 puts with the person there
- Wrong: project y decided the rows end-to-end `off` and types `off` at record 92 without the question the fourth case of step 1 puts with the person there
- Should: each such row is asked about through the widget, alone in its call, the check in ordinary words, the table's reason quoted, and whether they decided it, `setup-checks` expanded 778 to 792.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: none
- Status: Recorded, not built
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the records named in the entry; concerns skills/setup-checks/SKILL.md lines 252 to 265; should: each such row is asked about through the widget, alone in its call, the check in ordinary words, the table's reason quoted, and whether they decided it, setup-checks expanded 778 to 792.

### project y handed the merge of the armed pull request #5 over at record 171 with a command and a case of its own, having read the gate off the stale section of environment.md and not off the two queries
- Wrong: project y handed the merge of the armed pull request #5 over at record 171 with a command and a case of its own, having read the gate off the stale section of `environment.md` and not off the two queries
- Should: at an armed pull request the run says what is outstanding and hands nothing over, and the gate is read off both queries where the program printed none, never off `environment.md`, `setup-checks` expanded 1437 to 1447 and 1547 to 1552.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: none
- Status: Recorded, not built
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the records named in the entry; concerns skills/setup-checks/SKILL.md lines 697 and 791; should: at an armed pull request the run says what is outstanding and hands nothing over, and the gate is read off both queries where the program printed none, never off environment.md, setup-checks expanded 1437 to 1447 and 1547 to 1552.

### Claude Code's own rule blocked sleep 30 before gh pr view at record 159 of project y, the query was made again without the sleep at 161, and no message named the block
- Wrong: Claude Code's own rule blocked `sleep 30` before `gh pr view` at record 159 of project y, the query was made again without the sleep at 161, and no message named the block
- Should: the block is said as a refusal a second attempt got past is said, and the texts name a block of the tool's own rule on a command among the refusals or say it is none, `shared/command-does-not-answer.md` lines 11 to 16.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: none
- Status: Recorded, not built
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the records named in the entry; concerns shared/command-does-not-answer.md lines 11 to 16; should: the block is said as a refusal a second attempt got past is said, and the texts name a block of the tool's own rule on a command among the refusals or say it is none, shared/command-does-not-answer.md lines 11 to 16.

### the last message of project y at record 201 put a proposal and the question on the stale section of environment.md beside the question what to build, and counted the filled classes as four and six
- Wrong: the last message of project y at record 201 put a proposal and the question on the stale section of `environment.md` beside the question what to build, and counted the filled classes as four and six
- Should: the question what to build stands alone and last, the stale section is left as it stands and nothing is read off it, and the count is one number, `setup-checks` expanded 2180 to 2193 and `output-styles/devloop.md` lines 52 to 56.
- Found: The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off their session logs and the projects, and where milestone 3 stands under the criterion the person decided that day, in place of the one of 12 October 2026: every defect that concerns the milestone listed in three groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a held at every place under one reading and not under another, 13 held but for one point, 14 held at one place and not at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October 2026 on the loose issues met again; of the six rows of the check table of `devloop-test-y` four went as their case says and two were decided without the question; nineteen new defects, three of them the person's wordings of that day, one with a should the person has still to decide; 19 October 2026, the version stays 0.148.0.
- Fix: none
- Status: Recorded, not built
- Note: found 19 October 2026 by the order recording the two runs of that day in devloop-test-z and devloop-test-y, read off their session logs, the person's statement of 19 October 2026 among it; concerns skills/setup-checks/SKILL.md line 1245 and output-styles/devloop.md lines 52 to 56; should: the question what to build stands alone and last, the stale section is left as it stands and nothing is read off it, and the count is one number, setup-checks expanded 2180 to 2192 and output-styles/devloop.md lines 52 to 56.

### the three tasks of the roadmap are not separated, so nothing closed can leave it without losing a wording, a reason or a row of the table, and the history of the skills' states stands in the loaded texts
- Wrong: the three tasks of `docs/roadmap.md` are not separated, so that nothing closed can leave it without a wording, a reason or a line of the table being lost, and the history of the skills' states stands in the texts every load reads; what should stand is the three tasks separated, so that what is closed can leave the roadmap without a wording, a reason or a row of the table being lost, and the history standing not in the loaded texts but where only whoever needs it reads it; how, the person decides when the subject comes up, which they decided on 19 October 2026 to do after milestone 3.
- Should: not stated
- Found: The list of the defects that concern milestone 3 checked point by point against the code at `0776389`, in two passes of subagents, ordered into clusters by cause and repair, the lapsed and the left-on-purpose points found, every point outside the milestone given its place, and the stock-take corrected where it counted as built a defect whose should is not built; the person's decision of 19 October 2026 that of the run without the person the milestone covers installing alone; nothing built; the milestone not reached; 19 October 2026, version 0.150.0 stays.
- Fix: none
- Status: Recorded, not built
- Note: found 19 October 2026 by the order checking the list of the defects that concern milestone 3 point by point; decided by the person on 19 October 2026 to be taken up after milestone 3, how being theirs to decide when the subject comes up; the counts of that day stand in the entry with their commands; decided by the person on 1 November 2026, (a): three places, the roadmap a dated report that is only appended to, the open defects in a file of their own, the valid reasons and the approved wordings in a file of their own ordered by the loaded files and their headings, without history, and the loaded texts carrying the rule and at most a short reason, no date, no reference to the roadmap, no old wording and no case; (b): three parts in this order, part 1 the history out of the loaded texts and docs/rationale.md written, part 2 the file of the open defects that the stock-take reads, part 3 the roadmap archived; (c): a thing whose counting run is lost by the change of its lines stays built, never walked until milestone 12 runs, and the order of part 1 records no run; part 1 built 1 November 2026, version 0.170.0, the roadmap entry of that day; the defect stays recorded and not built until part 3

### README.md says the question that writes the install record is put at setup, where since 20 October 2026 it is put at a refresh as well
- Wrong: `README.md` line 234 says that the question that writes the install record is put at setup, where since 20 October 2026 it is put at a refresh as well where no record stands on the main branch
- Should: the sentence says both places, in a wording the person approves, `README.md` being in no commit of this order. (d) Finding 19 and cluster 18. `shared/install-question.md` lines 13 to 26 at `d1250d1` say the content of the two lines under the no: at the first asking that the run installs nothing outside the project, that where a tool or a browser is missing they get the command and decide, and the exception that some packages of their project download something themselves when they are installed, a browser for tests say, which the no does not stop; at the second asking the same without the command and with work without them not possible; the paragraph on the approved wordings, lines 45 to 51, names this entry for the wording of 20 October 2026; the skill says what is said, not the words. Nothing changes in `skills/setup-checks/SKILL.md`, whose step 8 inserts the same text at line 1071. Built: the no of the install question says at both askings that some packages of the project download something themselves when they are installed and that the no does not stop it, `shared/install-question.md` lines 16 to 20 at `d1250d1`; its should since this entry, in place of finding 19's: the line under the no says that installing a package of the project can download something on the side, a browser say, and that the no does not stop that, and the guard stays as it is; the old should of finding 19, quoted: "under a no nothing lands outside the project without the person, a browser that the installation of a package downloads included". Line 5986, the question's half: its should since this entry is the report half alone — what a package manager did beside the package stands in the report of the install, `skills/build-work/SKILL.md` line 507 and `skills/setup-checks/SKILL.md` line 545 — and the defect reads built with its evidence on line 507; the old should, quoted: "it has to be said where the question is put, as part of what the tool kind costs — the milestone's 'what each kind costs' — and it has to stand in the report of what came back". `docs/plan.md` line 244 names the cost among the question's points of 19 September 2026 and lines 503 to 507 record the cut of 30 September 2026 to the four points that carry the decision, so nothing there changes. (e) Cluster 17. `skills/setup-project/SKILL.md` lines 49 to 56 at `d1250d1` say that the case with nobody there cannot arise here, the run without the person reaching the skill on no way and a setup never running without the person, and that until 20 October 2026 the bullet said the command becomes an issue; the insert at line 63 goes, "How to ask" following the bullets directly. The defect of line 27503 reads built since this entry, its evidence on line 49, its should met by its second way, the text for the run with nobody there gone. Built: the bullet of `setup-project` for a blocked install says the case with nobody there cannot arise here, `skills/setup-project/SKILL.md` lines 49 to 54 at `d1250d1`; its should as finding 11 had it, met by its second way: "the bullet names the case with them there alone, or says the case cannot arise here, as setup-checks does under With nobody there for its third route". Line 27167, the insert of `shared/backed-command.md` in `setup-project` whose only use went with the install handed over, its should the insert going or a line that hands a command over using it: Closed, lapsed: `skills/setup-project/SKILL.md` no longer carries "devloop-text backed-command". The closing names no commit, since the commit of this branch does not resolve on `main` after the squash merge, section D of the tool's header; the text stood in the file since `d713819` of 18 September 2026, `git log -S`. No line of the skill hands a command that fetches something over, read with `grep -n -i 'hand' skills/setup-project/SKILL.md`: `gh auth login` at line 195 fetches nothing, the merge handover is its own text, and the refresh question hands nothing over since nothing is installed in the setup. (f) Cluster 3, line 6266: Closed, left on purpose: decided in `docs/roadmap.md` at "The question does not say that a bare pip opens nothing under a yes.". Cluster 6, line 26220: its should since this entry is that what the second question needs stands in its fields, in the wording approved on 17 October 2026, and that nothing the decision needs stands only before the call, `output-styles/devloop.md` line 38 carrying the instruction; the old should, quoted: "what the mode question needs stands in its fields, in the wording approved on 17 October 2026, and the line before each second question in its question field, naming their no where the record says no, nothing as text before either call"; the walk of 19 October 2026 at records 496 and 497 of project z, lines 29807 to 29820, enters the defect's row as a run under 0.148.0 with this file as its source, by the rule of the answer to question 5, since that entry read the records for exactly this case; the run counts, the site line last changed at `89fb29a` of 16 October 2026 and the evidence line at `b24542a` of 17 October 2026, both before `3f810fd`, which introduced 0.148.0. Cluster 13, line 6442: Closed, left on purpose: decided in `docs/roadmap.md` at "not its output on stderr, on purpose". (g) `docs/plan.md` carries after its paragraph on the decision of 20 October 2026 under milestone 3, line 394, the dated sentence that the examination of the sandbox leaves the list the milestone stands on, with the decision of cluster 16. (h) Everything else above is recorded only.
- Found: Milestone 3, part 1, the install question, built as the person decided on 20 October 2026: the refresh of `setup-project` puts the install question where no record stands on the main branch and writes the record; no question of its step 4 carries a recommendation, the rule standing in `shared/how-to-ask.md`; the call of the install question stays alone, without a mechanism, for the reason that what needs weighing goes alone; the no of the install question names the exception of a package that downloads something when it is installed, in the wording approved that day; the bullet of `setup-project` for a blocked install with nobody there says the case cannot arise, and the insert of `shared/backed-command.md` goes; the person's decisions of that day on the clusters of the checked list recorded with what follows from the rules; four findings of the tool brought in as defects, three of them built and one closed, four defects closed as left on purpose and one as lapsed; 20 October 2026, version 0.152.0.
- Fix: none
- Status: Closed, corrected in the document: `README.md` carries "that writes that record is put at setup, and at a refresh of the setup as".
- Note: found 20 October 2026 by the roadmap entry of 20 October 2026 on milestone 3, part 1, README.md being in no commit of that order; should: the sentence says both places, in a wording the person approves; built 20 October 2026, version 0.153.0, the roadmap entry of that date on milestone 3, part 2, in the wording the person approved that day; closed 21 October 2026, corrected in the document, the README saying both places in the approved wording, the roadmap entry of 20 October 2026 on milestone 3, part 2, its fifth commit

### the session-start line without a record says the blocked install is handed to you, where the line reaches the run and the guard hands it to the person
- Wrong: not stated
- Should: not stated
- Found: Milestone 3, part 2, the saved answer, built as the person decided on 20 October 2026: under `install-tools: no` the record carries the answer and the date alone and the line at session start says `places: none` and `routes: none`, whatever an older record under a no carries; `README.md` says in the wording approved that day that the question is put at setup and at a refresh where no record stands on the main branch and that the record travels with the repository, and `docs/skill-conventions.md` and the comment of `hooks/session-start.sh` say that the line at session start reaches the run and not the person; `README.md` carries no date and says the state of today, eight dates and a version pair gone, the rule in the conventions, and a step of the job `stock-take` is red where it carries one; the hook run on a bench in four cases and the step's command on the tree and on a copy with a date over a line break; 20 October 2026, version 0.153.0.
- Fix: `bin/devloop-install-record` "echo "[InstallRecord] none: $(printf"
- Status: Built, never walked
- Note: found 20 October 2026 at the counter-check of the order on milestone 3, part 2, question 7; concerns hooks/session-start.sh at every install outside the repository is blocked and handed to you; should: the line says handed to the person, in a wording the person approves; built 21 October 2026, version 0.154.0, the two words changed as the person approved that day, the roadmap entry of that date on milestone 3, part 3; the line formed by bin/devloop-install-record --line since 28 October 2026, the evidence there

### the session-start line for a setup whose branch cannot be read joins the cause of bin/devloop-setup-state behind the field's own colon, two of its causes carrying a label and a colon of their own
- Wrong: not stated
- Should: not stated
- Found: Milestone 3, part 3, built as the person decided on 20 and 21 October 2026: every cause of `bin/devloop-install-record` is one whole clause without a label and a colon of its own, and the block message of `hooks/pre-tool-use-install-guard.sh` joins it behind "does not open it, because", the fallback for a reader that gave no cause and the block for a place the record does not name in the wordings approved on 21 October 2026; the message says that the command is handed over so that it runs from wherever the person is; `--path` of `@puppeteer/browsers install` is read; the abbreviated forms npm reads as a global install are read, measured on three versions of npm; the line at session start without a record says handed to the person; the red line of the step on a date in `README.md` reworded and a second step holding `README.md` to naming no file or document of devloop's own; five defects built and one found; 21 October 2026, version 0.154.0.
- Fix: `hooks/session-start.sh` "not read, because ${CAUSE:-the reader answered nothing}"
- Status: Walked
- Note: found 21 October 2026 at the counter-check of the order on milestone 3, part 3; concerns hooks/session-start.sh line 49, set up in part | on the default branch as last fetched: not read, followed by the cause, where no default branch: origin/HEAD names none and the ref … cannot be read: the default branch … has not been fetched open with a label and a colon of their own; should: the causes of bin/devloop-setup-state are whole clauses as those of bin/devloop-install-record are since that day, or the line joins them in a form the person approves; built 21 October 2026, version 0.155.0: the causes of bin/devloop-setup-state are whole clauses and the line joins them behind because, the roadmap entry of 21 October 2026 on milestone 3, part 4; walked by the bench of that day

### README.md lists what the hooks do without being asked and says nothing of the line the install-fact hook writes into the file on running the project after an install the record let through
- Wrong: not stated
- Should: not stated
- Found: Milestone 3, part 4, built as the person decided on 20 and 21 October 2026: a hook on `PostToolUse` writes what an install the record let through did into `docs/agents/environment.md` under `## Installed outside the project`, the command as its words ran and the folder it installed into, from the facts the install guard leaves at its pass under a yes, so that the guard's reading is the one reading; the two hooks that run the check chain read a tool not found on its search path through one program and say that the check did not run, which tool is missing and that what closes it belongs in the repository; the guard's cause for a yes without a place says no place; the causes of `bin/devloop-setup-state` are whole clauses and the session-start line joins them behind "because"; `setup-checks` step 3 puts the decision on a class whose tool is missing under a no as a question at once, install it themselves or the check off, before the offer of the mode; four defects built, one found and one question halted; 21 October 2026, version 0.155.0.
- Fix: none
- Status: Closed, corrected in the document: `README.md` carries "after the run has installed a tool outside the project under your yes".
- Note: found 21 October 2026 at the counter-check of the order on milestone 3, part 4; concerns README.md lines 213 to 260 at b52be40, which this note gave as 213 to 215 until the audit of 23 October 2026; should: the README names it after every blocking check on line 214, which this note gave as 215 until the same audit, in a wording the person approves, the proposal standing in the entry; closed 21 October 2026 at the check of the branch before the merge, in the fourth commit of the branch: corrected in the document, README.md carrying the sentence the person approved, the evidence on the closing line

### README.md says devloop touches the global configuration in one place and only after a yes, where since 0.156.0 a no to the rule is recorded in a second file beside it
- Wrong: corrected in the document: `README.md` carries "again only once auto mode has actually refused an install".
- Should: not stated
- Found: Conditions 6 and 7 at the mark, the rule asked after a refusal, titles.
- Fix: none
- Status: Closed, corrected in the document: `README.md` carries "only once auto mode has refused such an install, at your next start with".
- Note: found 22 October 2026 by the order on the conditions at the mark, named in the entry of that day; concerns README.md line 280 at 4fe6374; a new wording of the README needs the person, the proposal in the report and the entry; should: the README says, in a wording of the person's, that devloop keeps their no to the rule in a small file of its own beside the settings file, and how the question comes back; closed 22 October 2026, version 0.156.0, the roadmap entry of that date on the conditions at the mark and the question after a refusal: the stored no went the same day, so the sentence is true again, and the paragraph says since this version when the question comes back and where the rule can be seen and removed, in the words the person gave; closed again 23 October 2026 on a line of the roadmap entry of 23 October 2026 on the catch-up after the audit of that day, the text its proof named until then, again only once auto mode has actually refused an install, gone with the paragraph approved that day

### the entry on conditions 6 and 7 said the self-test holds each failure of gh with the command and the message, where the case on no JSON holds neither
- Wrong: the self-test of the question program holds the case on no JSON as not decided, without command and message.
- Should: not stated
- Found: Six entries held against the code: lines corrected, defects recorded.
- Fix: none
- Status: Recorded, not built
- Note: found 23 October 2026 by the consistency audit of that date; said right on its status line in the entry of that date, the dated entry left as it stands

### the install guard reads no --path on puppeteer browsers install, where yargs 17.7.3 hands one to the vendor's install
- Wrong: the install guard reads no --path on puppeteer browsers install, which yargs 17.7.3 hands to the vendor's install
- Should: the vendor's yargs 18 measured, and where it reads such a --path, the guard reads it on that form as on @puppeteer/browsers install, several --path held as the vendor takes them, the comments with it.
- Found: Six entries held against the code: lines corrected, defects recorded.
- Fix: `hooks/pre-tool-use-install-guard.sh` "[ "$BR" = puppeteer ] && [ "$PP" -eq 0 ] && BROWSER=puppeteer"
- Status: Walked
- Note: found 23 October 2026 by the consistency audit of that date; recorded for the order after the audit, nothing built; the should on the status line; built 23 October 2026, version 0.157.0, the roadmap entry of 23 October 2026 on the catch-up after the audit of that day, the evidence moved onto the line of the fix

### the head of the install record's reader says every cause under --dependency names the section, where five name none
- Wrong: the head of the install record's reader says every cause under --dependency names the section, where five name none
- Should: it says that the causes on the section name it.
- Found: Six entries held against the code: lines corrected, defects recorded.
- Fix: `bin/devloop-install-record` "lines, and the causes on the section name it - the section missing, or"
- Status: Walked
- Note: found 23 October 2026 by the consistency audit of that date; recorded for the order after the audit, nothing built; the should on the status line; built 23 October 2026, version 0.157.0, the roadmap entry of 23 October 2026 on the catch-up after the audit of that day, the evidence moved onto the line of the fix

### the head of the question program says the record's path and line form live there alone, where the job reads both
- Wrong: the head of the question program says the record's path and line form live there alone, where the job reads both
- Should: the head names the job hooks on every system as their one other reader.
- Found: Six entries held against the code: lines corrected, defects recorded.
- Fix: `bin/devloop-auto-mode-question` "reader: the job hooks on every system in .github/workflows/stock-take.yml"
- Status: Walked
- Note: found 23 October 2026 by the consistency audit of that date; recorded for the order after the audit, nothing built; the should on the status line; built 23 October 2026, version 0.157.0, the roadmap entry of 23 October 2026 on the catch-up after the audit of that day, the evidence moved onto the line of the fix

### the install guard records a denial whose input carries no reason as a refusal of the classifier
- Wrong: the install guard records a denial whose input carries no reason as a refusal of the classifier
- Should: a denial without a reason, or with an empty one, is not counted, as one without a verdict is not.
- Found: Six entries held against the code: lines corrected, defects recorded.
- Fix: `hooks/pre-tool-use-install-guard.sh` "[ -n "$(printf '%s' "$REASON" | tr -d '[:space:]')" ] || exit 0"
- Status: Walked
- Note: found 23 October 2026 by the consistency audit of that date; recorded for the order after the audit, nothing built; the should on the status line; built 23 October 2026, version 0.157.0, the roadmap entry of 23 October 2026 on the catch-up after the audit of that day, the evidence moved onto the line of the fix

### bin/devloop-auto-mode-rule has no self-test of its own, so that four of its outcomes and three reasons run on this Mac alone
- Wrong: bin/devloop-auto-mode-rule has no self-test of its own, so that four of its outcomes and three reasons run on this Mac alone
- Should: a self-test of its own produces each outcome once under a throwaway CLAUDE_CONFIG_DIR, a link where the system makes one and a line saying so where it does not, and the job hooks on every system runs it on its four systems.
- Found: Six entries held against the code: lines corrected, defects recorded.
- Fix: `bin/devloop-auto-mode-rule` "print("SELF-TEST PASSED: %d cases" % n[0])"
- Status: Walked
- Note: found 23 October 2026 by the consistency audit of that date; recorded for the order after the audit, nothing built; the should on the status line; built 23 October 2026, version 0.157.0, the roadmap entry of 23 October 2026 on the catch-up after the audit of that day, the evidence moved onto the line of the fix

### the job hooks on every system runs three of the seven self-tests under bin, four on no system
- Wrong: the job hooks on every system runs three of the seven self-tests under bin, four on no system
- Should: the job runs every self-test under bin on its four systems.
- Found: Six entries held against the code: lines corrected, defects recorded.
- Fix: `.github/workflows/stock-take.yml` "grep -q -e '--self-test' "$f" || continue"
- Status: Walked
- Note: found 23 October 2026 by the consistency audit of that date; recorded for the order after the audit, nothing built; the should on the status line; built 23 October 2026, version 0.157.0, the roadmap entry of 23 October 2026 on the catch-up after the audit of that day, the evidence moved onto the line of the fix; since the addendum of 23 October 2026 to the roadmap entry of that day on the catch-up after the audit built for every self-test under bin/ but those of bin/devloop-bounded and bin/devloop-setup-state under Windows, the gap carried by the defect of milestone 12 that addendum records

### four status lines of this file stand as part of a thing that carries runs, against section C of the tool's header, which names no target free of runs since 20 October 2026 and which the tool does not check
- Wrong: four status lines of this file stand as part of a thing that carries runs, against section C of the tool's header, which the tool does not check
- Should: the tool rejects such a record, or the header names where such a line goes and why, and the four rows go there.
- Found: Six entries held against the code: lines corrected, defects recorded.
- Fix: `scripts/devloop-stock-take` "thing it records, runs or no runs, since 23 October 2026, and such a record"
- Status: Built, never walked
- Note: found 23 October 2026 by the consistency audit of that date; recorded for the order after the audit, nothing built; the should on the status line; built 23 October 2026, version 0.157.0, the roadmap entry of 23 October 2026 on the catch-up after the audit of that day, the evidence moved onto the line of the fix

### README.md says the rule for auto mode covers the installs a devloop hook guards and asks again after any refused install, where it names five tools and three browser installers
- Wrong: README.md says the rule for auto mode covers the installs a devloop hook guards and the question returns after any refused install, where it covers five tools and three browser installers
- Should: the README says which installs the rule covers, in a wording the person approves.
- Found: Six entries held against the code: lines corrected, defects recorded.
- Fix: none
- Status: Closed, corrected in the document: `README.md` carries "the installs that rule names".
- Note: found 23 October 2026 by the consistency audit of that date; recorded for the order after the audit, nothing built; the should on the status line; closed 23 October 2026, corrected in the document, the paragraph in the wording the person approved that day, the roadmap entry of 23 October 2026 on the catch-up after the audit of that day; the should the order of that day first gave it, that the rule allows every way the guard reads as an install, fell with the answer to the objection the same day

### README.md states the number of skills and of the files under docs/agents as figures, where a count lives in one place
- Wrong: not stated
- Should: not stated
- Found: The rule for auto mode names the guard's routes; audit defects built.
- Fix: none
- Status: Closed, corrected in the document: `README.md` carries "It covers the main path.".
- Note: found 2 October 2026 as a finding on README.md line 8, recorded as a finding until 23 October 2026 and replaced that day by this thing, sited on the line of the roadmap entry of 23 October 2026 on the catch-up after the audit of that day that closes it; corrected in the document that day, line 8 and line 272 in the wording the person approved; the finding's note until then: the README states the number of skills as a figure, twelve, where A count lives in one place in docs/skill-conventions.md names how many skills as a count written once where the thing itself is, the skills list of .claude-plugin/plugin.json held against skills/ by the first check under Before a handover, run these, and docs/plan.md repeats the figure at the twelve skills down to their branches; the five control documents are counted the same way at README Five short files under docs/agents and docs/plan.md a sixth control document, where the heading of setup-project step 6 is the place — should: the README states no figure for the skills or for the files under docs/agents that nothing holds to the thing itself, in a wording the person approves, since README.md names no file of devloop's own since 21 October 2026, and so neither the place the count lives nor a command reading it; the should of 2 October 2026, struck by that rule at the audit of 23 October 2026, read: the README names the place the count lives or carries the command that regenerates it, as the rule says, and the same for the five files; recorded 2 October 2026, grep -n -i 'twelve skills|count of skills|number of skills|how many skills' docs/roadmap.md finds three passing mentions and no entry on the count

### under Windows with Git Bash bin/devloop-bounded does not end a command that does not end together with what it started, and bin/devloop-setup-state ends the same way, untested there
- Wrong: under Windows with Git Bash `bin/devloop-bounded` does not end a command that does not end together with what it started, its self-test standing at "does not end" in the job, and `bin/devloop-setup-state` ends the same way and is untested there; the cause is not measured
- Should: in milestone 12 both end a command and everything it started at the bound under Windows with Git Bash as well, and their self-tests run in the job hooks on every system on windows-latest.
- Found: The rule for auto mode names the guard's routes; audit defects built.
- Fix: none
- Status: Recorded, not built
- Note: found 23 October 2026 by the run of the job hooks on every system on pull request #200, stopped at fifteen minutes on windows-latest, the self-test of bin/devloop-bounded standing at does not end from 12:34:12 to 12:47:39 UTC; assigned to milestone 12, docs/plan.md lines 304 to 305 and 377 to 378; the two self-tests left out under Windows in the job since the addendum of 23 October 2026 to the roadmap entry of that day on the catch-up after the audit, which builds nothing of the should; nothing built; the should on the status line; the cause not measured; since 25 October 2026 bin/devloop-start-conditions bounds every query to GitHub with it, so that under Windows a gh that does not answer is not ended at ten seconds and the guard on the mark runs into its 600 seconds, which under onFailure block blocks the write without its reason; that block stays open there with this defect, the roadmap entry of that date on the start conditions read by one program

### the install fact written by hooks/post-tool-use-install-fact.sh carries the split redirection 2>& 1 of the call that ran the install, runs 2a and 4
- Wrong: the install fact written by hooks/post-tool-use-install-fact.sh carries the split redirection 2>& 1 of the call that ran the install, runs 2a and 4
- Should: the line carries the install command as whoever clones the project runs it, without the redirections, pipes and further commands of the call, and a bench shows it with a call like those of the runs.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: `hooks/pre-tool-use-install-guard.sh` "[ -n "$(redir "$w")" ] && { i=$((i + 2)); continue; }"
- Status: Walked
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 1 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by the dated sentences of docs/plan.md under it; should: the line carries the install command as whoever clones the project runs it, without the redirections, pipes and further commands of the call, and a bench shows it with a call like those of the runs; built 24 October 2026, version 0.158.0, the evidence on the line of words_of that leaves out every redirection with its target, a bench to come after the four parts, the roadmap entry of 24 October 2026 on how an install is recorded; no longer holds milestone 3 open since the person's decision of 24 October 2026, (9) of the roadmap entry of 24 October 2026 on how an install is recorded, which gives the reason; built all the same where it is built or costs a few lines of text, neither a run nor a bench required for the milestone

### run 3a built and merged the task needing yq under install-tools yes without installing yq, the planning having read the record as allowing the route npm alone and the build being told not to install
- Wrong: run 3a built and merged the task needing yq under install-tools yes without installing yq, the planning having read the record as allowing the route npm alone and the build being told not to install
- Should: under a yes the run reads the record as the guard reads it, places and routes, installs the tool a task needs, backed, and builds against it, and a point settled with the person is not replaced by a stand-in without them.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: `shared/install-tool.md` "say what follows a block and the three other ways. A tool the task needs"
- Status: Built, never walked
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 2 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by the dated sentences of docs/plan.md under it; should: under a yes the run reads the record as the guard reads it, places and routes, installs the tool a task needs, backed, and builds against it, and a point settled with the person is not replaced by a stand-in without them; built 24 October 2026, version 0.159.0, the roadmap entry of 24 October 2026 on the install rules reaching the build subagent: point 7 of build-work says that a tool the task needs is not replaced by a stand-in and that under a yes it is installed and the task built against it, handed to the build subagent with point 7 as the fifth rule of step 3, and plan-work judges no install, the evidence on the line of point 7 that says so; a run to come after the four parts; run 2 of 26 October 2026 met its case under the yes and its should held, the real tool installed and built against, the roadmap entry of 27 October 2026 on the three closing runs; the fifth rule of step 3 named here as built did not hold in run 1, defect 6 of that entry, where the task was built against a stand-in under the no, defect 7 there, and was not met in run 2, which built without a subagent, defect 8 there

### the question on the rule at the second start with --auto of run 3a was put without calling setup-checks, and both askings named the issue by its title and added the held task and a line of their own
- Wrong: the question on the rule at the second start with --auto of run 3a was put without calling setup-checks, and both askings named the issue by its title and added the held task and a line of their own
- Should: every start with --auto that meets the question calls setup-checks for its step 8 alone, and the question names the command with its issue's number as approved on 22 October 2026.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: `skills/setup-checks/SKILL.md` "prints it, with its issue's number and not its title, though the program"
- Status: Built, never walked
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 3 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by the dated sentences of docs/plan.md under it; no longer holds milestone 3 open since the person's decision of 24 October 2026, (9) of the roadmap entry of 24 October 2026 on how an install is recorded, which gives the reason; built all the same where it is built or costs a few lines of text, neither a run nor a bench required for the milestone; should: every start with --auto that meets the question calls setup-checks for its step 8 alone, and the question names the command with its issue's number as approved on 22 October 2026; built 24 October 2026, version 0.160.0, the roadmap entry of 24 October 2026 on the questions, as decided that day in (3) of the roadmap entry of 24 October 2026 on how an install is recorded: the form of setup-checks step 8 for a start with --auto names each install with its issue's number and not its title, says that nothing else stands in the question field, no line of the run's own, and gives the exception to shared/refer-by-name.md with its reason, which that file names in one sentence; build-work and plan-work call setup-checks for its step 8 at every start that meets the question, also where it was loaded in the session already, plan-work reading at this start where it read this session; the evidence on the line of the number

### run 1 wrote no line under Installed outside the project for the WebKit download the person ran under the no, and wrote the line for htmlq with a remark beyond the hook's form
- Wrong: run 1 wrote no line under Installed outside the project for the WebKit download the person ran under the no, and wrote the line for htmlq with a remark beyond the hook's form
- Should: every install outside the project the person ran on a command handed over has its line there in the form the hook writes, the command as handed over and the folder it was read at.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: `skills/build-work/SKILL.md` "`${CLAUDE_PLUGIN_ROOT}/bin/devloop-install-note put` with the folder"
- Status: Built, never walked
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 4 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by the dated sentences of docs/plan.md under it; should: every install outside the project the person ran on a command handed over has its line there in the form the hook writes, the command as handed over and the folder it was read at; built 24 October 2026, version 0.158.0, bin/devloop-install-note put writing the line for the hook and the run, the evidence on the line of build-work that has the run call it, a run and a bench to come after the four parts, the roadmap entry of 24 October 2026 on how an install is recorded; no longer holds milestone 3 open since the person's decision of 24 October 2026, (9) of the roadmap entry of 24 October 2026 on how an install is recorded, which gives the reason; built all the same where it is built or costs a few lines of text, neither a run nor a bench required for the milestone

### run 1 said at the hand-over of brew install htmlq that a decline builds the script with its test skipped and leaves the task open
- Wrong: run 1 said at the hand-over of brew install htmlq that a decline builds the script with its test skipped and leaves the task open
- Should: the hand-over says where a no leads as build-work step 3 point 7 has it, an issue carrying the command that blocks the task.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: `shared/install-tool.md` "a decline is an answer too, not a wall**: on a no the install becomes an"
- Status: Walked
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 5 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by the dated sentences of docs/plan.md under it; should: the hand-over says where a no leads as build-work step 3 point 7 has it, an issue carrying the command that blocks the task; built 24 October 2026, version 0.159.0, the roadmap entry of 24 October 2026 on the install rules reaching the build subagent: the hand-over of build-work step 3 point 7 says that on a no the install becomes an issue carrying the command that blocks the task and the run goes on with the next ready task, the evidence on that line; a run to come after the four parts; run 1 of 26 October 2026 met its case at #1076 and it held in part, the no without a way of its own and the issue before the question, the roadmap entry of 27 October 2026 on the three closing runs; the rest built 28 October 2026, version 0.164.0, the roadmap entry of that date on the hook on SubagentStart: the handover one message with the yes way first and the no way after it, the issue written on the no alone, one signal per state, build-work step 3 point 7 and The task itself, the wording (5) of 27 October 2026; a run with the person under a no pending

### the question on gitleaks of run 1 said that the run installs nothing and gave the command without backticks, and run 4 left out the browser as the example under the no of the install question, both holding in their statement
- Wrong: the question on gitleaks of run 1 said that the run installs nothing outside the project and gave the command without backticks, and run 4 left out the browser as the example in the line under the no of the install question, where both held in their statement
- Should: the field says that outside the project the run may install nothing and gives the command in backticks, as approved on 21 October 2026, and the line under the no names the browser as its example, as approved on 20 October 2026; no milestone. (8) and (9) were decided the same day, at the order on the rest of part A. (8) The defect of `&` and `!` that part A found, below: without a milestone, nothing built, `bin/devloop-command-reader` staying as it is, and a rebuild of the reader decided against below. The reason: no run wrote these forms, and the fix would change the program through which every hook reads a command, shortly before the pass that is to close the milestone. (9) The open points sorted by whether a user notices them. A small matter no longer holds milestone 3 open; what of it is built already or costs a few lines of text is built all the same, in its part, and needs neither a run nor a bench for the milestone. Small matters, each with its reason: defect 1, since the command in the list does the same with the redirection and only looked untidy; defect 4, since that WebKit is loaded once per machine stood in `docs/agents/environment.md` as a sentence elsewhere, so the fact was there; the new defect recorded below, since the command in the list holds then too and only "installed into" is wrong, and where the tool is missing, what needs it fails, which shows; the defect of `&` and `!`, for the same reason, and no run wrote those forms; the defect of context f that part A found, since only the run reads that context, and at worst a pull request says the output was not read whole where it was; point 5, line 1538, since the person sees the command before running it, a browser download comes from the project's own Playwright with no package name that could be wrong, and where a name counts, at `htmlq`, the backing held; point 9, line 15579, with defect 3, since the question came both times, was answered and the rule written, and what deviated was only the issue's title in place of its number and a line added that held; defect 8, since it touched one sentence of the pull request alone, and the duty is gone, (6) above; lines 1317 and 13635 of "A bench, two points", line 35485, since 1317 went through the bench of 21 October 2026 without being entered as a run, so only the bookkeeping is open, and 13635 concerns a rare option of a browser download that no run used. What holds milestone 3 open, each with its reason: defect 2, since code was merged that never ran against the real tool despite the person's yes; defect 9, since the person was told who installs, against their permission at the build, the cause of defect 2; defect 5, since the person decides on a wrong account of where their no leads; defect 7, since a tool was installed on the person's machine with a command nobody checked, and the pull request says it was checked; point 8, line 5986, since the person does not learn what landed on their machine beside the tool; defect 34, a question without its reason; point 10, line 30168, since a run without the person could merge what no check let through. The bench and the pass below name only these as conditions of the milestone, and what stands there for a small matter as no longer required.
- Found: Install lines by one program, written where the install stood alone.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 6 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; renamed 24 October 2026, no run on it, by the roadmap entry of 24 October 2026 on how an install is recorded, decision (7), from the question on gitleaks of run 1 said that the run installs nothing outside the project where the text says it may install nothing, and gave the command without backticks, run 4's line under the no of point 12 taken up and the old should's under their no dropped; no milestone since that decision, the person deciding after milestone 3 which milestone takes it up, docs/plan.md naming none; should: the field says that outside the project the run may install nothing and gives the command in backticks, as approved on 21 October 2026, and the line under the no names the browser as its example, as approved on 20 October 2026

### run 2a installed mmdc under the yes with a command it called the vendor's line without having read it, and the pull request says it was read
- Wrong: run 2a installed mmdc under the yes with a command it called the vendor's line without having read it, and the pull request says it was read
- Should: a command the run runs under a yes is backed as one handed over is, the vendor's line quoted from where it was read or the path resolving, and the report names which.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: `shared/backed-command.md` "before the run runs it itself under a yes"
- Status: Built, never walked
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 7 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by the dated sentences of docs/plan.md under it; should: a command the run runs under a yes is backed as one handed over is, the vendor's line quoted from where it was read or the path resolving, and the report names which; built 24 October 2026, version 0.159.0, the roadmap entry of 24 October 2026 on the install rules reaching the build subagent: shared/backed-command.md holds the backing before the run runs a command itself under a yes and has the report name it, the report lists of build-work and setup-checks name what the command is backed by, and build-work step 3 hands the build subagent point 7 as its fifth rule with the record as bin/devloop-install-record prints it, the main run writing no install instruction of its own, the evidence on the line of the shared text; a run to come after the four parts; run 2 of 26 October 2026 met its case at both installs and its should held, the backing under the yes, the roadmap entry of 27 October 2026 on the three closing runs; the fifth rule of step 3 named here as built did not hold in run 1, defect 6 of that entry, and was not met in run 2, defect 8 there

### runs 3b and 4 wrote install-route npm into the record without asking npm where it puts things
- Wrong: runs 3b and 4 wrote install-route npm into the record without asking npm where it puts things
- Should: the run that writes the record reads the route lines off what the project declares and asks no route where it puts things, the guard asking at every command and naming a route that does not answer in its block
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: `shared/install-record.md` "and the run does not ask a route where it puts things"
- Status: Built, never walked
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 8 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by the dated sentences of docs/plan.md under it; no longer holds milestone 3 open since the person's decision of 24 October 2026, (9) of the roadmap entry of 24 October 2026 on how an install is recorded, which gives the reason; built all the same where it is built or costs a few lines of text, neither a run nor a bench required for the milestone; should: the run that writes the record asks each route of the stack where it puts things and names one that does not answer in the body of the pull request, as shared/install-record.md says; built 24 October 2026, version 0.160.0, the roadmap entry of 24 October 2026 on the questions, should since that day, by decision (6) of the roadmap entry of 24 October 2026 on how an install is recorded: the run that writes the record reads the route lines off what the project declares and asks no route where it puts things, the guard asking at every command and naming a route that does not answer in its block; shared/install-record.md says so, the duty and the sentence in the pull request gone, the evidence on its line

### the planning of runs 1 and 2a settled in a round's assumptions that the person installs a missing tool, and run 1 wrote it into the spec
- Wrong: the planning of runs 1 and 2a settled in a round's assumptions that the person installs a missing tool, and run 1 wrote it into the spec
- Should: the spec leaves who installs a tool to the install record read at the build, and an assumption of a round names no one to install it.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: `skills/plan-work/SKILL.md` "**A tool outside the project that the work needs is named, and who installs"
- Status: Built, never walked
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 9 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by the dated sentences of docs/plan.md under it; should: the spec leaves who installs a tool to the install record read at the build, and an assumption of a round names no one to install it; built 24 October 2026, version 0.159.0, the roadmap entry of 24 October 2026 on the install rules reaching the build subagent: plan-work names such a tool and settles who installs it neither as an assumption of a round nor with the person, and the spec names it under Implementation decisions and puts no install under Out of scope, the evidence on the head of that paragraph; a run to come after the four parts; runs 1 and 2 of 26 October 2026 met its case and its should held, nobody settled to install; the sentence of the built paragraph on a missing tool, wording (b), held in neither, defect 4 of the roadmap entry of 27 October 2026 on the three closing runs

### runs 1, 2a and 4 announced the first question of the interview in text before its call, and run 2a the build after the cut, each directly after the reminder of Claude Code to say in a few words what it is doing
- Wrong: runs 1, 2a and 4 announced the first question of the interview in text before its call, and run 2a the build after the cut, each directly after the reminder of Claude Code to say in a few words what it is doing
- Should: nothing stands as text before the call that shows the widget and nothing is said of the cut, under that reminder as well, the way to hold it against the reminder being decided before it is built.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 10 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: nothing stands as text before the call that shows the widget and nothing is said of the cut, under that reminder as well, the way to hold it against the reminder being decided before it is built

### runs 2b and 3a put questions through the widget beyond its bound of fourteen lines, and runs 1 and 3a headers of thirteen characters
- Wrong: runs 2b and 3a put questions through the widget beyond its bound of fourteen lines, and runs 1 and 3a headers of thirteen characters
- Should: a question whose text does not fit the bound is asked as text at the end of the turn, and a header has at most twelve characters.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 11 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: a question whose text does not fit the bound is asked as text at the end of the turn, and a header has at most twelve characters

### runs 1, 3a and 4 took decisions about the idea themselves in the interview, as a settled point or in the spec, where the interview puts every decision about the idea to the person
- Wrong: runs 1, 3a and 4 took decisions about the idea themselves in the interview, as a settled point or in the spec, where the interview puts every decision about the idea to the person
- Should: a decision about the idea is a question with a recommendation, and only what has a right answer to look up, follows from what they said, is this workflow's convention or a rule of the project is settled by the run.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 12 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: a decision about the idea is a question with a recommendation, and only what has a right answer to look up, follows from what they said, is this workflow's convention or a rule of the project is settled by the run

### runs 1 and 2a asked whether the hard core is understood in the mixed form of a yes-or-no and an alternative question
- Wrong: runs 1 and 2a asked whether the hard core is understood in the mixed form of a yes-or-no and an alternative question
- Should: the question on the hard core is one or the other, with the two answers the text gives it.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 13 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: the question on the hard core is one or the other, with the two answers the text gives it

### runs 1 and 2b restated a checking agent's failed item as no failure, in the message before the design question and in the comment of Stage 3
- Wrong: runs 1 and 2b restated a checking agent's failed item as no failure, in the message before the design question and in the comment of Stage 3
- Should: every verdict stands as the checking agent returned it, and with nobody there a recommended draft that failed an item stops the run.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 14 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: every verdict stands as the checking agent returned it, and with nobody there a recommended draft that failed an item stops the run

### the drafting agents of runs 1 and 2b and the checking agents of run 1 were not handed where the mark stands
- Wrong: the drafting agents of runs 1 and 2b and the checking agents of run 1 were not handed where the mark stands
- Should: every agent of Stage 3 is handed where the mark stands and what a refusal is.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 15 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: every agent of Stage 3 is handed where the mark stands and what a refusal is

### runs 1 and 2a compared the drafts in no prose on the three axes of Stage 3
- Wrong: runs 1 and 2a compared the drafts in no prose on the three axes of Stage 3
- Should: the drafts are compared in prose on how much each hides behind how small an interface, how localised a later change is and where each puts the seams.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 16 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: the drafts are compared in prose on how much each hides behind how small an interface, how localised a later change is and where each puts the seams

### the halts after the planning of runs 2b and 3a said the design taken and a decision taken alone, called the plan read by nobody read, and handed over a try-it of something not built
- Wrong: the halts after the planning of runs 2b and 3a said the design taken and a decision taken alone, called the plan read by nobody read, and handed over a try-it of something not built
- Should: the halt says what the cut created and how it goes on, and the design and the decisions taken alone stand in the spec and its comment only.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 17 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: the halt says what the cut created and how it goes on, and the design and the decisions taken alone stand in the spec and its comment only

### run 3b waited inside its answer for the armed pull request of the refresh to merge, where step 8 of setup-project does not wait with a person there
- Wrong: run 3b waited inside its answer for the armed pull request of the refresh to merge, where step 8 of setup-project does not wait with a person there
- Should: with the setup's pull request armed and a person there, the step ends its turn saying what the pull request waits for, and reads the merge off the platform when they come back.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 18 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: with the setup's pull request armed and a person there, the step ends its turn saying what the pull request waits for, and reads the merge off the platform when they come back

### run 1 skipped the end-to-end class for a test not yet built, and run 4 the dependencies class while the project carried third-party packages it had just added
- Wrong: run 1 skipped the end-to-end class for a test not yet built, and run 4 the dependencies class while the project carried third-party packages it had just added
- Should: a class that applies is filled or put to the person, and not skipped for work not yet built.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 19 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: a class that applies is filled or put to the person, and not skipped for work not yet built

### run 2a wrote lines under What these checks do not cover for the two classes it had just filled
- Wrong: run 2a wrote lines under What these checks do not cover for the two classes it had just filled
- Should: a class just filled has no line there.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 20 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: a class just filled has no line there

### run 1 put the questions on the project's packages naming the file, two tools in one call, under headers of their own and once for a package the task itself needs
- Wrong: run 1 put the questions on the project's packages naming the file, two tools in one call, under headers of their own and once for a package the task itself needs
- Should: the questions take the form setup-checks step 3 gives them, and what a task enters for what it builds is not asked under this permission.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 21 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: the questions take the form setup-checks step 3 gives them, and what a task enters for what it builds is not asked under this permission

### runs 1 and 4 added sentences of their own to the mode question and to the handover after its no, and run 1 put the question under the header „Ohne mich“
- Wrong: runs 1 and 4 added sentences of their own to the mode question and to the handover after its no, and run 1 put the question under the header „Ohne mich“
- Should: the mode question carries the wording approved on 17 October 2026, its header „Ohne dich“ included, and nothing more is said on the no.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 22 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; renamed 24 October 2026 by the addendum to that order from runs 1 and 4 added sentences of their own to the mode question and to the handover after its no, the header of run 1 added, no run on it; should: the mode question carries the wording approved on 17 October 2026, its header „Ohne dich“ included, and nothing more is said on the no

### runs 1 and 2a said how many lenses ran and what single lenses found between the rounds
- Wrong: runs 1 and 2a said how many lenses ran and what single lenses found between the rounds
- Should: neither number is said, and the report reaches the person only at the close of the step that owns the gate.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 23 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: neither number is said, and the report reaches the person only at the close of the step that owns the gate

### run 1 ran no security lens over a diff with file paths, and run 2a recorded lenses not run in words of its own
- Wrong: run 1 ran no security lens over a diff with file paths, and run 2a recorded lenses not run in words of its own
- Should: every lens whose trigger the diff contains runs, and one that does not run is recorded in its trigger's own words, negated.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 24 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: every lens whose trigger the diff contains runs, and one that does not run is recorded in its trigger's own words, negated

### runs 2a and 2b wrote rules into docs/agents/standards.md without computing the exits or reading what the file has lost
- Wrong: runs 2a and 2b wrote rules into docs/agents/standards.md without computing the exits or reading what the file has lost
- Should: before a rule is written the three exits are computed and git log -p of the file is held against it.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 25 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: before a rule is written the three exits are computed and git log -p of the file is held against it

### runs 2a and 2b read exit codes that the shell of the call left empty, and run 2a reported a code in the pull request it never read
- Wrong: runs 2a and 2b read exit codes that the shell of the call left empty, and run 2a reported a code in the pull request it never read
- Should: an exit code is read in the shell the call runs in and only a code read is reported.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 26 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: an exit code is read in the shell the call runs in and only a code read is reported

### in run 3a a review subagent ran a command refused by a safety check of Claude Code again in another form, and the build went on without an issue
- Wrong: in run 3a a review subagent ran a command refused by a safety check of Claude Code again in another form, and the build went on without an issue
- Should: a refused command is tried no second time and no other way, and the refusal raises the issue that blocks the task.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 27 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: a refused command is tried no second time and no other way, and the refusal raises the issue that blocks the task

### the gate of run 1 on its first task showed no diff and carried a verdict and an announcement
- Wrong: the gate of run 1 on its first task showed no diff and carried a verdict and an announcement
- Should: the gate shows the diff and the findings and nothing travels with it.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 28 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: the gate shows the diff and the findings and nothing travels with it

### run 2b recorded a guarded condition as checked by reasoning
- Wrong: run 2b recorded a guarded condition as checked by reasoning
- Should: every guarded condition is broken, its check seen red and the code put back.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 29 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: every guarded condition is broken, its check seen red and the code put back

### run 1 put a broken condition back with git checkout, which reset its own uncommitted fixes
- Wrong: run 1 put a broken condition back with git checkout, which reset its own uncommitted fixes
- Should: the restoration puts back the break alone and is verified with git diff.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 30 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: the restoration puts back the break alone and is verified with git diff

### run 1 said the list of tasks and which it took next
- Wrong: run 1 said the list of tasks and which it took next
- Should: neither is said.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 31 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: neither is said

### the refresh of run 3b raised the marker of issue-tracker.md and wrote nothing of it anew from the template
- Wrong: the refresh of run 3b raised the marker of issue-tracker.md and wrote nothing of it anew from the template
- Should: the refresh writes devloop's part of each file anew from the current template.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 32 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: the refresh writes devloop's part of each file anew from the current template

### runs 2a, 3a, 3b and 4 ran the in-flight and readiness queries shortened, not at all, or replaced by a list of issues
- Wrong: runs 2a, 3a, 3b and 4 ran the in-flight and readiness queries shortened, not at all, or replaced by a list of issues
- Should: the queries run as docs/agents/issue-tracker.md carries them, whole.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect 33 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: the queries run as docs/agents/issue-tracker.md carries them, whole

### the install question of the refresh of run 3b said nothing in its question field of why it came, neither that the setup is refreshed nor that no answer stands for this project on the main branch
- Wrong: the install question of the refresh of run 3b said nothing in its question field of why it came, neither that the setup is refreshed nor that no answer stands for this project on the main branch
- Should: at a refresh the question field of the install question says before the question line why it comes now, that no answer stands for this project on the main branch, in a wording the person approves, and setup-project says so where its opening says that a refresh carries neither sentence.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: `skills/setup-project/SKILL.md` "in its question field, before the question line, why it comes now"
- Status: Built, never walked
- Note: found 24 October 2026 by the addendum to the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off the session log of run 3b, defect 34 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by the dated sentences of docs/plan.md under it; should: at a refresh the question field of the install question says before the question line why it comes now, that no answer stands for this project on the main branch, in a wording the person approves, and setup-project says so where its opening says that a refresh carries neither sentence; built 24 October 2026, version 0.160.0, the roadmap entry of 24 October 2026 on the questions: at a refresh where no record stands the install question carries in its question field, before the question line, why it comes now, that the setup of this project is being refreshed and that no answer to it stands for it on the main branch, the wording approved that day as (d) of the roadmap entry of 24 October 2026 on how an install is recorded named and not written out, and the opening of step 0 names this as the one exception to a refresh carrying neither sentence; the evidence on the line of the reason; a run to come in the pass after the four parts, defect 34 holding milestone 3 open by decision (9) of that entry; run 1 of 26 October 2026 met its case at #70 and it held in its statement, the roadmap entry of 27 October 2026 on the three closing runs

### the check on GitHub that run 2a set up installs no htmlq, so the tests of npm run links that run 1 built to be skipped where htmlq is missing are skipped there and the required check is green without them, run 2b filed it as an issue and run 3a's planning settled with the person that yq is not installed there either
- Wrong: the check on GitHub that run 2a set up installs no htmlq, so the tests of npm run links that run 1 built to be skipped where htmlq is missing are skipped there and the required check is green without them, run 2b filed it as an issue and run 3a's planning settled with the person that yq is not installed there either
- Should: the workflow file carries the installation line of every tool outside the project that a blocking check needs to run its tests, one whose tests are skipped where it is missing included, so that no blocking check passes on the platform by skipping, the line being the check setup's and not settled in a planning, and which step enters it where a task brings in such a tool after the workflow stands is decided before it is built.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the addendum to the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off the session logs of runs 1, 2a, 2b and 3a and off devloop-test-aa and its runs of the check on GitHub, defect 35 of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: the workflow file carries the installation line of every tool outside the project that a blocking check needs to run its tests, one whose tests are skipped where it is missing included, so that no blocking check passes on the platform by skipping, the line being the check setup's and not settled in a planning, and which step enters it where a task brings in such a tool after the workflow stands is decided before it is built

### the descriptions of the first two answers of the question of plan-work on how the work runs after the planning carry the sentence on the design chosen against the written list, which the person decided on 23 October 2026 to drop
- Wrong: the descriptions of the first two answers of the question of plan-work on how the work runs after the planning carry the sentence on the design chosen against the written list, which the person decided on 23 October 2026 to drop
- Should: the two descriptions read as approved on 24 October 2026, quoted under (c), the machine kept awake and no word on the design, and plan-work lines 425 to 428 say so.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: `skills/plan-work/SKILL.md` "of the two, beside what it means: the machine has to stay awake for as"
- Status: Built, never walked
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect c of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: the two descriptions read as approved on 24 October 2026, quoted under (c), the machine kept awake and no word on the design, and plan-work lines 425 to 428 say so; decided 27 October 2026, (a) of the roadmap entry of that date on the three closing runs: built after the decision on milestone 3 in one order with defects 1 and 2 of that entry, no milestone, where this note read that the person decides after milestone 3 which milestone takes it up; run 3 of 27 October 2026 met its case at #164 and it did not hold, no run recorded on it since it is not built; built 27 October 2026, version 0.162.0, the roadmap entry of 27 October 2026 on the three visible texts: the cost said in each of the two descriptions is the machine staying awake, and that the design gets chosen against the written list is not said there, plan-work saying so at the place of the costs, the wording of 24 October 2026 standing in the entry of that date under decision (c); the evidence on the line that carries the repair; no run yet

### the last message of run 1 named neither the folder of what was built nor a command that runs as it stands to try it, nor what one sees then
- Wrong: the last message of run 1 named neither the folder of what was built nor a command that runs as it stands to try it, nor what one sees then
- Should: in milestone 11, the last message of a run says where what was built lies and how it is tried, with a command that runs as it stands and what one sees then.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect d of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; milestone 11, docs/plan.md under it; should: in milestone 11, the last message of a run says where what was built lies and how it is tried, with a command that runs as it stands and what one sees then

### no text of devloop says how it titles a pull request or a commit in a user's project, and runs 1, 2a and 3b wrote titles naming the person or a version
- Wrong: no text of devloop says how it titles a pull request or a commit in a user's project, and runs 1, 2a and 3b wrote titles naming the person or a version
- Should: the rule that a title says what changed and nothing else holds for every title devloop writes in a user's project, the title of a pull request and the first line of a commit, in plain words what changes, naming neither the person nor a version nor a date.
- Found: Six closing runs read off their logs, each on the defects it met.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order evaluating the six closing runs of milestone 3 of 23 October 2026, read off their session logs, defect e of the roadmap entry of 24 October 2026 on those runs, the records in its paragraph; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: the rule that a title says what changed and nothing else holds for every title devloop writes in a user's project, the title of a pull request and the first line of a commit, in plain words what changes, naming neither the person nor a version nor a date

### hooks/post-tool-use-install-fact.sh wrote the line of an install after the exit of the whole call, so that an install failing behind a pipe, before a command after it or before || true got installed into
- Wrong: hooks/post-tool-use-install-fact.sh wrote the line of an install after the exit of the whole call, so that an install failing behind a pipe, before a command after it or before || true got installed into
- Should: where the call's exit is not the install's, the hook writes no line and tells the run to read the folder and write the line through the program. After the build of all four parts, under the version of the last, to a bench: the three cases of decision (2), for point 8, the decision on it; no longer required since decision (9), lines 1317 and 13635 of "A bench, two points", line 35485, defect 1 with calls like those of the runs, and the program of defect 4. What held milestone 3 open after decisions (1) to (7): points 5, 8, 9 with defect 3, and 10; defects 1, 2, 4, 5, 7, 8, 9 and 34 and the new defect. What holds it open since decision (9): points 8 and 10 and defects 2, 5, 7, 9 and 34; the others, and the two defects part A found, are small matters that no longer hold it open, the defect of `&` and `!` without a milestone by decision (8), and the defect the rest of part A found, below, is not sorted yet. They are built in four parts, each a branch of its own that raises the version once, each merged before the next is cut: A, how an install is recorded, defect 1, point 8 with the new defect, and defect 4, this branch; B, the install rules in the text, point 5, defect 7, the text of point 8, defects 2, 9 and 5; C, the questions, defect 34, point 9 with defect 3, and defect 8; D, the start conditions, point 10. Then one pass with runs and benches on what holds the milestone open, before it is decided whether the milestone is reached; for a small matter neither a run nor a bench is required there any more, decision (9).
- Found: Install lines by one program, written where the install stood alone.
- Fix: `hooks/post-tool-use-install-fact.sh` "if [ "$A" != "alone" ]; then"
- Status: Walked
- Note: found and built 24 October 2026, version 0.158.0, recorded by the order on the decisions of that day, the roadmap entry of 24 October 2026 on how an install is recorded; concerns milestone 3 by the decision of 19 October 2026, the line in docs/agents/environment.md being the place that outlives the session; the exit 0 of false behind | tail -5, before ; echo ok and before || true measured that day in bash 3.2.57 and zsh 5.9; the evidence on the line of the hook that writes no line for an install not alone; no longer holds milestone 3 open since the person's decision of 24 October 2026, (9) of the roadmap entry of 24 October 2026 on how an install is recorded, which gives the reason; built all the same where it is built or costs a few lines of text, neither a run nor a bench required for the milestone; should: where the call's exit is not the install's, the hook writes no line and tells the run to read the folder and write the line through the program

### an install sent to the background with & or negated with ! reads as alone, since bin/devloop-command-reader prints neither, and its line is written on the call's exit
- Wrong: an install sent to the background with & or negated with ! reads as alone, since bin/devloop-command-reader prints neither, and its line is written on the call's exit
- Should: such an install counts as not alone, the reader saying what it cannot tell; no milestone. Recorded, not built: context f of hooks/post-tool-use-install-fact.sh says an install was not the last command of its call and its output not read whole, where it stood last with a command before it at the top level and its output seen — should: the context says of such a call only what holds of it, in a wording the person approves. **The rest of part A, built on this branch by the order of 24 October 2026 on it**, on objections 1, 2 and 6 of the report on part A, lines at the tip. (a) Context f, `hooks/post-tool-use-install-fact.sh` line 92, in the wording of that order, (f) above, in place of the one approved; behind it the sentence on the pipe, lines 94 to 95, where a pipe read the output, and where none did and a redirection sent it away, the second sentence of e, lines 96 to 97. The pipe comes from the guard, which reads it off the reader's output as it reads the rest: `pipe_of`, `hooks/pre-tool-use-install-guard.sh` lines 186 to 204, writes "| " and the command whose pipe field is the install's id, then each command reading that one's output, "| grep -v warn | tail -5", into a fifth field of the note, `note`, line 1236; the reader prints `|` and `|&` alike, so both are written `|`. `bin/devloop-install-note` carries the field, its head lines 22 to 34 and 39 to 43, and `take` prints it, lines 356 to 359. The defect of context f that part A found is so built, its evidence on line 92. (b) Where the line of an install alone stood in the file already and its output was sent away, the hook gives the second sentence of e alone, line 121, as it did behind a refusal, objection 6 of that report; until then it said nothing there. (c) The hooks reference, fetched again as markdown off its own page the same day under Claude Code 2.1.310, says nothing on whether `PostToolUse` fires for a Bash call with `run_in_background` before the command ends: the input of the Bash tool names the field, "Whether to run the command in background", and `PostToolUse` "Runs immediately after a tool completes successfully"; what it says of a background launch returning at once it says of the Agent tool, and for the Bash case it points to the tools reference, which the order did not read. The reader prints no line for the field, measured with an input carrying it. Left as an open question in the report of that order, nothing built, the reader not changed. (d) Found by the build: a redirection on a group or a subshell, `{ brew install x; } >/dev/null`, the reader prints as a line of its own at the top level, as it prints `brew install x; >/dev/null`, so the guard counts the install not alone and cannot name the redirection, and the hook gives f without the sentence on it. f holds there, saying nothing of the output; what is lost is the sentence that has the report say the output was not seen. Concerns milestone 3 by the decision of 19 October 2026, the report being the run's; the fix needs the reader changed, which that order ruled out, and whether it holds the milestone open the person has not decided. Recorded, not built: a redirection on a group or a subshell that sent an install's output away goes unnamed in the context of hooks/post-tool-use-install-fact.sh, since bin/devloop-command-reader prints it as a command of its own — should: the context names that redirection as it names one on the install's own words. (e) `docs/skill-conventions.md`, "What an install did is written by a hook", from line 2450, says what changed, the redirection on a group among the reader's limits. (f) The version stays 0.158.0, the branch having raised it once. (g) The self-test of `bin/devloop-install-note` grew from 42 cases to 46: `take` with five fields, the pipe the last; context f with the sentence on a pipe of one command and of two, with the sentence on a redirection, and without a sentence behind a command before the install, each case reading the end of the context; and an install alone whose line stands already, once with its output sent away, the second sentence of e alone, and once with its output seen, nothing said. With the fact hook as it stood before that order the cases of f fail at the first of them, and with the new hook beside the guard as it stood before, at the sentence on the pipe.
- Found: Install lines by one program, written where the install stood alone.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the build of part A, the roadmap entry of 24 October 2026 on how an install is recorded, the reader fed brew install x & and ! brew install x printing the line it prints for brew install x; concerned milestone 3 by the decision of 19 October 2026, the line being the place that outlives the session; no milestone since the person's decision of 24 October 2026, (8) of the roadmap entry of 24 October 2026 on how an install is recorded, nothing built and the reader staying as it is, its rebuild decided against under Decisions taken against; should: such an install counts as not alone, the reader saying what it cannot tell

### context f of hooks/post-tool-use-install-fact.sh says an install was not the last command of its call and its output not read whole, where it stood last with a command before it at the top level and its output seen
- Wrong: context f of hooks/post-tool-use-install-fact.sh says an install was not the last command of its call and its output not read whole, where it stood last with a command before it at the top level and its output seen
- Should: the context says of such a call only what holds of it, in a wording the person approves. **The rest of part A, built on this branch by the order of 24 October 2026 on it**, on objections 1, 2 and 6 of the report on part A, lines at the tip. (a) Context f, `hooks/post-tool-use-install-fact.sh` line 92, in the wording of that order, (f) above, in place of the one approved; behind it the sentence on the pipe, lines 94 to 95, where a pipe read the output, and where none did and a redirection sent it away, the second sentence of e, lines 96 to 97. The pipe comes from the guard, which reads it off the reader's output as it reads the rest: `pipe_of`, `hooks/pre-tool-use-install-guard.sh` lines 186 to 204, writes "| " and the command whose pipe field is the install's id, then each command reading that one's output, "| grep -v warn | tail -5", into a fifth field of the note, `note`, line 1236; the reader prints `|` and `|&` alike, so both are written `|`. `bin/devloop-install-note` carries the field, its head lines 22 to 34 and 39 to 43, and `take` prints it, lines 356 to 359. The defect of context f that part A found is so built, its evidence on line 92. (b) Where the line of an install alone stood in the file already and its output was sent away, the hook gives the second sentence of e alone, line 121, as it did behind a refusal, objection 6 of that report; until then it said nothing there. (c) The hooks reference, fetched again as markdown off its own page the same day under Claude Code 2.1.310, says nothing on whether `PostToolUse` fires for a Bash call with `run_in_background` before the command ends: the input of the Bash tool names the field, "Whether to run the command in background", and `PostToolUse` "Runs immediately after a tool completes successfully"; what it says of a background launch returning at once it says of the Agent tool, and for the Bash case it points to the tools reference, which the order did not read. The reader prints no line for the field, measured with an input carrying it. Left as an open question in the report of that order, nothing built, the reader not changed. (d) Found by the build: a redirection on a group or a subshell, `{ brew install x; } >/dev/null`, the reader prints as a line of its own at the top level, as it prints `brew install x; >/dev/null`, so the guard counts the install not alone and cannot name the redirection, and the hook gives f without the sentence on it. f holds there, saying nothing of the output; what is lost is the sentence that has the report say the output was not seen. Concerns milestone 3 by the decision of 19 October 2026, the report being the run's; the fix needs the reader changed, which that order ruled out, and whether it holds the milestone open the person has not decided. Recorded, not built: a redirection on a group or a subshell that sent an install's output away goes unnamed in the context of hooks/post-tool-use-install-fact.sh, since bin/devloop-command-reader prints it as a command of its own — should: the context names that redirection as it names one on the install's own words. (e) `docs/skill-conventions.md`, "What an install did is written by a hook", from line 2450, says what changed, the redirection on a group among the reader's limits. (f) The version stays 0.158.0, the branch having raised it once. (g) The self-test of `bin/devloop-install-note` grew from 42 cases to 46: `take` with five fields, the pipe the last; context f with the sentence on a pipe of one command and of two, with the sentence on a redirection, and without a sentence behind a command before the install, each case reading the end of the context; and an install alone whose line stands already, once with its output sent away, the second sentence of e alone, and once with its output seen, nothing said. With the fact hook as it stood before that order the cases of f fail at the first of them, and with the new hook beside the guard as it stood before, at the sentence on the pipe.
- Found: Install lines by one program, written where the install stood alone.
- Fix: `hooks/post-tool-use-install-fact.sh` "did not stand alone in its call, so the call's exit may not be the install's"
- Status: Walked
- Note: found 24 October 2026 by the build of part A, the roadmap entry of 24 October 2026 on how an install is recorded; the reader not telling ;, && and || apart, an install with a command before it counts as not alone, its exit not certain to be the call's; concerns milestone 3 by the decision of 19 October 2026, the report being the run's; built 24 October 2026, version 0.158.0, by the order of 24 October 2026 on the rest of part A, context f in the wording of that order, the evidence on its line in the hook; no longer holds milestone 3 open since the person's decision of 24 October 2026, (9) of the roadmap entry of 24 October 2026 on how an install is recorded, which gives the reason; built all the same where it is built or costs a few lines of text, neither a run nor a bench required for the milestone; should: the context says of such a call only what holds of it, in a wording the person approves

### a redirection on a group or a subshell that sent an install's output away goes unnamed in the context of the fact hook, since the reader prints it as a command of its own
- Wrong: a redirection on a group or a subshell that sent an install's output away goes unnamed in the context of hooks/post-tool-use-install-fact.sh, since bin/devloop-command-reader prints it as a command of its own
- Should: the context names that redirection as it names one on the install's own words. (e) `docs/skill-conventions.md`, "What an install did is written by a hook", from line 2450, says what changed, the redirection on a group among the reader's limits. (f) The version stays 0.158.0, the branch having raised it once. (g) The self-test of `bin/devloop-install-note` grew from 42 cases to 46: `take` with five fields, the pipe the last; context f with the sentence on a pipe of one command and of two, with the sentence on a redirection, and without a sentence behind a command before the install, each case reading the end of the context; and an install alone whose line stands already, once with its output sent away, the second sentence of e alone, and once with its output seen, nothing said. With the fact hook as it stood before that order the cases of f fail at the first of them, and with the new hook beside the guard as it stood before, at the sentence on the pipe.
- Found: Install lines by one program, written where the install stood alone.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the order of 24 October 2026 on the rest of part A, the roadmap entry of 24 October 2026 on how an install is recorded, the reader fed { brew install x; } >/dev/null printing what it prints for brew install x; >/dev/null; concerned milestone 3 by the decision of 19 October 2026, the report being the run's; no milestone since 24 October 2026, a small matter by the measure of decision (9) of the roadmap entry of 24 October 2026 on how an install is recorded and going as the defect of & and ! by decision (8) there, nothing built and the reader staying as it is, following from (8) and (9), the roadmap entry of 24 October 2026 on the install rules reaching the build subagent, the evidence on its line that says so; the fix needs the reader changed; should: the context names that redirection as it names one on the install's own words

### shared/command-does-not-answer.md and the conventions say a call with a limit of its own is ended at that limit, where Claude Code moves it to the background unless it starts with sleep
- Wrong: shared/command-does-not-answer.md and the conventions say a call with a limit of its own is ended at that limit, where Claude Code moves it to the background unless it starts with sleep, the measurement of 9 October 2026 having run sleep 12
- Should: the text says that such a call is moved to the background and runs on there, and the rules that rest on its end are read again against that.
- Found: Install rules reach the build subagent, backed by kind, run alone.
- Fix: none
- Status: Recorded, not built
- Note: found 24 October 2026 by the build of part B, the roadmap entry of 24 October 2026 on the install rules reaching the build subagent, off line 215 of the tools reference of Claude Code read as markdown that day under 2.1.310 and a call measured in its session, python3 sleeping eight seconds under a timeout of 3000 milliseconds moved to the background and run on to exit 0; the measurement of 9 October 2026 the text rests on ran sleep 12, the one form the page excepts; which milestone it concerns the person has not decided; should: the text says that such a call is moved to the background and runs on there, and the rules that rest on its end are read again against that; sorted 24 October 2026 by the roadmap entry of that date on the questions, as put to the person that day, who did not sort it otherwise: for an install a small matter by the measure of decision (9) of the roadmap entry of 24 October 2026 on how an install is recorded, the run saying that the install did not go through, the issue carrying the command, and the tool standing there where the install finishes in the background, which the person sees when they close the issue; for the check chain, which can run on beside the check chain of the next task with nobody there, no matter of installing and so not of milestone 3 by the decision of 19 October 2026, which milestone takes it up decided by the person after milestone 3; it holds milestone 3 open in neither half; named as a way for later, neither tested nor decided, installs and the check chain run under bin/devloop-bounded with a limit just below the call's; the evidence on the line of that entry that says nothing is built for it

### run 1 headed the hard core of the user stories Geschichten where the person's language uses the term as it stands
- Wrong: run 1 headed the hard core of the user stories „Geschichten“ where the person's language uses the term as it stands
- Should: a technical term the person's language uses as it stands is not translated, „User Stories“, „Pull Request“ and „Issue“ staying as they are in German, said where the text says that what the person reads goes to them in their language; no milestone, built after the decision on milestone 3. **2. The person is told to type `--auto` without the command.** Run 3 #360, the last message of the planning: „Das geht mit dir dabei oder allein mit `--auto`.“, where the person types `/devloop:start-work --auto`. The places that say it so, at `d49921f`, `grep -rn -i "typ[a-z]* \`--auto\`" skills shared`: `skills/cut-into-tasks/SKILL.md` line 171, the halt before the first build, which this message followed; `skills/plan-work/SKILL.md` lines 408 and 512; `skills/build-work/SKILL.md` lines 1534 and 1618; `skills/setup-checks/SKILL.md` line 1414, and its line 1114, which points at the description of the no of the mode question in step 8, line 26668 of this file, „Mit `--auto` kannst du es später einrichten“; `skills/build-work/SKILL.md` line 1580, „the person who typed `--auto` is there“, describes and tells nobody anything. The approved wordings that name the flag alone: text 2 of 9 October 2026, lines 14440, 14886 and 14892, „tippe dann `--auto`“, and the line of 5 October 2026 for a yes fallen away. `README.md` line 130 and `skills/start-work/SKILL.md` line 339 name the command whole. "A command handed over runs as it stands, from wherever the person is", `docs/skill-conventions.md` line 73, speaks of a command copied into a terminal, not of what is typed into Claude Code; it needs a sentence for this, or a rule beside it, which the order that builds this decides. Searched in the roadmap: `grep -n -i 'allein mit `--auto`\|the command whole\|names the command\|without the command\|full command'`, no hit on this. The person's statement of 27 October 2026 above and decision (a): no milestone, built after the decision on milestone 3. Recorded, not built: the last message of the planning of run 3 said „allein mit `--auto`“, and the texts of cut-into-tasks, plan-work, build-work and setup-checks tell the person to type `--auto` without the command — should: where a text of the person says how it goes on, it names the input as they type it in Claude Code, `/devloop:start-work --auto` for the run without them and `/devloop:start-work` for the run with them, in the skills and in the approved wordings alike; no milestone, built after the decision on milestone 3. **3. The planning read two records beside the program's call.** Run 3 #155, one call: `git show origin/main:docs/agents/environment.md | grep -n -i "unattended-mode\|install-tools\|dependency-tools"` before `bin/devloop-start-conditions` and `bin/devloop-permission-mode`, the lines of conditions 6 and 7 read by the run itself beside the program that reads them. `skills/plan-work/SKILL.md` line 497, expanded 1247: "Read none of the five yourself beside that call." The record of the mode, which the program does not read, is read rightly. Searched: `grep -n -i 'beside that call\|beside the call\|read .* yourself beside'`, hits only the texts quoted. Milestone 3, decision (5) of the entry at line 37660; a small matter by the measure of decision (9): the program's lines decided, the extra read changed nothing, and a user does not notice it. Recorded, not built: the planning of run 3 read install-tools and dependency-tools off origin/main itself beside its call of bin/devloop-start-conditions — should: the five beside the mode are read by the one call of the program and by nothing else, the record of the mode alone being read beside it; milestone 3, a small matter by decision (9) if the person so decides. **4. The assumptions of the round said nothing of a missing tool, and run 1's planning took it for present.** Run 1 #230 names no tool where the work needs `yq`, missing on the Mac; #275 wrote „yq and htmlq are installed outside the project“ without a record that read the machine, and #772 carried the claim into the build, „yq and htmlq are already on this machine“; run 2 #133 names neither `htmlq` nor `mmdc`, both missing, which the planning knew from #282 and wrote at #276 into the comment alone. The text, `skills/plan-work/SKILL.md` lines 309 to 328: "Where such a tool is missing on this machine, the assumptions of the round say that the work needs it and that it is missing, and that whether the run installs it at the build or they get the command for it is decided by their permission to install as it stands for this project then", wording (b), lines 37890 to 37894. Defect 9 of the entry at line 36636 holds in its should, nobody being settled to install; this is the half of its text that was not met. Searched: `grep -n -i 'installed outside the project; the script tests\|without reading the machine\|asserted.*installed\|claimed.*installed'`, no hit. Milestone 3, the places in the skills, as defect 9; not a small matter in run 1, where the claim reached the build and the task was built against a stand-in on it; the person decides. Recorded, not built: the rounds of runs 1 and 2 said nothing of the tool the work needs and that it is missing, run 1's planning wrote that yq is installed without reading the machine and carried it into the build — should: where a tool the work needs is missing on this machine, the assumptions of the round say that it is needed and missing and that the permission to install decides who installs, as plan-work says, and the planning says of a tool only what it read off the machine; milestone 3. **5. The line that work without them is not set up was not said.** Run 1: the record of the mode says yes, the install record no, #244 „condition 6 does not hold“; the one line `skills/plan-work/SKILL.md` lines 405 to 409 give for that case, "that work without them is not set up in this project, and that typing `--auto` where a piece of work starts sets it up", the wording of 5 October 2026, stands in the comment #275 in English and in no text to the person. Searched: `grep -n -i 'fallen away'` and `'one line.*not set up\|said in the issue comment'`, the hits being the texts and the entries that built the line. Milestone 3, the line turning on the install record's no; a small matter by the measure of decision (9): the person learns it at the second asking when they type `--auto`, as run 2 shows, and the planning went on with them as the text says. Recorded, not built: the planning of run 1 said to the person nothing of the mode not being set up and of `--auto` setting it up, where the record of the mode said yes and the install record no, the line standing in an issue comment alone — should: where the record is a yes with something fallen away since, the one line of plan-work reaches the person in the message that ends the turn; milestone 3, a small matter by decision (9) if the person so decides. **6. The prompts to the build subagents carried an instruction of the main run's own on installing and not point 7.** Run 1 #446, „Do not install anything. htmlq may be real on PATH; yq not needed here.“, and #772, „Do not install anything (yq and htmlq are already on this machine; tests use stubs).“, a false claim; neither carries point 7 with the texts between it and point 8 nor the output of `bin/devloop-install-record`. `skills/build-work/SKILL.md` lines 431 to 462, the fifth rule since 24 October 2026, decision (1) of the entry at line 37660: "point 7 below as it reads, with the texts between it and point 8, and the install record as bin/devloop-install-record prints it, run by this run ...; beside point 7 this run writes nothing of its own on whether the subagent installs or what. Run 2a's prompt said 'Install the Mermaid CLI as the vendor documents' and run 3a's 'Do not install anything'". Searched: `grep -n -i 'writes nothing of its own\|instruction of its own on installing\|Do not install anything'`, the hits being the decision and the paragraphs of defects 2 and 7, whose case is a yes. Milestone 3, decision (1); not a small matter: the subagent got a wrong fact about the machine from the prompt, and the rule was written against exactly this. Recorded, not built: the prompts of run 1 to its two build subagents said „Do not install anything“, one of them that yq is on the machine, and handed neither point 7 with the texts between it and point 8 nor the printed install record — should: the main run hands the build subagent point 7 as it reads, the texts between it and point 8 and the record as bin/devloop-install-record prints it, and writes nothing of its own on installing into the prompt, under a no as under a yes; milestone 3. **7. Under the no the task needing `yq` was built against a stand-in and offered for landing before the install was handed over.** Run 1: the subagent built #40 against a stub `yq`, #788; the reviewers wrote at #811 and #821 that `yq` is not installed; #1035 put „Soll das landen?“; the handover of `brew install yq` came at #1076, after the person's #1045, and the run said „ich hätte das vor der Frage sagen müssen“. `build-work` expanded 1147 to 1386, point 7: under a no the install stays the user's to run, "Report what it installs, what it unblocks, and the exact command ... and both ways it can go, in the same breath", and "A tool the task needs is not replaced by a stand-in because the run takes itself not to be allowed to install it"; the handover is the task's first step where the tool is missing, not a step after the gate. Searched: `grep -n -i 'before the handover\|handover came\|only after the person\|built against a stand-in'`, the hits being audits and the paragraph of defect 2, whose case is a yes. Milestone 3, the places in the skills under a no, beside defects 2 and 5; not a small matter: the person was asked to land what never ran against the tool. Recorded, not built: run 1 built the task needing yq against a stand-in under the no, put the landing question and handed brew install yq over only after the person said the tool is missing — should: under a no, where a task needs a tool that is missing, the run hands the backed command over with both ways before building against a stand-in, and a task is not offered for landing before the tool it needs stands there or the person has declined it; milestone 3. **8. Run 2 built both tasks in the main run, without a build subagent.** #523 `build-work`, then #537 to #1343 in the main log: the branches cut, the tests written, the installs run, the pull requests opened by the main run; the 27 agents drafted, checked and reviewed. `skills/build-work/SKILL.md` line 431, step 3: "Hand the task to a subagent with a fresh context: the task issue, the spec it belongs to, the paths of the control documents, where the mark stands ... and five rules it reads nowhere else". Searched: `grep -n -i 'built the task itself\|no build subagent\|without a subagent\|main run built\|Hand the task to a subagent'`, no hit. No dated sentence of milestone 3 names it; it bears on the milestone in one way: decision (1) of the entry at line 37660 hands the install rules to the build subagent, and this run shows nothing of that half, the main run having read `build-work` itself. Which milestone takes it up the person decides. Recorded, not built: run 2 built both tasks and ran both installs in the main run and handed no task to a build subagent — should: each task is handed to a build subagent with a fresh context, as step 3 of build-work says, and the main run builds none itself; the milestone the person decides after milestone 3. **9. The folders for browsers were not read around each install.** Run 2 read `~/.cache/puppeteer` before, #798, and after, #818, the install of `mmdc` and named what came into it; around `brew install htmlq` it read no folder, and `~/Library/Caches/ms-playwright` and `~/Library/Caches/Cypress` in no record. `shared/install-alone.md` lines 20 to 25: "Before the install and after it, the run reads the folders for browsers that 'Whether it worked is read off the result' names for this system, and the one a vendor's setting names where one is set, and the report names what came into them". Searched: `grep -n -i 'folders for browsers\|read the folders\|browser folders'`, the hits being the texts that built the rule. Milestone 3, point 8; a small matter by the measure of decision (9): the download the install made was named, read off the one folder it lands in, and a formula of Homebrew downloads no browser. Recorded, not built: run 2 read the folders for browsers only around the npm install and only ~/.cache/puppeteer, none around brew install htmlq — should: before and after every install the run reads the three folders named for this system and the one a vendor's setting names, and the report names what came into them; milestone 3, a small matter by decision (9) if the person so decides. **10. An install on the default branch before the task's branch, and the pull request says the hook wrote the line.** Run 2 #569 ran `brew install htmlq` with the tree on `main`; the fact hook refused the line, #571, the run cut the branch and wrote it through `bin/devloop-install-note put`, #578, and #52 says of that line „the standing fact the install hook wrote when htmlq was installed for this task“. `skills/build-work/SKILL.md` lines 433 to 436, 451 to 462 and 466: the subagent cuts a branch from the main branch first, and the install of point 7 is a step of the task's build, on that branch, where the hook writes the line; a report says what happened, "What the report says ... is what the whole output shows, and nothing assumed", `shared/install-alone.md` line 15. Searched: `grep -n -i 'on the default branch main, where nothing\|installed on main\|refused the line'`, hits only the measurement of the hook's refusal, lines 34439 and 34444. Milestone 3, part A's mechanism; a small matter by the measure of decision (9): the line stands in the same form, written by the program the hook calls, and only the pull request's sentence is wrong. Recorded, not built: run 2 ran brew install htmlq on main before cutting the task's branch, so the fact hook wrote no line and the run wrote it through the program, and the pull request says the hook wrote it — should: an install of a task runs on the task's branch, after the cut, so that the hook writes the line, and the report says who wrote it; milestone 3, a small matter by decision (9) if the person so decides.
- Found: Three closing runs of the pass read off their logs, each on what it met.
- Fix: `output-styles/devloop.md` "technical term their language uses as it stands is not translated: „User"
- Status: Built, never walked
- Note: found 27 October 2026 by the order evaluating the three closing runs of the milestone 3 pass of 26 and 27 October 2026, read off their session logs, defect 1 of the roadmap entry of 27 October 2026 on those runs, the records in its paragraph; no milestone, decided 27 October 2026, (a) of that entry: built after the decision on milestone 3 in one order with defect c of the roadmap entry of 24 October 2026 on the six closing runs and defect 2 of this entry; should: a technical term the person's language uses as it stands is not translated, User Stories, Pull Request and Issue staying as they are in German, said where the text says that what the person reads goes to them in their language; built 27 October 2026, version 0.162.0, the roadmap entry of 27 October 2026 on the three visible texts: the output style says beside its line on the person's language that a technical term their language uses as it stands is not translated, User Stories, Pull Request and Issue staying as they are in German, and the language block says it in both its files, at the top and the bottom of every skill at load; the evidence on the line of the style; no run yet

### the last message of the planning of run 3 said allein mit --auto, and the texts of cut-into-tasks, plan-work, build-work and setup-checks tell the person to type --auto without the command
- Wrong: the last message of the planning of run 3 said „allein mit `--auto`“, and the texts of cut-into-tasks, plan-work, build-work and setup-checks tell the person to type `--auto` without the command
- Should: where a text of the person says how it goes on, it names the input as they type it in Claude Code, `/devloop:start-work --auto` for the run without them and `/devloop:start-work` for the run with them, in the skills and in the approved wordings alike; no milestone, built after the decision on milestone 3. **3. The planning read two records beside the program's call.** Run 3 #155, one call: `git show origin/main:docs/agents/environment.md | grep -n -i "unattended-mode\|install-tools\|dependency-tools"` before `bin/devloop-start-conditions` and `bin/devloop-permission-mode`, the lines of conditions 6 and 7 read by the run itself beside the program that reads them. `skills/plan-work/SKILL.md` line 497, expanded 1247: "Read none of the five yourself beside that call." The record of the mode, which the program does not read, is read rightly. Searched: `grep -n -i 'beside that call\|beside the call\|read .* yourself beside'`, hits only the texts quoted. Milestone 3, decision (5) of the entry at line 37660; a small matter by the measure of decision (9): the program's lines decided, the extra read changed nothing, and a user does not notice it. Recorded, not built: the planning of run 3 read install-tools and dependency-tools off origin/main itself beside its call of bin/devloop-start-conditions — should: the five beside the mode are read by the one call of the program and by nothing else, the record of the mode alone being read beside it; milestone 3, a small matter by decision (9) if the person so decides. **4. The assumptions of the round said nothing of a missing tool, and run 1's planning took it for present.** Run 1 #230 names no tool where the work needs `yq`, missing on the Mac; #275 wrote „yq and htmlq are installed outside the project“ without a record that read the machine, and #772 carried the claim into the build, „yq and htmlq are already on this machine“; run 2 #133 names neither `htmlq` nor `mmdc`, both missing, which the planning knew from #282 and wrote at #276 into the comment alone. The text, `skills/plan-work/SKILL.md` lines 309 to 328: "Where such a tool is missing on this machine, the assumptions of the round say that the work needs it and that it is missing, and that whether the run installs it at the build or they get the command for it is decided by their permission to install as it stands for this project then", wording (b), lines 37890 to 37894. Defect 9 of the entry at line 36636 holds in its should, nobody being settled to install; this is the half of its text that was not met. Searched: `grep -n -i 'installed outside the project; the script tests\|without reading the machine\|asserted.*installed\|claimed.*installed'`, no hit. Milestone 3, the places in the skills, as defect 9; not a small matter in run 1, where the claim reached the build and the task was built against a stand-in on it; the person decides. Recorded, not built: the rounds of runs 1 and 2 said nothing of the tool the work needs and that it is missing, run 1's planning wrote that yq is installed without reading the machine and carried it into the build — should: where a tool the work needs is missing on this machine, the assumptions of the round say that it is needed and missing and that the permission to install decides who installs, as plan-work says, and the planning says of a tool only what it read off the machine; milestone 3. **5. The line that work without them is not set up was not said.** Run 1: the record of the mode says yes, the install record no, #244 „condition 6 does not hold“; the one line `skills/plan-work/SKILL.md` lines 405 to 409 give for that case, "that work without them is not set up in this project, and that typing `--auto` where a piece of work starts sets it up", the wording of 5 October 2026, stands in the comment #275 in English and in no text to the person. Searched: `grep -n -i 'fallen away'` and `'one line.*not set up\|said in the issue comment'`, the hits being the texts and the entries that built the line. Milestone 3, the line turning on the install record's no; a small matter by the measure of decision (9): the person learns it at the second asking when they type `--auto`, as run 2 shows, and the planning went on with them as the text says. Recorded, not built: the planning of run 1 said to the person nothing of the mode not being set up and of `--auto` setting it up, where the record of the mode said yes and the install record no, the line standing in an issue comment alone — should: where the record is a yes with something fallen away since, the one line of plan-work reaches the person in the message that ends the turn; milestone 3, a small matter by decision (9) if the person so decides. **6. The prompts to the build subagents carried an instruction of the main run's own on installing and not point 7.** Run 1 #446, „Do not install anything. htmlq may be real on PATH; yq not needed here.“, and #772, „Do not install anything (yq and htmlq are already on this machine; tests use stubs).“, a false claim; neither carries point 7 with the texts between it and point 8 nor the output of `bin/devloop-install-record`. `skills/build-work/SKILL.md` lines 431 to 462, the fifth rule since 24 October 2026, decision (1) of the entry at line 37660: "point 7 below as it reads, with the texts between it and point 8, and the install record as bin/devloop-install-record prints it, run by this run ...; beside point 7 this run writes nothing of its own on whether the subagent installs or what. Run 2a's prompt said 'Install the Mermaid CLI as the vendor documents' and run 3a's 'Do not install anything'". Searched: `grep -n -i 'writes nothing of its own\|instruction of its own on installing\|Do not install anything'`, the hits being the decision and the paragraphs of defects 2 and 7, whose case is a yes. Milestone 3, decision (1); not a small matter: the subagent got a wrong fact about the machine from the prompt, and the rule was written against exactly this. Recorded, not built: the prompts of run 1 to its two build subagents said „Do not install anything“, one of them that yq is on the machine, and handed neither point 7 with the texts between it and point 8 nor the printed install record — should: the main run hands the build subagent point 7 as it reads, the texts between it and point 8 and the record as bin/devloop-install-record prints it, and writes nothing of its own on installing into the prompt, under a no as under a yes; milestone 3. **7. Under the no the task needing `yq` was built against a stand-in and offered for landing before the install was handed over.** Run 1: the subagent built #40 against a stub `yq`, #788; the reviewers wrote at #811 and #821 that `yq` is not installed; #1035 put „Soll das landen?“; the handover of `brew install yq` came at #1076, after the person's #1045, and the run said „ich hätte das vor der Frage sagen müssen“. `build-work` expanded 1147 to 1386, point 7: under a no the install stays the user's to run, "Report what it installs, what it unblocks, and the exact command ... and both ways it can go, in the same breath", and "A tool the task needs is not replaced by a stand-in because the run takes itself not to be allowed to install it"; the handover is the task's first step where the tool is missing, not a step after the gate. Searched: `grep -n -i 'before the handover\|handover came\|only after the person\|built against a stand-in'`, the hits being audits and the paragraph of defect 2, whose case is a yes. Milestone 3, the places in the skills under a no, beside defects 2 and 5; not a small matter: the person was asked to land what never ran against the tool. Recorded, not built: run 1 built the task needing yq against a stand-in under the no, put the landing question and handed brew install yq over only after the person said the tool is missing — should: under a no, where a task needs a tool that is missing, the run hands the backed command over with both ways before building against a stand-in, and a task is not offered for landing before the tool it needs stands there or the person has declined it; milestone 3. **8. Run 2 built both tasks in the main run, without a build subagent.** #523 `build-work`, then #537 to #1343 in the main log: the branches cut, the tests written, the installs run, the pull requests opened by the main run; the 27 agents drafted, checked and reviewed. `skills/build-work/SKILL.md` line 431, step 3: "Hand the task to a subagent with a fresh context: the task issue, the spec it belongs to, the paths of the control documents, where the mark stands ... and five rules it reads nowhere else". Searched: `grep -n -i 'built the task itself\|no build subagent\|without a subagent\|main run built\|Hand the task to a subagent'`, no hit. No dated sentence of milestone 3 names it; it bears on the milestone in one way: decision (1) of the entry at line 37660 hands the install rules to the build subagent, and this run shows nothing of that half, the main run having read `build-work` itself. Which milestone takes it up the person decides. Recorded, not built: run 2 built both tasks and ran both installs in the main run and handed no task to a build subagent — should: each task is handed to a build subagent with a fresh context, as step 3 of build-work says, and the main run builds none itself; the milestone the person decides after milestone 3. **9. The folders for browsers were not read around each install.** Run 2 read `~/.cache/puppeteer` before, #798, and after, #818, the install of `mmdc` and named what came into it; around `brew install htmlq` it read no folder, and `~/Library/Caches/ms-playwright` and `~/Library/Caches/Cypress` in no record. `shared/install-alone.md` lines 20 to 25: "Before the install and after it, the run reads the folders for browsers that 'Whether it worked is read off the result' names for this system, and the one a vendor's setting names where one is set, and the report names what came into them". Searched: `grep -n -i 'folders for browsers\|read the folders\|browser folders'`, the hits being the texts that built the rule. Milestone 3, point 8; a small matter by the measure of decision (9): the download the install made was named, read off the one folder it lands in, and a formula of Homebrew downloads no browser. Recorded, not built: run 2 read the folders for browsers only around the npm install and only ~/.cache/puppeteer, none around brew install htmlq — should: before and after every install the run reads the three folders named for this system and the one a vendor's setting names, and the report names what came into them; milestone 3, a small matter by decision (9) if the person so decides. **10. An install on the default branch before the task's branch, and the pull request says the hook wrote the line.** Run 2 #569 ran `brew install htmlq` with the tree on `main`; the fact hook refused the line, #571, the run cut the branch and wrote it through `bin/devloop-install-note put`, #578, and #52 says of that line „the standing fact the install hook wrote when htmlq was installed for this task“. `skills/build-work/SKILL.md` lines 433 to 436, 451 to 462 and 466: the subagent cuts a branch from the main branch first, and the install of point 7 is a step of the task's build, on that branch, where the hook writes the line; a report says what happened, "What the report says ... is what the whole output shows, and nothing assumed", `shared/install-alone.md` line 15. Searched: `grep -n -i 'on the default branch main, where nothing\|installed on main\|refused the line'`, hits only the measurement of the hook's refusal, lines 34439 and 34444. Milestone 3, part A's mechanism; a small matter by the measure of decision (9): the line stands in the same form, written by the program the hook calls, and only the pull request's sentence is wrong. Recorded, not built: run 2 ran brew install htmlq on main before cutting the task's branch, so the fact hook wrote no line and the run wrote it through the program, and the pull request says the hook wrote it — should: an install of a task runs on the task's branch, after the cut, so that the hook writes the line, and the report says who wrote it; milestone 3, a small matter by decision (9) if the person so decides.
- Found: Three closing runs of the pass read off their logs, each on what it met.
- Fix: `skills/cut-into-tasks/SKILL.md` "Code, `/devloop:start-work --auto` for the run"
- Status: Built, never walked
- Note: found 27 October 2026 by the order evaluating the three closing runs of the milestone 3 pass of 26 and 27 October 2026, read off their session logs, defect 2 of the roadmap entry of 27 October 2026 on those runs, the records in its paragraph; no milestone, decided 27 October 2026, (a) of that entry: built after the decision on milestone 3 in one order with defect c of the roadmap entry of 24 October 2026 on the six closing runs and defect 1 of this entry; should: where a text of the person says how it goes on, it names the input as they type it in Claude Code, /devloop:start-work --auto for the run without them and /devloop:start-work for the run with them, in the skills and in the approved wordings alike; built 27 October 2026, version 0.162.0, the roadmap entry of 27 October 2026 on the three visible texts: the seven places and the statement of the no's description in setup-checks step 8 name the input as the person types it in Claude Code, the five wordings approved that day stand in that entry with the old ones quoted, and a rule beside the one on a command handed over in docs/skill-conventions.md says it; the evidence on the line of the halt before the first build in cut-into-tasks, which the message of run 3 followed; the refusal of build-work for conditions 6 and 7 in wording (6) of that entry since its third commit, 6643acf, in place of the wording of 6 October 2026, which named the flag alone; no run yet; until 31 October 2026 this note said the refusal stayed on the old wording, a form proposed and not approved, the audit of that day

### the planning of run 3 read install-tools and dependency-tools off origin/main itself beside its call of bin/devloop-start-conditions
- Wrong: the planning of run 3 read install-tools and dependency-tools off origin/main itself beside its call of bin/devloop-start-conditions
- Should: the five beside the mode are read by the one call of the program and by nothing else, the record of the mode alone being read beside it; milestone 3, a small matter by decision (9) if the person so decides. **4. The assumptions of the round said nothing of a missing tool, and run 1's planning took it for present.** Run 1 #230 names no tool where the work needs `yq`, missing on the Mac; #275 wrote „yq and htmlq are installed outside the project“ without a record that read the machine, and #772 carried the claim into the build, „yq and htmlq are already on this machine“; run 2 #133 names neither `htmlq` nor `mmdc`, both missing, which the planning knew from #282 and wrote at #276 into the comment alone. The text, `skills/plan-work/SKILL.md` lines 309 to 328: "Where such a tool is missing on this machine, the assumptions of the round say that the work needs it and that it is missing, and that whether the run installs it at the build or they get the command for it is decided by their permission to install as it stands for this project then", wording (b), lines 37890 to 37894. Defect 9 of the entry at line 36636 holds in its should, nobody being settled to install; this is the half of its text that was not met. Searched: `grep -n -i 'installed outside the project; the script tests\|without reading the machine\|asserted.*installed\|claimed.*installed'`, no hit. Milestone 3, the places in the skills, as defect 9; not a small matter in run 1, where the claim reached the build and the task was built against a stand-in on it; the person decides. Recorded, not built: the rounds of runs 1 and 2 said nothing of the tool the work needs and that it is missing, run 1's planning wrote that yq is installed without reading the machine and carried it into the build — should: where a tool the work needs is missing on this machine, the assumptions of the round say that it is needed and missing and that the permission to install decides who installs, as plan-work says, and the planning says of a tool only what it read off the machine; milestone 3. **5. The line that work without them is not set up was not said.** Run 1: the record of the mode says yes, the install record no, #244 „condition 6 does not hold“; the one line `skills/plan-work/SKILL.md` lines 405 to 409 give for that case, "that work without them is not set up in this project, and that typing `--auto` where a piece of work starts sets it up", the wording of 5 October 2026, stands in the comment #275 in English and in no text to the person. Searched: `grep -n -i 'fallen away'` and `'one line.*not set up\|said in the issue comment'`, the hits being the texts and the entries that built the line. Milestone 3, the line turning on the install record's no; a small matter by the measure of decision (9): the person learns it at the second asking when they type `--auto`, as run 2 shows, and the planning went on with them as the text says. Recorded, not built: the planning of run 1 said to the person nothing of the mode not being set up and of `--auto` setting it up, where the record of the mode said yes and the install record no, the line standing in an issue comment alone — should: where the record is a yes with something fallen away since, the one line of plan-work reaches the person in the message that ends the turn; milestone 3, a small matter by decision (9) if the person so decides. **6. The prompts to the build subagents carried an instruction of the main run's own on installing and not point 7.** Run 1 #446, „Do not install anything. htmlq may be real on PATH; yq not needed here.“, and #772, „Do not install anything (yq and htmlq are already on this machine; tests use stubs).“, a false claim; neither carries point 7 with the texts between it and point 8 nor the output of `bin/devloop-install-record`. `skills/build-work/SKILL.md` lines 431 to 462, the fifth rule since 24 October 2026, decision (1) of the entry at line 37660: "point 7 below as it reads, with the texts between it and point 8, and the install record as bin/devloop-install-record prints it, run by this run ...; beside point 7 this run writes nothing of its own on whether the subagent installs or what. Run 2a's prompt said 'Install the Mermaid CLI as the vendor documents' and run 3a's 'Do not install anything'". Searched: `grep -n -i 'writes nothing of its own\|instruction of its own on installing\|Do not install anything'`, the hits being the decision and the paragraphs of defects 2 and 7, whose case is a yes. Milestone 3, decision (1); not a small matter: the subagent got a wrong fact about the machine from the prompt, and the rule was written against exactly this. Recorded, not built: the prompts of run 1 to its two build subagents said „Do not install anything“, one of them that yq is on the machine, and handed neither point 7 with the texts between it and point 8 nor the printed install record — should: the main run hands the build subagent point 7 as it reads, the texts between it and point 8 and the record as bin/devloop-install-record prints it, and writes nothing of its own on installing into the prompt, under a no as under a yes; milestone 3. **7. Under the no the task needing `yq` was built against a stand-in and offered for landing before the install was handed over.** Run 1: the subagent built #40 against a stub `yq`, #788; the reviewers wrote at #811 and #821 that `yq` is not installed; #1035 put „Soll das landen?“; the handover of `brew install yq` came at #1076, after the person's #1045, and the run said „ich hätte das vor der Frage sagen müssen“. `build-work` expanded 1147 to 1386, point 7: under a no the install stays the user's to run, "Report what it installs, what it unblocks, and the exact command ... and both ways it can go, in the same breath", and "A tool the task needs is not replaced by a stand-in because the run takes itself not to be allowed to install it"; the handover is the task's first step where the tool is missing, not a step after the gate. Searched: `grep -n -i 'before the handover\|handover came\|only after the person\|built against a stand-in'`, the hits being audits and the paragraph of defect 2, whose case is a yes. Milestone 3, the places in the skills under a no, beside defects 2 and 5; not a small matter: the person was asked to land what never ran against the tool. Recorded, not built: run 1 built the task needing yq against a stand-in under the no, put the landing question and handed brew install yq over only after the person said the tool is missing — should: under a no, where a task needs a tool that is missing, the run hands the backed command over with both ways before building against a stand-in, and a task is not offered for landing before the tool it needs stands there or the person has declined it; milestone 3. **8. Run 2 built both tasks in the main run, without a build subagent.** #523 `build-work`, then #537 to #1343 in the main log: the branches cut, the tests written, the installs run, the pull requests opened by the main run; the 27 agents drafted, checked and reviewed. `skills/build-work/SKILL.md` line 431, step 3: "Hand the task to a subagent with a fresh context: the task issue, the spec it belongs to, the paths of the control documents, where the mark stands ... and five rules it reads nowhere else". Searched: `grep -n -i 'built the task itself\|no build subagent\|without a subagent\|main run built\|Hand the task to a subagent'`, no hit. No dated sentence of milestone 3 names it; it bears on the milestone in one way: decision (1) of the entry at line 37660 hands the install rules to the build subagent, and this run shows nothing of that half, the main run having read `build-work` itself. Which milestone takes it up the person decides. Recorded, not built: run 2 built both tasks and ran both installs in the main run and handed no task to a build subagent — should: each task is handed to a build subagent with a fresh context, as step 3 of build-work says, and the main run builds none itself; the milestone the person decides after milestone 3. **9. The folders for browsers were not read around each install.** Run 2 read `~/.cache/puppeteer` before, #798, and after, #818, the install of `mmdc` and named what came into it; around `brew install htmlq` it read no folder, and `~/Library/Caches/ms-playwright` and `~/Library/Caches/Cypress` in no record. `shared/install-alone.md` lines 20 to 25: "Before the install and after it, the run reads the folders for browsers that 'Whether it worked is read off the result' names for this system, and the one a vendor's setting names where one is set, and the report names what came into them". Searched: `grep -n -i 'folders for browsers\|read the folders\|browser folders'`, the hits being the texts that built the rule. Milestone 3, point 8; a small matter by the measure of decision (9): the download the install made was named, read off the one folder it lands in, and a formula of Homebrew downloads no browser. Recorded, not built: run 2 read the folders for browsers only around the npm install and only ~/.cache/puppeteer, none around brew install htmlq — should: before and after every install the run reads the three folders named for this system and the one a vendor's setting names, and the report names what came into them; milestone 3, a small matter by decision (9) if the person so decides. **10. An install on the default branch before the task's branch, and the pull request says the hook wrote the line.** Run 2 #569 ran `brew install htmlq` with the tree on `main`; the fact hook refused the line, #571, the run cut the branch and wrote it through `bin/devloop-install-note put`, #578, and #52 says of that line „the standing fact the install hook wrote when htmlq was installed for this task“. `skills/build-work/SKILL.md` lines 433 to 436, 451 to 462 and 466: the subagent cuts a branch from the main branch first, and the install of point 7 is a step of the task's build, on that branch, where the hook writes the line; a report says what happened, "What the report says ... is what the whole output shows, and nothing assumed", `shared/install-alone.md` line 15. Searched: `grep -n -i 'on the default branch main, where nothing\|installed on main\|refused the line'`, hits only the measurement of the hook's refusal, lines 34439 and 34444. Milestone 3, part A's mechanism; a small matter by the measure of decision (9): the line stands in the same form, written by the program the hook calls, and only the pull request's sentence is wrong. Recorded, not built: run 2 ran brew install htmlq on main before cutting the task's branch, so the fact hook wrote no line and the run wrote it through the program, and the pull request says the hook wrote it — should: an install of a task runs on the task's branch, after the cut, so that the hook writes the line, and the report says who wrote it; milestone 3, a small matter by decision (9) if the person so decides.
- Found: Three closing runs of the pass read off their logs, each on what it met.
- Fix: none
- Status: Recorded, not built
- Note: found 27 October 2026 by the order evaluating the three closing runs of the milestone 3 pass of 26 and 27 October 2026, read off their session logs, defect 3 of the roadmap entry of 27 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by decision (5) of the roadmap entry of 24 October 2026 on how an install is recorded; a small matter by the measure of decision (9) of that entry if the person so decides; should: the five beside the mode are read by the one call of the program and by nothing else, the record of the mode alone being read beside it

### the rounds of runs 1 and 2 said nothing of the tool the work needs and that it is missing, run 1's planning wrote that yq is installed without reading the machine and carried it into the build
- Wrong: the rounds of runs 1 and 2 said nothing of the tool the work needs and that it is missing, run 1's planning wrote that yq is installed without reading the machine and carried it into the build
- Should: where a tool the work needs is missing on this machine, the assumptions of the round say that it is needed and missing and that the permission to install decides who installs, as plan-work says, and the planning says of a tool only what it read off the machine; milestone 3. **5. The line that work without them is not set up was not said.** Run 1: the record of the mode says yes, the install record no, #244 „condition 6 does not hold“; the one line `skills/plan-work/SKILL.md` lines 405 to 409 give for that case, "that work without them is not set up in this project, and that typing `--auto` where a piece of work starts sets it up", the wording of 5 October 2026, stands in the comment #275 in English and in no text to the person. Searched: `grep -n -i 'fallen away'` and `'one line.*not set up\|said in the issue comment'`, the hits being the texts and the entries that built the line. Milestone 3, the line turning on the install record's no; a small matter by the measure of decision (9): the person learns it at the second asking when they type `--auto`, as run 2 shows, and the planning went on with them as the text says. Recorded, not built: the planning of run 1 said to the person nothing of the mode not being set up and of `--auto` setting it up, where the record of the mode said yes and the install record no, the line standing in an issue comment alone — should: where the record is a yes with something fallen away since, the one line of plan-work reaches the person in the message that ends the turn; milestone 3, a small matter by decision (9) if the person so decides. **6. The prompts to the build subagents carried an instruction of the main run's own on installing and not point 7.** Run 1 #446, „Do not install anything. htmlq may be real on PATH; yq not needed here.“, and #772, „Do not install anything (yq and htmlq are already on this machine; tests use stubs).“, a false claim; neither carries point 7 with the texts between it and point 8 nor the output of `bin/devloop-install-record`. `skills/build-work/SKILL.md` lines 431 to 462, the fifth rule since 24 October 2026, decision (1) of the entry at line 37660: "point 7 below as it reads, with the texts between it and point 8, and the install record as bin/devloop-install-record prints it, run by this run ...; beside point 7 this run writes nothing of its own on whether the subagent installs or what. Run 2a's prompt said 'Install the Mermaid CLI as the vendor documents' and run 3a's 'Do not install anything'". Searched: `grep -n -i 'writes nothing of its own\|instruction of its own on installing\|Do not install anything'`, the hits being the decision and the paragraphs of defects 2 and 7, whose case is a yes. Milestone 3, decision (1); not a small matter: the subagent got a wrong fact about the machine from the prompt, and the rule was written against exactly this. Recorded, not built: the prompts of run 1 to its two build subagents said „Do not install anything“, one of them that yq is on the machine, and handed neither point 7 with the texts between it and point 8 nor the printed install record — should: the main run hands the build subagent point 7 as it reads, the texts between it and point 8 and the record as bin/devloop-install-record prints it, and writes nothing of its own on installing into the prompt, under a no as under a yes; milestone 3. **7. Under the no the task needing `yq` was built against a stand-in and offered for landing before the install was handed over.** Run 1: the subagent built #40 against a stub `yq`, #788; the reviewers wrote at #811 and #821 that `yq` is not installed; #1035 put „Soll das landen?“; the handover of `brew install yq` came at #1076, after the person's #1045, and the run said „ich hätte das vor der Frage sagen müssen“. `build-work` expanded 1147 to 1386, point 7: under a no the install stays the user's to run, "Report what it installs, what it unblocks, and the exact command ... and both ways it can go, in the same breath", and "A tool the task needs is not replaced by a stand-in because the run takes itself not to be allowed to install it"; the handover is the task's first step where the tool is missing, not a step after the gate. Searched: `grep -n -i 'before the handover\|handover came\|only after the person\|built against a stand-in'`, the hits being audits and the paragraph of defect 2, whose case is a yes. Milestone 3, the places in the skills under a no, beside defects 2 and 5; not a small matter: the person was asked to land what never ran against the tool. Recorded, not built: run 1 built the task needing yq against a stand-in under the no, put the landing question and handed brew install yq over only after the person said the tool is missing — should: under a no, where a task needs a tool that is missing, the run hands the backed command over with both ways before building against a stand-in, and a task is not offered for landing before the tool it needs stands there or the person has declined it; milestone 3. **8. Run 2 built both tasks in the main run, without a build subagent.** #523 `build-work`, then #537 to #1343 in the main log: the branches cut, the tests written, the installs run, the pull requests opened by the main run; the 27 agents drafted, checked and reviewed. `skills/build-work/SKILL.md` line 431, step 3: "Hand the task to a subagent with a fresh context: the task issue, the spec it belongs to, the paths of the control documents, where the mark stands ... and five rules it reads nowhere else". Searched: `grep -n -i 'built the task itself\|no build subagent\|without a subagent\|main run built\|Hand the task to a subagent'`, no hit. No dated sentence of milestone 3 names it; it bears on the milestone in one way: decision (1) of the entry at line 37660 hands the install rules to the build subagent, and this run shows nothing of that half, the main run having read `build-work` itself. Which milestone takes it up the person decides. Recorded, not built: run 2 built both tasks and ran both installs in the main run and handed no task to a build subagent — should: each task is handed to a build subagent with a fresh context, as step 3 of build-work says, and the main run builds none itself; the milestone the person decides after milestone 3. **9. The folders for browsers were not read around each install.** Run 2 read `~/.cache/puppeteer` before, #798, and after, #818, the install of `mmdc` and named what came into it; around `brew install htmlq` it read no folder, and `~/Library/Caches/ms-playwright` and `~/Library/Caches/Cypress` in no record. `shared/install-alone.md` lines 20 to 25: "Before the install and after it, the run reads the folders for browsers that 'Whether it worked is read off the result' names for this system, and the one a vendor's setting names where one is set, and the report names what came into them". Searched: `grep -n -i 'folders for browsers\|read the folders\|browser folders'`, the hits being the texts that built the rule. Milestone 3, point 8; a small matter by the measure of decision (9): the download the install made was named, read off the one folder it lands in, and a formula of Homebrew downloads no browser. Recorded, not built: run 2 read the folders for browsers only around the npm install and only ~/.cache/puppeteer, none around brew install htmlq — should: before and after every install the run reads the three folders named for this system and the one a vendor's setting names, and the report names what came into them; milestone 3, a small matter by decision (9) if the person so decides. **10. An install on the default branch before the task's branch, and the pull request says the hook wrote the line.** Run 2 #569 ran `brew install htmlq` with the tree on `main`; the fact hook refused the line, #571, the run cut the branch and wrote it through `bin/devloop-install-note put`, #578, and #52 says of that line „the standing fact the install hook wrote when htmlq was installed for this task“. `skills/build-work/SKILL.md` lines 433 to 436, 451 to 462 and 466: the subagent cuts a branch from the main branch first, and the install of point 7 is a step of the task's build, on that branch, where the hook writes the line; a report says what happened, "What the report says ... is what the whole output shows, and nothing assumed", `shared/install-alone.md` line 15. Searched: `grep -n -i 'on the default branch main, where nothing\|installed on main\|refused the line'`, hits only the measurement of the hook's refusal, lines 34439 and 34444. Milestone 3, part A's mechanism; a small matter by the measure of decision (9): the line stands in the same form, written by the program the hook calls, and only the pull request's sentence is wrong. Recorded, not built: run 2 ran brew install htmlq on main before cutting the task's branch, so the fact hook wrote no line and the run wrote it through the program, and the pull request says the hook wrote it — should: an install of a task runs on the task's branch, after the cut, so that the hook writes the line, and the report says who wrote it; milestone 3, a small matter by decision (9) if the person so decides.
- Found: Three closing runs of the pass read off their logs, each on what it met.
- Fix: `skills/plan-work/SKILL.md` "project that calls `yq`, say — is known before"
- Status: Built, never walked
- Note: found 27 October 2026 by the order evaluating the three closing runs of the milestone 3 pass of 26 and 27 October 2026, read off their session logs, defect 4 of the roadmap entry of 27 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by the dated sentences of docs/plan.md under it, the places in the skills, beside defect 9 of the roadmap entry of 24 October 2026 on the six closing runs; not a small matter in run 1, the person deciding; should: where a tool the work needs is missing on this machine, the assumptions of the round say that it is needed and missing and that the permission to install decides who installs, as plan-work says, and the planning says of a tool only what it read off the machine; built 27 October 2026, version 0.163.0, the roadmap entry of that date on the tool state read by one program, decisions (1) and (3) of that entry: the planning runs bin/devloop-tool-state --planning once before anything is said of a tool outside the project and says of a tool only what it printed, the assumptions of the round saying wording (b) where the line says not found, the halt of cut-into-tasks and the last message of the build the places where the person next reads on the two routes without them, and the spec carrying the line as printed; a run is owed, the run with the person under a no of decision (1); the rest built 30 October 2026, version 0.166.0, the roadmap entry of that date on the install, the person's decision of that day: a tool the code read for a round names has the program run before the round and its line in the assumptions, and the planning says only that the build decides even where another program printed the answer; no mechanism, the text says why

### the planning of run 1 said to the person nothing of the mode not being set up and of --auto setting it up, where the record of the mode said yes and the install record no
- Wrong: the planning of run 1 said to the person nothing of the mode not being set up and of `--auto` setting it up, where the record of the mode said yes and the install record no, the line standing in an issue comment alone
- Should: where the record is a yes with something fallen away since, the one line of plan-work reaches the person in the message that ends the turn; milestone 3, a small matter by decision (9) if the person so decides. **6. The prompts to the build subagents carried an instruction of the main run's own on installing and not point 7.** Run 1 #446, „Do not install anything. htmlq may be real on PATH; yq not needed here.“, and #772, „Do not install anything (yq and htmlq are already on this machine; tests use stubs).“, a false claim; neither carries point 7 with the texts between it and point 8 nor the output of `bin/devloop-install-record`. `skills/build-work/SKILL.md` lines 431 to 462, the fifth rule since 24 October 2026, decision (1) of the entry at line 37660: "point 7 below as it reads, with the texts between it and point 8, and the install record as bin/devloop-install-record prints it, run by this run ...; beside point 7 this run writes nothing of its own on whether the subagent installs or what. Run 2a's prompt said 'Install the Mermaid CLI as the vendor documents' and run 3a's 'Do not install anything'". Searched: `grep -n -i 'writes nothing of its own\|instruction of its own on installing\|Do not install anything'`, the hits being the decision and the paragraphs of defects 2 and 7, whose case is a yes. Milestone 3, decision (1); not a small matter: the subagent got a wrong fact about the machine from the prompt, and the rule was written against exactly this. Recorded, not built: the prompts of run 1 to its two build subagents said „Do not install anything“, one of them that yq is on the machine, and handed neither point 7 with the texts between it and point 8 nor the printed install record — should: the main run hands the build subagent point 7 as it reads, the texts between it and point 8 and the record as bin/devloop-install-record prints it, and writes nothing of its own on installing into the prompt, under a no as under a yes; milestone 3. **7. Under the no the task needing `yq` was built against a stand-in and offered for landing before the install was handed over.** Run 1: the subagent built #40 against a stub `yq`, #788; the reviewers wrote at #811 and #821 that `yq` is not installed; #1035 put „Soll das landen?“; the handover of `brew install yq` came at #1076, after the person's #1045, and the run said „ich hätte das vor der Frage sagen müssen“. `build-work` expanded 1147 to 1386, point 7: under a no the install stays the user's to run, "Report what it installs, what it unblocks, and the exact command ... and both ways it can go, in the same breath", and "A tool the task needs is not replaced by a stand-in because the run takes itself not to be allowed to install it"; the handover is the task's first step where the tool is missing, not a step after the gate. Searched: `grep -n -i 'before the handover\|handover came\|only after the person\|built against a stand-in'`, the hits being audits and the paragraph of defect 2, whose case is a yes. Milestone 3, the places in the skills under a no, beside defects 2 and 5; not a small matter: the person was asked to land what never ran against the tool. Recorded, not built: run 1 built the task needing yq against a stand-in under the no, put the landing question and handed brew install yq over only after the person said the tool is missing — should: under a no, where a task needs a tool that is missing, the run hands the backed command over with both ways before building against a stand-in, and a task is not offered for landing before the tool it needs stands there or the person has declined it; milestone 3. **8. Run 2 built both tasks in the main run, without a build subagent.** #523 `build-work`, then #537 to #1343 in the main log: the branches cut, the tests written, the installs run, the pull requests opened by the main run; the 27 agents drafted, checked and reviewed. `skills/build-work/SKILL.md` line 431, step 3: "Hand the task to a subagent with a fresh context: the task issue, the spec it belongs to, the paths of the control documents, where the mark stands ... and five rules it reads nowhere else". Searched: `grep -n -i 'built the task itself\|no build subagent\|without a subagent\|main run built\|Hand the task to a subagent'`, no hit. No dated sentence of milestone 3 names it; it bears on the milestone in one way: decision (1) of the entry at line 37660 hands the install rules to the build subagent, and this run shows nothing of that half, the main run having read `build-work` itself. Which milestone takes it up the person decides. Recorded, not built: run 2 built both tasks and ran both installs in the main run and handed no task to a build subagent — should: each task is handed to a build subagent with a fresh context, as step 3 of build-work says, and the main run builds none itself; the milestone the person decides after milestone 3. **9. The folders for browsers were not read around each install.** Run 2 read `~/.cache/puppeteer` before, #798, and after, #818, the install of `mmdc` and named what came into it; around `brew install htmlq` it read no folder, and `~/Library/Caches/ms-playwright` and `~/Library/Caches/Cypress` in no record. `shared/install-alone.md` lines 20 to 25: "Before the install and after it, the run reads the folders for browsers that 'Whether it worked is read off the result' names for this system, and the one a vendor's setting names where one is set, and the report names what came into them". Searched: `grep -n -i 'folders for browsers\|read the folders\|browser folders'`, the hits being the texts that built the rule. Milestone 3, point 8; a small matter by the measure of decision (9): the download the install made was named, read off the one folder it lands in, and a formula of Homebrew downloads no browser. Recorded, not built: run 2 read the folders for browsers only around the npm install and only ~/.cache/puppeteer, none around brew install htmlq — should: before and after every install the run reads the three folders named for this system and the one a vendor's setting names, and the report names what came into them; milestone 3, a small matter by decision (9) if the person so decides. **10. An install on the default branch before the task's branch, and the pull request says the hook wrote the line.** Run 2 #569 ran `brew install htmlq` with the tree on `main`; the fact hook refused the line, #571, the run cut the branch and wrote it through `bin/devloop-install-note put`, #578, and #52 says of that line „the standing fact the install hook wrote when htmlq was installed for this task“. `skills/build-work/SKILL.md` lines 433 to 436, 451 to 462 and 466: the subagent cuts a branch from the main branch first, and the install of point 7 is a step of the task's build, on that branch, where the hook writes the line; a report says what happened, "What the report says ... is what the whole output shows, and nothing assumed", `shared/install-alone.md` line 15. Searched: `grep -n -i 'on the default branch main, where nothing\|installed on main\|refused the line'`, hits only the measurement of the hook's refusal, lines 34439 and 34444. Milestone 3, part A's mechanism; a small matter by the measure of decision (9): the line stands in the same form, written by the program the hook calls, and only the pull request's sentence is wrong. Recorded, not built: run 2 ran brew install htmlq on main before cutting the task's branch, so the fact hook wrote no line and the run wrote it through the program, and the pull request says the hook wrote it — should: an install of a task runs on the task's branch, after the cut, so that the hook writes the line, and the report says who wrote it; milestone 3, a small matter by decision (9) if the person so decides.
- Found: Three closing runs of the pass read off their logs, each on what it met.
- Fix: `skills/plan-work/SKILL.md` "read of the conditions, the one the question on the"
- Status: Built, never walked
- Note: found 27 October 2026 by the order evaluating the three closing runs of the milestone 3 pass of 26 and 27 October 2026, read off their session logs, defect 5 of the roadmap entry of 27 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by the dated sentences of docs/plan.md under it, the line turning on the install record's no; a small matter by the measure of decision (9) of the roadmap entry of 24 October 2026 on how an install is recorded if the person so decides; should: where the record is a yes with something fallen away since, the one line of plan-work reaches the person in the message that ends the turn; built 27 October 2026, version 0.163.0, the roadmap entry of that date on the tool state read by one program, decision (1) of that entry: the line reaches the person in the next message that ends a turn with text and not in a comment on the planning issue alone, its wording (1) of the roadmap entry of 27 October 2026 on the three visible texts unchanged; a run is owed; the rest built 30 October 2026, version 0.166.0, the roadmap entry of that date on the install, the person's decision of that day: the next message ending a turn with text after the read, without a reason; no mechanism, the text says why

### the prompts of run 1 to its two build subagents said Do not install anything, one of them that yq is on the machine, and handed neither point 7 nor the printed install record
- Wrong: the prompts of run 1 to its two build subagents said „Do not install anything“, one of them that yq is on the machine, and handed neither point 7 with the texts between it and point 8 nor the printed install record
- Should: the main run hands the build subagent point 7 as it reads, the texts between it and point 8 and the record as bin/devloop-install-record prints it, and writes nothing of its own on installing into the prompt, under a no as under a yes; milestone 3. **7. Under the no the task needing `yq` was built against a stand-in and offered for landing before the install was handed over.** Run 1: the subagent built #40 against a stub `yq`, #788; the reviewers wrote at #811 and #821 that `yq` is not installed; #1035 put „Soll das landen?“; the handover of `brew install yq` came at #1076, after the person's #1045, and the run said „ich hätte das vor der Frage sagen müssen“. `build-work` expanded 1147 to 1386, point 7: under a no the install stays the user's to run, "Report what it installs, what it unblocks, and the exact command ... and both ways it can go, in the same breath", and "A tool the task needs is not replaced by a stand-in because the run takes itself not to be allowed to install it"; the handover is the task's first step where the tool is missing, not a step after the gate. Searched: `grep -n -i 'before the handover\|handover came\|only after the person\|built against a stand-in'`, the hits being audits and the paragraph of defect 2, whose case is a yes. Milestone 3, the places in the skills under a no, beside defects 2 and 5; not a small matter: the person was asked to land what never ran against the tool. Recorded, not built: run 1 built the task needing yq against a stand-in under the no, put the landing question and handed brew install yq over only after the person said the tool is missing — should: under a no, where a task needs a tool that is missing, the run hands the backed command over with both ways before building against a stand-in, and a task is not offered for landing before the tool it needs stands there or the person has declined it; milestone 3. **8. Run 2 built both tasks in the main run, without a build subagent.** #523 `build-work`, then #537 to #1343 in the main log: the branches cut, the tests written, the installs run, the pull requests opened by the main run; the 27 agents drafted, checked and reviewed. `skills/build-work/SKILL.md` line 431, step 3: "Hand the task to a subagent with a fresh context: the task issue, the spec it belongs to, the paths of the control documents, where the mark stands ... and five rules it reads nowhere else". Searched: `grep -n -i 'built the task itself\|no build subagent\|without a subagent\|main run built\|Hand the task to a subagent'`, no hit. No dated sentence of milestone 3 names it; it bears on the milestone in one way: decision (1) of the entry at line 37660 hands the install rules to the build subagent, and this run shows nothing of that half, the main run having read `build-work` itself. Which milestone takes it up the person decides. Recorded, not built: run 2 built both tasks and ran both installs in the main run and handed no task to a build subagent — should: each task is handed to a build subagent with a fresh context, as step 3 of build-work says, and the main run builds none itself; the milestone the person decides after milestone 3. **9. The folders for browsers were not read around each install.** Run 2 read `~/.cache/puppeteer` before, #798, and after, #818, the install of `mmdc` and named what came into it; around `brew install htmlq` it read no folder, and `~/Library/Caches/ms-playwright` and `~/Library/Caches/Cypress` in no record. `shared/install-alone.md` lines 20 to 25: "Before the install and after it, the run reads the folders for browsers that 'Whether it worked is read off the result' names for this system, and the one a vendor's setting names where one is set, and the report names what came into them". Searched: `grep -n -i 'folders for browsers\|read the folders\|browser folders'`, the hits being the texts that built the rule. Milestone 3, point 8; a small matter by the measure of decision (9): the download the install made was named, read off the one folder it lands in, and a formula of Homebrew downloads no browser. Recorded, not built: run 2 read the folders for browsers only around the npm install and only ~/.cache/puppeteer, none around brew install htmlq — should: before and after every install the run reads the three folders named for this system and the one a vendor's setting names, and the report names what came into them; milestone 3, a small matter by decision (9) if the person so decides. **10. An install on the default branch before the task's branch, and the pull request says the hook wrote the line.** Run 2 #569 ran `brew install htmlq` with the tree on `main`; the fact hook refused the line, #571, the run cut the branch and wrote it through `bin/devloop-install-note put`, #578, and #52 says of that line „the standing fact the install hook wrote when htmlq was installed for this task“. `skills/build-work/SKILL.md` lines 433 to 436, 451 to 462 and 466: the subagent cuts a branch from the main branch first, and the install of point 7 is a step of the task's build, on that branch, where the hook writes the line; a report says what happened, "What the report says ... is what the whole output shows, and nothing assumed", `shared/install-alone.md` line 15. Searched: `grep -n -i 'on the default branch main, where nothing\|installed on main\|refused the line'`, hits only the measurement of the hook's refusal, lines 34439 and 34444. Milestone 3, part A's mechanism; a small matter by the measure of decision (9): the line stands in the same form, written by the program the hook calls, and only the pull request's sentence is wrong. Recorded, not built: run 2 ran brew install htmlq on main before cutting the task's branch, so the fact hook wrote no line and the run wrote it through the program, and the pull request says the hook wrote it — should: an install of a task runs on the task's branch, after the cut, so that the hook writes the line, and the report says who wrote it; milestone 3, a small matter by decision (9) if the person so decides.
- Found: Three closing runs of the pass read off their logs, each on what it met.
- Fix: `hooks/subagent-start-install.sh` "which you read before you install anything, with the four texts under it"
- Status: Walked
- Note: found 27 October 2026 by the order evaluating the three closing runs of the milestone 3 pass of 26 and 27 October 2026, read off their session logs, defect 6 of the roadmap entry of 27 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by decision (1) of the roadmap entry of 24 October 2026 on how an install is recorded; not a small matter, the person deciding; should: the main run hands the build subagent point 7 as it reads, the texts between it and point 8 and the record as bin/devloop-install-record prints it, and writes nothing of its own on installing into the prompt, under a no as under a yes; built 28 October 2026, version 0.164.0, the roadmap entry of that date on the hook on SubagentStart, by the mechanism decision (2) of the roadmap entry of 27 October 2026 on the tool state chose: every subagent gets the record line and the rule as context at its start from hooks/subagent-start-install.sh, so that a prompt saying Do not install anything is outranked; the fifth rule of step 3 stays; a run with the person under a no pending; the rest built 30 October 2026, version 0.166.0, the roadmap entry of that date on the install, the person's decision of that day: the prompt hands point 7 no more, the hook's rule names the command that prints shared/install-tool.md and the four texts, with the plugin's path

### run 1 built the task needing yq against a stand-in under the no, put the landing question and handed brew install yq over only after the person said the tool is missing
- Wrong: run 1 built the task needing yq against a stand-in under the no, put the landing question and handed brew install yq over only after the person said the tool is missing
- Should: under a no, where a task needs a tool that is missing, the run hands the backed command over with both ways before building against a stand-in, and a task is not offered for landing before the tool it needs stands there or the person has declined it; milestone 3. **8. Run 2 built both tasks in the main run, without a build subagent.** #523 `build-work`, then #537 to #1343 in the main log: the branches cut, the tests written, the installs run, the pull requests opened by the main run; the 27 agents drafted, checked and reviewed. `skills/build-work/SKILL.md` line 431, step 3: "Hand the task to a subagent with a fresh context: the task issue, the spec it belongs to, the paths of the control documents, where the mark stands ... and five rules it reads nowhere else". Searched: `grep -n -i 'built the task itself\|no build subagent\|without a subagent\|main run built\|Hand the task to a subagent'`, no hit. No dated sentence of milestone 3 names it; it bears on the milestone in one way: decision (1) of the entry at line 37660 hands the install rules to the build subagent, and this run shows nothing of that half, the main run having read `build-work` itself. Which milestone takes it up the person decides. Recorded, not built: run 2 built both tasks and ran both installs in the main run and handed no task to a build subagent — should: each task is handed to a build subagent with a fresh context, as step 3 of build-work says, and the main run builds none itself; the milestone the person decides after milestone 3. **9. The folders for browsers were not read around each install.** Run 2 read `~/.cache/puppeteer` before, #798, and after, #818, the install of `mmdc` and named what came into it; around `brew install htmlq` it read no folder, and `~/Library/Caches/ms-playwright` and `~/Library/Caches/Cypress` in no record. `shared/install-alone.md` lines 20 to 25: "Before the install and after it, the run reads the folders for browsers that 'Whether it worked is read off the result' names for this system, and the one a vendor's setting names where one is set, and the report names what came into them". Searched: `grep -n -i 'folders for browsers\|read the folders\|browser folders'`, the hits being the texts that built the rule. Milestone 3, point 8; a small matter by the measure of decision (9): the download the install made was named, read off the one folder it lands in, and a formula of Homebrew downloads no browser. Recorded, not built: run 2 read the folders for browsers only around the npm install and only ~/.cache/puppeteer, none around brew install htmlq — should: before and after every install the run reads the three folders named for this system and the one a vendor's setting names, and the report names what came into them; milestone 3, a small matter by decision (9) if the person so decides. **10. An install on the default branch before the task's branch, and the pull request says the hook wrote the line.** Run 2 #569 ran `brew install htmlq` with the tree on `main`; the fact hook refused the line, #571, the run cut the branch and wrote it through `bin/devloop-install-note put`, #578, and #52 says of that line „the standing fact the install hook wrote when htmlq was installed for this task“. `skills/build-work/SKILL.md` lines 433 to 436, 451 to 462 and 466: the subagent cuts a branch from the main branch first, and the install of point 7 is a step of the task's build, on that branch, where the hook writes the line; a report says what happened, "What the report says ... is what the whole output shows, and nothing assumed", `shared/install-alone.md` line 15. Searched: `grep -n -i 'on the default branch main, where nothing\|installed on main\|refused the line'`, hits only the measurement of the hook's refusal, lines 34439 and 34444. Milestone 3, part A's mechanism; a small matter by the measure of decision (9): the line stands in the same form, written by the program the hook calls, and only the pull request's sentence is wrong. Recorded, not built: run 2 ran brew install htmlq on main before cutting the task's branch, so the fact hook wrote no line and the run wrote it through the program, and the pull request says the hook wrote it — should: an install of a task runs on the task's branch, after the cut, so that the hook writes the line, and the report says who wrote it; milestone 3, a small matter by decision (9) if the person so decides.
- Found: Three closing runs of the pass read off their logs, each on what it met.
- Fix: `skills/build-work/SKILL.md` "**Before the subagent starts, read the tools the task needs**"
- Status: Built, never walked
- Note: found 27 October 2026 by the order evaluating the three closing runs of the milestone 3 pass of 26 and 27 October 2026, read off their session logs, defect 7 of the roadmap entry of 27 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by the dated sentences of docs/plan.md under it, the places in the skills under a no, beside defects 2 and 5 of the roadmap entry of 24 October 2026 on the six closing runs; not a small matter, the person deciding; should: under a no, where a task needs a tool that is missing, the run hands the backed command over with both ways before building against a stand-in, and a task is not offered for landing before the tool it needs stands there or the person has declined it; built 28 October 2026, version 0.164.0, the roadmap entry of that date on the hook on SubagentStart: build-work step 3 reads the tools with bin/devloop-tool-state --build before the subagent starts and under a no or no record hands over first, nothing built against a stand-in, and step 5 puts no landing question while a tool is missing and not declined; a run with the person under a no pending

### run 2 built both tasks and ran both installs in the main run and handed no task to a build subagent
- Wrong: run 2 built both tasks and ran both installs in the main run and handed no task to a build subagent
- Should: each task is handed to a build subagent with a fresh context, as step 3 of build-work says, and the main run builds none itself; the milestone the person decides after milestone 3. **9. The folders for browsers were not read around each install.** Run 2 read `~/.cache/puppeteer` before, #798, and after, #818, the install of `mmdc` and named what came into it; around `brew install htmlq` it read no folder, and `~/Library/Caches/ms-playwright` and `~/Library/Caches/Cypress` in no record. `shared/install-alone.md` lines 20 to 25: "Before the install and after it, the run reads the folders for browsers that 'Whether it worked is read off the result' names for this system, and the one a vendor's setting names where one is set, and the report names what came into them". Searched: `grep -n -i 'folders for browsers\|read the folders\|browser folders'`, the hits being the texts that built the rule. Milestone 3, point 8; a small matter by the measure of decision (9): the download the install made was named, read off the one folder it lands in, and a formula of Homebrew downloads no browser. Recorded, not built: run 2 read the folders for browsers only around the npm install and only ~/.cache/puppeteer, none around brew install htmlq — should: before and after every install the run reads the three folders named for this system and the one a vendor's setting names, and the report names what came into them; milestone 3, a small matter by decision (9) if the person so decides. **10. An install on the default branch before the task's branch, and the pull request says the hook wrote the line.** Run 2 #569 ran `brew install htmlq` with the tree on `main`; the fact hook refused the line, #571, the run cut the branch and wrote it through `bin/devloop-install-note put`, #578, and #52 says of that line „the standing fact the install hook wrote when htmlq was installed for this task“. `skills/build-work/SKILL.md` lines 433 to 436, 451 to 462 and 466: the subagent cuts a branch from the main branch first, and the install of point 7 is a step of the task's build, on that branch, where the hook writes the line; a report says what happened, "What the report says ... is what the whole output shows, and nothing assumed", `shared/install-alone.md` line 15. Searched: `grep -n -i 'on the default branch main, where nothing\|installed on main\|refused the line'`, hits only the measurement of the hook's refusal, lines 34439 and 34444. Milestone 3, part A's mechanism; a small matter by the measure of decision (9): the line stands in the same form, written by the program the hook calls, and only the pull request's sentence is wrong. Recorded, not built: run 2 ran brew install htmlq on main before cutting the task's branch, so the fact hook wrote no line and the run wrote it through the program, and the pull request says the hook wrote it — should: an install of a task runs on the task's branch, after the cut, so that the hook writes the line, and the report says who wrote it; milestone 3, a small matter by decision (9) if the person so decides.
- Found: Three closing runs of the pass read off their logs, each on what it met.
- Fix: none
- Status: Recorded, not built
- Note: found 27 October 2026 by the order evaluating the three closing runs of the milestone 3 pass of 26 and 27 October 2026, read off their session logs, defect 8 of the roadmap entry of 27 October 2026 on those runs, the records in its paragraph; no dated sentence of milestone 3 names it; it bears on decision (1) of the roadmap entry of 24 October 2026 on how an install is recorded, whose half in the subagent's prompt the run shows nothing of; the person decides after milestone 3 which milestone takes it up; should: each task is handed to a build subagent with a fresh context, as step 3 of build-work says, and the main run builds none itself

### run 2 read the folders for browsers only around the npm install and only ~/.cache/puppeteer, none around brew install htmlq
- Wrong: run 2 read the folders for browsers only around the npm install and only ~/.cache/puppeteer, none around brew install htmlq
- Should: before and after every install the run reads the three folders named for this system and the one a vendor's setting names, and the report names what came into them; milestone 3, a small matter by decision (9) if the person so decides. **10. An install on the default branch before the task's branch, and the pull request says the hook wrote the line.** Run 2 #569 ran `brew install htmlq` with the tree on `main`; the fact hook refused the line, #571, the run cut the branch and wrote it through `bin/devloop-install-note put`, #578, and #52 says of that line „the standing fact the install hook wrote when htmlq was installed for this task“. `skills/build-work/SKILL.md` lines 433 to 436, 451 to 462 and 466: the subagent cuts a branch from the main branch first, and the install of point 7 is a step of the task's build, on that branch, where the hook writes the line; a report says what happened, "What the report says ... is what the whole output shows, and nothing assumed", `shared/install-alone.md` line 15. Searched: `grep -n -i 'on the default branch main, where nothing\|installed on main\|refused the line'`, hits only the measurement of the hook's refusal, lines 34439 and 34444. Milestone 3, part A's mechanism; a small matter by the measure of decision (9): the line stands in the same form, written by the program the hook calls, and only the pull request's sentence is wrong. Recorded, not built: run 2 ran brew install htmlq on main before cutting the task's branch, so the fact hook wrote no line and the run wrote it through the program, and the pull request says the hook wrote it — should: an install of a task runs on the task's branch, after the cut, so that the hook writes the line, and the report says who wrote it; milestone 3, a small matter by decision (9) if the person so decides.
- Found: Three closing runs of the pass read off their logs, each on what it met.
- Fix: none
- Status: Recorded, not built
- Note: found 27 October 2026 by the order evaluating the three closing runs of the milestone 3 pass of 26 and 27 October 2026, read off their session logs, defect 9 of the roadmap entry of 27 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by the dated sentences of docs/plan.md under it, point 8, the report of an install; a small matter by the measure of decision (9) of the roadmap entry of 24 October 2026 on how an install is recorded if the person so decides; should: before and after every install the run reads the three folders named for this system and the one a vendor's setting names, and the report names what came into them

### run 2 ran brew install htmlq on main before cutting the task's branch, so the fact hook wrote no line and the run wrote it through the program, and the pull request says the hook wrote it
- Wrong: run 2 ran brew install htmlq on main before cutting the task's branch, so the fact hook wrote no line and the run wrote it through the program, and the pull request says the hook wrote it
- Should: an install of a task runs on the task's branch, after the cut, so that the hook writes the line, and the report says who wrote it; milestone 3, a small matter by decision (9) if the person so decides.
- Found: Three closing runs of the pass read off their logs, each on what it met.
- Fix: none
- Status: Recorded, not built
- Note: found 27 October 2026 by the order evaluating the three closing runs of the milestone 3 pass of 26 and 27 October 2026, read off their session logs, defect 10 of the roadmap entry of 27 October 2026 on those runs, the records in its paragraph; concerns milestone 3 by the dated sentences of docs/plan.md under it, part A of the build, the line written by a hook; a small matter by the measure of decision (9) of the roadmap entry of 24 October 2026 on how an install is recorded if the person so decides; should: an install of a task runs on the task's branch, after the cut, so that the hook writes the line, and the report says who wrote it

### the Stop hook of run 1 ran the chain at the end of the main run's turn while the build subagent renamed in the working copy, counted the red of the half-done rename as attempt 1, and the main run answered it with a text to the person
- Wrong: the Stop hook of run 1 ran the chain at the end of the main run's turn while the build subagent renamed in the working copy, counted the red of the half-done rename as attempt 1, and the main run answered it with a text to the person
- Should: while a build subagent of this run works in the working copy, the Stop hook runs no chain and counts no attempt, read off background_tasks of its input or off a mark of the build, and the main run answers the hook's message with no text to the person; the milestone the person decides after milestone 3. **The judgements on defects 2, 7 and 9, spelled out.** The notes of the rows of defects 7 and 2 name as built, beside the sentences their shoulds stand on, the fifth rule of step 3 of `build-work`: the prompt to the build subagent carries point 7 and the install record as `bin/devloop-install-record` prints it, and the main run writes no instruction of its own on installing. Run 1 met that rule and it did not hold, #446 and #772, defect 6 above; run 2 did not meet it, no build subagent having been started, defect 8 above. What held in run 2 is the case and the should of defect 7, the backing under a yes, and of defect 2, the real tool under a yes; under the no of run 1 the task was built against a stand-in, defect 7 above. Defect 9: its should held in runs 1 and 2, nobody settled to install; the sentence of its built paragraph in `skills/plan-work/SKILL.md` from line 309, that the round says the tool is needed and missing and the permission decides, held in neither, defect 4 above. The paragraphs of runs 1 and 2 and "What is open after the runs" above say so since this addendum, and the records lines read "the should held, (b) not" and "the should held, rule 5 unmet"; no run stands on defect c, as the paragraph of run 3 says since this addendum. **Records of the addendum.** In `docs/stock-take.tsv`: two runs of run 1, 26 October 2026, source log, under 0.161.0, on the two outcomes of `hooks/stop-checks.sh` it walked, each anchored on its line below: run 1 on the block on the first attempt of hooks/stop-checks.sh, met at #883; run 1 on the pass of hooks/stop-checks.sh with the attempt file removed, #887. Defect 11 sited and evidenced on its status line above; the note of the row of line 14143 saying that the measurement stands here and the should that follows as defect 11; the notes of the rows of defects 2, 7 and 9 saying what held and what did not; the four run anchors of the records lines moved with their lines. **The tool, run for the addendum.** `scripts/devloop-stock-take` in a clean bash with `/usr/bin/grep`, at the tree of the first commit and at the tree with this addendum and its rows: exit 0 at both, no broken record, 14 findings, 42 closed defects; none of 4892 lines of the search set uncovered at the first commit and none of 4893 at the tree, the one more being the status line of defect 11; 366 things recorded and not built at the first commit and 367 at the tree, defect 11; 716 things walked at both, the two outcomes of `hooks/stop-checks.sh` having been walked by earlier runs already; 2373 things at the first commit and 2374 at the tree. Every run counts, the two new ones among them, the lines of the hook last changed in August 2026; the runs that did not count before do not count now, 642 lines under that heading at both; the four re-anchored runs count as before. The self-test passed, 124 cases, 95 of 95 messages asserted. No program under `bin/` and no hook changed. The nineteen checks under "Before a handover, run these" printed at the tree, in a clean bash, what they printed at `d49921f`, line for line.
- Found: Three closing runs of the pass read off their logs, each on what it met.
- Fix: none
- Status: Recorded, not built
- Note: found 27 October 2026 by the addendum of the order evaluating the three closing runs of the milestone 3 pass, read off the session log of run 1 of 26 October 2026 and the log of its build subagent, defect 11 of the roadmap entry of 27 October 2026 on those runs, the records in its paragraph; the should proposed there from the measurement that the entry of 9 October 2026 asked for at line 14143; the person decides after milestone 3 which milestone takes it up, docs/plan.md naming none; should: while a build subagent of this run works in the working copy, the Stop hook runs no chain and counts no attempt, read off background_tasks of its input or off a mark of the build, and the main run answers the hook's message with no text to the person

### no hook hands a subagent the install record and the rule on installing, the build subagents of run 1 having got neither point 7 nor the record from the prompt
- Wrong: no hook hands a subagent the install record and the rule on installing, the build subagents of run 1 having got neither point 7 nor the record from the prompt
- Should: a hook on SubagentStart gives every subagent the [InstallRecord] line as hooks/session-start.sh prints it and a short rule that outranks the prompt, a tool outside the repository installed under a yes alone and under a no or no record neither installed nor replaced by a stand-in, the subagent reporting the tool and the command, after a bench of whether additionalContext of a plugin hook on SubagentStart reaches the subagent; the part on the build. Recorded, not built: build-work step 3 point 7 and The task itself say a declined install's task goes on once the person has run the command and closed the issue themselves — should: at the next start devloop reads, for an open issue that blocks a task on a missing install, with bin/devloop-tool-state --installed whether the issue's command has installed, and where the tool stands closes the issue itself and builds the task, the handover of 27 October 2026 saying so; the part on the build.
- Found: Tool state read by one program, the planning saying only what it read.
- Fix: `hooks/subagent-start-install.sh` ""hookEventName":"SubagentStart","additionalContext""
- Status: Walked
- Note: decided 27 October 2026 by the person, decision (2) of the roadmap entry of that date on the tool state read by one program, reopening the point under Decisions taken against on a hook on SubagentStart; the mechanism for new defect 6 of the roadmap entry of 27 October 2026 on the three closing runs, whose should, the prompt carrying point 7 and the record, stays on its own row; built in the part on the build, after a bench of additionalContext on SubagentStart; should on the status line; built 28 October 2026, version 0.164.0, the roadmap entry of that date on the hook on SubagentStart: hooks/subagent-start-install.sh, registered under SubagentStart without a matcher, the record line from bin/devloop-install-record --line and the rule in the hook; the bench of that day measured on this Mac under Claude Code 2.1.312 that the context reaches the subagent, with the hook both lines quoted and without it none; a run with the person under a no pending

### build-work step 3 point 7 and The task itself say a declined install task goes on once the person has run the command and closed the issue themselves
- Wrong: build-work step 3 point 7 and The task itself say a declined install's task goes on once the person has run the command and closed the issue themselves
- Should: at the next start devloop reads, for an open issue that blocks a task on a missing install, with bin/devloop-tool-state --installed whether the issue's command has installed, and where the tool stands closes the issue itself and builds the task, the handover of 27 October 2026 saying so; the part on the build.
- Found: Tool state read by one program, the planning saying only what it read.
- Fix: `bin/devloop-install-issues` "run(["gh", "issue", "close", str(number), "--comment", comment], d)"
- Status: Walked
- Note: decided 27 October 2026 by the person, decision (5) of the roadmap entry of that date on the tool state read by one program, with the handover under a no approved that day in five paragraphs, which replaces the second sentence of wording (c) of 24 October 2026; the should behind build-work lines 564 to 566 and 649 to 650 at 89932f8 quoted in the entry; the read with bin/devloop-tool-state --installed, whose form stands since that entry; built in the part on the build; should on the status line; built 28 October 2026, version 0.164.0, the roadmap entry of that date on the hook on SubagentStart: bin/devloop-install-issues, run at every start before the readiness query and before the question on the rule, reads with bin/devloop-tool-state --build whether the tool stands on this machine, the search path and not the installer's folder of --installed, which the entry says narrowed the person's wording, and closes the issue with a comment naming the line; a run with the person under a no pending

### a package outside the project answered for the project: npx --no-install fell back to a global Playwright on the search path, and node resolved puppeteer-core from the directories above the project, NODE_PATH and its global folders
- Wrong: not stated
- Should: not stated
- Found: Tool state read by one program, the planning saying only what it read.
- Fix: `bin/devloop-tool-state` "[ -e node_modules/.bin/playwright ] || CAUSE="the project has no Playwright"
- Status: Built, never walked
- Note: found 28 October 2026 by a review of the code after the push of the branch, measured that day on a Linux machine with a global Playwright, (a) of the addendum of 28 October 2026 of the roadmap entry of 27 October 2026 on the tool state read by one program; the self-test had assumed that npx does not answer without Playwright in the project; built 28 October 2026, version 0.163.0, that addendum: for each of the three vendors only a package in the project's own node_modules answers, the project's node_modules/.bin/playwright run and never npx, node asked only where the project holds puppeteer-core or puppeteer and refusing a module resolved outside the project's node_modules, else the line not read with that cause; one self-test case per vendor with a package outside the project that would answer; a run is owed

### plan-work had the assumptions of a round say a line not read in the program's words, an English sentence to a person reading in their language
- Wrong: not stated
- Should: not stated
- Found: Tool state read by one program, the planning saying only what it read.
- Fix: `skills/plan-work/SKILL.md` "language and not in the program's words"
- Status: Built, never walked
- Note: found 28 October 2026 by a review of the code after the push of the branch, (b) of the addendum of 28 October 2026 of the roadmap entry of 27 October 2026 on the tool state read by one program; built 28 October 2026, version 0.163.0, that addendum: plan-work and the halt of cut-into-tasks say what is said, that the browser is needed, that whether it stands in the version needed cannot be read now and why, the cause in their language, the wording approved that day standing in the entry; the head of the program and docs/skill-conventions.md say it too; a run is owed

### plan-work listed what the planning says of a tool without the browser that does not stand in the version the project's test tool needs
- Wrong: not stated
- Should: not stated
- Found: Tool state read by one program, the planning saying only what it read.
- Fix: `skills/plan-work/SKILL.md` "test tool needs, missing on this machine as the"
- Status: Built, never walked
- Note: found 28 October 2026 by a review of the code after the push of the branch, (c) of the addendum of 28 October 2026 of the roadmap entry of 27 October 2026 on the tool state read by one program; built 28 October 2026, version 0.163.0, that addendum: a browser not found in the version the project's test tool needs is missing on this machine as a command not on the search path is, and the assumptions of the round say wording (b) of 24 October 2026 for it; a run is owed

### the step for gh not signed in named gh auth login alone, without where it is typed, what gh asks after it or how the setup goes on, D1
- Wrong: the step for gh not signed in named gh auth login alone, finding D1 of the addendum of 28 October 2026 — the steps of wording (3) in setup-project, a second window, the command, the program's instructions, their word, gh auth status read again. Built: README.md gave the two git config commands without their values and the sign-in without its command, finding D2 — the five numbered steps of wording (5) in README.md. Built: the identity guard's message handed the two git config commands over bare, finding D3 — the last sentence of text 7 as approved on 28 October 2026, the two commands with ! in front, NAME and ADDRESS. Built: after their word setup-checks read a class's tool in the installer's folder alone, finding D4 — both lines of bin/devloop-tool-state --installed read, the class set up where the search path reaches the tool, else the steps of wording (10). Built: an issue on a no carried the command alone and the next start left it open with no word on the folder, finding D5 — bin/devloop-install-issues reads the folder beside the search path and prints folder:, and the run says wording (11) with the steps. Built: the install guard's message said the path the command writes to is what decides, finding D6 — the message says the folder decides whether the command installed and the search path whether the build can use it, and where they type the command.
- Should: not stated
- Found: Handovers say where the command is typed, sign-in and identity in steps.
- Fix: `skills/setup-project/SKILL.md` "Stop, and say how they sign in, step by step"
- Status: Built, never walked
- Note: found 28 October 2026 by the addendum of the roadmap entry of that date on the hook on SubagentStart, in its search for every text that tells the person to do something at the computer without saying how, recorded there as a finding; concerns milestone 3 by the dated sentences of docs/plan.md under it; should: the steps as typed, in order, a second terminal window, gh auth login --web --git-protocol https, the program's own instructions, their word here, the setup going on, gh auth status read again; built 28 October 2026, version 0.165.0, the roadmap entry of that date on the handover steps, wording (3); a run pending

### README.md gave the two git config commands without the value each takes and the sign-in of gh without its command, D2
- Wrong: README.md gave the two git config commands without their values and the sign-in without its command, finding D2 — the five numbered steps of wording (5) in README.md. Built: the identity guard's message handed the two git config commands over bare, finding D3 — the last sentence of text 7 as approved on 28 October 2026, the two commands with ! in front, NAME and ADDRESS. Built: after their word setup-checks read a class's tool in the installer's folder alone, finding D4 — both lines of bin/devloop-tool-state --installed read, the class set up where the search path reaches the tool, else the steps of wording (10). Built: an issue on a no carried the command alone and the next start left it open with no word on the folder, finding D5 — bin/devloop-install-issues reads the folder beside the search path and prints folder:, and the run says wording (11) with the steps. Built: the install guard's message said the path the command writes to is what decides, finding D6 — the message says the folder decides whether the command installed and the search path whether the build can use it, and where they type the command.
- Should: not stated
- Found: Handovers say where the command is typed, sign-in and identity in steps.
- Fix: `README.md` "You need a GitHub account, the GitHub CLI `gh` signed in to it, and git with"
- Status: Recorded, not built
- Note: found 28 October 2026 by the addendum of the roadmap entry of that date on the hook on SubagentStart, in its search for every text that tells the person to do something at the computer without saying how, recorded there as a finding; concerns milestone 3 by the dated sentences of docs/plan.md under it; should: each command as it is typed with the place of its value, the noreply address built from gh api user, and gh auth login --web --git-protocol https, in a terminal, in that order; built 28 October 2026, version 0.165.0, the roadmap entry of that date on the handover steps, wording (5), in README.md, which section D of the tool's head counts as recorded since the evidence lies in README.md; a run pending; step 4 ends on the sentence on older accounts without a date since the commit after the decisions after the push, the first sentence having gone red at the step README.md carries no date

### the identity guard's message handed the two git config commands over bare, without the value each takes and without where they are typed, D3
- Wrong: the identity guard's message handed the two git config commands over bare, finding D3 — the last sentence of text 7 as approved on 28 October 2026, the two commands with ! in front, NAME and ADDRESS. Built: after their word setup-checks read a class's tool in the installer's folder alone, finding D4 — both lines of bin/devloop-tool-state --installed read, the class set up where the search path reaches the tool, else the steps of wording (10). Built: an issue on a no carried the command alone and the next start left it open with no word on the folder, finding D5 — bin/devloop-install-issues reads the folder beside the search path and prints folder:, and the run says wording (11) with the steps. Built: the install guard's message said the path the command writes to is what decides, finding D6 — the message says the folder decides whether the command installed and the search path whether the build can use it, and where they type the command.
- Should: not stated
- Found: Handovers say where the command is typed, sign-in and identity in steps.
- Fix: `hooks/pre-tool-use-identity-guard.sh` "then hand the user the two commands to type here in Claude Code, each with"
- Status: Built, never walked
- Note: found 28 October 2026 by the addendum of the roadmap entry of that date on the hook on SubagentStart, in its search for every text that tells the person to do something at the computer without saying how, recorded there as a finding; concerns milestone 3 by the dated sentences of docs/plan.md under it; should: the message names them as typed with the place of each value, where they are typed, and that the commit is made again after both stand; built 28 October 2026, version 0.165.0, the roadmap entry of that date on the handover steps, the last sentence of text 7 as approved on 28 October 2026, the two commands with ! in front in Claude Code, NAME and ADDRESS; a run pending

### after their word setup-checks read a class's tool in the installer's folder alone, so that a tool in a folder the search path does not reach was set up and the chain could not call it, with no word to the person, D4
- Wrong: after their word setup-checks read a class's tool in the installer's folder alone, finding D4 — both lines of bin/devloop-tool-state --installed read, the class set up where the search path reaches the tool, else the steps of wording (10). Built: an issue on a no carried the command alone and the next start left it open with no word on the folder, finding D5 — bin/devloop-install-issues reads the folder beside the search path and prints folder:, and the run says wording (11) with the steps. Built: the install guard's message said the path the command writes to is what decides, finding D6 — the message says the folder decides whether the command installed and the search path whether the build can use it, and where they type the command.
- Should: not stated
- Found: Handovers say where the command is typed, sign-in and identity in steps.
- Fix: `skills/setup-checks/SKILL.md` "Where the first line says found and the second not found, say so and say"
- Status: Built, never walked
- Note: found 28 October 2026 by the addendum of the roadmap entry of that date on the hook on SubagentStart, in its search for every text that tells the person to do something at the computer without saying how, recorded there as a finding; concerns milestone 3 by the dated sentences of docs/plan.md under it; should: read with bin/devloop-tool-state --installed, both lines, and where the second says not found say the steps that put the folder on the search path, the class set up once the search path reaches the tool; built 28 October 2026, version 0.165.0, the roadmap entry of that date on the handover steps, wordings (7) and (10); a run pending

### an issue on a no carried the command alone and the next start, reading the search path, left it open with no word on the folder the command installed into, D5
- Wrong: an issue on a no carried the command alone and the next start left it open with no word on the folder, finding D5 — bin/devloop-install-issues reads the folder beside the search path and prints folder:, and the run says wording (11) with the steps. Built: the install guard's message said the path the command writes to is what decides, finding D6 — the message says the folder decides whether the command installed and the search path whether the build can use it, and where they type the command.
- Should: not stated
- Found: Handovers say where the command is typed, sign-in and identity in steps.
- Fix: `bin/devloop-install-issues` "if not stands and line.startswith(tool + ": not found on the search path"):"
- Status: Built, never walked
- Note: found 28 October 2026 by the addendum of the roadmap entry of that date on the hook on SubagentStart, in its search for every text that tells the person to do something at the computer without saying how, recorded there as a finding; concerns milestone 3 by the dated sentences of docs/plan.md under it; should: the next start reads --installed with the issue's command beside --build, and where the folder line says found and the search-path line not found says the steps with the issue named, the issue staying open; built 28 October 2026, version 0.165.0, the roadmap entry of that date on the handover steps, wording (11), the folder line of bin/devloop-install-issues and the text of shared/install-issues-read.md on it; the narrowing the entry of 28 October 2026 on the hook on SubagentStart records, objection O2 of the report of 27 October 2026, stands, the search path alone closing the issue; a run pending

### the install guard's message said the path the command writes to is what decides and the run picks up once the tool stands there, while the build since 28 October 2026 reads the search path as well, D6
- Wrong: the install guard's message said the path the command writes to is what decides, finding D6 — the message says the folder decides whether the command installed and the search path whether the build can use it, and where they type the command.
- Should: not stated
- Found: Handovers say where the command is typed, sign-in and identity in steps.
- Fix: `hooks/pre-tool-use-install-guard.sh` "and say where they type it: in Claude Code with ! in front where it asks"
- Status: Built, never walked
- Note: found 28 October 2026 by the addendum of the roadmap entry of that date on the hook on SubagentStart, in its search for every text that tells the person to do something at the computer without saying how, recorded there as a finding; concerns milestone 3 by the dated sentences of docs/plan.md under it; should: the message says that the path decides whether the command installed and the search path whether the build can use it, the steps for the second standing in build-work step 3 point 7, and where the person types the command; built 28 October 2026, version 0.165.0, the roadmap entry of that date on the handover steps; a run pending

### with respondToBashCommands set to false the run does not answer the output of a command typed with ! by itself, so the signal of form A does not come
- Wrong: with respondToBashCommands set to false in settings.json the run does not answer the output of a command typed with ! by itself, so the signal of form A does not come
- Should: read for milestone 12 whether the setting stands, and under it say so and take form B, or hand the setting over; the vendor's page on the interactive mode, section Shell mode with ! prefix, read on 28 October 2026. Recorded, not built: in the graphical chat panel the extension for VS Code opens with, the ! shortcut is not there, the vendor's table VS Code extension vs. Claude Code CLI reading No for the extension — should: read for milestone 12 which surface the session runs on, and in the chat panel hand every command over as form B, or say that devloop runs in the terminal; with Use Terminal and with claude in the built-in terminal the CLI's surface runs, which is how the person works. Recorded, not built: the five steps for the PATH of (4) of the entry at line 40745 are written for claude started in a terminal, where under Use Terminal of the extension for VS Code Claude Code starts again through the extension and whether it then sees the new PATH is not read — should: read for milestone 12 how Claude Code is started again under Use Terminal and what PATH it then runs under, and say the steps for that surface.
- Found: Handovers say where the command is typed, sign-in and identity in steps.
- Fix: none
- Status: Recorded, not built
- Note: found 28 October 2026 by the order on the handover steps, reading the vendor's pages for rule (b), the roadmap entry of that date; concerns milestone 12 by Decision 3 of the roadmap entry of 9 October 2026 and Question 4 of that entry; should: read for milestone 12 whether the setting stands, and under it say so and take form B, or hand the setting over

### in the graphical chat panel the extension for VS Code opens with, the ! shortcut is not there, so form A has no place there
- Wrong: in the graphical chat panel the extension for VS Code opens with, the ! shortcut is not there, the vendor's table VS Code extension vs. Claude Code CLI reading No for the extension
- Should: read for milestone 12 which surface the session runs on, and in the chat panel hand every command over as form B, or say that devloop runs in the terminal; with Use Terminal and with claude in the built-in terminal the CLI's surface runs, which is how the person works. Recorded, not built: the five steps for the PATH of (4) of the entry at line 40745 are written for claude started in a terminal, where under Use Terminal of the extension for VS Code Claude Code starts again through the extension and whether it then sees the new PATH is not read — should: read for milestone 12 how Claude Code is started again under Use Terminal and what PATH it then runs under, and say the steps for that surface.
- Found: Handovers say where the command is typed, sign-in and identity in steps.
- Fix: none
- Status: Recorded, not built
- Note: found 28 October 2026 by the order on the handover steps, reading the vendor's pages for rule (b), the roadmap entry of that date; concerns milestone 12 by Decision 3 of the roadmap entry of 9 October 2026 and Question 4 of that entry; should: read for milestone 12 which surface the session runs on, and in the chat panel hand every command over as form B, or say that devloop runs in the terminal; with Use Terminal and with claude in the built-in terminal the CLI's surface runs, which is how the person works

### the five steps for the PATH are written for claude started in a terminal, and under Use Terminal of the extension for VS Code whether Claude Code then sees the new PATH is not read
- Wrong: the five steps for the PATH of (4) of the entry at line 40745 are written for claude started in a terminal, where under Use Terminal of the extension for VS Code Claude Code starts again through the extension and whether it then sees the new PATH is not read
- Should: read for milestone 12 how Claude Code is started again under Use Terminal and what PATH it then runs under, and say the steps for that surface.
- Found: Handovers say where the command is typed, sign-in and identity in steps.
- Fix: none
- Status: Recorded, not built
- Note: found 28 October 2026 by the order on the handover steps, reading the vendor's pages for rule (b), the roadmap entry of that date; concerns milestone 12 by Decision 3 of the roadmap entry of 9 October 2026 and Question 4 of that entry; should: read for milestone 12 how Claude Code is started again under Use Terminal and what PATH it then runs under, and say the steps for that surface

### for (6) to (10) the person approved form A alone and for (11) the case of a task alone, so a command that asks something there and a check class's issue in a folder outside the PATH have no approved wording
- Wrong: for (6) to (10) the person approved form A alone and for (11) the case of a task alone, so a command that asks something at those places and a check class's issue in a folder outside the PATH had no approved wording — the four wordings of (a) of the decisions after the push, in setup-checks and shared/install-issues-read.md; the merge keeps form A alone, its command asking nothing. Built: the address of (4) and of the README's step 4 is the ID form, which GitHub gives an account made after 18 July 2017 and an older one only once Keep my email address private is selected again — the run reads created_at at the same call of gh api user and says, for an account older than that day, the sentence of (d) of the decisions after the push after step 2; the last sentence of text 7 and the README's step 4 say it since that day.
- Should: not stated
- Found: Handovers say where the command is typed, sign-in and identity in steps.
- Fix: `skills/setup-checks/SKILL.md` "terminal window opened, not the one Claude Code"
- Status: Built, never walked
- Note: found 28 October 2026 by the order on the handover steps, the roadmap entry of that date; concerns milestone 3 by the dated sentences of docs/plan.md under it; should: the German versions in the report of 28 October 2026 on the handover steps, built by rule (b) and the pattern of (1) form B, put to the person; until then the skills say what is said; built 28 October 2026 after the push, version 0.165.0, (a) of the decisions after the push in the roadmap entry of that date on the handover steps, the four wordings approved; a run pending

### the noreply address of (4) and of the README's step 4 is the ID form, which an account made before 18 July 2017 with the setting enabled before that day does not have until the setting is selected again
- Wrong: the address of (4) and of the README's step 4 is the ID form, which GitHub gives an account made after 18 July 2017 and an older one only once Keep my email address private is selected again — the run reads created_at at the same call of gh api user and says, for an account older than that day, the sentence of (d) of the decisions after the push after step 2; the last sentence of text 7 and the README's step 4 say it since that day.
- Should: not stated
- Found: Handovers say where the command is typed, sign-in and identity in steps.
- Fix: `hooks/pre-tool-use-identity-guard.sh` "where created_at of that same call lies before 18 July 2017, say after"
- Status: Built, never walked
- Note: found 28 October 2026 by the order on the handover steps, reading GitHub's reference on email addresses, the roadmap entry of that date; concerns milestone 3 by the dated sentences of docs/plan.md under it; should: the run reads the address GitHub holds for the account where the API gives it, else builds the ID form and says that an older account gets the ID form by selecting Keep my email address private again; the wording unchanged until the person decides; built 28 October 2026 after the push, version 0.165.0, (d) of the decisions after the push in the roadmap entry of that date on the handover steps, created_at read at the same call, the sentence after step 2, text 7 and the README; a run pending; the README's sentence without a date since the commit after, the first having gone red at the step README.md carries no date on pull request #211, the roadmap entry on the handover steps, (d) of its decisions after the push

### after the person's no the run answered their ! brew install yq in the same session, read the tool with --installed, ran bin/devloop-install-issues inside step 3, which closed the issue with a comment naming a start that did not happen, and built, so that the next start never walked
- Wrong: after the person's no the run answered their ! brew install yq in the same session, read the tool with --installed, ran bin/devloop-install-issues inside step 3, which closed the issue with a comment naming a start that did not happen, and built, so that the next start never walked
- Should: one signal per state as decided on 27 and 28 October 2026, the run answering an install typed with ! after a no with one line, that the tool stands and that /devloop:start-work closes the issue and builds the task, and building nothing before that start, unless the person decides that such an output is a signal in the session too, the comment then naming no start; milestone 3. **2. The reader refuses every `$'\xHH'`.** `ac4d47c8` #172 to #174: a harmless experiment of the build subagent with `grep -c $'\x1b'` blocked by the table guard under `onFailure: block`, `hooks/hooks.json` line 11, the reader having ended with exit 2. `bin/devloop-command-reader` line 2297 hands the two hex digits of a `\x` escape in an ANSI-C string to `hex`, line 2060, which takes four and ends with the message written for JSON; measured at `bc69673`, `echo $'\x1b'` and `echo $'\x41'` refused, `echo $'\n'` and `printf '\x1b'` read; no case of the self-test carries `$'\x`. Thirteen hooks read through the reader, six of them PreToolUse guards that block under `onFailure: block`. The table guard's own rule, a `git commit` with a cell in no allowed form, had nothing to do with it. The builder reported it, #1231, and #1435 said it to the person. Recorded, not built: bin/devloop-command-reader line 2297 hands the two hex digits of a \x escape in an ANSI-C string to hex, which takes four, so every command carrying $'\xHH' ends the reader with exit 2 and the message meant for JSON, and the six PreToolUse guards block the call, the table guard blocking an experiment of the build subagent at ac4d47c8 #174 — should: \xHH decoded with its one or two digits as bash reads it, a case in the self-test, and a text the reader cannot take apart printed as parsed no with the reason, the outcome its head names, not an exit that blocks; milestone 3. **3. A review lens wrote into the project and ended processes.** `a74cb87c`, the failure lens of round 1, prompt #572 "Read-only: edit/write nothing": its #43 `cd` into a temp directory failed, „not a directory“, and the command went on in `~/devloop-test-aa`, writing the project's `links.config.yaml` with 60,000 patterns; its #52 "My misdirected command overwrote the repo's tracked file"; its #53 `git checkout -- links.config.yaml`; its #61 `pkill -f links-config.sh`, which ends every process on the machine whose command line carries the name. The main run knew, #691, #746 and #1247, and said nothing of it to the person, #1115 and #1498. `review-changes` says what a lens reads and that a guard is answered, expanded 315, and nowhere where a lens runs an experiment or what a lens that changed the tree says. Recorded, not built: the failure lens of round 1 overwrote links.config.yaml in the project after a failed cd, restored it with git checkout and ended every process matching links-config.sh with pkill, and the main run said nothing of it to the person — should: a lens runs nothing with the project as working directory that could write there, its experiments in a copy under mktemp -d, says in its report where it wrote into the project all the same, which the main run says to the person at the next message that ends a turn with text, and ends no process it did not start; milestone 3.
- Found: Run under a no read off its log, the ! after the no taken up at once.
- Fix: `skills/build-work/SKILL.md` "where they type the command here"
- Status: Built, never walked
- Note: found 29 October 2026 by the order reading the run with the person under a no of that day off its session log and the logs of its subagents, the roadmap entry of that date on the run under a no, the records in its paragraph; concerns skills/build-work/SKILL.md lines 690 and 780, expanded 1466 and 1710, and bin/devloop-install-issues line 294; should: one signal per state as decided on 27 and 28 October 2026, the run answering an install typed with ! after a no with one line, that the tool stands and that /devloop:start-work closes the issue and builds the task, and building nothing before that start, unless the person decides that such an output is a signal in the session too, the comment then naming no start; milestone 3; built 30 October 2026, version 0.166.0, the roadmap entry of that date on the install, the person's decision of that day: the second reading chosen, the ! after a no a signal in this session, read with --installed, the issue closed by bin/devloop-install-issues --after-install, whose comment names the install typed in the session and no start, build-work step 3 The task itself and shared/install-tool.md; a short run of the closing at the next start and of the way over ! after a no pending; version 0.165.0, in the note since 31 October 2026 as the entry of 29 October 2026 says of these rows

### bin/devloop-command-reader line 2297 hands the two hex digits of a \x escape in an ANSI-C string to hex, which takes four, so every command carrying $'\xHH' ends the reader with exit 2 and the message meant for JSON, and the six PreToolUse guards block the call, the table guard blocking an experiment of the build subagent at ac4d47c8 #174
- Wrong: bin/devloop-command-reader line 2297 hands the two hex digits of a \x escape in an ANSI-C string to hex, which takes four, so every command carrying $'\xHH' ends the reader with exit 2 and the message meant for JSON, and the six PreToolUse guards block the call, the table guard blocking an experiment of the build subagent at ac4d47c8 #174
- Should: \xHH decoded with its one or two digits as bash reads it, a case in the self-test, and a text the reader cannot take apart printed as parsed no with the reason, the outcome its head names, not an exit that blocks; milestone 3. **3. A review lens wrote into the project and ended processes.** `a74cb87c`, the failure lens of round 1, prompt #572 "Read-only: edit/write nothing": its #43 `cd` into a temp directory failed, „not a directory“, and the command went on in `~/devloop-test-aa`, writing the project's `links.config.yaml` with 60,000 patterns; its #52 "My misdirected command overwrote the repo's tracked file"; its #53 `git checkout -- links.config.yaml`; its #61 `pkill -f links-config.sh`, which ends every process on the machine whose command line carries the name. The main run knew, #691, #746 and #1247, and said nothing of it to the person, #1115 and #1498. `review-changes` says what a lens reads and that a guard is answered, expanded 315, and nowhere where a lens runs an experiment or what a lens that changed the tree says. Recorded, not built: the failure lens of round 1 overwrote links.config.yaml in the project after a failed cd, restored it with git checkout and ended every process matching links-config.sh with pkill, and the main run said nothing of it to the person — should: a lens runs nothing with the project as working directory that could write there, its experiments in a copy under mktemp -d, says in its report where it wrote into the project all the same, which the main run says to the person at the next message that ends a turn with text, and ends no process it did not start; milestone 3.
- Found: Run under a no read off its log, the ! after the no taken up at once.
- Fix: `bin/devloop-command-reader` "else if (c2 == "x" && P <= N"
- Status: Built, never walked
- Note: found 29 October 2026 by the order reading the run with the person under a no of that day off its session log and the logs of its subagents, the roadmap entry of that date on the run under a no, the records in its paragraph; concerns bin/devloop-command-reader lines 2060 and 2297 and hooks/hooks.json lines 9 to 14; measured at bc69673 with echo $'\x1b' and echo $'\x41' refused and echo $'\n' read; should: \xHH decoded with its one or two digits as bash reads it, a case in the self-test, and a text the reader cannot take apart printed as parsed no with the reason, the outcome its head names, not an exit that blocks; milestone 3; built 30 October 2026, version 0.166.0, the roadmap entry of that date on the install, the person's decision of that day: read_ansi after the manual's list, thirteen cases; a \u or \U above 10FFFF ends with exit 2 naming the escape and not as parsed no, since bash runs such a command; version 0.165.0, in the note since 31 October 2026 as the entry of 29 October 2026 says of these rows

### the failure lens of round 1 overwrote links.config.yaml in the project after a failed cd, restored it with git checkout and ended every process matching links-config.sh with pkill, and the main run said nothing of it to the person
- Wrong: the failure lens of round 1 overwrote links.config.yaml in the project after a failed cd, restored it with git checkout and ended every process matching links-config.sh with pkill, and the main run said nothing of it to the person
- Should: a lens runs nothing with the project as working directory that could write there, its experiments in a copy under mktemp -d, says in its report where it wrote into the project all the same, which the main run says to the person at the next message that ends a turn with text, and ends no process it did not start; milestone 3.
- Found: Run under a no read off its log, the ! after the no taken up at once.
- Fix: none
- Status: Recorded, not built
- Note: found 29 October 2026 by the order reading the run with the person under a no of that day off its session log and the logs of its subagents, the roadmap entry of that date on the run under a no, the records in its paragraph; concerns skills/review-changes/SKILL.md, which says nowhere where a lens runs an experiment or what a lens that changed the tree says, and skills/build-work/SKILL.md step 4; the records a74cb87c #43, #52, #53 and #61 and the main log #691, #1115 and #1498; should: a lens runs nothing with the project as working directory that could write there, its experiments in a copy under mktemp -d, says in its report where it wrote into the project all the same, which the main run says to the person at the next message that ends a turn with text, and ends no process it did not start; milestone 3; version 0.165.0, in the note since 31 October 2026 as the entry of 29 October 2026 says of these rows

### at the next start the main run read the tool itself with command -v and sent gh issue close for the install issue with a comment of its own, in start-work before the program, and only Claude Code's classifier refusing it left the closing to bin/devloop-install-issues
- Wrong: at the next start the main run read the tool itself with command -v and sent gh issue close for the install issue with a comment of its own, in start-work before the program, and only Claude Code's classifier refusing it left the closing to bin/devloop-install-issues
- Should: an install issue is closed by bin/devloop-install-issues alone and a tool read by bin/devloop-tool-state alone, and start-work says, where its in-flight report meets an open issue carrying install-tool and install-command, that the build's start reads and closes it with the program and nothing is closed in start-work; milestone 3. **2. The merge handed over for an armed pull request, twice, with a false word on who merged.** #146 after a loop of twenty reads, 10:14:26 to 10:19:41, and one more at #140, the check green since 10:15:27Z, CLEAN, armed: the `! gh pr merge 70 …` line with „Auto-Merge war angenommen, aber GitHub hat ihn auch nach über fünf Minuten nicht gemerged“; GitHub merged at 10:20:21Z, nine seconds after the handover and four minutes 54 seconds after the check. #1066 after `gh pr checks --watch` at #1042, the pass at 55 seconds, and one read at #1060, 32 seconds after the check: „Genauso hing es vorhin beim Pull Request „Refresh the setup to 0.166.0", den du dann von Hand gemerged hast“ — GitHub had merged #70 before the person's command, whose output read „already merged“, #150, and the run had read `MERGED 2026-10-30T10:20:21Z` itself at #162; GitHub merged #77 at 12:09:28Z, eight seconds after the handover. Both handovers named auto-merge, which `shared/merge-handover.md` lines 9 to 15 keep out of the sentence. The shared text names three cases, lines 9 to 21, no gate, a gate with auto-merge off, a gate with auto-merge on and the pull request past it; an armed pull request not yet merged is none of them, and step 6 attended says what is said then, expanded 2659 to 2663, with "The checks going green is not the merge. GitHub merges after them … Read the platform, and read it again across the next few minutes", 2702 to 2705. Searched: `grep -n -i 'poll in a loop\|handed the merge over while\|armed.*handed over' docs/roadmap.md`, the attended rule quoted at line 2341 and line 28069 on the wait, no defect. Not the install path; whether milestone 3, the person decides. Recorded, not built: with the person there the run read an armed pull request twenty times in a loop and then handed the merge over with the ! line and a sentence naming auto-merge, twice, GitHub merging within ten seconds of each handover and before the person's command, and the second handover said the person had merged the first pull request by hand where GitHub had — should: with the person there the run reads once after arming and, where not merged, says what it waits on and offers the next step, as the second session did; the merge handover is given in its three cases alone and never for an armed pull request; and who merged is read off the platform, never off the person's command. **3. The prompt to the build subagent carries the run's own on installing.** As under (b): #598 and s2 #107 against `build-work` expanded 1245 to 1262, the rule built on 30 October 2026 and not held in its first run. No mechanism holds the prompt's content; the hook's rule outranks it, and neither subagent installed anything. Milestone 3, the rest of new defect 6 of the entry at line 38963. Recorded, not built: the prompts to both build subagents said install nothing, the install record says no, you install nothing, no stand-ins and that yq is installed, beside a tool line and the record line, where the fifth rule of step 3 has the program's lines and nothing of the run's own on installing — should: the prompt carries the lines of bin/devloop-tool-state --build and nothing of the run's own on installing, as the rule says, or the person decides that the hook's rule, which every subagent gets and which outranks the prompt, makes the prompt's words a small matter; milestone 3. **4. A decision the spec did not take, taken by the main run alone.** The builder `aaf2940c` stopped on `mmdc` 12.0.0 refusing `--pdfFit`, its #99 and #109, „I need a decision from you“; the main run read `mmdc -h`, s2 #127, chose option A, s2 #145, and told the person afterwards, s2 #149, „Ich habe entschieden, `--pdfFit` wegzulassen“; their yes came at the landing question, s2 #324, after s2 #321 named the deviation. Against `build-work` expanded 806 to 816: "a task that turns out to need a decision the spec did not take is a task that is not buildable as cut. The issue carries the question and the options … labelled `raised-here` and `needs-human`, recorded as a blocker; the task is put down; step 2 takes the next", the eighth case, a choice the task rests on that the spec did not make, the spec's decision 3 having named the flag. Searched: `grep -n -i 'not buildable\|decision the spec did not take'` over the expanded skills, the hits at `build-work` 760, 810 and 1954. Not the install path. Recorded, not built: the main run decided alone to drop --pdfFit where mmdc 12.0.0 refuses it, told the person afterwards and let the build go on, where step 3 says a task that turns out to need a decision the spec did not take is not buildable as cut and gets an issue with the question and the options — should: the run raises that issue and puts the task down, as the text says, or the text says that with the person there the question is put to them before the build goes on.
- Found: Short run read off its two logs, the ! after a no and the next start.
- Fix: `skills/start-work/SKILL.md` "names before the in-flight query"
- Status: Built, never walked
- Note: found 30 October 2026 by the order reading the short run with the person under a no of that day off its two session logs and the logs of their subagents, the roadmap entry of that date on the short run, the records in its paragraph; concerns skills/start-work/SKILL.md step 2, whose in-flight report says nothing of an issue carrying install-tool and install-command, and shared/install-issues-read.md, inserted into build-work and plan-work and not into start-work; the records s2 #51, #55, #61, #64, #72, #74 and #85 of the second session's main log; should: an install issue is closed by bin/devloop-install-issues alone and a tool read by bin/devloop-tool-state alone, and start-work says, where its in-flight report meets an open issue carrying install-tool and install-command, that the build's start reads and closes it with the program and nothing is closed in start-work; milestone 3; version 0.166.0; built 30 October 2026, version 0.167.0, the roadmap entry of that date on the start reading the install issues: start-work runs the program before its in-flight query and closes nothing itself, the person's decision of that day, which has the start and not the build's start read and close the issue, where the should names the build's start; a run pending

### with the person there the run read an armed pull request twenty times in a loop and then handed the merge over with the ! line and a sentence naming auto-merge, twice, GitHub merging within ten seconds of each handover and before the person's command, and the second handover said the person had merged the first pull request by hand where GitHub had
- Wrong: with the person there the run read an armed pull request twenty times in a loop and then handed the merge over with the ! line and a sentence naming auto-merge, twice, GitHub merging within ten seconds of each handover and before the person's command, and the second handover said the person had merged the first pull request by hand where GitHub had
- Should: with the person there the run reads once after arming and, where not merged, says what it waits on and offers the next step, as the second session did; the merge handover is given in its three cases alone and never for an armed pull request; and who merged is read off the platform, never off the person's command. **3. The prompt to the build subagent carries the run's own on installing.** As under (b): #598 and s2 #107 against `build-work` expanded 1245 to 1262, the rule built on 30 October 2026 and not held in its first run. No mechanism holds the prompt's content; the hook's rule outranks it, and neither subagent installed anything. Milestone 3, the rest of new defect 6 of the entry at line 38963. Recorded, not built: the prompts to both build subagents said install nothing, the install record says no, you install nothing, no stand-ins and that yq is installed, beside a tool line and the record line, where the fifth rule of step 3 has the program's lines and nothing of the run's own on installing — should: the prompt carries the lines of bin/devloop-tool-state --build and nothing of the run's own on installing, as the rule says, or the person decides that the hook's rule, which every subagent gets and which outranks the prompt, makes the prompt's words a small matter; milestone 3. **4. A decision the spec did not take, taken by the main run alone.** The builder `aaf2940c` stopped on `mmdc` 12.0.0 refusing `--pdfFit`, its #99 and #109, „I need a decision from you“; the main run read `mmdc -h`, s2 #127, chose option A, s2 #145, and told the person afterwards, s2 #149, „Ich habe entschieden, `--pdfFit` wegzulassen“; their yes came at the landing question, s2 #324, after s2 #321 named the deviation. Against `build-work` expanded 806 to 816: "a task that turns out to need a decision the spec did not take is a task that is not buildable as cut. The issue carries the question and the options … labelled `raised-here` and `needs-human`, recorded as a blocker; the task is put down; step 2 takes the next", the eighth case, a choice the task rests on that the spec did not make, the spec's decision 3 having named the flag. Searched: `grep -n -i 'not buildable\|decision the spec did not take'` over the expanded skills, the hits at `build-work` 760, 810 and 1954. Not the install path. Recorded, not built: the main run decided alone to drop --pdfFit where mmdc 12.0.0 refuses it, told the person afterwards and let the build go on, where step 3 says a task that turns out to need a decision the spec did not take is not buildable as cut and gets an issue with the question and the options — should: the run raises that issue and puts the task down, as the text says, or the text says that with the person there the question is put to them before the build goes on.
- Found: Short run read off its two logs, the ! after a no and the next start.
- Fix: none
- Status: Recorded, not built
- Note: found 30 October 2026 by the order reading the short run with the person under a no of that day off its two session logs and the logs of their subagents, the roadmap entry of that date on the short run, the records in its paragraph; concerns skills/build-work/SKILL.md step 6, the attended wait, and shared/merge-handover.md, whose three cases the handover was given outside of; the records #119, #140, #146, #150, #162, #1042, #1060, #1066 and #1070 of the first session's main log; should: with the person there the run reads once after arming and, where not merged, says what it waits on and offers the next step, as the second session did; the merge handover is given in its three cases alone and never for an armed pull request; and who merged is read off the platform, never off the person's command; not the install path; whether milestone 3, the person decides; version 0.166.0

### the prompts to both build subagents said install nothing, the install record says no, you install nothing, no stand-ins and that yq is installed, beside a tool line and the record line, where the fifth rule of step 3 has the program's lines and nothing of the run's own on installing
- Wrong: the prompts to both build subagents said install nothing, the install record says no, you install nothing, no stand-ins and that yq is installed, beside a tool line and the record line, where the fifth rule of step 3 has the program's lines and nothing of the run's own on installing
- Should: the prompt carries the lines of bin/devloop-tool-state --build and nothing of the run's own on installing, as the rule says, or the person decides that the hook's rule, which every subagent gets and which outranks the prompt, makes the prompt's words a small matter; milestone 3. **4. A decision the spec did not take, taken by the main run alone.** The builder `aaf2940c` stopped on `mmdc` 12.0.0 refusing `--pdfFit`, its #99 and #109, „I need a decision from you“; the main run read `mmdc -h`, s2 #127, chose option A, s2 #145, and told the person afterwards, s2 #149, „Ich habe entschieden, `--pdfFit` wegzulassen“; their yes came at the landing question, s2 #324, after s2 #321 named the deviation. Against `build-work` expanded 806 to 816: "a task that turns out to need a decision the spec did not take is a task that is not buildable as cut. The issue carries the question and the options … labelled `raised-here` and `needs-human`, recorded as a blocker; the task is put down; step 2 takes the next", the eighth case, a choice the task rests on that the spec did not make, the spec's decision 3 having named the flag. Searched: `grep -n -i 'not buildable\|decision the spec did not take'` over the expanded skills, the hits at `build-work` 760, 810 and 1954. Not the install path. Recorded, not built: the main run decided alone to drop --pdfFit where mmdc 12.0.0 refuses it, told the person afterwards and let the build go on, where step 3 says a task that turns out to need a decision the spec did not take is not buildable as cut and gets an issue with the question and the options — should: the run raises that issue and puts the task down, as the text says, or the text says that with the person there the question is put to them before the build goes on.
- Found: Short run read off its two logs, the ! after a no and the next start.
- Fix: none
- Status: Recorded, not built
- Note: found 30 October 2026 by the order reading the short run with the person under a no of that day off its two session logs and the logs of their subagents, the roadmap entry of that date on the short run, the records in its paragraph; concerns skills/build-work/SKILL.md step 3, the fifth rule, built on 30 October 2026 and not held in its first run; the records #598 of the first and s2 #107 of the second session's main log; should: the prompt carries the lines of bin/devloop-tool-state --build and nothing of the run's own on installing, as the rule says, or the person decides that the hook's rule, which every subagent gets and which outranks the prompt, makes the prompt's words a small matter; milestone 3; version 0.166.0; the bench of 30 October 2026, the roadmap entry of that date on the start reading the install issues, (2): the hook's rule won against a contradicting sentence in the prompt in 3 of 3 sessions, 6 of 6 subagents read point 7 through the rule's command and went to install as it says, 5 installs passing the guard and one refused by Claude Code's classifier and taken as the texts say; whether this defect is a small matter the person decides on that

### the main run decided alone to drop --pdfFit where mmdc 12.0.0 refuses it, told the person afterwards and let the build go on, where step 3 says a task that turns out to need a decision the spec did not take is not buildable as cut and gets an issue with the question and the options
- Wrong: the main run decided alone to drop --pdfFit where mmdc 12.0.0 refuses it, told the person afterwards and let the build go on, where step 3 says a task that turns out to need a decision the spec did not take is not buildable as cut and gets an issue with the question and the options
- Should: the run raises that issue and puts the task down, as the text says, or the text says that with the person there the question is put to them before the build goes on.
- Found: Short run read off its two logs, the ! after a no and the next start.
- Fix: none
- Status: Recorded, not built
- Note: found 30 October 2026 by the order reading the short run with the person under a no of that day off its two session logs and the logs of their subagents, the roadmap entry of that date on the short run, the records in its paragraph; concerns skills/build-work/SKILL.md step 3, the eighth case under how to ask, a task that turns out to need a decision the spec did not take; the records aaf2940c #99 and #109 and s2 #127, #145, #149, #321 and #324 of the second session's main log; should: the run raises that issue and puts the task down, as the text says, or the text says that with the person there the question is put to them before the build goes on; not the install path; version 0.166.0

### bin/devloop-tool-state says of pip that it is none of the ten installers it reads, and nothing of --user or the interpreter
- Wrong: bin/devloop-tool-state says of pip that it is none of the ten installers it reads, and nothing of --user or the interpreter.
- Should: not stated
- Found: Sixteen entries held, milestone 3 reached, the workflow steps run here.
- Fix: none
- Status: Recorded, not built
- Note: found 31 October 2026 by the audit after milestone 3, the roadmap entry of that date; said wrongly in a dated entry, the entry at line 40175, lines 40266 to 40267, said right in the entry of 31 October 2026 on its status line; version 0.168.0

### setup-checks step 4 names the terminal alone for an install the person made, where step 3 and build-work say both forms
- Wrong: setup-checks step 4 names the terminal alone for an install the person made, where step 3 and build-work say both forms.
- Should: not stated
- Found: Sixteen entries held, milestone 3 reached, the workflow steps run here.
- Fix: none
- Status: Recorded, not built
- Note: found 31 October 2026 by the audit after milestone 3, the roadmap entry of that date; said wrongly in a dated entry, the entry at line 41228, lines 41283 to 41286, said right in the entry of 31 October 2026 on its status line; version 0.168.0

### the three defect rows of the entry on the run under a no carry the version 0.165.0 in their notes since 31 October 2026
- Wrong: the three defect rows of the entry on the run under a no carry the version 0.165.0 in their notes since 31 October 2026.
- Should: not stated
- Found: Sixteen entries held, milestone 3 reached, the workflow steps run here.
- Fix: none
- Status: Recorded, not built
- Note: found 31 October 2026 by the audit after milestone 3, the roadmap entry of that date; said wrongly in a dated entry, the entry at line 41887, line 42273, said right in the entry of 31 October 2026 on its status line; version 0.168.0

### the two setup skills say the gate's binding could not be determined where a side did not answer, without the exception for a side that binds
- Wrong: the two setup skills say the gate's binding could not be determined where a side did not answer, without the exception for a side that binds
- Should: setup-checks step 8 and setup-project step 7 say the reading build-work says, one side binding deciding, and could not be determined only where none binds and a side did not answer.
- Found: Sixteen entries held, milestone 3 reached, the workflow steps run here.
- Fix: `skills/setup-checks/SKILL.md` "gate binds where a side answered with a gate"
- Status: Built, never walked
- Note: found 31 October 2026 by the audit after milestone 3, the roadmap entry of that date; wrong outside docs/, the two setup skills on the gate's binding, recorded and not built; found after the decision that milestone 3 is reached, which milestone takes it up the person decides; version 0.168.0; built 31 October 2026, version 0.169.0, the roadmap entry of that date on the follow-up after milestone 3, in skills/setup-checks/SKILL.md step 8, the sentence after the yes of the question below says whether a protection is added, where the evidence stands, and in skills/setup-project/SKILL.md step 4, question 2, the bullet on putting the two sides together, which the status line names as step 7; both say the reading build-work gives start condition 2 and bin/devloop-start-conditions reads, one side binding deciding, not established only where no answer showed a gate that binds and a query that could show one did not answer

### pipx environment writes a log file under the user's log folder at every call of the guard and of the tool-state program
- Wrong: pipx environment writes a log file under the user's log folder at every call of the guard and of the tool-state program
- Should: a query that writes nothing, or the folder read off PIPX_BIN_DIR and pipx's documented default without a call, the person deciding which.
- Found: Sixteen entries held, milestone 3 reached, the workflow steps run here.
- Fix: none
- Status: Recorded, not built
- Note: found 31 October 2026 by the audit after milestone 3, the roadmap entry of that date; wrong outside docs/, the query pipx environment, which writes a log, recorded and not built; found after the decision that milestone 3 is reached, which milestone takes it up the person decides; version 0.168.0; measured 31 October 2026 under a fresh HOME on this Mac with pipx 1.17.6: twelve calls of the query left eleven files in Library/Logs/pipx, ten old beside the current, as pipx's _setup_log_file keeps PIPX_MAX_LOGS files and then writes the current, where the documentation says the count includes the current command's, default 10; a decision to leave the query as it is, a small matter by decision (9) of 24 October 2026, was proposed that day and not recorded, since the order of that day said to halt where more than ten files stand; the should stands; the person decides; the roadmap entry of that date on the follow-up after milestone 3; decided on 1 November 2026 by the person, decision (6) of the roadmap entry of 31 October 2026 on the follow-up after milestone 3: not built, the query stays, the defect a small matter by decision (9) of 24 October 2026, since the guard reads where pipx really installs off pipx itself and pipx bounds its own log folder, eleven files after twelve calls and no more, 403 bytes each, where npm has a switch for its log and pipx none; the should of the status line, a query that writes nothing or the folder read without a call, the person deciding which, decided so, neither; no milestone

### the entry on the audit after milestone 3 names setup-checks lines 1013 to 1015 for the sentence on a side that did not answer, where it stands on 1017 to 1019
- Wrong: the entry on the audit after milestone 3 names setup-checks lines 1017 to 1019 for the sentence on a side that did not answer.
- Should: not stated
- Found: Binding side decides in the setup skills, run-workflow tested on GitHub.
- Fix: none
- Status: Recorded, not built
- Note: found 31 October 2026 by the order on the follow-up after milestone 3, the roadmap entry of 31 October 2026 on the follow-up after milestone 3; mended in the document on the evidence line, recorded and not built, as a document reads; the sentence stands on 1017 to 1019 of skills/setup-checks/SKILL.md at 628d166 as at 8053282; version 0.169.0

### on macos-latest the self-test of bin/devloop-bounded hung in its case of a fetch over a transport that never answers, a sleep of the transport left alive, the job stopped at fifteen minutes
- Wrong: on macos-latest the self-test of `bin/devloop-bounded` hung on 1 November 2026 in its case of a fetch over a transport that never answers, after the case "does not end" had passed, a `sleep` of the transport left alive holding the self-test's pipe until the job hooks on every system was stopped at fifteen minutes, once in 25 runs of the job on that system, the cause not measured
- Should: in milestone 12 the self-test of `bin/devloop-bounded` ends on every system within its bound.
- Found: Binding side decides in the setup skills, run-workflow tested on GitHub.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the platform's run of the checks of pull request #217, run 41284271866, the job hooks on every system stopped at fifteen minutes on macos-latest, the self-test of bin/devloop-bounded standing past its case does not end from 07:19:07 to 07:33:54 UTC, an orphan sleep ended by the platform at the end of the job; the first halt on macOS in 25 runs of the step there since 23 October 2026, the 24 before it green; a defect of its own beside the Windows defect of 23 October 2026, whose should names Windows with Git Bash and whose halt stood inside the case does not end, which passed here; assigned to milestone 12; the cause not measured, nothing built; the roadmap entry of 31 October 2026 on the follow-up after milestone 3, its paragraph of 1 November 2026

### devloop takes an answer Claude Code sent by itself when the question timeout ran out for the person's answer
- Wrong: devloop takes an answer that Claude Code sent by itself when the time askUserQuestionTimeout sets ran out for the person's answer, no text, hook or program of devloop reading the field afkTimeoutMs that marks such an answer
- Should: an answer carrying afkTimeoutMs counts as not given, nothing of it is written down as the person's decision, and the run treats the question as one left unanswered.
- Found: Question timeout answers recorded as a defect, auto memory turned off.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 reading Claude Code's documentation, no run having met it, the setting not set on this Mac; recorded and not built; which milestone takes it up the person decides; version 0.169.0; the roadmap entry of 1 November 2026 on the question timeout and the auto memory

### on alpine the self-test of bin/devloop-bounded failed its case ends in time with 3, the watchdog's sleep still found by pgrep after the program had returned
- Wrong: on alpine the self-test of `bin/devloop-bounded` failed on 1 November 2026 in its case "ends in time with 3", the watchdog's `sleep 7339` still found by `pgrep` after the program had returned, once, the cause not measured
- Should: in milestone 12, on every system, nothing the bound started runs on once `bin/devloop-bounded` has returned, and its self-test finds it so.
- Found: Question timeout answers recorded as a defect, auto memory turned off.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the platform's run of the checks of pull request #218, run 41313385410, the job hooks on every system red on alpine, FAIL ends in time with 3: nothing of the bound runs on, a process matching sleep 7339 still running at 13:53:09 UTC, every other part of the step green; seen once; read off the code and not measured: the watchdog's trap ends its sleep without waiting for it, and a signal between the start of the sleep and s=$! leaves the sleep running; assigned to milestone 12; the cause not measured, nothing built; version 0.169.0; the roadmap entry of 1 November 2026 on the question timeout and the auto memory

### not every note the audit after milestone 3 changed says until when it read otherwise
- Wrong: not every note the audit after milestone 3 changed says until when it read otherwise.
- Should: not stated
- Found: Four entries held, rationale points completed, two questions answered.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the consistency audit of that day, the roadmap entry of that date on the four entries held; said wrongly in a dated entry, said right on its status line here

### the self-test of scripts/devloop-run-workflow reads two of the three runner variables and never produces the shell that could not be started
- Wrong: the self-test of scripts/devloop-run-workflow reads two of the three runner variables and never produces the shell that could not be started.
- Should: not stated
- Found: Four entries held, rationale points completed, two questions answered.
- Fix: none
- Status: Recorded, not built
- Note: found 1 November 2026 by the consistency audit of that day, the roadmap entry of that date on the four entries held; said wrongly in a dated entry, said right on its status line here

### setup-checks step 6 keeps the rule on what the checks do not cover without its case
- Wrong: setup-checks step 6 keeps the rule on what the checks do not cover without its case.
- Should: not stated
- Found: Four entries held, rationale points completed, two questions answered.
- Fix: `skills/setup-checks/SKILL.md` "earlier table. Every line in that section has to be true of the table as it"
- Status: Built, never walked
- Note: found 1 November 2026 by the consistency audit of that day, the roadmap entry of that date on the four entries held; the history taken out on the evidence line, which reads built; version 0.171.0

### build-work step 6 gives a short reason for naming no refusal case off an unplaceable state, without how the cases came to be
- Wrong: build-work step 6 gives a short reason for naming no refusal case off an unplaceable state, without how the cases came to be.
- Should: not stated
- Found: Four entries held, rationale points completed, two questions answered.
- Fix: `skills/build-work/SKILL.md` "about the repository, and picking a case off it names a cause nobody read."
- Status: Built, never walked
- Note: found 1 November 2026 by the consistency audit of that day, the roadmap entry of that date on the four entries held; the history taken out on the evidence line, which reads built; version 0.171.0

### setup-checks step 8 sends two issues whose commands ask to text and says nothing of two in doubt, which pass the bound as well
- Wrong: setup-checks step 8 sends two issues whose commands ask to text and says nothing of two in doubt, which pass the bound as well
- Should: two issues in form B, whose commands ask or may ask, are asked as text.
- Found: Four entries held, rationale points completed, two questions answered.
- Fix: `skills/setup-checks/SKILL.md` "commands ask or may ask, they pass it"
- Status: Built, never walked
- Note: found 1 November 2026 by the consistency audit of that day, the roadmap entry of that date on the four entries held; asked of the person in the entry, not built; the should as its status line says; built 2 November 2026, version 0.171.0, the paragraph of that day in the same entry, in skills/setup-checks/SKILL.md step 8, the sentence on the bound, where the evidence now stands; the answer follows from decision (1) of 1 November 2026 in the entry at 44909 and was not put to the person

### the approved wording of form B after a no in build-work names nothing the command asks, where shared/skill-name.md has form B name it
- Wrong: the approved wording of form B after a no in build-work names nothing the command asks, where shared/skill-name.md has form B name it
- Should: the person decides whether the wording names it.
- Found: Four entries held, rationale points completed, two questions answered.
- Fix: `skills/build-work/SKILL.md` "with what the command asks, in doubt what"
- Status: Built, never walked
- Note: found 1 November 2026 by the consistency audit of that day, the roadmap entry of that date on the four entries held; asked of the person in the entry, not built; the should as its status line says; built 2 November 2026, version 0.171.0, the wording approved by the person that day, the paragraph of that day in the same entry, in skills/build-work/SKILL.md step 3, the message after a no under form B, where the evidence now stands
