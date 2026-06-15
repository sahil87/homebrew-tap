class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "02f4001c8a0d2a0106822a15c2b0bc83bcd799523c8948545a8aaed5bb24664b"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "769f9d1d607ac550723c2d72acc45a15004faad07db90af5c15f5710bef8c9fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "8aef8f227d315e4e92f80ec468d4551aeaa187e5f2ab7bfaa2bf9caf6d23712e"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "a6f4d116e3915d0cc3741f46aa931706d1b1d47331ef59c0d6097677c03e6506"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
