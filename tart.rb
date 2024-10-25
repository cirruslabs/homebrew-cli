# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tart < Formula
  desc "Run macOS and Linux VMs on Apple Hardware"
  homepage "https://github.com/cirruslabs/tart"
  version "2.19.0"
  license "Fair Source"

  depends_on "cirruslabs/cli/softnet"
  depends_on :macos

  on_intel do
    url "https://github.com/cirruslabs/tart/releases/download/2.19.0/tart-amd64.tar.gz"
    sha256 "06b2a4e1875734019337217abe02ab77fcf1ba1c0568dcac2a7cd049ec9d16f7"

    def install
      libexec.install Dir["*"]
      bin.write_exec_script "#{libexec}/tart.app/Contents/MacOS/tart"
      generate_completions_from_executable(libexec/"tart.app/Contents/MacOS/tart", "--generate-completion-script")
    end
  end
  on_arm do
    url "https://github.com/cirruslabs/tart/releases/download/2.19.0/tart-arm64.tar.gz"
    sha256 "e558e7e53fca793a2086f72acbb8e7cec754b79d15ea1ec238cd72287a04ea0d"

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
