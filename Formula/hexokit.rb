class Hexokit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/hexokit"
  version "3.22.14"
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
      sha256 "e0c671b4079fbadd6d620250a8326decf0a0f8e2cd0b584bc6084b1987abce83"
    end
    on_intel do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "c0cb544bbd51a203d226667b96746ace8651ea6b8188c170d449a07191ef6ba6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "ce54807076b2a6c33bdfbbc27235f5f7875827399361bcf2fb6c1b87ac24a2e0"
    end
    on_intel do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "c2ed34fbdc2b208592a585a8a7ad84074251387070d6c43cdca98e197222f350"
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
