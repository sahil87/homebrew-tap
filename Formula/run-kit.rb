class RunKit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "3.17.13"
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
      sha256 "d1161d9cc32e6f702e430de5dd66857e487922cf91ab83b2f9f3614f68ce292d"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "87b09858e4fee732e532383a3d0c7cd007f9f0db66a2a4d6e6cdf10475f0800b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "475680fa8f345785ed79f625ed2a52f0f634cb654e889fd39c2ebde20e018b54"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "d5ed4257b59e6a001e3718a164674eddf722394b6ad39a7337c513b35314051f"
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
