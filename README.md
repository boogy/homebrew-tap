# boogy/homebrew-tap

Personal [Homebrew](https://brew.sh) tap — a collection of formulae and casks.

## Usage

```sh
brew tap boogy/tap
brew install <package>
```

Or in one step:

```sh
brew install boogy/tap/<package>
```

## Notes

- Packages under `Casks/` (and any `Formula/`) are generated automatically by [GoReleaser](https://goreleaser.com) from each project’s own repository on release — do not edit them by hand.
