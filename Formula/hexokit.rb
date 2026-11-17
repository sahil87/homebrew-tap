class Hexokit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/hexokit"
  version "3.23.0"
  license "MIT"

  # tmux is a hard runtime dependency — every rk feature drives a tmux
  # server. Declaring it pulls a current tmux onto hosts that lack one and
  # keeps brew-managed tmux current via `brew upgrade`. It cannot upgrade a
  # stale already-installed keg (Homebrew deps carry no version floor) —
  # rk's daemon-start version check owns that (change 260819-vtd1).
  depends_on "tmux"

  # code-server backs the `code` lens (change 260811-k3vp) — the dashboard
  # embeds it via /proxy on the deterministic RK_PORT+2 port and treats it
  # as always installed. rk manages the install itself (a digest-verified
  # standalone tarball under ~/.rk/code-server-bin, acquired on first daemon
  # start or via `rk code-server install`), so there is deliberately NO
  # depends_on — Homebrew's code-server formula is deprecated/pinned and
  # would make this formula uninstallable when disabled.

  on_macos do
    on_arm do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "9e342de8ce77b0017fa6281c3164fe981c6ff23c2f80b2a4f3f6f80c7b8851fb"
    end
    on_intel do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "a6d6584cd02ae2d0c4c7d768db9b5a8faf8fb422cfb53115e6b2e078036531b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "f39e83d93e220852a5024d949ac9c855e3b1868829b6aa6636c211957b1a0e25"
    end
    on_intel do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "c2ef0d350997323f6aa86728a895b5632c4d60645d2211ddbb1eada78c6e3858"
    end
  end

  def install
    bin.install "rk" => "hexokit"
    bin.install_symlink bin/"hexokit" => "rk"
    bin.install_symlink bin/"hexokit" => "xk"
    bin.install_symlink bin/"hexokit" => "run-kit"
  end

  test do
    assert_match "hexokit version", shell_output("#{bin}/hexokit --version")
    assert_match "hexokit version", shell_output("#{bin}/rk --version")
    assert_match "hexokit version", shell_output("#{bin}/xk --version")
    assert_match "hexokit version", shell_output("#{bin}/run-kit --version")
  end
end
