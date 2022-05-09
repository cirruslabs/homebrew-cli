# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tart < Formula
  desc "Run macOS VMs on Apple Silicon"
  homepage "https://github.com/cirruslabs/tart"
  version "0.2.2"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/tart/releases/download/0.2.2/tart.tar.gz"
      sha256 "a2cdb2190173a5f9eb1603fbaec277b775456dd37f368336230ddc258c6adf4c"

      def install
        bin.install "tart"
      end
    end
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
