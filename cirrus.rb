# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.58.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.58.0/cirrus-darwin-amd64.tar.gz"
      sha256 "a64ad44fdbb485283517eeec9251df97d6567c0acabd824d6b9874e9c9218d94"
    end
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.58.0/cirrus-darwin-arm64.tar.gz"
      sha256 "d9c285b74d39e67d648ef6151eb564fda73af589abe9d9c39da34bfe99283cd1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.58.0/cirrus-linux-amd64.tar.gz"
      sha256 "b075c5c80c37f23797570a2e496c01422c382efa3e6f722a458a24d968e98340"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.58.0/cirrus-linux-arm.tar.gz"
      sha256 "dfc3e23c3152462e4f8aaf6ab3849f327725aacf739809a0d01deb06cc9f3da0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.58.0/cirrus-linux-arm64.tar.gz"
      sha256 "430ae624d4ce42e840e06f0868055e925561e1211f6999d34f173dde55682fbb"
    end
  end

  def install
    bin.install "cirrus"
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
