class Wt < Formula
  desc "Git worktree management CLI"
  homepage "https://github.com/sahil87/wt"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-arm64.tar.gz"
      sha256 "4a486aed84f66069eff4ad50b9e0d2b0f0e83b369552033d0ac9a945277f3206"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-amd64.tar.gz"
      sha256 "3bfe803f0b7ac163dec57db2ca29da9ddbc78659ca68436abcd49deb2aa04503"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-arm64.tar.gz"
      sha256 "ecf7d8b7012fa0535027ab09b0f4d96c0205c3235c50b42cb613c7c064b9f842"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-amd64.tar.gz"
      sha256 "8832b36cf9a930d88738895a0043d8284c1592b639c5c289c826b46edde62f66"
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
