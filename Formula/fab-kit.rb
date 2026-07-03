class FabKit < Formula
  desc "Specification-driven development toolkit — fab router and fab-kit workspace lifecycle manager"
  homepage "https://github.com/sahil87/fab-kit"
  version "2.13.4"
  license "MIT"

  depends_on "sahil87/tap/wt"
  depends_on "sahil87/tap/idea"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-arm64.tar.gz"
      sha256 "3b3e3c7a3fbddc09021d132298cb293802d3d258ba313bbe093f4c78b1dcbb3b"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-amd64.tar.gz"
      sha256 "a30331f29ff2f654c249958361dc4d799dee8905d9729eeddd807f7e99cca653"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-arm64.tar.gz"
      sha256 "5b940f3b9dc06e36aa6bde6ea0321d2a265414760dd26127892d3823e6394a3b"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-amd64.tar.gz"
      sha256 "3e257d362d56f0177c475b7cbe5ac34ba9e7846b8dd029b9bef61549f3dee91a"
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
