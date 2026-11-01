The answer stands in `docs/agents/environment.md` under a heading of its own,
`## Install permission`, in the shape the install guard and the session-start
hook read it — one key and one value per line, spelled exactly, ASCII only,
since a script reads the start of each line. Under a yes:

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

Under a no, the answer and the date alone:

    ## Install permission

    install-tools: no
    install-answered: YYYY-MM-DD

`install-tools` is the answer, `yes` or `no` and nothing else. The eleven
`install-place` lines are the places a yes opens in this version, written
under a yes and under no other answer: under a no they do nothing, the guard
blocking on `install-tools: no` before it reads a place, and listed under a no
they read as though something were open; the line at session start says `places:
none` and `routes: none` under a no whatever the record carries, and a record
under a no that carries places and routes keeps them, not amended. The places:
the six bin directories, and the five where Playwright, Cypress and Puppeteer
put the browsers they download for tests, the vendor's default on macOS and on
Linux each, since the guard holds a browser download against the place the
vendor names for the system it runs on. A record that carries the six and not
the five is not amended: under its yes the guard blocks a browser download
naming the place, as it blocks every place a record does not name, until the
five are added with the person there. The `install-route` lines are the routes
this
project's stack has, read by the run that writes the record off what the
project declares and the lockfiles beside it, one line per route and none for
a route the stack does not have, the two above standing as an example; with
no stack, none. The reading is the run's own work and is not put to the user,
and the run does not ask a route where it puts things: the guard asks at the
moment of every command and names a route that does not answer, with its cause,
in its block, so the asking changes nothing in the record. Each is a name from
the eleven the
guard resolves, `brew`, `go`, `npm`, `pnpm`, `yarn`, `bun`, `cargo`, `gem`,
`pipx`, `uv`, `pip`. A route named here opens the directory that route
answers on the machine the run is on, read at the moment of the command and
written nowhere, so that the answer holds on another machine and under
another version of the tool; a route not named here is held against the
`install-place` lines. The route lines are written under a yes, like the
places, and under no other answer. `install-answered` is the date the
question was answered. Where the section stands already and the answer
changes — a yes after a no, the one way the second asking in `setup-checks`
step 8 takes, which asks only where the record does not say yes — the
section is written anew from this template under the new answer, the places
of this version and the routes read by that run as at a first yes, and the
date new. The guard and the session-start hook read this section off the default
branch as last fetched, never off the working tree, so it counts once the pull
request carrying it has landed there and been fetched back.
