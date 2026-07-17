class Wt < Formula
  desc "Git worktree management CLI"
  homepage "https://github.com/sahil87/wt"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-arm64.tar.gz"
      sha256 "aeb437ea60b3170ad3867b03cb53dced54e865ad2fc8a84fe4f44dc618848bb0"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-amd64.tar.gz"
      sha256 "a8794e015a9ab758a64e2936b2b65512bcce3ebbc11ae0b27b42258024d69849"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-arm64.tar.gz"
      sha256 "76bb26f1f736a35d2fc051a9ee61e35879afc01c23b90b9ddd0d0dbbf96e3c0b"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-amd64.tar.gz"
      sha256 "55f28ed5b42a6c707927252c57c05d8a49d5f9587eda834ad09eb42ef2d6b671"
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
