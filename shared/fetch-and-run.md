**A command that fetches a tool and runs it without saying install counts as
an install, whether the guard sees it or not.** The guard reads, since 8
October 2026, `go run` with a version suffix on its package, `uvx` and `uv
tool run`, `uv run` with `--with`, `-w`, `--with-editable` or
`--with-requirements`, `pipx run`, `pnpm dlx` with `pnpx` and `pnx`, `pnpm
create`, the same and a global add under `pn`, `yarn dlx` and `yarn create`,
`gem exec`, `brew exec` and `brew x`, and `brew bundle` where it installs. It
does not read `npx`, `npm exec`, `npm create`, `npm init` with a package,
`bunx`, `bun x`, `bun create` or `docker run`, nor any form standing in a
file of the project — a `Makefile` target, a package script, the first line
of a script — rather than in the command; those count all the same. Where
the install record says no or was never written, hand over the command that
installs the tool, backed as every handed-over install is, and ask no second
permission for the form that fetches: the record's answer is the only one.
Under a yes the run may run the form itself, backed as every command that
fetches something from outside is, and need not take an install command in
its place, since an installed tool does not always stand on the PATH the
check commands run under. A runtime stays the user's under every answer,
through these forms as through a package manager: `pnx node@22` and `uvx
python@3.12` fetch one, and the rule on `brew install node` holds for them.
