This repository hosts Homebrew formulae for packages published by Planet.

## Installation

You can install these packages by using the `planetlabs/tap` prefix.

```shell
brew install planetlabs/tap/<formula>
```

For example, to install `gpq`:

```shell
brew install planetlabs/tap/gpq
```

If you have previously installed a formula from this tap, run an update first to get the most up to date formulae:

```shell
brew update
```

## Publishing

You can publish a new formula by adding it to the root of the repository.  This can be automated as part of a release process.  See the [`gpq` project](https://github.com/planetlabs/gpq/blob/main/.goreleaser.yml) for an example using [GoReleaser](https://goreleaser.com/) to update the Homebrew formula.
