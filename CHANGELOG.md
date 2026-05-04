# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
Placeholder for future releases

## [0.3.0] - 2026-05-04
- Added safety confirmation for FLUSHDB with no arguments or '*', requiring --confirm to flush the entire database.
- KEYS and FLUSHDB now support no arguments, '*', or '<pattern>*' (e.g., test:*) for pattern-based operations.

## [0.2.0] - 2026-05-01
- Updates in line with client RESP implementation

---
Replace `YYYY-MM-DD` with the actual release date when you publish a new version.
