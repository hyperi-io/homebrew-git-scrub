# Project:   git-scrub
# File:      packaging/homebrew/git-scrub.rb
# Purpose:   Homebrew formula template for git-scrub
# Language:  Ruby
#
# License:   Apache-2.0
# Copyright: (c) 2026 HYPERI PTY LIMITED

class GitScrub < Formula
  desc "Surgical removal of unwanted content from git history"
  homepage "https://github.com/hyperi-io/git-scrub"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.1/git-scrub-1.0.1-darwin-arm64.tar.gz"
      sha256 "f5dcb2c5f7070e4151d44466a22c902cf093b40930d3bef1b387cc710fff58b5"
    else
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.1/git-scrub-1.0.1-darwin-amd64.tar.gz"
      sha256 "4bbb70358ef80f33084cdc8c9c7ee787cf9602f5690d6b5fbc9e0f2d3a3a3762"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.1/git-scrub-1.0.1-linux-arm64.tar.gz"
      sha256 "5b9f4bd8aa048a8988dfd42dd3268cb91f82ebb7778b1419642a814a8e922104"
    else
      url "https://github.com/hyperi-io/git-scrub/releases/download/v1.0.1/git-scrub-1.0.1-linux-amd64.tar.gz"
      sha256 "d57bd8b30affe547249a3ff11ddc838106d1bccff30a5558189792e4c56f4bf4"
    end
  end

  def install
    bin.install "git-scrub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-scrub --version")
  end
end
