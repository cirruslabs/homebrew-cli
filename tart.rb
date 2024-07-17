# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tart < Formula
  desc "Run macOS and Linux VMs on Apple Hardware"
  homepage "https://github.com/cirruslabs/tart"
  version "2.14.0"
  license "Fair Source"

  depends_on "cirruslabs/cli/softnet"
  depends_on :macos

  on_intel do
    url "https://github.com/cirruslabs/tart/releases/download/2.14.0/tart-amd64.tar.gz"
    sha256 "d6cc6c63a800fadad16d766110c416917db819048ea67497e4fe5f1683c979fb"

    def install
      libexec.install Dir["*"]
      bin.write_exec_script "#{libexec}/tart.app/Contents/MacOS/tart"
      generate_completions_from_executable(libexec/"tart.app/Contents/MacOS/tart", "--generate-completion-script")
    end
  end
  on_arm do
    url "https://github.com/cirruslabs/tart/releases/download/2.14.0/tart-arm64.tar.gz"
    sha256 "dc8e1649d59f3d977ffe926261729c8298f1f2abf89d278c1c71891358dad34a"

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
