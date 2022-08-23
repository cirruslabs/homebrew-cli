# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tart < Formula
  desc "Run macOS VMs on Apple Silicon"
  homepage "https://github.com/cirruslabs/tart"
  version "0.21.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/tart/releases/download/0.21.0/tart.tar.gz"
      sha256 "da0c59508fc0d35007cf56e296a6e5886b187b1b2080c14c97f6309c2c1b8134"

      def install
        bin.install "tart"
      end
    end
  end

  depends_on :macos => :monterey

  on_macos do
    unless Hardware::CPU.arm?
      odie "Tart only works on Apple Silicon!"
    end
  end

  depends_on "cirruslabs/cli/softnet"

  def caveats; <<~EOS
    See the GitHub repository for more information
  EOS
  end
end
