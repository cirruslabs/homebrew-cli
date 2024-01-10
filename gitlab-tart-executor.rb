# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitlabTartExecutor < Formula
  desc "GitLab Runner Executor to run jobs inside isolated Tart VMs"
  homepage "https://github.com/cirruslabs/gitlab-tart-executor"
  version "1.5.2"

  depends_on "cirruslabs/cli/tart"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/gitlab-tart-executor/releases/download/1.5.2/gitlab-tart-executor-darwin-arm64.tar.gz"
      sha256 "8d5ceff28ae942cbf31fdcc02ff2314a67d9d7a6678ce786ab9ff96e02fa6e14"

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
