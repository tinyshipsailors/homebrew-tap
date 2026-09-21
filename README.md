# TinyShip Sailors Homebrew Tap

Homebrew casks for [TinyShip Sailors](https://tinyshipsailors.com) apps.

## Install

```sh
brew install --cask tinyshipsailors/tap/flotnote
```

The first command auto-adds the tap. Or add it explicitly once:

```sh
brew tap tinyshipsailors/tap
brew install --cask flotnote
```

## Update

Flotnote updates itself through Sparkle, so a normal `brew upgrade` won't
replace it. To force Homebrew to pull the latest release instead:

```sh
brew upgrade --cask --greedy flotnote
```

## Uninstall

```sh
brew uninstall --cask flotnote        # remove the app
brew uninstall --zap --cask flotnote  # also remove app data
```

## Apps

| Cask | Description |
|------|-------------|
| `flotnote` | Floating Markdown notes for macOS |

---

Casks are updated automatically on each release by `publish.sh` in the app repo.
