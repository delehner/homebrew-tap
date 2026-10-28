# CLAUDE.md

Homebrew tap for `wisp`. `Formula/wisp.rb` is updated after each `wisp` release, with version, URLs and `sha256` computed from the published artifacts.

## Shared context

Common rules for all of Denilson's personal repositories live in the [`handbook`](https://github.com/delehner/handbook/blob/main/AGENTS.md), loaded through the root `CLAUDE.md` of the [`workspace`](https://github.com/delehner/workspace) (clone it and run `./ws sync`). Specialist agents and the `council` and `orchestrate` skills come from the `delehner-core` plugin, enabled in `.claude/settings.json`. Rules in this file win when they are more specific.

## Specialist

Changes here are delegated to the `rust-developer` agent (`delehner-core` plugin).

## Verification

```bash
brew audit --strict --formula Formula/wisp.rb
```
