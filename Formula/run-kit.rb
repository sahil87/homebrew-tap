class RunKit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "3.17.18"
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
      sha256 "622b1fbc4299d83e847135a09552040fc4467e67c66d17b62b9afe3b9d928778"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "d7c7049b84d8f9960ea805ca894ba303b9fe2eb98ceb5568e8416d2370bbd502"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "0b83cf2c4df307b2132fe4f9b3f2c971c21358fb53ffaa1ce75600f193168535"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "f1c5d9d90231690be83c2947d2d045891a23ac294de3f2ce9d85846ba8079da3"
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
