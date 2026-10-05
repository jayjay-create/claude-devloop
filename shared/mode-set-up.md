**The unattended mode is set up in this repository only where five things
hold together**, each read and none remembered: the record of the answer to
whether work may run here with nobody there says yes; a failing gate blocks a
merge on the main branch and binds the account this runs as; auto-merge is
on, with that gate for it to wait on; the install record says yes; and the
record on check tools in the dependency file says yes. The last four are
start conditions 2, 5, 6 and 7 of the list in `build-work` under "Unattended
mode", and the gate, its binding and auto-merge are read off the platform as
that list spells out. The three records are sections of
`docs/agents/environment.md`, one key and one value per line, read off the
main branch as last fetched and never off the working tree, which a run may
have written a moment ago:

    git fetch -q origin main && git show origin/main:docs/agents/environment.md

`unattended-mode:` under `## Unattended mode`, `install-tools:` under
`## Install permission`, `dependency-tools:` under `## Dependency
permission`. A section that is not there, a line that is missing and a value
that is neither `yes` nor `no` are none of them a yes. For these three the
record on the main branch is the state itself and not an account of it:
nothing on the platform says what the user allowed.
