# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.76.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.76.0/cirrus-darwin-arm64.tar.gz"
      sha256 "60e3859f3614805ab1a0b1c2cd98f9768c3c7a5b7a9e089a7690ff5045e4c31a"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.76.0/cirrus-darwin-amd64.tar.gz"
      sha256 "4cff753f8e9961c40e8f5d18ab48667f767b2a865e368e60862f8396b4ddcc0b"

      def install
        bin.install "cirrus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.76.0/cirrus-linux-arm.tar.gz"
      sha256 "cf39ef64df7f825c092e01dc28b22ad43f835dd082a5704759690ca60f6655cc"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.76.0/cirrus-linux-arm64.tar.gz"
      sha256 "1aadba2becbed62f20c31233384e906fb4e576cc79f4cc235ba8cff791043cea"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.76.0/cirrus-linux-amd64.tar.gz"
      sha256 "2497f7ded8bd4bac04ac7bd5909544098057bd15a2117bf6b3a155cf13a0d4f6"

      def install
        bin.install "cirrus"
      end
    end
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
