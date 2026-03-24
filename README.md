# homebrew-tap

Homebrew tap for `garbageman`.

## Install

```bash
brew tap yunusemreyakisan/tap
brew install garbageman
```

If another formula named `garbageman` is already tapped locally, install this tap explicitly:

```bash
brew install yunusemreyakisan/tap/garbageman
```

## Maintenance

- `Formula/garbageman.rb` follows the latest published binary release from `yunusemreyakisan/garbageman`.
- Homebrew installs are binary-only; the tap does not build `garbageman` from source.
- Pushes and pull requests run formula validation on GitHub Actions.
