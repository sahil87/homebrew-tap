class Hexokit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/hexokit"
  version "3.22.15"
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
      sha256 "3742b74155f6e436a1222d24a0f2decba6f3bd7a1316ac2d4eeee35655c02edb"
    end
    on_intel do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "b22eeeb5731ecc397db107b6cc7b3043d022c066f358b3dc27edd68fe0debe75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "7efc7e1835a98ba35618be760efcefacd532dcbef92fd2f4f0d49f16aa48ae92"
    end
    on_intel do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "ac07bdb012d457ab1fe403ef26dd31b982bbcd14719afdd320fd835fbec41d56"
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
