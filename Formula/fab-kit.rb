class FabKit < Formula
  desc "Specification-driven development toolkit — router, workspace manager, worktree manager, and backlog tool"
  homepage "https://github.com/sahil87/fab-kit"
  version "1.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-arm64.tar.gz"
      sha256 "0ef226a53e85cdfeae52d67172052132112b34b1ca7f59682d7dd9c42de022ce"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-amd64.tar.gz"
      sha256 "d79cf6fcbf3cebd5fe1587d59990176b265076c0af50839dd6dc6d6f874c8ba6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-arm64.tar.gz"
      sha256 "a2cbd16e755b507f67c8194c849e88e19f51649ffa236a78c0fa4c4a38d0fb09"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-amd64.tar.gz"
      sha256 "fb62dd8b36590b45887f9d3965e502c13ddb9e58a2cddfc432079a5f25db29ba"
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
