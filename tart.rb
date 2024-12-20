# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tart < Formula
  desc "Run macOS and Linux VMs on Apple Hardware"
  homepage "https://github.com/cirruslabs/tart"
  version "2.22.3"
  license "Fair Source"

  depends_on "cirruslabs/cli/softnet"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/cirruslabs/tart/releases/download/2.22.3/tart-amd64.tar.gz"
    sha256 "87fa99682d99b6163a90eb6bbd137226ac51f50c7ccef9bd2ae1440745e4ac7a"

    def install
      libexec.install Dir["*"]
      bin.write_exec_script "#{libexec}/tart.app/Contents/MacOS/tart"
      generate_completions_from_executable(libexec/"tart.app/Contents/MacOS/tart", "--generate-completion-script")
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/cirruslabs/tart/releases/download/2.22.3/tart-arm64.tar.gz"
    sha256 "8206a7e9ad0cedc95c111035bdcabd425c38707b31bfafabc01791ef3ec256f4"

    def install
      libexec.install Dir["*"]
      bin.write_exec_script "#{libexec}/tart.app/Contents/MacOS/tart"
      generate_completions_from_executable(libexec/"tart.app/Contents/MacOS/tart", "--generate-completion-script")
    end
  end

  depends_on :macos => :ventura

  def caveats
    <<~EOS
      See the GitHub repository for more information
    EOS
  end
end
