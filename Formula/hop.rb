class Hop < Formula
  desc "Locate, open, list, and operate on repos from hop.yaml"
  homepage "https://github.com/sahil87/hop"
  version "0.1.6"
  license "MIT"

  depends_on "sahil87/tap/wt"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-arm64.tar.gz"
      sha256 "83268e8b96c495262e192f7476416fcc5ed2a4b370266c9d15446bb1bd3845f1"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-amd64.tar.gz"
      sha256 "5d524531fe82d35cf504ac5447720aaaeedd2710aae2729d21d75ed745d9fd69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-arm64.tar.gz"
      sha256 "e79e247ea65cf11287cc6cd9782bd398c51fdd8a1cfd8abc3f90161ed07ce17f"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-amd64.tar.gz"
      sha256 "cdfa5410b084571ce5fbde5c0ddd03a5ed742497d9259a8d8a3f15b683d908ff"
    end
  end

  def install
    bin.install "hop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hop --version")
  end
end
