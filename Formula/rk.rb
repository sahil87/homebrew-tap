class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "1.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "1061109efc49f151b1ce6eac4f90007cc0c0d16bd24606d548dcfdc0b03d6a60"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "c194e0993956b2e85f19da9b4874a7ae5a54c59eb5fd687a58b0a312c392ef20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "9cf2de5ba99a44e86f5ac4c408d4822259e2d720b088e5f0790506d8fbbe32d6"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "a13b3f8587d19c8271662ecc6daba19b056b5f63fd321c4225038544228bac07"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
