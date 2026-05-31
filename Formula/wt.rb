class Wt < Formula
  desc "Git worktree management CLI"
  homepage "https://github.com/sahil87/wt"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-arm64.tar.gz"
      sha256 "eeb73e4c0cf6485aa07a23efea20f750000df2c7e6e34eac11777a9c8b82fa95"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-amd64.tar.gz"
      sha256 "698031bc1a69b0539ab6821234a329aacc83a8e99dd421a393ea4e23cd89d27a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-arm64.tar.gz"
      sha256 "e062e65c8da3a7d8ece88df780c64ec4aa19a4f4f366c56fd8c33797a4a2833b"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-amd64.tar.gz"
      sha256 "f752ff2790a0c16a2558ceb30a072ee9e6ece11fbec870e9aa1b55a53c071059"
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
