# Santa Cruz match history

This directory contains the data project for the historical matches of Santa
Cruz Futebol Clube. It is kept separate from the Jekyll website and excluded
from the generated site.

## Scope

The first implementation phase will prioritize match-level data:

- permanent published match code (`YYYY-NN`);
- date, competition and phase;
- venue, score and opponent;
- referee, attendance, revenue and coach when published;
- goal scorers, including own goals and unknown scorers;
- source provenance and review state.

Narrative excerpts will not be stored. Lineups and substitutions are deferred,
but the conceptual model must allow them to be added later without changing
the public match identifiers.

## Source files

The PDFs remain outside this repository. Their paths will be stored relative
to a configurable Dropbox root, using this base path:

```text
06_Biblioteca/Futebol/Livros Santa Cruz/
```

The books are the only sources for the initial phase. External sources may be
used later through an explicit correction workflow.

## Directory map

```text
apps/web/             Future search and visualization application
data/database/        Canonical SQLite database
data/exports/         Generated CSV and Excel exports
data/manifests/       Versioned source metadata and checksums
docs/data-dictionary/ Data definitions and normalization rules
docs/decisions/       Auditable project decisions
pipeline/             Extraction, import and validation code
tests/fixtures/       Small, reviewable test samples
```

Data correctness takes priority over extraction volume. Published values must
remain traceable, and corrections must never silently replace source values.
