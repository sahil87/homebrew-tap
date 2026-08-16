class RunKit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "3.16.25"
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
      sha256 "9dac382374376be2d2a56c66878fa6e1b73ffc699885afa4866b7208efb8dc79"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "a7f8781d4b727ad4afd4bcdacb8f7510bfd8ed5440413241ebbefb92a722dc9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "c5396d3e3260e47731ec4326d033bb7ff19a244c84487e353926b9553c223335"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "40a2f3a076fadd2296f334bc94e971d62cd9555ec23522bcdf1771aae64826e8"
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
