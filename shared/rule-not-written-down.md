**A finding that no written rule would have caught is a gap in the documents,
not only a defect in this code.** As each finding is announced under fix,
file or the check setup, say in the same breath whether the rule it breaks is already written: in
`docs/agents/standards.md`, in a command `docs/agents/checks.md` runs, or in
the task's own issue, which is the case named above. Where one of them carries
it, nothing is added to them — the documents are not what failed. Where none
does, and a sentence can be written that names a situation this project's code
will meet again and what is done in it, write it as one rule into
`docs/agents/standards.md`, in the same change as the fix, so that the next
review reads a breach of a written rule rather than judging it again. Two
sentences fail that test and are not written: the fix restated — this file,
this function, this line — which holds for nothing but this diff; and a
sentence naming no situation of this project — handle every error, no dead
code — which the standards lens reads for without being told. What is written
is a sentence a later diff can be held against and answered yes or no, and it
occupies one line of the file, however long: the exits below ask git and the
tracker about a rule by its text, and a sentence broken over two lines is
found by neither. A reason the rule needs stands on that line after it; the
story of how it was found does not, it is in the change that carried the fix. A
finding filed because it would revisit a decision writes no rule either: the
sentence would settle at the close the question the issue was filed to keep
open. Nor does one handed to the check setup: its object is the check table,
which that skill writes under rules of its own.

**Unattended this does not fall away.** With nobody there it is the only way a
rule ever reaches the file, and the judgement that a finding is too small to be
worth a rule is made by the run that produced it. Measured on 26 September 2026
across the six bench projects: every standards file carried only the sentence
written when it was created, and in `devloop-test-o` that sentence said the
repository had no code, 36 landed pull requests in.

**Writing into that file is also reading the whole of it.** Every rule there is
read again on every review, so before adding, take out a rule a command now
enforces, a rule about code that no longer exists, and a rule that has stood
on the main branch for more than ten landed pull requests without an issue
filed for a breach of it, and say what came out, which one and by which exit —
or that nothing did. Where the file still carries the line written at setup
saying no rules have been recorded yet, that line goes with the first rule
written. The file keeps the language it is already written in, whatever
language the user writes in: the lens that reads it is handed the file and not
this conversation.

**The third exit is computed, never judged, on `origin/main` after a fetch.**
The age: the commit that introduced the rule's line,
`git log -1 --format=%H -S'<the line>' origin/main -- docs/agents/standards.md`,
and the pull requests landed since it,
`git rev-list --count --first-parent <that commit>..origin/main`, the
first-parent commits of the main branch being what lands on it. A rule not yet
on `origin/main` has no age and stays. The citation: the query in
`docs/agents/issue-tracker.md` that lists the `raised-here` issues whose body
carries a given line, run with the rule's line; a rule any of them carries
stays until the command exists. Where `issue-tracker.md` does not carry that
query, nothing comes out by this exit, and the missing query is said the way a
missing command is. Ten is set on 27 September 2026 and is not measured: a
file that only grows costs every review, and a rule dropped too early comes
back the next time the defect appears and files its check then.

**Where `docs/agents/standards.md` does not exist, nothing is written and
nothing is created.** Say that the project has not been set up, and leave the
finding to the three ways out. A rule written into a file nobody reads is worse
than a rule not written.

**A written rule broken all the same belongs in a command.** Where the diff
breaks a rule that already stood in `docs/agents/standards.md`, reading was
not enough: file an issue for a check that catches it, label it `raised-here`,
quote the broken rule in it word for word as it stands in the file — that
quotation is what the third exit above looks for — and say so beside the
finding. The rule stays in the file until the command exists. Nothing is filed
when a rule is first written — whether it needs a command is answered by a
breach, not judged at the writing.

**A rule written a second time is a breach that went unseen.** Before a rule is
written, `git log -p origin/main -- docs/agents/standards.md` lists every line
the file has lost, and the new sentence is held against them. Where a removed
line said the same thing, say so at the close and file the issue for the check
as for a breach, quoting the rule: the situation came back while nothing
written stood against it, which is the second time, and two is the pattern.
Whether a removed line says the same thing is a judgement, the one this block
does not get rid of. It is made over a list a command printed, and made wrong
it costs a fresh rule without its check, which the next breach files.

None of this goes into the report of the lenses, which stops at the last lens.
It is said where the split is announced, per finding.
