**Which mode this run is in is read off a file, not off a word from earlier in
the session.** The file is the mark, `.claude/unattended.local`, and the stage
that steps out of the flow writes it: this run's main-branch commit on its
first line, how far the run may go on its second — `build` for carrying on
through the build, `plan` for halting before the first build — and on its
third, since 9 October 2026, the session that wrote it, `DEVLOOP_SESSION_ID`,
which the session-start hook sets from the identifier Claude Code gives it;
the line stays empty where the variable is not set. The third line is read by
the hook on permission prompts, `hooks/permission-request-unattended.sh`,
which answers no to every prompt of the session the mark names, and leaves a
prompt of any other session unanswered, so that a mark a broken-off session
left standing touches no later session with a person in it. Present with this
run's commit and `build`: alone. Present with this run's commit and `plan`:
alone up to that halt and no further. Absent: with them. A mark carrying any
other commit is another run's. A word typed at the start of a session does not
survive the skill loads and subagents between there and a merge; the file does,
and every place that forks on the mode reads it.
