class FabKit < Formula
  desc "Specification-driven development toolkit — fab router and fab-kit workspace lifecycle manager"
  homepage "https://github.com/sahil87/fab-kit"
  version "2.13.0"
  license "MIT"

  depends_on "sahil87/tap/wt"
  depends_on "sahil87/tap/idea"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-arm64.tar.gz"
      sha256 "a963092c1bde6320daa7e246268dce74729cd3b4fc8996652749b2cedacaee72"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-amd64.tar.gz"
      sha256 "417bf653ee013ef7b7909683e1a3151e04228e9047a7bc9441fb140e7142f9f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-arm64.tar.gz"
      sha256 "4270ef7ac777589fced2fb97217bad31d9112262800a9603796c4791262879f5"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-amd64.tar.gz"
      sha256 "6b1b32958ebff780382b373a5622c790d78db3c03b97aa2f6bbde5d39abe45f3"
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
