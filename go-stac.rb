# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoStac < Formula
  desc "Utilities for working with Spatio-Temporal Asset Catalog (STAC) resources."
  homepage "https://github.com/planetlabs/go-stac"
  version "0.33.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/planetlabs/go-stac/releases/download/v0.33.0/go-stac-darwin-amd64.tar.gz"
      sha256 "e135743a2562dd14a5fb0702c674dd7ed9e378cedcd4e565ba8cbdf105e785f0"

      def install
        bin.install "stac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/planetlabs/go-stac/releases/download/v0.33.0/go-stac-darwin-arm64.tar.gz"
      sha256 "8b7f841bb49368548a325011567f58848d9ef5f36fe129f93848cd3a8dba4ba3"

      def install
        bin.install "stac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/planetlabs/go-stac/releases/download/v0.33.0/go-stac-linux-amd64.tar.gz"
        sha256 "c1c0a828a611762d3b2262dc420ecd1ef2cf04b774d8525e8f9f6f095dc66e56"

        def install
          bin.install "stac"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/planetlabs/go-stac/releases/download/v0.33.0/go-stac-linux-arm64.tar.gz"
        sha256 "e1f3c84a61a75f918410ab743947b8c564b8333a77c5f6f9447e429fa27ab12b"

        def install
          bin.install "stac"
        end
      end
    end
  end

  test do
    system "#{bin}/stac version"
  end
end
