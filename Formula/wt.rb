class Wt < Formula
  desc "Git worktree management CLI"
  homepage "https://github.com/sahil87/wt"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-arm64.tar.gz"
      sha256 "69680a441f1e23c43a36cd6e8848ee1981a8e404c3b85c52f0ef22b5d3e6ea52"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-amd64.tar.gz"
      sha256 "5fea1073a308c0b5c4a63bcbecd1a19d946f53c731f3a44c3d756e00e6fe6718"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-arm64.tar.gz"
      sha256 "04b689cbaa2729a04bbf1004b73601bffa6e8972c4c4854e87afa84fe04b0769"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-amd64.tar.gz"
      sha256 "02ff4842936dcb1976febc7ae783a8b5279c9057c120113d856f9bc3b6d00653"
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
