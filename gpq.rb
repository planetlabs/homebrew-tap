# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gpq < Formula
  desc "Utility for working with GeoParquet."
  homepage "https://github.com/planetlabs/gpq"
  version "0.21.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/planetlabs/gpq/releases/download/v0.21.0/gpq-darwin-amd64.tar.gz"
      sha256 "c984a3845a61af1a9096e8e1f1d5bdd0b0ee70dd1158b5e8bf7f97fdc99d6746"

      def install
        bin.install "gpq"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/planetlabs/gpq/releases/download/v0.21.0/gpq-darwin-arm64.tar.gz"
      sha256 "f2b428ae25c78a99b9f54ef89a648cfdf39b78dcf170e2b182991a32668d242e"

      def install
        bin.install "gpq"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetlabs/gpq/releases/download/v0.21.0/gpq-linux-arm64.tar.gz"
      sha256 "7c13f7d4ea95f4b2dbd6a790340490ca2ba6b89422ac2f30d600b62d5f6d35fe"

      def install
        bin.install "gpq"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetlabs/gpq/releases/download/v0.21.0/gpq-linux-amd64.tar.gz"
      sha256 "04ee35a32003b15177e33ef9a71f82fad7ce6b6b421648cae9477f18c9b68b24"

      def install
        bin.install "gpq"
      end
    end
  end

  test do
    system "#{bin}/gpq version"
  end
end
