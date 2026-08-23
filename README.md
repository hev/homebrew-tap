# homebrew-tap

Homebrew formulae for [hev](https://github.com/hev) tools.

```bash
brew install hev/tap/factory
```

## What is here

- **[factory](https://github.com/hev/factory)** — orchestrate a crew of coding
  agents on a Mac you own. macOS only: it is built on launchd, tmux and the
  login keychain.

## Formulae are generated

`Formula/*.rb` is written by the release workflow in each tool's own repo, and
an edit made here is overwritten by the next release. For `factory` that is
[`.github/factory.rb.tmpl`](https://github.com/hev/factory/blob/main/.github/factory.rb.tmpl)
and [`.github/bump-tap.sh`](https://github.com/hev/factory/blob/main/.github/bump-tap.sh).
