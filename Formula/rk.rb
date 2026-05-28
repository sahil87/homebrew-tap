class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "344c8b71c519eb69f5c626bc5f37c76ed1ce6a757457f471dae0f81c0cb6d979"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "6805731bf6e3e60bd3a597a1b4a692b1ca29e51df2e8e4fd1dc4bc518852b850"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "686a67c3d7d64fb8033a4b8ec6e2d283e9f6e8cbb939e86f2c88d20c7ebcb2d4"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "e9bfff25f1260fe9e199b02dbca90adedfd71bf2eaf95e0dbf19b58984cb72de"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
