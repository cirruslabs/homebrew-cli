# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.37.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.37.0/cirrus-darwin-amd64.tar.gz"
    sha256 "30db9e6ab6499e411732531dff71b7c39846e0683d84d10c691f4b9455aaf4a8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.37.0/cirrus-darwin-arm64.tar.gz"
    sha256 "0fe8235e2558536e02552cf001bd2ce02a383965ece5100b321b11803bedbc88"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.37.0/cirrus-linux-amd64.tar.gz"
    sha256 "6bbbc57c2fd9d5c508ce4fcc5a9ddd4f9640f44fd1621ba66794265665b37885"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.37.0/cirrus-linux-arm.tar.gz"
    sha256 "678c7388b4d2398079acf2cc254aa97a74aa1bc510ea2c94815e2ad15d012582"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.37.0/cirrus-linux-arm64.tar.gz"
    sha256 "a6a59c62febf7b517ae6d422afe78253ba6949e59ffc0ae0b02fc7aa8d56b8c6"
  end

  def install
    bin.install "cirrus"
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
