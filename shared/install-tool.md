7. Installs a tool that lands outside the repository — a linter, a scanner, a
   generator, a migration command, anything that runs and ends — or, since 8
   October 2026, a browser for tests that Playwright, Cypress or Puppeteer
   downloads into the vendor's cache, only where the
   install record says yes, and reads the record where the guard reads it: the
   section `## Install permission` of `docs/agents/environment.md` on the
   default branch as last fetched, which the session-start line printed, never
   the working tree. Under a yes, run the backed command yourself, with the
   user there and with nobody there, without asking again, with ten minutes
   on the call, 600000 milliseconds, as "When a command does not answer"
   says; the guard passes it
   where every place it lands is one the record names or the answer of a route
   it names, and blocks it otherwise, and with nobody there the four ways an
   install does not go through, inserted after the fetch-and-run rule below,
   say what follows a block and the three other ways. A tool the task needs
   is not replaced by a stand-in because the run takes itself not to be
   allowed to install it, since 24 October 2026, defect 2 of the roadmap
   entry of that date on the six closing runs: under a yes it is installed,
   backed, and the task is built against the real tool; where the guard
   blocks it, the block goes its way; and a point the person settled in the
   planning is not replaced by a stand-in without them. Run 3a built the
   task needing `yq` against stand-ins under a yes and merged it with `yq`
   never run.
   Read the result, after the signal of the handover's form — under form A
   the command's output in the conversation, under form B their word, by
   "Where the person types a command devloop hands them" in
   `docs/skill-conventions.md`, since 28 October 2026 — with
   `${CLAUDE_PLUGIN_ROOT}/bin/devloop-tool-state --installed`, the command
   as it was handed over and the tool, since 28 October 2026: its first line
   reads the folder the installer writes to, never `command -v` alone, as
   "Whether it worked is read off the result" below says, and its second
   whether the tool stands on the search path, where the build and the
   checks call it — `go install` puts a tool into `~/go/bin`, which often
   stands on no search path. Where the first line says found and the second
   not found, say so, at the next message that ends a turn with text, and
   say how they put the folder on their search path, step by step, by
   "Where a text to the person says they have to do something at the
   computer, it says how" in `docs/skill-conventions.md`, since the
   addendum of 28 October 2026: that the command installed the tool into
   the folder, both as the first line names them; that the folder is not in
   their `PATH`, the term untranslated as the output style says of a
   technical term; and that the build therefore does not find the tool.
   Then the steps, numbered, in the order they can take them, since the
   terminal takes their typing only once Claude Code is ended: they end
   Claude Code, `/exit`; they put the folder into their `PATH` in the
   terminal, with the line that appends the export to the file their shell
   reads when a terminal opens it; they load that file anew, `source` with
   the file; they start Claude Code again in the project, `cd <directory>
   && claude`, the directory written as "A command handed over runs as it
   stands" writes it; they type `/devloop:start-work` there; and that the
   run then finds the tool and builds the task. The shell is read off
   `$SHELL` and the system off `uname -s`, with the shell, beside the call
   of `--installed`: for zsh the file is `~/.zshrc`; for bash it is the
   file bash reads on that system when a terminal opens it, `~/.bash_profile`
   on macOS, where the terminal opens a login shell, and `~/.bashrc` on
   Linux, where it opens an interactive shell; the export line names the
   folder as the first line names it, with `~` written `$HOME` inside the
   single quotes so that the file carries the variable and not the path —
   `echo 'export PATH="$HOME/go/bin:$PATH"' >> ~/.zshrc` — and the load is
   `source ~/.zshrc`. For a shell the run has no sure form for — another
   shell, fish say, or bash on a system other than those two, Windows with
   Git Bash among them, where the `PATH` Claude Code runs under is Windows'
   own and no bash file sets it — the run reads the command first in the
   maker's guide, the shell's or the system's, with its tools for the web,
   and gives it as it stands there, with the source, by the addition of 28
   October 2026 to the rule in `docs/skill-conventions.md`: for fish the
   page of fish on `fish_add_path`, which adds a folder once and keeps it;
   a command the guide itself warns against it does not give. Only where
   that yields no command — the page cannot be read, or it names neither
   the shell nor the system — the step says that the folder has to go into
   their `PATH` and names no command, and the other steps stand as above;
   until that decision the step named no command wherever the run had no
   sure form. The wording approved on 28
   October 2026 stands in the roadmap entry of that date on the hook on
   SubagentStart, (4), and this skill says what is said, not the words. In
   the session the last step opens, the tool stands on the search path
   Claude Code took over from that terminal, and the build reaches it with
   no issue between: step 2 reads the issues, none of which holds this
   task, since the issue is written on a no alone, "The task itself" below;
   the readiness query lists the task, open, with no blocker and no pull
   request, no subagent having started for it; and the read before the
   subagent starts, above, finds the tool on the search path. Where the
   first line says not found, the command did not do what it was handed over
   for, whatever came back: say so with the line and hand over again. The
   same read, with both lines, after a no, since 30 October 2026, decided by
   the person that day: where they type the command here with `!` in this
   session after declining, or say under form B that they ran it in the
   second window, the two lines are read as above, and where both say found
   the run closes the issue itself, with
   `${CLAUDE_PLUGIN_ROOT}/bin/devloop-install-issues --after-install`, whose
   comment names an install typed in the session and no start, and builds
   the task by the rules of step 2, to which it goes back, "The task itself"
   below; where the first line says found and the second not found, the five
   steps above, the issue staying open; where the first says not found, said
   with the line, the issue staying, and the command handed over again.
   Where they installed it another way, in another window say, nothing of
   it is seen here, and the next start reads it and closes the issue, as
   "The task itself" says. Report
   the install in two places, because they are two duties: the
   standing fact about running this project — the command as it ran and the
   folder it installed into — is written into `environment.md` under the
   heading `Installed outside the project` by the hook
   `post-tool-use-install-fact.sh` once the install went through, since 21
   October 2026, on this same branch, from what the guard read when it let
   the command through, and this run writes no second line for it, which
   point 8 says; and the report of this run — the command as it ran, what it
   is backed by, what came back, what stands at that path, and what the
   package manager did besides —
   goes into the pull request body beside the `Guarded conditions` list, which
   is what outlives the session; with the user there, the main run says it in
   one line as well, at the next message that ends a turn with text, its
   details standing in the pull request, and with nobody there it stands in the
   last message among what was installed under their yes, since 17 October
   2026. A package manager does more than the package it names: on 28
   September 2026 one `brew install` updated Homebrew itself, fetched a
   portable Ruby, updated two taps and ran a cleanup, none of it asked for,
   which is why that last part is in the report. A compiler or a runtime,
   anything needing `sudo`, anything piping a script from the network into a
   shell, a branded browser — `chrome`, `msedge` and their channels — that
   Playwright installs at the system's own location over the one already
   there, the system packages `install-deps`, `--with-deps` or
   `--install-deps` install, and anything landing outside the places the
   record names and the
   directories its routes answer stay the user's under every answer; through
   a package manager the guard sees the
   verb and not what is installed, so a yes to tools also passes `brew install
   node`, and that is a rule on this run rather than a wall: do not install a
   runtime under it. Where the record says no, or was never written, the
   install stays the user's to run, the same way merging is, and the guard
   blocks it — a compiler, a runtime, a tool from a package manager alike.
   What this point hands over is the tool of the task; a tool a check class
   needs is not handed over here, since 22 October 2026, and goes to
   `setup-checks` for that class, under "If they decline, the run acts on
   it" below, whose step 3 puts the question.
   The handover is the main run's, since only it reaches the person, and
   the subagent's part is its report, since 28 October 2026: where the
   subagent meets a tool that is missing under a no or no record, it names
   the tool, the backed command and that it is missing in its report and
   stops with the task, installing nothing and building nothing against a
   stand-in, as the rule every subagent gets at its start says,
   `hooks/subagent-start-install.sh`; the main run then hands over, in one
   message, the one that ends the turn, with the question last. It says:
   what the task needs and that it is missing on this machine; that their
   answer to installing for this project is no, so the run does not install
   it itself; the exact command, as it runs from wherever they are, with
   the change into the project's directory before it where it needs one, by
   "A command handed over runs as it stands" in `docs/skill-conventions.md`,
   and what it is backed by, with the version and the folder it lands in —
   and both ways it can go, in the same breath. The way of the yes: where
   they type it, by "Where the person types a command devloop hands them" in
   `docs/skill-conventions.md` — in Claude Code with `!` in front where the
   command asks nothing, form A, the line given with the `!`; in a second
   terminal window, not the one Claude Code runs in, where it asks something,
   a password for `sudo` say, form B, the text naming what it asks and
   asking them to say here once it is through; in doubt B —, and the build
   picks up once the tool is where that command puts it and the search path
   finds it, read by the paragraph on reading the result above after the
   form's signal, the command's output in the conversation under A and
   their word under B. The way of the no, which comes second and
   **a decline is an answer too, not a wall**: on a no the install becomes an
   issue carrying the command that blocks this task, as "The task itself"
   below says, written on the no and never before the answer; the run goes
   on with the next task that is ready, where one is, and with this one once
   the tool stands on this machine: at once, where they type the command
   here with `!` after the no in this session, or under B say that they ran
   it, the run reading both lines and closing the issue itself, as the
   paragraph on reading the result above and "The task itself" say; else at
   a later start, which devloop reads itself and closes the issue on. Before
   a no the form's signal releases the run — the output under A, their word
   under B —, and after a no the same signal does in this session, the tool
   read at the next start where they install it another way, since 30
   October 2026, decided by the person that day from the two readings of new
   defect 1 of the roadmap entry of 29 October 2026 on the run under a no:
   who installs with `!` after a no has changed their mind, and making them
   type `/devloop:start-work` on top gains them nothing; it fits form A,
   whose signal is the output; and the rule of 27 and 28 October 2026, one
   signal per state, stood against the issue and the message naming
   different signals, which they do not — the message names both ways, this
   session's and the next start's, and the issue names the one a later
   session takes, which stands in the message too. Until that day, after a
   no the tool read at the next start alone. Then the
   question, last: whether they type the command, under A, or run it, under
   B, or decline. Since 24 October 2026, defect 5 of the roadmap entry
   of that date on the six closing runs, where run 1 said a decline would
   leave the test skipped and the task open; and since 28 October 2026 in
   this order, the issue on the no alone and one signal per state, the rest
   of that defect: run 1 of 26 October 2026 opened the issue before the
   answer, offered no no, and named one signal in the issue and another in
   the message. The wording approved on 28 October 2026 stands in the
   roadmap entry of that date on the handover steps, (1), in both forms, in
   place of (5) of 27 October 2026, which had them run the command and say
   so, its last sentence, on the install made later, in the wording approved
   on 30 October 2026, the roadmap entry of that date on the install, (1),
   in both forms, and this skill says what is said,
   not the words. A message that says only "let me know once it is
   through" leaves no way to say no, which is how it came out the first time.
   With nobody there the record says yes, since the mode does not start
   under a no or with no record — start condition 6 under "Unattended mode" —
   so nothing is declined; what the guard blocks under that yes is a block and
   not a decline, and goes the way the guard's block goes. This is the one
   thing a
   task can need that the task itself cannot do without the record's yes.
