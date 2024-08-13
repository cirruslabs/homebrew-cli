# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc ""
  homepage ""
  version "0.122.1"
  license "AGPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.122.1/cirrus-darwin-amd64.tar.gz"
      sha256 "4bfc85c97f39ae6367f1c8bfa097f953c30545803dc6c126323adcb3de9ea1bf"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
    on_arm do
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.122.1/cirrus-darwin-arm64.tar.gz"
      sha256 "c3b52b77031490496bd186d4b4b49c6b5c185b4a4025d62977567ef8e40d6cc0"

      def install
        bin.install "cirrus"
        generate_completions_from_executable(bin/"cirrus", "completion")
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.122.1/cirrus-linux-amd64.tar.gz"
        sha256 "42b606d0a62f5646edad65c35a1eaaa5fff763bd95739702cb92181fa8e27aa9"

        def install
          bin.install "cirrus"
          generate_completions_from_executable(bin/"cirrus", "completion")
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.122.1/cirrus-linux-arm.tar.gz"
        sha256 "d77dee0ec3c9a00bd07e1710e6fe9860e09a8f860d6d0ae6c0883893480ca800"

        def install
          bin.install "cirrus"
          generate_completions_from_executable(bin/"cirrus", "completion")
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.122.1/cirrus-linux-arm64.tar.gz"
        sha256 "b0ce741afa05e699db278ff9ae2e7784dff2d8281ffeb0edc34b4dc4a9b4d355"

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
