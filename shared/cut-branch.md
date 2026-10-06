**Do this as an action, now: after the last question above, and before
anything below writes a file.** Not as something to keep in mind while
writing: a run that reads past it hits the main-branch guard on its first
edit, and on every edit after that, until it works out what happened. That
has happened three times, twice after this rule had already been sharpened in
prose — which is why it is a step of its own rather than a sentence in a
preamble. And not earlier either: a branch cut before the questions stays
behind when the user breaks off in the middle of them, looking like work
begun and being none, which is what the next run met on 9 September 2026.

The branch has a fixed name, one per place this is done: `devloop-setup`
where this is the setup of the project, `devloop-checks` where it is the
check setup, and `devloop-unattended` where the check setup sets up the
unattended mode, in its step 8, which cuts by this same rule after its own
last question. Not a name made up for the run: the next run has to find the
branch an earlier one left, and it finds it by this name. Read which of four
cases holds before cutting, three off git and one off the platform — `git
branch --list devloop-setup`, with `devloop-checks` or `devloop-unattended`
in its place — and act on that one. In the first three the cut is a fresh
one, and since 6 October 2026 it is made from the main branch as the remote
holds it: fetch — three attempts, by the command under "When the main branch
cannot be fetched or fast-forwarded" in this skill — read whether the main
branch stands on the remote, and where it does, switch to it and
fast-forward it before the cut below —

    git rev-parse -q --verify origin/main
    git switch main && git merge --ff-only origin/main

— the first line printing the commit where the branch stands there and
nothing, exit 1, where it does not, and the second running only where it
does. This stands here because the setup that lands by the person's hand,
as a first one does, may end its session before the fetch after the merge,
and `git switch main` alone then cuts from the state before it. Where the
fetch fails on its third attempt, or the switch or the fast-forward fails,
stop and say so as that section says, opening with that the local main
branch cannot be brought to the state GitHub holds and that nothing is
begun here for that; nothing is cut on top of it. What fails and what does
not, measured on 6 October 2026 with git 2.50.1: a commit of its own on the
local main branch fails the fast-forward only where the remote has new
commits too, `fatal: Not possible to fast-forward, aborting.`; where the
remote has nothing new, the fast-forward answers `Already up to date.`,
exit 0, and the cut is then made from the local main branch with that
commit on it and not from the main branch as the remote holds it — a gap
recorded in the roadmap entry of 5 October 2026, its third addendum, and
not closed here. A working tree that is not clean fails the fast-forward
only where a changed file is one the fast-forward would change, `error:
Your local changes to the following files would be overwritten by merge`; a
changed or new file it does not touch goes through with it and stays as it
was. Where no main
branch stands on the remote yet, as in a repository `setup-project` created
without a commit, there is nothing to fast-forward, and the cut is made
from the main branch as it stands. The cases:

- **No branch of that name.** Cut it from the main branch:

      git switch -c devloop-setup

- **The branch exists and nothing was written on it.** Nothing written is
  read off two things, the way the entry of 9 September 2026 in
  `docs/roadmap.md` read it off the branch a broken-off setup had left: the
  branch stands on the main branch — its tip is a commit the main branch
  already holds, so it has no commit of its own — and `git status --short`
  prints nothing. Both together:

      git merge-base --is-ancestor devloop-setup main && [ -z "$(git status --short)" ]

  Then delete it and cut it afresh. It may be the checked-out branch — that
  is how the measured case failed, `git branch -D` refusing the branch that
  is checked out — so step off it onto the main branch first:

      git switch main && git branch -D devloop-setup && git switch -c devloop-setup

  Tell the user, in a line or two of the run's own message: that a branch of
  this name was already here, left by an earlier setup that was broken off;
  that nothing had been written on it; and that it has been removed and cut
  again, so that this setup starts from the main branch as it stands.

- **The branch exists, its pull request is merged, and nothing was committed
  on it since.** A squash merge leaves the branch's own commits off the main
  branch, so the test above reads a branch that landed that way as written
  on. The platform tells the two apart: `gh pr view devloop-setup --json
  state,headRefOid` says whether the pull request of that branch is
  `MERGED` and at which commit its head stands, and the branch is landed
  where the state is `MERGED`, that head is the branch's own tip, `git
  rev-parse devloop-setup`, and `git status --short` prints nothing:

      [ "$(gh pr view devloop-setup --json state,headRefOid -q '.state + " " + .headRefOid')" = "MERGED $(git rev-parse devloop-setup)" ] && [ -z "$(git status --short)" ]

  A `gh pr view` that finds no pull request for the branch has answered, and
  this is then not the case. Then delete it and cut it afresh, stepping onto
  the main branch first as above, and tell the user in a line or two: that a
  branch of this name was left by an earlier setup that landed, that nothing
  stood on it beyond what landed, and that it has been removed and cut again.
  Since 6 October 2026, because the setup that lands with the person
  merging by hand deletes the branch only once they have said it landed, and
  a session that ends before that leaves it.

- **The branch exists and something was written on it** — a commit of its
  own, or a working tree that is not clean. Switch to it rather than making a
  second one. Taking up what stands there is not described here.

Never commit to the main branch directly.
