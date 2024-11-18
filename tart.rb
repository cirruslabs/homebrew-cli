# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tart < Formula
  desc "Run macOS and Linux VMs on Apple Hardware"
  homepage "https://github.com/cirruslabs/tart"
  version "2.20.2"
  license "Fair Source"

  depends_on "cirruslabs/cli/softnet"
  depends_on :macos

  on_intel do
    url "https://github.com/cirruslabs/tart/releases/download/2.20.2/tart-amd64.tar.gz"
    sha256 "d01b70fd6fe05d8907bb2501c49f4dbe0e2541008e90235215602efba3e52c66"

    def install
      libexec.install Dir["*"]
      bin.write_exec_script "#{libexec}/tart.app/Contents/MacOS/tart"
      generate_completions_from_executable(libexec/"tart.app/Contents/MacOS/tart", "--generate-completion-script")
    end
  end
  on_arm do
    url "https://github.com/cirruslabs/tart/releases/download/2.20.2/tart-arm64.tar.gz"
    sha256 "71a1ee0534696e615b993943467c59c8633a17de622a332129b3d37b3e4779c7"

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
