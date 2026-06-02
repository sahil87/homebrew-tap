class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "d8fc6aad8b4a39a6ea0c0a99c3fb17fa4883b4d771942ae63c04dc6c6e5e4c1a"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "7ba239124fc28ca34b1e0f06f8666f886e2d8f30036c24f92f36ee7bf28b07a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "9c59f85c85adcb07dd3e04bcbf4655ca41cad54d9d8c765b9b3d1b692c83d6b1"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "d01670c873d7df3617b4fc7dad49e63294dc5c4118445a7491ef0c7ba2145b32"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
