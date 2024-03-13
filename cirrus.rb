# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc ""
  homepage ""
  version "0.112.3"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.112.3/cirrus-darwin-arm64.tar.gz"
      sha256 "f73047fc8807405c1f687fcbccfc0ffaa8791d59cd67979dc039cb6f575d366f"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.112.3/cirrus-darwin-amd64.tar.gz"
      sha256 "bdfdb18f8008fc4c70b9d320afe02bb9c3743f4bc9e52e355245e4c8ccd051d8"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.112.3/cirrus-linux-arm64.tar.gz"
      sha256 "a7dbbcdd0e75309c4df55e75a36f7210fe4b3a80444e9073f9b7e2f7e6c12666"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.112.3/cirrus-linux-amd64.tar.gz"
      sha256 "f0e5b04d4bee042833e24ade52780b8b0db6bb525d06d8487dc1ff9f32b4a334"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.112.3/cirrus-linux-arm.tar.gz"
      sha256 "fb34ad2d18c6ffbbd00680f4e1418c5f5e7da30548e2b1cfe9130f10a1956936"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
  end

  def caveats
    <<~EOS
      See the Github repository for more information
    EOS
  end
end
