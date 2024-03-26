# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc ""
  homepage ""
  version "0.113.1"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.113.1/cirrus-darwin-amd64.tar.gz"
      sha256 "69b8cb581ba0a5878e6262ffba22e981d35033926eafe528af82077a135ea17b"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.113.1/cirrus-darwin-arm64.tar.gz"
      sha256 "69e33bd2bfebabb06c1d16a83c6236e4e60574cb1312251ac224067ca1b6e973"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.113.1/cirrus-linux-amd64.tar.gz"
      sha256 "181ea21afd930ae4d202850e6890f1e619b8bb22548ad21e88bad6e6e3113336"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.113.1/cirrus-linux-arm64.tar.gz"
      sha256 "637b2f1abe30cfe4a4e504d941afd7b0d6caa8b7c96a0b9286edf99abdb29145"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.113.1/cirrus-linux-arm.tar.gz"
      sha256 "32b56dab1aff0719a1aa3f32594fe5a55d179a9630e19b0f5838bc66d3d15887"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
  end

  def caveats
    <<~EOS
      See the Github repository for more information
    EOS
  end
end
