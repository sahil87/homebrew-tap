class FabKit < Formula
  desc "Specification-driven development toolkit — fab router and fab-kit workspace lifecycle manager"
  homepage "https://github.com/sahil87/fab-kit"
  version "2.1.7"
  license "MIT"

  depends_on "sahil87/tap/wt"
  depends_on "sahil87/tap/idea"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-arm64.tar.gz"
      sha256 "66c5a213137356134bc63f404e54fe81459dbc51278e627835cceab552c7f59b"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-amd64.tar.gz"
      sha256 "2d573c18304ba8932d0534f7445330c4cdaa263e9ff372162b9940614ea68127"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-arm64.tar.gz"
      sha256 "d4e0ce61f1a8c2f2fcbbf5bd6966f9b62780427d706198dfee38b4a3f916c635"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-amd64.tar.gz"
      sha256 "c519970e443c284169c160cf7879b874d75bcf00fc7c7b02db462b66efbf8324"
    end
  end

  def install
    bin.install "fab"
    bin.install "fab-kit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fab --version")
    assert_match version.to_s, shell_output("#{bin}/fab-kit --version")
  end
end
