**A target listed in `checks.md` renders a verdict and changes nothing.** A tool
that rewrites files is invoked with its checking option — formatting as `--check`
or equivalent. The rewriting variant gets its own target (`fmt-write`) that appears
in no table row and is called by no hook. A target that always passes is worse
than no target at all.
