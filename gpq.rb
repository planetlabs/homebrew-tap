# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gpq < Formula
  desc "Utility for working with GeoParquet."
  homepage "https://github.com/planetlabs/gpq"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/planetlabs/gpq/releases/download/v0.9.0/gpq-darwin-arm64.tar.gz"
      sha256 "84cca46a6e5fd28f309f2925dd1e0b0dd0b7029a3b4b79ba10b4d7648f5ece82"

      def install
        bin.install "gpq"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetlabs/gpq/releases/download/v0.9.0/gpq-darwin-amd64.tar.gz"
      sha256 "c5058e30ed302f7ae69599a86eb9bd2585e49e1f18547775d3ec444276fb34fa"

      def install
        bin.install "gpq"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetlabs/gpq/releases/download/v0.9.0/gpq-linux-arm64.tar.gz"
      sha256 "62895480595c3d1ea1712ea4b9ff5aeaf73169a76b224aaea0decb6a4e2359b5"

      def install
        bin.install "gpq"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetlabs/gpq/releases/download/v0.9.0/gpq-linux-amd64.tar.gz"
      sha256 "133eacbb987f7446012076c682ef5d1f1bab7a36550626e30c4370f3c3e642e4"

      def install
        bin.install "gpq"
      end
    end
  end

  test do
    system "#{bin}/xyz2ogc version"
  end
end
