This repository hosts Homebrew formulae for packages published by Planet.

## Installation

You can install these packages by using the `planetlabs/tap` prefix.  For example, to install the `go-stac` package:

    brew install planetlabs/tap/go-stac

## Publishing

You can publish a new formula by adding it to the root of the repository.  This can be automated as part of a release process.  See the [`go-stac` project](https://github.com/planetlabs/go-stac/blob/main/.goreleaser.yaml) for an example using [GoReleaser](https://goreleaser.com/) to update the Homebrew formula.
