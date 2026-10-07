**A fetch that something here is built on is tried three times before it
counts as failed**, fifteen seconds apart, and nothing is repeated in
silence: every attempt that fails is named with the command and the message
git gave. Only the third failure stops the run, and what it says then is
given at each place. The command, whose output carries the message of every
attempt that failed and whose exit code is the last attempt's:

    git fetch -q origin || { sleep 15; git fetch -q origin; } || { sleep 15; git fetch -q origin; }

Measured on 6 October 2026 with git 2.50.1 against a remote that is not
there: three times `fatal: Could not read from remote repository.`, exit
128, thirty seconds. A fetch that does not come back is a failed attempt
too: the command ends on the harness's own time limit, with no message of
git's, and that is what is named in the message's place. The attempts still
owed — three less those the output shows made, the one that hung among them
— are then made one at a time, `sleep 15; git fetch -q origin` each, until
three have been made, and only the third's failure stops the run. The
command above stays as it is: it makes the three by itself where each
attempt answers. The block on a command that does not answer allows one
second attempt; a fetch gets two more, because a fetch that fails says only
that the remote could not be reached just now, and that may be transient,
where every other error is an answer read for what it says. GitHub's own
checkout action
tries every fetch up to three times with a pause of ten to twenty seconds
between them — `actions/checkout`, `src/retry-helper.ts` lines 3–5 and
25–43, used by its fetch in `src/git-command-manager.ts` lines 277–318, read
on 6 October 2026 at `f548e57` of 20 July 2026 — and without the repetition
one short outage stops a run with nobody there until somebody is back. This
covers the fetch before a fresh cut, before the base of a task is read,
after a proven merge, before the mark is written and before a pull request
behind its base is rebased. It does not cover the reading of the setup state
at the start of a session or a stage, which `bin/devloop-setup-state
--fetch` does itself: there a fetch that fails is said and the state as last
fetched is read, as the line under that command says.

**Where the third attempt fails too, or the switch to the main branch or its
fast-forward fails, the run stops where it is, and what it says has an
opening the place gives and three parts after it**: in plain words what is
in the way and what they can do about it, with the command where there is
one; git's message as it came; and that this picks up as soon as they say it
is cleared, and that nothing happens until then — "Nothing resumes on its
own" in `docs/skill-conventions.md`. What is in the way is either their own
work, a changed file or commits of their own, or something only they can do,
the connection or the sign-in, which is why the run names what they can do;
the examples approved for it are these, and the run takes the one that fits
its case. GitHub not reached in three attempts: check the connection. The
sign-in refused: sign in again, `gh auth login`. A file changed and not
committed that the fast-forward would change, named: set it aside with `git
stash`, and take it back with `git stash pop` once the run is done — measured
on 6 October 2026 with git 2.50.1, the pop merges the change back where the
fast-forward changed another line of the file, and where it changed the same
line it reports a conflict for them to resolve and keeps the stash, exit 1.
Commits on the local main branch that GitHub lacks, while GitHub has new
ones: put them on a branch of their own and bring the main branch to
GitHub's state, `git branch <a name for them>` and then `git reset --keep
origin/main` — measured the same day, the reset moves the main branch and
keeps the commits on the new branch, and where a changed file stands in its
way it refuses, `error: Entry '<file>' not uptodate. Cannot merge.`,
changing nothing. The German wording of the three openings and of the
examples, approved on 6 October 2026, stands in the roadmap entry of 5
October 2026 under "The approved wording"; a skill says what is said, not
the words. Where the fetch and the fast-forward go through, nothing is said
of them: they bring only what has merged on GitHub, change nothing of theirs
and ask nothing of them.
