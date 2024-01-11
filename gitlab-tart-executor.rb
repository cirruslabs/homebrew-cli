# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitlabTartExecutor < Formula
  desc "GitLab Runner Executor to run jobs inside isolated Tart VMs"
  homepage "https://github.com/cirruslabs/gitlab-tart-executor"
  version "1.6.0"

  depends_on "cirruslabs/cli/tart"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/gitlab-tart-executor/releases/download/1.6.0/gitlab-tart-executor-darwin-arm64.tar.gz"
      sha256 "6dead569cba3d7c19d09c188b93d01d12391287f83a2a51fbe5b147ec0422cce"

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
