# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tart < Formula
  desc "Run macOS and Linux VMs on Apple Hardware"
  homepage "https://github.com/cirruslabs/tart"
  version "2.6.0"
  license "Fair Source"

  depends_on "cirruslabs/cli/softnet"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/cirruslabs/tart/releases/download/2.6.0/tart-arm64.tar.gz"
    sha256 "42d56a8268d8a4b0211626d6d4321558d6223a31c1d57fd863acd1541fb5b280"

    def install
      libexec.install Dir["*"]
      bin.write_exec_script "#{libexec}/tart.app/Contents/MacOS/tart"
    end
  end
  if Hardware::CPU.intel?
    url "https://github.com/cirruslabs/tart/releases/download/2.6.0/tart-amd64.tar.gz"
    sha256 "ea44b476de1e1b38c56654b0ab42d41fd57e627719b160dcfb70919b680e5996"

    def install
      libexec.install Dir["*"]
      bin.write_exec_script "#{libexec}/tart.app/Contents/MacOS/tart"
    end
  end

  depends_on :macos => :ventura

  def caveats
    <<~EOS
      See the GitHub repository for more information
    EOS
  end
end
