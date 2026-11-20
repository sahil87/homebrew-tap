class FabKit < Formula
  desc "Specification-driven development toolkit — fab router and fab-kit workspace lifecycle manager"
  homepage "https://github.com/sahil87/fab-kit"
  version "2.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-arm64.tar.gz"
      sha256 "d5f8f5a5282d1fbcbf396016100452e0a52aa5e7f086e7b60f1e0d6458678187"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-amd64.tar.gz"
      sha256 "d69db0825e6ac840eacde25f907028606fe00ef8a8da3d45260461f5fe84c809"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-arm64.tar.gz"
      sha256 "36ac4673413a32b44fcda6681b5089e837cf11d1a2f355272f2ebce4403271b2"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-amd64.tar.gz"
      sha256 "18ef14fd6fc20cb69f223d1748f37615faa5d74f7905db2f24fcfd830ac605d5"
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
