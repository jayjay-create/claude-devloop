**Do this as an action, now, before anything below writes a file.** Not as
something to keep in mind while writing: a run that reads past it hits the
main-branch guard on its first edit, and on every edit after that, until it
works out what happened. That has happened three times, twice after this rule
had already been sharpened in prose — which is why it is a step of its own now
rather than a sentence in a preamble.

    git switch -c <short-name-for-what-this-run-does>

Never commit to the main branch directly. If the branch already exists because
an earlier run was interrupted, switch to it rather than making a second one.
