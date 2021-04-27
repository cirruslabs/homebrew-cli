# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.50.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.50.1/cirrus-darwin-amd64.tar.gz"
    sha256 "737dfb1f5ae73e5b1bc20a7a7e3522757553a4f9193e587d3d19ddfb013bb593"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.50.1/cirrus-darwin-arm64.tar.gz"
    sha256 "8f5def11a4a83c920fcdc0b7b9472cdf759c73c62aee6b0c3144bb52d5068cf1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.50.1/cirrus-linux-amd64.tar.gz"
    sha256 "778d4b2fc9afae60c43639b1ffe854ff8d1804e0ffbbc408ffb659eca0c65183"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.50.1/cirrus-linux-arm.tar.gz"
    sha256 "9f4fe6ffee8b01d1418817bcfaf47503f149bf4d8f7169a945e1b23906bd15dd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.50.1/cirrus-linux-arm64.tar.gz"
    sha256 "9292ab536426d2585161dd8bbc3ad9890b2afaa58e862d48b57fd72665f83249"
  end

  def install
    bin.install "cirrus"
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
