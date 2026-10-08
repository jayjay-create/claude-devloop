The answer stands in `docs/agents/environment.md` under a heading of its own,
`## Install permission`, in the shape the install guard and the session-start
hook read it — one key and one value per line, spelled exactly, ASCII only,
since a script reads the start of each line:

    ## Install permission

    install-tools: yes
    install-place: /usr/local/bin
    install-place: /usr/local/sbin
    install-place: /opt
    install-place: ~/.local/bin
    install-place: ~/bin
    install-place: ~/go/bin
    install-place: ~/Library/Caches/ms-playwright
    install-place: ~/.cache/ms-playwright
    install-place: ~/Library/Caches/Cypress
    install-place: ~/.cache/Cypress
    install-place: ~/.cache/puppeteer
    install-route: cargo
    install-route: pip
    install-answered: YYYY-MM-DD

`install-tools` is the answer, `yes` or `no` and nothing else. The eleven
`install-place` lines are the places a yes opens in this version, written as
they stand here under either answer, so that the file says what a yes would
open where the answer is no: the six bin directories, and since 8 October
2026 the five where Playwright, Cypress and Puppeteer put the browsers they
download for tests, the vendor's default on macOS and on Linux each, since
the guard holds a browser download against the place the vendor names for
the system it runs on. A record written before that day carries the six and
not the five, and is not amended: under its yes the guard blocks a browser
download naming the place, as it blocks every place a record does not name,
until the five are added with the person there. The `install-route` lines are the routes this
project's stack has, read by the run that writes the record off what the
project declares and the lockfiles beside it, one line per route and none for
a route the stack does not have, the two above standing as an example; with
no stack, none. The reading is the run's own work and is not put to the user:
ask each route where it puts things, as the guard does, and write its line
either way, since the guard asks again at the moment of every command; a
route of the stack that does not answer on this machine is named in the body
of the pull request that lands the record, so that the fact is known before
the first install meets it as a block. Each is a name from the eleven the
guard resolves, `brew`, `go`, `npm`, `pnpm`, `yarn`, `bun`, `cargo`, `gem`,
`pipx`, `uv`, `pip`. A route named here opens the directory that route
answers on the machine the run is on, read at the moment of the command and
written nowhere, so that the answer holds on another machine and under
another version of the tool; a route not named here is held against the
`install-place` lines. The route lines are written under either answer, like
the places. `install-answered` is the date the question was answered. Where
the section stands already and only the answer changes, `install-tools` and
`install-answered` change and every other line stays. The guard and the
session-start hook read this section off the default branch as last fetched,
never off the working tree, so it counts once the pull request carrying it
has landed there and been fetched back.
