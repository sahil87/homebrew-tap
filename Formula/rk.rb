class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.2.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "a530e4f6a064d8fcea554f9c0abeecc12a197c452b39aab9ef7ab687602f1d6b"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "e0ebc3014e256770076c3f5fbd7ccee3a3b6c635b4439c6a27e01f34974c98f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "dfd50049ab4bdb7114660ea2e5bef914dc9c4600187cb41ea0002dfc13c45456"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "ee2bedfa8c8a6161b96b5c30f37d8328c7c07774cfadcf515d8fcd8c2668fe6f"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
