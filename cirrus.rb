# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.29.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.29.1/cirrus-darwin-amd64.tar.gz"
    sha256 "e8d575b1c985c612e961c7ca294b7cda5ff38b08213e10c1aab6e13a1125d494"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.29.1/cirrus-linux-amd64.tar.gz"
    sha256 "898cd87665577019ed1d6ff87d60258e92d873479efefae3da0659c602370ae2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.29.1/cirrus-linux-arm.tar.gz"
    sha256 "02fbd4f156781a5324b425411c7daf65a035fa8cb0603e6129d7c4490797c80a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.29.1/cirrus-linux-arm64.tar.gz"
    sha256 "c746394f2803e7b0b69743c2e9c96ab40f1b85a7e9a9cb809259ba33b6244355"
  end

  def install
    bin.install "cirrus"
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
