class RunKit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "3.19.35"
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
      sha256 "105580ef1b2b6387abf378b541294833581e74e5efb610f3f394888e866ab27a"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "50138eac3d717c3c2abec4b1464782b668fdc23f862b8ba431812287a80c06f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "039fc558bf5aa35afe5d495f097e28da7519efa100b49ff8a44b336f9fadcc23"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "ed095dd708577d871f5a854236c839b811bfa9283becc0aea3735e2e941feeb0"
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
