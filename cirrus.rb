# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc ""
  homepage ""
  version "0.119.1"
  license "AGPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.119.1/cirrus-darwin-amd64.tar.gz"
      sha256 "59d13995f0ddda34878316a409aa250c7e21a333d1b777d90915086fcff1c9fe"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
    on_arm do
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.119.1/cirrus-darwin-arm64.tar.gz"
      sha256 "8602ca5c18d8d4db2b35bc100cb8510020fd2b232b686ab1f40b00478fb66d61"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.119.1/cirrus-linux-amd64.tar.gz"
        sha256 "9b47bba49d29d02a5605574a0e4d995d5dc58bf4097e34352e1cb0f799494687"

        def install
          bin.install "cirrus"
          generate_completions_from_executable(bin/"cirrus", "completion")
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.119.1/cirrus-linux-arm.tar.gz"
        sha256 "759af6ade6ef6f0a318c5f91068463354e06ad9752ea9db054fb89600a453726"

        def install
          bin.install "cirrus"
          generate_completions_from_executable(bin/"cirrus", "completion")
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.119.1/cirrus-linux-arm64.tar.gz"
        sha256 "6a68cf30e1b013dc068f735c41987e8a2d046689f5ed01acd6ec9db1350f5bd7"

        def install
          bin.install "cirrus"
          generate_completions_from_executable(bin/"cirrus", "completion")
        end
      end
    end
  end

  def caveats
    <<~EOS
      See the Github repository for more information
    EOS
  end
end
