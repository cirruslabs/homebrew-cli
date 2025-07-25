# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TartGuestAgent < Formula
  desc "Guest agent for Tart VMs"
  homepage "https://github.com/cirruslabs/tart-guest-agent"
  version "0.5.1"
  license "FSL-1.1-Apache-2.0"

  on_macos do
    url "https://github.com/cirruslabs/tart-guest-agent/releases/download/v0.5.1/tart-guest-agent-darwin-all.tar.gz"
    sha256 "f4acc6a0bf7f7229d252c8f88bf8588e6de2e7970f1be2471a7276dfd6dfb45d"

    def install
      bin.install "tart-guest-agent"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/tart-guest-agent/releases/download/v0.5.1/tart-guest-agent-linux-amd64.tar.gz"
      sha256 "603af755fef2217ed886103e5a7e8d9e606f83165dff97653c4ed9158c9840d1"
      def install
        bin.install "tart-guest-agent"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/tart-guest-agent/releases/download/v0.5.1/tart-guest-agent-linux-arm64.tar.gz"
      sha256 "4b619e09f70921c163c3c1befdd28412bf366decdaacab121b514072c99553e2"
      def install
        bin.install "tart-guest-agent"
      end
    end
  end
end
