These names mean the same in every project, so a skill can say `make lint` and
be right everywhere. The table is the whole set: a class is filled under these
names and no others, the whole target on every row, the per-file target where
the row has one, and a class with no tool gets no target.

| Class | Per-file target | Whole target |
|---|---|---|
| format | `fmt-file` | `fmt` |
| lint | `lint-file` | `lint` |
| types | — | `types` |
| unit | `test-file` | `test-unit` |
| integration | — | `test-integration` |
| end-to-end | — | `test-e2e` |
| secrets | — | `scan-secrets` |
| dependencies | — | `scan-deps` |
| code-security | — | `scan-code` |

Per-file targets take the path as `FILE=<path>`. Four targets stand beside the
classes and belong to none: `check`, every blocking class in sequence;
`test-one NAME=<name>`, one test by name; `services-up`; and `fmt-write`, the
rewriting form of the format tool, which stands in no table row and is called
by no hook.
