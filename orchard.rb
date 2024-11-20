# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Orchard < Formula
  desc "Orchestrator for running Tart Virtual Machines on a cluster of Apple Silicon devices"
  homepage "https://github.com/cirruslabs/orchard"
  version "0.25.2"

  on_macos do
    on_intel do
      url "https://github.com/cirruslabs/orchard/releases/download/0.25.2/orchard-darwin-amd64.tar.gz"
      sha256 "df26140302b1a97377efd156579afce1f3dca666aa82f73aa045e3834f14a40c"

      def install
        bin.install "orchard"
        generate_completions_from_executable(bin/"orchard", "completion")
      end
    end
    on_arm do
      url "https://github.com/cirruslabs/orchard/releases/download/0.25.2/orchard-darwin-arm64.tar.gz"
      sha256 "343574a0c36a2f56653688effa5b264de4cb21b2010dbb1d64068dd610709d80"

      def install
        bin.install "orchard"
        generate_completions_from_executable(bin/"orchard", "completion")
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cirruslabs/orchard/releases/download/0.25.2/orchard-linux-amd64.tar.gz"
        sha256 "cdc2ec5dc62452b399aef0ddb5b91dcb31f342809daffe40ecec991d7259266d"

        def install
          bin.install "orchard"
          generate_completions_from_executable(bin/"orchard", "completion")
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cirruslabs/orchard/releases/download/0.25.2/orchard-linux-arm64.tar.gz"
        sha256 "a3b4b4dd3f3d64f6f17ebe8d95633d8e3df7b62db0f463c3bab287bac7d0092c"

        def install
          bin.install "orchard"
          generate_completions_from_executable(bin/"orchard", "completion")
        end
      end
    end
  end

  def caveats
    <<~EOS
      See the Github repository for more information
    EOS
  end
end
