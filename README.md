# zainfathoni Homebrew Tap

Homebrew formulas for tools maintained by [@zainfathoni](https://github.com/zainfathoni).

## Installation

```bash
brew tap zainfathoni/tap
brew install amux
brew install fizzy-md
```

You can also install a formula without tapping first:

```bash
brew install zainfathoni/tap/amux
brew install zainfathoni/tap/fizzy-md
```

## Available Formulae

- [amux](https://github.com/zainfathoni/amux) — Restore Amp tmux workspaces from a simple TSV config.
- [fizzy-md](https://github.com/zainfathoni/fizzy-md) — Transparent Markdown-to-HTML wrapper for Fizzy CLI.

## Migrating from `zainfathoni/fizzy`

The existing `zainfathoni/fizzy` tap remains compatible during the transition. To move to this shared tap:

```bash
brew uninstall fizzy-md
brew untap zainfathoni/fizzy
brew tap zainfathoni/tap
brew install fizzy-md
```

If `fizzy-md` is already installed and current, you can instead switch taps without reinstalling it:

```bash
brew untap zainfathoni/fizzy
brew tap zainfathoni/tap
```
