# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Softnet < Formula
  desc "Software networking with isolation for Tart"
  homepage "https://github.com/cirruslabs/softnet"
  version "0.11.1"
  depends_on :macos

  on_intel do
    url "https://github.com/cirruslabs/softnet/releases/download/0.11.1/softnet-amd64.tar.gz"
    sha256 "fffdefcee619f85b907c6fccda6aecc8a1797ac892f6b22ffa6a4ebd6c79e080"

    def install
      bin.install "softnet"
    end
  end
  on_arm do
    url "https://github.com/cirruslabs/softnet/releases/download/0.11.1/softnet-arm64.tar.gz"
    sha256 "db92c8d4ca89a4abd44934545938e51201ee58499beef5e16d0de96606a6c979"

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
