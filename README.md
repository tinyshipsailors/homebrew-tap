# TinyShip Sailors Homebrew Tap

Homebrew casks for [TinyShip Sailors](https://tinyshipsailors.com) apps.

## Install

```sh
brew install --cask tinyshipsailors/tap/flotnote
brew install --cask tinyshipsailors/tap/walasr
```

The first command auto-adds the tap. Or add it explicitly once:

```sh
brew tap tinyshipsailors/tap
brew install --cask flotnote
```

## Update

Both apps update themselves through Sparkle, so a normal `brew upgrade` won't
replace them. To force Homebrew to pull the latest release instead:

```sh
brew upgrade --cask --greedy flotnote
brew upgrade --cask --greedy walasr
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
| `walasr` | Prayer times and iqamah countdown in the menu bar |

---

Casks are updated automatically on each release by `publish.sh` in the app repo.
