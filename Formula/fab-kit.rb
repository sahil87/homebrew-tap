class FabKit < Formula
  desc "Specification-driven development toolkit — shim, worktree manager, and backlog tool"
  homepage "https://github.com/sahil87/fab-kit"
  version "0.44.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-arm64.tar.gz"
      sha256 "e06f851cb5dc66c2517d434a753a437de4a75ea0a0e37cd1e0d4749572328132"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-amd64.tar.gz"
      sha256 "58da67bf479e883e7851b278c1342703507de366c0bd265cb2a8d6e567345547"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-arm64.tar.gz"
      sha256 "ead78bf5a6ff1ba12dca202350b56baf1526f8a5436832feb43dd0b6754dc822"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-amd64.tar.gz"
      sha256 "2c04724328c111e2ced9b4f784fcacef63df6393c9b1439052daa2c0693b2056"
    end
  end

  def install
    bin.install "fab"
    bin.install "wt"
    bin.install "idea"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fab --version")
    assert_match version.to_s, shell_output("#{bin}/wt --version")
    assert_match version.to_s, shell_output("#{bin}/idea --version")
  end
end
