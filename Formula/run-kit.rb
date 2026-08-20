class RunKit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "3.17.19"
  license "MIT"

  # code-server backs the `code` lens (change 260811-k3vp) — the dashboard
  # embeds it via /proxy on the deterministic RK_PORT+2 port and treats it
  # as always installed. rk manages the install itself (a digest-verified
  # standalone tarball under ~/.rk/code-server-bin, acquired on first daemon
  # start or via `rk code-server install`), so there is deliberately NO
  # depends_on — Homebrew's code-server formula is deprecated/pinned and
  # would make this formula uninstallable when disabled. (tmux is likewise
  # NOT declared — long-standing assumption that the host provides it.)

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "78a163a99a964083b763125d8fcb4cdfc7b64d32e82ab1b7db7635ac6d20e206"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "44e5d9092e55ad2c31f285371b1bca4cff5e50141a3e18418aa538370b48d422"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "732e1ca22ab367cbed22400286dacf7e8e798556f200f040735a3b4fd1939925"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "f5ec27b520585aaf31442ef825dd0dff65889ba058ef92d75a4a31a53f3acee6"
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
