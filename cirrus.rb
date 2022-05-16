# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.78.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.78.0/cirrus-darwin-arm64.tar.gz"
      sha256 "628f16c9dd8abb09a9cece9e29791dcc06059aca83ea1ab353608ece81b98b27"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.78.0/cirrus-darwin-amd64.tar.gz"
      sha256 "ce5d83c2294a85ae3e58dc1191130d1fe5cd4e0ad1db51e6a41e2675963e8b7c"

      def install
        bin.install "cirrus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.78.0/cirrus-linux-arm.tar.gz"
      sha256 "25f7787e35253955a4b51e71f5177fef3bd3f597b6425ef3570fdba346d03a40"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.78.0/cirrus-linux-arm64.tar.gz"
      sha256 "08076b7d82c084e1825d52be5ebf70288e62ff251e324af43873ac74ed3f4346"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.78.0/cirrus-linux-amd64.tar.gz"
      sha256 "018553908808eeb6c7ea1c43da406b55261426eb39281598e7ee2adb5bdab847"

      def install
        bin.install "cirrus"
      end
    end
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
