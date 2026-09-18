**A command that fetches something from outside is backed before it is handed
over**, and the backing is one of two things: the vendor's own installation
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

**Whether it worked is read off the result, not off their message.** Look
where this command puts things — the path that installer writes to, read from
the installer itself rather than assumed: `$(go env GOPATH)/bin`, or `$GOBIN`
where it is set, for `go install`; `$(brew --prefix)/bin` for `brew`;
`$(npm prefix -g)/bin` for a global `npm` — and see the tool standing there.
**`command -v` answers a different question.** It finds any copy anywhere on
`PATH`, including an older one something else put there, which is the measured
failure exactly: on the user's own machine the broken line looked like a
success, because a stale gitleaks was already on `PATH` from elsewhere. Where
the tool is not at the path that command writes to, the command did not do
what it was handed over for, whatever came back.
