class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "273f4e3bac7fa272eda46a181d17f858e7b8f3b4a1361dadc93c738a1847478b"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "05cec58dd58da0e2313fbe53b5da49867372e695f501195e781b16d7615c10c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "51140482dfa1d4b8cc11b70aad4e9235b1f85fb9167c7b269b43b0cb08fd0123"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "2e24a25da3b617d245e970b14bcbd71be16772ba6c95bf4106dddad0132ab985"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
