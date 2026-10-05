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
branch an earlier one left, and it finds it by this name. Read off git which
of three cases holds before cutting — `git branch --list devloop-setup`, with
`devloop-checks` or `devloop-unattended` in its place — and act on that one:

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

- **The branch exists and something was written on it** — a commit of its
  own, or a working tree that is not clean. Switch to it rather than making a
  second one. Taking up what stands there is not described here.

Never commit to the main branch directly.
