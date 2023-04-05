# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Orchard < Formula
  desc "Orchestrator for running Tart Virtual Machines on a cluster of Apple Silicon devices"
  homepage "https://github.com/cirruslabs/orchard"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/orchard/releases/download/0.6.0/orchard-darwin-arm64.tar.gz"
      sha256 "47086cfa5645db9990923075a3df0ed1f89c0745d1962f7e572c3169991e80b7"

      def install
        bin.install "orchard"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/orchard/releases/download/0.6.0/orchard-darwin-amd64.tar.gz"
      sha256 "bc7da568374dc51253325966a6004160bae692e76ec727d025405f9578769248"

      def install
        bin.install "orchard"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/orchard/releases/download/0.6.0/orchard-linux-arm64.tar.gz"
      sha256 "be8e23886069795eac9f67a1a79223a3da2ab02945d25cd756b094c9c1896e86"

      def install
        bin.install "orchard"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/orchard/releases/download/0.6.0/orchard-linux-amd64.tar.gz"
      sha256 "6c2805675f2162144d0bf3259ec2ca5966e0c842a4018952c2cf7e847187e9b5"

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
