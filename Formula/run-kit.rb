class RunKit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "3.19.14"
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
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "719c647a7f293a78132a7c196955fd6b20ec4ba7ac5a339fccd802a7243ab6e7"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "3cae411d9a77fb8fdfb4acb25de78ec1f7983c7b1db5d4440e18187c1bca4b3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "552020d0a3fc6c7b864c42d515b80c1c42fa533c0f3518db0051fe81f6836a90"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "b35a49dd00e59da919d7fe5bdd0a1ec902d4252e0e1d3190f56e131c4ab86155"
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
