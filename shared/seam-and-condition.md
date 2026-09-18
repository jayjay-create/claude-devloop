**A seam is a place where this work is checked** — a function boundary, a module
edge, an entry point. The spec names them and places each one: the path and the
symbol where it stands in the code, or the line of the chosen interface that
creates it. Whether a boundary exists at a place is a fact and not a judgement,
so nothing is tested at a seam the spec has not placed, and nobody's
confirmation stands in for the placing. That holds in both modes alike.

**A condition is what a task promises will be true when it is done** — stated so
that it can be false, and so that breaking it can be seen. The seam says where it
is checked; the condition says what is checked there. **A check guards a
condition only where breaking that condition turns the check red**, and a run
that has not seen that red knows nothing about which of the two it has.
