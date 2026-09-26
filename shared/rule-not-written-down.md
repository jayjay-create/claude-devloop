**A finding that no written rule would have caught is a gap in the documents,
not only a defect in this code.** As each finding is announced under fix or
file, say in the same breath whether the rule it breaks is already written: in
`docs/agents/standards.md`, in a command `docs/agents/checks.md` runs, or in
the task's own issue, which is the case named above. Where one of them carries
it, nothing is added to them — the documents are not what failed. Where none
does, and a sentence can be written that names a situation this project's code
will meet again and what is done in it, write it as one rule into
`docs/agents/standards.md`, in the same change as the fix, so that the next
build reads the rule and the next review reads a breach of a written one. Two
sentences fail that test and are not written: the fix restated — this file,
this function, this line — which holds for nothing but this diff; and a
sentence naming no situation of this project — handle every error, no dead
code — which the standards lens reads for without being told. What is written
is a sentence a later diff can be held against and answered yes or no. A
finding filed because it would revisit a decision writes no rule either: the
sentence would settle at the close the question the issue was filed to keep
open.

**Unattended this does not fall away.** With nobody there it is the only way a
rule ever reaches the file, and the judgement that a finding is too small to be
worth a rule is made by the run that produced it. Measured on 26 September 2026
across the six bench projects: every standards file carried only the sentence
written when it was created, and in `devloop-test-o` that sentence said the
repository had no code, 36 landed pull requests in.

**Writing into that file is also reading the whole of it.** Every rule there is
read again on every review, so before adding, take out a rule a command now
enforces and a rule about code that no longer exists, and say what came out —
or that nothing did. Where the file still carries the line written at setup
saying no rules have been recorded yet, that line goes with the first rule
written. The file keeps the language it is already written in, whatever
language the user writes in: the lens that reads it is handed the file and not
this conversation.

**Where `docs/agents/standards.md` does not exist, nothing is written and
nothing is created.** Say that the project has not been set up, and leave the
finding to the two ways out. A rule written into a file nobody reads is worse
than a rule not written.

**A written rule broken all the same belongs in a command.** Where the diff
breaks a rule that already stood in `docs/agents/standards.md`, reading was
not enough: file an issue for a check that catches it, label it `raised-here`,
and say so beside the finding. The rule stays in the file until the command
exists. Nothing is filed when a rule is first written — whether it needs a
command is answered by a breach, not judged at the writing.

None of this goes into the report of the lenses, which stops at the last lens.
It is said where the split is announced, per finding.
