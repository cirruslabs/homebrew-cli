# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc ""
  homepage ""
  version "0.113.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.113.0/cirrus-darwin-amd64.tar.gz"
      sha256 "1ae267d32cfc59c4d0b3631194a46e5062a6d034beb1faf5f1e5d0c8ae9c4aad"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.113.0/cirrus-darwin-arm64.tar.gz"
      sha256 "031a071bb4b4c8ff20d38b465ee537688075bdd72f331b928f82f1f13b4067ba"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.113.0/cirrus-linux-arm64.tar.gz"
      sha256 "14a9eb1efdaca785c7a202add9776b4eed411e6a578023806f80920f7031fd2a"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.113.0/cirrus-linux-amd64.tar.gz"
      sha256 "2f5ed63cb911d61d45b982b7e50c9a9502b271d93d1468e8b74002c62f134b11"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.113.0/cirrus-linux-arm.tar.gz"
      sha256 "cbbdabc85211465a38d9a55d46a702afb848956de7dcc6cb007ae9ba085f8d13"

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
