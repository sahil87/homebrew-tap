class RunKit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "3.15.10"
  license "MIT"

  # code-server backs the `code` lens (change 260811-k3vp) — the dashboard
  # embeds it via /proxy on the deterministic RK_PORT+2 port and treats it
  # as always installed. (tmux is deliberately NOT declared — long-standing
  # assumption that the host provides it; changing that is a separate call.)
  depends_on "code-server"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "2233e6968787442d3c8e145b2684bdeb1e259ea9dd98e2bf4dc4a009c05c9147"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "d2f5e5ba236f4c099bcaa46cd5667d424158b1ccfcc0ce87c4cf516b51a1f258"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "3ce5550599afb2ff192f48eca35e5fe93e5a71c5ccdce2a1c2f87088b45487d2"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "5a6654c05fb7a4a2a640a88f20c54f6c4d3c69ad0ff65cacef175d81682bcc6d"
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
