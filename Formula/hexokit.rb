class Hexokit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/hexokit"
  version "3.23.19"
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
      sha256 "58e22450fa2875e5e5c7746384076d41a6e8644004188f94ac662700362e4fa4"
    end
    on_intel do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "a9e4b5546366ccd312ea970ec671723c069fb92cbb31718070c044f8e509de66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "b09a5b23d1fc91d448dd388a07dd01c0ae72e8b0765ff715a0c7cfa803f764b1"
    end
    on_intel do
      url "https://github.com/sahil87/hexokit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "585ad5b50d6fc57957c1de7f9425e7f208cd282f89a844f015ee82f9c85eb914"
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
