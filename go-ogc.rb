# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoOgc < Formula
  desc "Generate OGC API - Tiles metadata from exiting XYZ tilesets."
  homepage "https://github.com/planetlabs/go-ogc"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/planetlabs/go-ogc/releases/download/v0.9.0/go-ogc-darwin-amd64.tar.gz"
      sha256 "73d60b93f0306f3f0c27981760dce08e404107ef61ae5db9cb43c2f09967a770"

      def install
        bin.install "xyz2ogc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/planetlabs/go-ogc/releases/download/v0.9.0/go-ogc-darwin-arm64.tar.gz"
      sha256 "883b3fada9e2d8b8b7a759fd68709591d578277ca523b116545ea0185d514bdd"

      def install
        bin.install "xyz2ogc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/planetlabs/go-ogc/releases/download/v0.9.0/go-ogc-linux-amd64.tar.gz"
      sha256 "a9b12c9a3af315e973b517a8cb93b8717a9a185d85ef1e212282db5750f235b6"

      def install
        bin.install "xyz2ogc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetlabs/go-ogc/releases/download/v0.9.0/go-ogc-linux-arm64.tar.gz"
      sha256 "173d49e07ac11d6bcbb5a5c8e99b3097b0a5490636f0180d10ad99fdf4453260"

      def install
        bin.install "xyz2ogc"
      end
    end
  end

  test do
    system "#{bin}/xyz2ogc version"
  end
end
