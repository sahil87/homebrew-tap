class Hop < Formula
  desc "Locate, open, list, and operate on repos from hop.yaml"
  homepage "https://github.com/sahil87/hop"
  version "0.1.4"
  license "MIT"

  depends_on "sahil87/tap/wt"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-arm64.tar.gz"
      sha256 "ef15bc5850b7a190deb47d2f22e335fff20e571ee3bfb3a253703dfb0a5c7bc6"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-amd64.tar.gz"
      sha256 "f31eed77e0c5a9fce51949eb8b2cd849d6e74ee4189e91bf44496e8560d70c15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-arm64.tar.gz"
      sha256 "b98c39f5ed2cd47ed1509418d06708c4af4e842c13ba9656324230e9aaff0e87"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-amd64.tar.gz"
      sha256 "6d6d2eea540d69c6b4e16288c05c7fc6cefe6bea84ff892779e0187d4d9c0a9b"
    end
  end

  def install
    bin.install "hop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hop --version")
  end
end
