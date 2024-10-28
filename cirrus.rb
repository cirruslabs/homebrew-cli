# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc ""
  homepage ""
  version "0.131.2"
  license "AGPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.131.2/cirrus-darwin-amd64.tar.gz"
      sha256 "973d4f11b31299d239137a285bef9353e4c91ca8b5afa1186047f06cc6313436"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
    on_arm do
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.131.2/cirrus-darwin-arm64.tar.gz"
      sha256 "3e9f1d3954e1010c71c2bb913702c3b1bc1698f25a800bc690d5354592ee4cd5"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.131.2/cirrus-linux-amd64.tar.gz"
        sha256 "c238680f9d4330fca4b7dd6cb30add0c5b5a1dca1df35d0b71dafed97ce293ee"

        def install
          bin.install "cirrus"
          generate_completions_from_executable(bin/"cirrus", "completion")
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.131.2/cirrus-linux-arm.tar.gz"
        sha256 "88cb7c195acc2e9b31782c320dd2a7dd93c80d6aaf9f613d0e60b0bf03e20d87"

        def install
          bin.install "cirrus"
          generate_completions_from_executable(bin/"cirrus", "completion")
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.131.2/cirrus-linux-arm64.tar.gz"
        sha256 "c98ef5eee6ccbd866338ed8a5baf47f8ffdacdfa13776d2f007f5c1723a5430f"

        def install
          bin.install "cirrus"
          generate_completions_from_executable(bin/"cirrus", "completion")
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
