**A command that fetches something from outside is backed before it is handed
over**, and since 24 October 2026 before the run runs it itself under a yes
as well, and the backing is one of two things: the vendor's own installation
line, quoted from where it was read, or the path in the command resolving —
`go list -m <module>@<version>` and its equivalent wherever the package comes
from. **Say which of the two it hangs on**; "checked" names neither and backs
nothing. An organisation's name is not a module path: measured on 6 September
2026 in `devloop-test-o`, `github.com/gitleaks/gitleaks/v8@latest` went over
as it stood, the module path being `github.com/zricethezav/gitleaks/v8`, and
it failed first in the workflow on the main branch, after the pull request
carrying it had merged. **Before it is handed over covers every way it
travels** — the message to the user, and any issue carrying the command. An
unbacked command in the tracker outlives this session and gets typed later by
somebody who no longer knows the case.

**Each kind has its form of the backing**, since 24 October 2026, point 5 of
the roadmap entry of that date on the six closing runs: for a Go module `go
list -m`, for a formula `brew info <formula>`, for an npm package `npm view
<package> version`, and for a browser for tests the vendor's installation
line — Playwright's on `playwright.dev/docs/browsers` — or, for Playwright,
its own dry run, the same command with `--dry-run`, which downloads nothing
and prints the version of each browser and the folder it lands in: measured
that day in a project with Playwright 1.64.1, `npx --no-install playwright
install --dry-run webkit` printed `WebKit 27.2 (playwright webkit v2370)`
with the install location `~/Library/Caches/ms-playwright/webkit-2370`, and
FFmpeg beside it. The version of the package that downloads backs nothing of
the download: run 1 of 23 October 2026 read `npm view @playwright/test
version` and handed `npx playwright install webkit` over backed by nothing.
The handover, and the report of an install the run made itself, say what the
command is backed by, with the version and the folder where a dry run backed
it; run 2a installed `mmdc` under a yes with a line it called the vendor's
and had not read, and its pull request said it had, defect 7 of that entry.
The wording approved on 24 October 2026 stands in the roadmap entry of that
date on how an install is recorded, (a); this text says what is said, not
the words.

**Whether it worked is read off the result, not off their message.** Look
where this command puts things — the path that installer writes to, read from
the installer itself rather than assumed: `$(go env GOPATH)/bin`, or `$GOBIN`
where it is set, for `go install`; `$(brew --prefix)/bin` for `brew`;
`$(npm prefix -g)/bin` for a global `npm` — and see the tool standing there.
For a browser for tests, since 8 October 2026: the directory the vendor names
for this system — `~/Library/Caches/ms-playwright`, `~/Library/Caches/Cypress`
and `~/.cache/puppeteer` on macOS, `~/.cache/ms-playwright`, `~/.cache/Cypress`
and `~/.cache/puppeteer` on Linux — or the directory a setting of the vendor
names, `PLAYWRIGHT_BROWSERS_PATH`, `CYPRESS_CACHE_FOLDER` or
`PUPPETEER_CACHE_DIR` and the vendor's configuration files, where the run
finds one set; the guard looks at no such setting, the run that reads the
result does. Where a dry run backed the command, the folder it printed is the
one read.
**`command -v` answers a different question.** It finds any copy anywhere on
`PATH`, including an older one something else put there, which is the measured
failure exactly: on the user's own machine the broken line looked like a
success, because a stale gitleaks was already on `PATH` from elsewhere. Where
the tool is not at the path that command writes to, the command did not do
what it was handed over for, whatever came back.
