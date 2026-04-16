class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "6c79eb809b34903279a334ea879555889189b17fa6ab8649df1e79f72a1ff404"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "eb33d890713ba3cc0fa87cec251f533cbbc8c48047d6eda1cb3fd60b550ba6e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "a02bce8bda93929902e1355e68dc93f02bb1a5dfe261e7fc8243075240898895"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "98f7ab70d8c912a2b4da82c6b2a6118b5f9fc80af2fe54502df92f3dfb60370c"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
