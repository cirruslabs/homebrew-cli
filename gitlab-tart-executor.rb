# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitlabTartExecutor < Formula
  desc "GitLab Runner Executor to run jobs inside isolated Tart VMs"
  homepage "https://github.com/cirruslabs/gitlab-tart-executor"
  version "1.8.0"

  depends_on "cirruslabs/cli/tart"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/gitlab-tart-executor/releases/download/1.8.0/gitlab-tart-executor-darwin-arm64.tar.gz"
      sha256 "a1fb340b202c3acc1fd8206a28116953001e161b1d31fae8d469ff4922e79810"

      def install
        bin.install "gitlab-tart-executor"
      end
    end
  end

  def caveats
    <<~EOS
      See the Github repository for more information
    EOS
  end
end
