class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "1.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "b74054c35902af1489e6538daefccda2c484e14f2f89d2712ae0b2dd4759873a"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "ed24e58e53a1764b002094306503ff1374f0e1bfd9f97b1646d9dd63cd6bf598"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "03e2d622b56f1845d706bd57d7602c415bc7e5f1d65fa39490bc81d066a3b2a5"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "6751354c2c00a5b245ef1e8fa03788523f4189c35e2935c9ead443c8767996fd"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
