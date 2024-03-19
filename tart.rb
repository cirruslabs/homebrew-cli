# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tart < Formula
  desc "Run macOS and Linux VMs on Apple Hardware"
  homepage "https://github.com/cirruslabs/tart"
  version "2.7.2"
  license "Fair Source"

  depends_on "cirruslabs/cli/softnet"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/cirruslabs/tart/releases/download/2.7.2/tart-arm64.tar.gz"
    sha256 "67f2d9f20d7f1584fb261f78ded17137c2f91de35fd02573d551098fed9f09df"

    def install
      libexec.install Dir["*"]
      bin.write_exec_script "#{libexec}/tart.app/Contents/MacOS/tart"
    end
  end
  if Hardware::CPU.intel?
    url "https://github.com/cirruslabs/tart/releases/download/2.7.2/tart-amd64.tar.gz"
    sha256 "58bfe672f877cd843ed3b151be1df628715da9180ee023d4074119926354536f"

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
