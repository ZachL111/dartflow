# Review Journal

The review surface for `dartflow` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its mobile workflows focus without claiming live deployment or external usage.

## Cases

- `baseline`: `form pressure`, score 193, lane `ship`
- `stress`: `sync drift`, score 153, lane `ship`
- `edge`: `local state`, score 187, lane `ship`
- `recovery`: `conflict cost`, score 231, lane `ship`
- `stale`: `form pressure`, score 203, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
