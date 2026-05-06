# dartflow

`dartflow` keeps a focused Dart implementation around mobile workflows. The project goal is to model offline form queues, validation, retries, and merge outcomes.

## Project Rationale

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how form pressure and local state should influence a review result.

## Dartflow Review Notes

Start with `conflict cost` and `sync drift`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Feature Set

- `fixtures/domain_review.csv` adds cases for form pressure and sync drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/dartflow-walkthrough.md` walks through the case spread.
- The Dart code includes a review path for `conflict cost` and `sync drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `form pressure`, `sync drift`, `local state`, and `conflict cost`.

The Dart implementation avoids hidden state so fixture changes are easy to reason about.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 231, which lands in `ship`. The most cautious case is `stress` at 153, which lands in `ship`.

## Next Improvements

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
