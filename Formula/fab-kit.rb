class FabKit < Formula
  desc "Specification-driven development toolkit — router, workspace manager, worktree manager, and backlog tool"
  homepage "https://github.com/sahil87/fab-kit"
  version "1.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-arm64.tar.gz"
      sha256 "2d15407a53b7f70708cce4453636f5114e2a38d16db3a0d16a5ff2dc177f7dfd"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-amd64.tar.gz"
      sha256 "758d49d590a22ba0b256fd40be76c95ff90addea71721db3f46c794065d1c78e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-arm64.tar.gz"
      sha256 "0d9da03d782a42a9b09e9195ec41c0cc34ae0f543a0c32c153b31cb7219c6c62"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-amd64.tar.gz"
      sha256 "068a35eabe3ee033222fafc4af005ae351beed3ea94273faf7ce413c769ee5e6"
    end
  end

  def install
    bin.install "fab"
    bin.install "fab-kit"
    bin.install "wt"
    bin.install "idea"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fab --version")
    assert_match version.to_s, shell_output("#{bin}/fab-kit --version")
    assert_match version.to_s, shell_output("#{bin}/wt --version")
    assert_match version.to_s, shell_output("#{bin}/idea --version")
  end
end
