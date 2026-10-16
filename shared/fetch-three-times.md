**A fetch that something here is built on is tried three times before it
counts as failed**, each attempt bounded to thirty seconds and ten seconds
apart, and nothing is repeated in silence: every attempt that fails is named
with the command and the message git gave, or the line of the program that
ended it. Only the third failure stops the run, and what it says then is
given at each place. The command, whose output carries the message of every
attempt that failed and whose exit code is the last attempt's; each attempt
runs under `bin/devloop-bounded`, which ends it after thirty seconds, the
bound `bin/devloop-setup-state` sets for its own fetch:

    ${CLAUDE_PLUGIN_ROOT}/bin/devloop-bounded 30 git fetch -q origin || { sleep 10; ${CLAUDE_PLUGIN_ROOT}/bin/devloop-bounded 30 git fetch -q origin; } || { sleep 10; ${CLAUDE_PLUGIN_ROOT}/bin/devloop-bounded 30 git fetch -q origin; }

Measured on 7 October 2026 with git 2.50.1 against a remote that is not
there: three times `fatal: Could not read from remote repository.`, exit
128, twenty seconds; until that day the attempts were unbounded and fifteen
seconds apart, measured on 6 October 2026 the same way at thirty seconds. A
fetch that does not come back is a failed attempt too: the program ends it
after thirty seconds with one line, `no answer within 30 seconds: git fetch
-q origin`, and exit 124, and that line stands in the message's place.
Measured on 7 October 2026 against a server on this machine that accepts
the connection and never answers: three times that line, exit 124, 110
seconds, in one call. The bound is what keeps the three attempts under the
time limit of one Bash call of Claude Code, 120 seconds where nothing sets
it: the changelog of Claude Code says a command that reaches that limit is
not ended but moved to the background and runs on there, and nothing here
has measured that; a run that repeated the fetch would then start a second
one beside it — "Environment constraints, measured" in
`docs/skill-conventions.md`. The block on a command that does not answer
allows one second attempt; a fetch gets two more, because a fetch that fails
says only that the remote could not be reached just now, and that may be
transient, where every other error is an answer read for what it says.
GitHub's own checkout action tries every fetch up to three times with a
pause of ten to twenty seconds between them — `actions/checkout`,
`src/retry-helper.ts` lines 3–5 and 25–43, used by its fetch in
`src/git-command-manager.ts` lines 277–318, read on 6 October 2026 at
`f548e57` of 20 July 2026 — and without the repetition one short outage
stops a run with nobody there until somebody is back. This covers the fetch
before a fresh cut, before the base of a task is read, after a proven merge,
before the mark is written and before a pull request behind its base is
rebased. It does not cover the reading of the setup state at the start of a
session or a stage, which `bin/devloop-setup-state --fetch` does itself:
there a fetch that fails is said and the state as last fetched is read, as
the line under that command says.

**Where the third attempt fails too, or the switch to the main branch or its
fast-forward fails, what follows depends on what is in the way, and the
person gets no git command where the run can do the thing itself.** Four
things stand in the way, and git's message says which: GitHub not reached;
the sign-in refused; a file changed and not committed that the switch or the
fast-forward would change, `error: Your local changes to the following files
would be overwritten`; commits of their own on the local main branch while
GitHub has new ones, `fatal: Not possible to fast-forward, aborting.` The
first two only they can clear, and there the run stops where it is, and what
it says has an opening the place gives and three parts after it: in plain
words what is in the way and what they do about it, with the command where
there is one; git's message as it came, or the program's line where the
attempt was ended; and that this picks up as soon as they say it is cleared,
and that nothing happens until then — "Nothing resumes on its own" in
`docs/skill-conventions.md`. GitHub not reached in three attempts: that it
was not reached in three attempts, and that they check their connection and
say when it stands again. The sign-in refused: that GitHub refused the
sign-in, that they type `gh auth login` in the terminal and follow the
instructions in the browser, and say when that is done. The two others are
their own work, and the run asks instead of handing a command over: a choice
through the harness's choice widget, in their language, alone in its call,
every point in a field of its own and no recommendation, and it acts on the
answer.

- **A changed file in the way.** In the question line: that the file, by
  its path, is changed in their project and not committed; that to go on
  the run has to fetch GitHub's state, which would change this file; and
  whether it may set their change aside for that long. In the yes, label
  and line: set it aside, and the run brings it back when it is done. In
  the no, label and line: no, and the run stops here until they say so —
  then it stops as at the two cases above, with git's message and that
  nothing happens until then. On the yes: `git stash push -- <file>`, the
  switch or the fast-forward, and `git stash pop` once the run is done with
  the main branch — after the cut, after the fast-forward that follows a
  merge, before the rebase — and one line to them that the change is back.
  Measured on 6 October 2026 with git 2.50.1: the pop merges the change
  back where the fast-forward changed another line of the file; where it
  changed the same line, the pop reports a conflict in the file, keeps the
  stash, exit 1, and leaves both versions in the file between conflict
  markers, measured again on 16 October 2026. Then the run shows them both
  lines, theirs and GitHub's, and asks which is to hold, in the same form;
  the change stays set aside until they answer. On the answer the file is
  written with the line they chose — through the shell, since the tree
  stands on the main branch, where the branch guard blocks the editing tool
  on purpose — the file is taken out of the index the conflicted pop put it
  in, `git restore --staged -- <file>`, so that their change stands as it
  stood, uncommitted, and the stash is dropped, `git stash drop`; measured
  on 16 October 2026, `git status --short` then reads ` M` for the file and
  the stash list is empty.
- **Commits of their own on the main branch.** In the question line: that
  commits lie on their main branch that GitHub lacks, and that GitHub has
  new ones meanwhile; and whether the run may put their commits on a branch
  of their own, named in the question, and bring the main branch to
  GitHub's state. In the yes, label and line: yes; their commits stay on
  that branch. In the no, label and line: no, and the run stops here. The
  branch is named so that they see it is theirs, `meine-commits` in the
  approved wording; where a branch of that name stands already, from an
  earlier time, a number goes on the end and the question names it so. On
  the yes: `git branch <name>` and then `git reset --keep origin/main` —
  measured on 6 October 2026, the reset moves the main branch and keeps the
  commits on the new branch, and where a changed file stands in its way it
  refuses, `error: Entry '<file>' not uptodate. Cannot merge.`, changing
  nothing: then the changed file is the case above, asked first, and the
  reset follows their yes to that.

The German wording of the three openings, approved on 6 October 2026,
stands in the roadmap entry of 5 October 2026 under "The approved wording";
the wordings of the two questions and of the two cases only they can clear,
approved on 12 October 2026, stand in the roadmap entry of that date under
"The approved wordings", point 19 of part B, which replaced the examples
that handed `git stash`, `git stash pop`, `git branch` and `git reset
--keep` to the person; a skill says what is said, not the words. With
nobody there the run stops at every one of the four, as the places say.
Where the fetch and the fast-forward go through, nothing is said of them:
they bring only what has merged on GitHub, change nothing of theirs and ask
nothing of them.
