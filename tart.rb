# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tart < Formula
  desc "Run macOS and Linux VMs on Apple Hardware"
  homepage "https://github.com/cirruslabs/tart"
  version "2.16.0"
  license "Fair Source"

  depends_on "cirruslabs/cli/softnet"
  depends_on :macos

  on_intel do
    url "https://github.com/cirruslabs/tart/releases/download/2.16.0/tart-amd64.tar.gz"
    sha256 "990130d96a4799a542da5c1caa6287401f137681bd44873f4cd129b60f9baf07"

    def install
      libexec.install Dir["*"]
      bin.write_exec_script "#{libexec}/tart.app/Contents/MacOS/tart"
      generate_completions_from_executable(libexec/"tart.app/Contents/MacOS/tart", "--generate-completion-script")
    end
  end
  on_arm do
    url "https://github.com/cirruslabs/tart/releases/download/2.16.0/tart-arm64.tar.gz"
    sha256 "8e7778fd79935256aaa63e2893f0dcd9a181331f33dc89191f3e63e28e40dc11"

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
