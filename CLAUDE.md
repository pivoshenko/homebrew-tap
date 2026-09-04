# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A Homebrew tap (`pivoshenko/tap`, from the `homebrew-tap` repo name) hosting formulae for pivoshenko's tools. It currently contains a single formula: `Formula/kasetto.rb`, which installs prebuilt `kasetto` release binaries (macOS/Linux, arm64/x86_64) plus the `kst` alias binary from GitHub release tarballs of `pivoshenko/kasetto`.

## Critical: formula updates are automated

The `kasetto N.N.N` version-bump commits are pushed by `github-actions[bot]` from release automation in the `pivoshenko/kasetto` repository — each release rewrites the formula's `version`, `url`, and `sha256` fields. Do not hand-edit versions or checksums here; a version bump belongs in the kasetto release pipeline, not in this repo. Manual edits are appropriate only for formula structure (install steps, test block, metadata, new formulae).

## Commands

This repo defines no build/lint/test tooling of its own (no Makefile, CI workflows, or scripts). Validation goes through Homebrew itself:

- `brew install pivoshenko/tap/kasetto` — install via the tap
- `brew test kasetto` — runs the formula's `test do` block (asserts `kasetto --version` output matches the formula version)

## Conventions

- `.editorconfig` applies: 2-space indent, LF, UTF-8, final newline, max line length 120 (Ruby formulae use the 2-space default).
- PRs follow `.github/PULL_REQUEST_TEMPLATE.md` (summary + checklist).
- Human commits in history use conventional prefixes (`docs:`, `chore:`); automated release commits are bare `kasetto N.N.N`.
- New formulae go in `Formula/` named `<tool>.rb`; the kasetto formula gates per-OS/arch tarball URLs with `on_macos`/`on_linux` and `Hardware::CPU.arm?`, and is licensed `any_of: ["MIT", "Apache-2.0"]`.
