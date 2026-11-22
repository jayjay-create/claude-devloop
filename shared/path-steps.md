**The steps that put a folder on the search path go by the surface and the
system**, the fields `surface:` and `system:` of the line
`${CLAUDE_PLUGIN_ROOT}/bin/devloop-surface` prints, the program run once more
before the steps are said; `handover:` decides nothing here. `surface:` reads
`terminal`, Claude Code in a terminal that is not VS Code's; `terminal-vscode`,
Claude Code in the terminal of VS Code; `panel-vscode`, the graphical panel of
the extension for VS Code; `desktop`, a local session of the desktop app;
`unknown`, a surface the program does not know, and a line that does not come.
The steps are numbered, each one command or one input as it is typed, in the
order they can take them, and the run puts in the folder, the file and the
project's folder itself. What is said before the steps and after them, the
place that names this text says.

**Under `macos` and `linux` the folder goes into a file their shell reads.**
The step for it gives the line that appends the export to that file, the
folder as the first line of `--installed` names it, with `~` written `$HOME`
inside the single quotes so that the file carries the variable and not the
path — `echo 'export PATH="$HOME/go/bin:$PATH"' >> ~/.zshrc` — and says,
directly after the line, what the line does: that it writes into the file,
named, that their terminal also looks for programs in the folder, named, with
VS Code in the place of their terminal under `panel-vscode` and the app under
`desktop`; and that they type the line exactly as it stands. The shell is read
off `$SHELL`, with the shell, beside the call of `--installed`. Under
`terminal`, `terminal-vscode` and `unknown` the file is the one their shell
reads when a terminal opens it: for zsh `~/.zshrc`; for bash `~/.bash_profile`
on macOS, where the terminal opens a login shell, and `~/.bashrc` on Linux,
where it opens an interactive shell. Under `panel-vscode` and `desktop` the
file is the one a login shell reads, since VS Code and the app take their
`PATH` from a login shell: for zsh `~/.zprofile`; for bash the first of
`~/.bash_profile`, `~/.bash_login` and `~/.profile` that is there, and
`~/.profile` where none is, the run reading only which of the three is there,
`test -f` with each, and never what one holds.

- **`terminal`, five steps.** They end Claude Code, `/exit`. They type the
  export line in the terminal, with what it does. They type in the terminal,
  so that it reads the file anew, `source` with the file, `source ~/.zshrc`.
  They type in the terminal, to start Claude Code again in the project, `cd
  <directory> && claude`, the directory written as "A command handed over
  runs as it stands" writes it. They type `/devloop:start-work` in Claude
  Code.
- **`terminal-vscode`, six steps.** They end Claude Code, `/exit`. They open
  a new terminal in VS Code through its menu Terminal, the menu's name set in
  bold and no key named; the step stands in every case, not only where the
  terminal closed. The three steps of the terminal follow, the export line,
  the `source` and `cd <directory> && claude`, each saying that it is typed
  in the new terminal. They type `/devloop:start-work` in Claude Code.
- **`panel-vscode`, four steps.** They open a new terminal in VS Code through
  its menu Terminal, the menu's name set in bold. They type the export line
  there, with what it does. They quit VS Code entirely, with Cmd+Q under
  `macos` and Ctrl+Q under `linux`, and open it again from its program
  symbol. They open Claude Code again and type `/devloop:start-work` there.
- **`desktop`, four steps.** They type the export line here in Claude Code
  with `!` in front, the line given with the `!`, with what it does. They
  quit the app entirely, with Cmd+Q under `macos` and no key named under
  `linux`, and open it again. They open their project in the app again, the
  way they opened it before, the project's folder given. They type
  `/devloop:start-work` there.
- **`unknown`, three steps.** They type the export line in a terminal, with
  what it does. They end Claude Code entirely, the program it runs in too,
  and start it anew. They type `/devloop:start-work` in Claude Code.

For a shell the run has no sure form for — another shell, fish say, or a
system that reads `unknown` — the run reads the command first in the maker's
guide, the shell's or the system's, with its tools for the web, and gives it
as it stands there, with the source: for fish the page of fish on
`fish_add_path`, which adds a folder once and keeps it; a command the guide
itself warns against it does not give. Only where that yields no command —
the page cannot be read, or it names neither the shell nor the system — the
step says that the folder has to go into their `PATH` and names no command,
and the other steps stand as above.

**Under `windows` no file of a shell sets the `PATH` Claude Code runs under,
and the step for the folder is one line typed in Git Bash.** The step has
them open Git Bash, the terminal that comes with Git for Windows, and type
there the line that enters the folder into the `PATH` of their Windows
account through `powershell.exe`, the folder in the form PowerShell reads:
their user folder written `$env:USERPROFILE` and the parts joined by `\`,
`~/go/bin` as `$env:USERPROFILE\go\bin`, and a folder outside their user
folder as Windows writes its path, the drive letter first:

    powershell.exe -NoProfile -Command '$p = [Environment]::GetEnvironmentVariable("Path", "User"); [Environment]::SetEnvironmentVariable("Path", "$p;$env:USERPROFILE\go\bin", "User")'

Directly after the line the step says what the line does: that it enters the
folder, named — `go\bin` in their user folder —, for good into the `PATH` of
their Windows account; and that they type the line exactly as it stands. No
step loads a file there.

- **`terminal`, six steps.** They end Claude Code, `/exit`. The step for the
  folder. They close the terminal program entirely and open it anew, the step
  saying that Windows gives the new `PATH` only to programs that start after.
  In the new terminal they change into the project, `cd "$HOME/my-project"`,
  the project's folder below their user folder in the place of `my-project`.
  They start Claude Code there, `claude`. They type `/devloop:start-work` in
  Claude Code.
- **`terminal-vscode`, seven steps.** They end Claude Code, `/exit`. The step
  for the folder. They close all windows of VS Code and open it again. They
  open a new terminal in VS Code through its menu Terminal, the menu's name
  set in bold. In the new terminal they change into the project and start
  Claude Code there, the two steps of the terminal. They type
  `/devloop:start-work` in Claude Code.
- **`panel-vscode`, three steps.** The step for the folder. They close all
  windows of VS Code and open it again. They open Claude Code again and type
  `/devloop:start-work` there.
- **`desktop`, four steps.** The step for the folder. They end the app
  entirely and open it again, no key named. They open their project in the
  app again, the way they opened it before. They type `/devloop:start-work`
  there.
- **`unknown`, three steps.** The step for the folder. They end Claude Code
  entirely, the program it runs in too, and start it anew. They type
  `/devloop:start-work` in Claude Code.
