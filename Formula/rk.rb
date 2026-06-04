class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "7bd4b6def8d2f4888f9192c82843fac5c4a25429f6f81dfac490dbfa7b8fa9aa"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "3eaa8770a2d6ec83356b52b3ae07bd6ea46070642c05730722c2c02f8d4e4e3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "d37b76afb7c7cf04da781bfcce2c0916d08493fabec023a7ada36eda108e8bba"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "0c4664e9ffbe89b0a32a1ad06800376d8af19d24e42dc6eb617bde3fa8a8eeec"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
