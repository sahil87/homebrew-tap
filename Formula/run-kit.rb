class RunKit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "3.16.2"
  license "MIT"

  # code-server backs the `code` lens (change 260811-k3vp) — the dashboard
  # embeds it via /proxy on the deterministic RK_PORT+2 port and treats it
  # as always installed. (tmux is deliberately NOT declared — long-standing
  # assumption that the host provides it; changing that is a separate call.)
  depends_on "code-server"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "2a804ec137cac5db66cc0004b1d4e2bab2635fa52a1ed0476960afdc50ba6c31"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "df1491eee1ea012ecfbe281704921c8b8a071dd97c93890c2ab91f12bcb00742"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "3e1a538f5e5ae5e26126d242ed36e8fa8a56f09492866b2a57f92c2f2c25b7ac"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "d52dc4976c236ad7ae40ef2ee93d90e349017ccac91cd1d7d0972a82fcf3624d"
    end
  end

  def install
    bin.install "rk" => "run-kit"
    bin.install_symlink bin/"run-kit" => "rk"
  end

  test do
    assert_match "run-kit version", shell_output("#{bin}/run-kit --version")
    assert_match "run-kit version", shell_output("#{bin}/rk --version")
  end
end
