# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc ""
  homepage ""
  version "0.124.1"
  license "AGPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.124.1/cirrus-darwin-amd64.tar.gz"
      sha256 "4e753dc3482454cf98b22981605c9bd9aa8554bb816f08a7d927c3e5e6630321"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
    on_arm do
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.124.1/cirrus-darwin-arm64.tar.gz"
      sha256 "810ea2ef1424d0e90ac8c68b5031522f2a5e161c6d7cc69f47e98c35453e41c0"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.124.1/cirrus-linux-amd64.tar.gz"
        sha256 "66de86a910ea1e6217c0192c35b2f47ace73df3075016125beadcea2e61602e9"

        def install
          bin.install "cirrus"
          generate_completions_from_executable(bin/"cirrus", "completion")
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.124.1/cirrus-linux-arm.tar.gz"
        sha256 "6e8aa89dadc8893f5fac6a66c726b0502f901165ac8d98fedcd9f0076c666c65"

        def install
          bin.install "cirrus"
          generate_completions_from_executable(bin/"cirrus", "completion")
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.124.1/cirrus-linux-arm64.tar.gz"
        sha256 "2a4b5cc25476e7aefc9ed1e67de2e864526a69ddca63cd7ac08758ce9bb99c5a"

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
