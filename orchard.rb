# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Orchard < Formula
  desc "Orchestrator for running Tart Virtual Machines on a cluster of Apple Silicon devices"
  homepage "https://github.com/cirruslabs/orchard"
  version "0.14.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/orchard/releases/download/0.14.2/orchard-darwin-arm64.tar.gz"
      sha256 "a1ba3eb3a0e974cbb613e0ef35eefcb1e52525bc4d2c9715dee87015afe03d3b"

      def install
        bin.install "orchard"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/orchard/releases/download/0.14.2/orchard-darwin-amd64.tar.gz"
      sha256 "4f310a2b21c9095bfbe362fc8441f518e889c65c60cf73f30329f96dcafbf4d9"

      def install
        bin.install "orchard"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/orchard/releases/download/0.14.2/orchard-linux-arm64.tar.gz"
      sha256 "f44736baa0f4bb0a709e8db6d0a8974674d144d66f147658b77f95c530462182"

      def install
        bin.install "orchard"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/orchard/releases/download/0.14.2/orchard-linux-amd64.tar.gz"
      sha256 "95b60639ca61c4c3aeba3ad67906058722236217a17d6eb8828605de1b423f16"

      def install
        bin.install "orchard"
      end
    end
  end

  def caveats
    <<~EOS
      See the Github repository for more information
    EOS
  end
end
