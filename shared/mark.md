**Which mode this run is in is read off a file, not off a word from earlier in
the session.** The file is the mark, `.claude/unattended.local`, and the stage
that steps out of the flow writes it: this run's main-branch commit on its
first line, and how far the run may go on its second — `build` for carrying on
through the build, `plan` for halting before the first build. Present with this
run's commit and `build`: alone. Present with this run's commit and `plan`:
alone up to that halt and no further. Absent: with them. A mark carrying any
other commit is another run's. A word typed at the start of a session does not
survive the skill loads and subagents between there and a merge; the file does,
and every place that forks on the mode reads it.
