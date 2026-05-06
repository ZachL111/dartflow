# Dartflow Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | form pressure | 193 | ship |
| stress | sync drift | 153 | ship |
| edge | local state | 187 | ship |
| recovery | conflict cost | 231 | ship |
| stale | form pressure | 203 | ship |

Start with `recovery` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around sync drift and conflict cost.
