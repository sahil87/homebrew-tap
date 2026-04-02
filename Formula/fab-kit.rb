class FabKit < Formula
  desc "Specification-driven development toolkit — router, workspace manager, worktree manager, and backlog tool"
  homepage "https://github.com/sahil87/fab-kit"
  version "0.44.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-arm64.tar.gz"
      sha256 "dbd49ffc682d918d27f2958db9c3fa5daa10fed4216df89703f9859bceea8c63"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-amd64.tar.gz"
      sha256 "b4ce43adc569893291161920b24cab7f20b0e85f0a25222444a1d99ca40dda05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-arm64.tar.gz"
      sha256 "ce7173c663313b08e6621960fd0d99e037d6654fd762eec51c6a32146a24c639"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-amd64.tar.gz"
      sha256 "2a2627bc2f46ad9e768be3283068a56a1ba5f20203bc27c107a7582b34feed7e"
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
