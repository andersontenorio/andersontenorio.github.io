# Canonical database

This directory is reserved for the canonical SQLite database.

The database will be versioned when it is first created. SQLite sidecar files
such as write-ahead logs and shared-memory files are ignored because they are
runtime artifacts rather than canonical data.
