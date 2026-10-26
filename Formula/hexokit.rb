class Hexokit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/hexokit"
  version "3.21.8"
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
      sha256 "28f633d2e9e1c650bb451e0bb136fa70d312d4bfd0f9ce5212e6c9b017a5addb"
    end
    on_intel do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "e5f3089f63664e504138874f4a9cb2066f4f6b9ceed5757167cbd57acf8a4d16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "135e697b11b1c72daca330097bda3c36ecfd7c3de4cfeed56892059543784dfe"
    end
    on_intel do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "78940798e40a340873a1f52ee7b9fb412aeaedbff91bca28936fb977a74ac21f"
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
