class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "484c1ea300636b7a8b9091d840146e5d12c7ab3d170e5f9e15a478f9a16f268a"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "ab7ec4735b56d89dc45d4d31311725ab5cc1b92eff1658d58b12bdb62ca544e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "8e0aa640cbcc73c3dff5c60cc6500fb5451c05e151d4b6fe195ca0382df937c8"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "323b9eefae05b1c9e0e3a65973b52bc5cd648d6c3e0d32f9df8041c580c70c73"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
