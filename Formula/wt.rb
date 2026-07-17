class Wt < Formula
  desc "Git worktree management CLI"
  homepage "https://github.com/sahil87/wt"
  version "0.0.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-arm64.tar.gz"
      sha256 "aee0f983997815682423bce696f32958127652136a7279cb0bf8e98b1266ff89"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-amd64.tar.gz"
      sha256 "c1b66cc820e24238575dd61083e1a4e2751731b7a66a9bf89642098971ff862f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-arm64.tar.gz"
      sha256 "a75c2df8ba44db53e10d1b875bff6fbaa101b27395797a7ecb6dfa50abba4cf1"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-amd64.tar.gz"
      sha256 "a39656aed1cdfb7d4561f480e31765f8c2568b947b9cfbc04e1fda2d6b436a7f"
    end
  end

  link_overwrite "bin/wt"

  def install
    bin.install "wt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt --version")
  end
end
