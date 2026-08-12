class RunKit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "3.15.11"
  license "MIT"

  # code-server backs the `code` lens (change 260811-k3vp) — the dashboard
  # embeds it via /proxy on the deterministic RK_PORT+2 port and treats it
  # as always installed. (tmux is deliberately NOT declared — long-standing
  # assumption that the host provides it; changing that is a separate call.)
  depends_on "code-server"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "b38275b29b1fe043e463b11680982424b7327a6797c9343aa4158fb14e9c2f83"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "59c586359afe39e0a1b55db08eaffb905942cb0e0169f80658de66e11efed736"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "f4a2a1c348026da19412412b2696758f04b9005d61a744cb7a9f1c40c43da0ba"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "7792e497c100b3c63c5ae15101cfe280c94f99da71469bf26bdc4453bf57ddce"
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
