class Hop < Formula
  desc "Locate, open, list, and operate on repos from hop.yaml"
  homepage "https://github.com/sahil87/hop"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-arm64.tar.gz"
      sha256 "966b73ac77deeb2f07dce0d4a1bdd603f62a615945abcd261d003cb3bd1e53ec"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-amd64.tar.gz"
      sha256 "3c73c3ed956e5152d6ab6650b96f5160e65835fcc8eb7890cacac42819be1d02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-arm64.tar.gz"
      sha256 "e895b9b890d0fb3eed5432e6ac5c95bdf7dbc4301c7300eb70c2e35096cd4ffc"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-amd64.tar.gz"
      sha256 "5170f6a8bd81ad4560ce46ede08668f5d606c200858b25a499f02e0e4f449cd9"
    end
  end

  def install
    bin.install "hop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hop --version")
  end
end
