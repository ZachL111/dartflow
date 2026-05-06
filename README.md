# dartflow

`dartflow` is a Dart project for Mobile workflows. It turns model offline form queues, validation, retries, and merge outcomes into a small local model with readable fixtures and a direct verification command.

## Reading Dartflow

Start with the README, then open `metadata/project.json` to check the constants behind the examples. After that, `fixtures/cases.csv` shows the compact path and `examples/extended_cases.csv` gives a wider look at the same rule.

## Purpose

This is not a wrapper around a service. It is a self-contained project that shows how the model behaves when demand, capacity, latency, risk, and weight move in different directions.

## What It Does

- Models local state with deterministic scoring and explicit review decisions.
- Uses fixture data to keep sync pressure changes visible in code review.
- Includes extended examples for form constraints, including `surge` and `degraded`.
- Documents offline paths tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## Design Sketch

The interesting part is the boundary between accepted and reviewed scenarios. Extended examples sit near that boundary so future edits can show whether the model became more permissive or more cautious. The Dart project uses a small library and assertion script, avoiding package dependencies for verification.

## Files Worth Reading

- `lib`: library code
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Setup

Clone the repository, enter the directory, and run the verifier. No database server, cloud account, or token is required.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Verification

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Fixture Notes

`baseline` is the first example I would inspect because it lands on the `review` path with a score of 158. The broader file also keeps `degraded` at 2 and `surge` at 260, which gives the model a useful low-to-high spread.

## Limits

The fixture set is deliberately small. That keeps the review surface clear, but it also means the model should not be treated as a complete domain simulator.

## Next Directions

- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add malformed input fixtures so the failure path is as visible as the happy path.
- Add one more mobile workflows fixture that focuses on a malformed or borderline input.
