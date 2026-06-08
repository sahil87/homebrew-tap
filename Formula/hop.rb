class Hop < Formula
  desc "Locate, open, list, and operate on repos from hop.yaml"
  homepage "https://github.com/sahil87/hop"
  version "0.1.15"
  license "MIT"

  depends_on "sahil87/tap/wt"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-arm64.tar.gz"
      sha256 "ee98cf45a6f7a5b8baf179c24b1a254ba08845dfe9829d2406a95764a0d04f83"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-amd64.tar.gz"
      sha256 "4578c63d199fcee80d652ff63b868e34b4f5f099e0c36cf69cc1ba4943ecdb49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-arm64.tar.gz"
      sha256 "cd75c4baa76ba1086b72b30699d44a8be5a83d22cf411205f3dd208a06622e7d"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-amd64.tar.gz"
      sha256 "e6f729697fa728f6091236bf5131ddd767e9de53aadfaf1822294db5d77822d2"
    end
  end

  def install
    bin.install "hop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hop --version")
  end
end
