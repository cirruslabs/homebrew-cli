# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tart < Formula
  desc "Run macOS VMs on Apple Silicon"
  homepage "https://github.com/cirruslabs/tart"
  version "2.2.1"
  license "Fair Source"

  depends_on "cirruslabs/cli/softnet"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/tart/releases/download/2.2.1/tart.tar.gz"
      sha256 "ba133124c239e68ba8c01b90b90e2c5773d3614bdcf073234cc27f52e3a877fa"

      def install
        libexec.install Dir["*"]
        bin.write_exec_script "#{libexec}/tart.app/Contents/MacOS/tart"
      end
    end
  end

  depends_on :macos => :ventura

  on_macos do
    unless Hardware::CPU.arm?
      odie "Tart only works on Apple Silicon!"
    end
  end

  def caveats
    <<~EOS
      See the GitHub repository for more information
    EOS
  end
end
