class Hop < Formula
  desc "Locate, open, list, and operate on repos from hop.yaml"
  homepage "https://github.com/sahil87/hop"
  version "0.1.8"
  license "MIT"

  depends_on "sahil87/tap/wt"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-arm64.tar.gz"
      sha256 "b19b517b593db9a64170d43b5402db058cdb81e9fd651cb8270c68c47f246d75"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-amd64.tar.gz"
      sha256 "72fefc1e4c83f062d0b5dfd94e5ab39b363837cdd47c5660fd629c5c72e97829"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-arm64.tar.gz"
      sha256 "4964e820badb871785a0274a596f88e336676ae4c0868fc2046224cdbab4afa4"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-amd64.tar.gz"
      sha256 "e6062fd69b621745e783506bae19ad4e3a83f5f1a613a651add933c94aca0362"
    end
  end

  def install
    bin.install "hop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hop --version")
  end
end
