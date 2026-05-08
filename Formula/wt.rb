class Wt < Formula
  desc "Git worktree management CLI"
  homepage "https://github.com/sahil87/wt"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-arm64.tar.gz"
      sha256 "3e24ed9fc9b41b5c4c82784d69270ebe417f1968b8d9be9f7c4bb355ed57f8f7"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-amd64.tar.gz"
      sha256 "b21a3ea60ef0f7a987a8b3b191b36bc367f952ae4c51d2a8e7bdd88cd504a1be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-arm64.tar.gz"
      sha256 "de071f8a306a1e349d5e7426906d8a4580834b4d9b0f406633bf1fea7bddd649"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-amd64.tar.gz"
      sha256 "bd121430cb80196bd75c0fd3f68f3cb0a773d1b3280b34e04f391e6b81171576"
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
