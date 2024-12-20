# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Softnet < Formula
  desc "Software networking with isolation for Tart"
  homepage "https://github.com/cirruslabs/softnet"
  version "0.12.0"
  depends_on :macos

  on_intel do
    url "https://github.com/cirruslabs/softnet/releases/download/0.12.0/softnet-amd64.tar.gz"
    sha256 "5940f86fc12719488a42d45e6c74585ee5afe4a7d96d499f9e702b68c32aa275"

    def install
      bin.install "softnet"
    end
  end
  on_arm do
    url "https://github.com/cirruslabs/softnet/releases/download/0.12.0/softnet-arm64.tar.gz"
    sha256 "97317407ce54d1e9670dd0e6bbe9f91f0b003202d241aacd478f5e7238463330"

    def install
      bin.install "softnet"
    end
  end

  def caveats
    <<~EOS
      See the Github repository for more information
    EOS
  end
end
