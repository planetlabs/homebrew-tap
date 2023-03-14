# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoStac < Formula
  desc "Utilities for working with Spatio-Temporal Asset Catalog (STAC) resources."
  homepage "https://github.com/planetlabs/go-stac"
  version "0.21.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/planetlabs/go-stac/releases/download/v0.21.0/go-stac_Darwin_x86_64.tar.gz"
      sha256 "f18fecdad8e20db1984c4786eb785e638afe9260e10a69cde92f38611832b647"

      def install
        bin.install "stac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/planetlabs/go-stac/releases/download/v0.21.0/go-stac_Darwin_arm64.tar.gz"
      sha256 "5d4bdd0c52138012ca0fc7b7b0cf44b6c8cb37b3aab6ce6689e2dfe66721dbf2"

      def install
        bin.install "stac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetlabs/go-stac/releases/download/v0.21.0/go-stac_Linux_arm64.tar.gz"
      sha256 "5dfde797aa4eaa4e2992bd2add9f74e7aba9cd80d15b30c011540aad481fa330"

      def install
        bin.install "stac"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetlabs/go-stac/releases/download/v0.21.0/go-stac_Linux_x86_64.tar.gz"
      sha256 "83f7fabba90d9721d289b3ede0d9529c39eb0d9d4348f0c5f6e06498635674ff"

      def install
        bin.install "stac"
      end
    end
  end

  test do
    system "#{bin}/stac version"
  end
end
