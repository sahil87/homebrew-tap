class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "e3fb0ad9b59ec25f0c3360d28eb3359bcffc4ea23ab9ea6e20b0b70ee04b32e1"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "11c512428e04af210e16f706ddf6bb935a8bd4d4ab428c9b51f2dcfcfd4c61ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "973be497667868d622c6bb0b8356ac0483e3c341063191a9b26a90b8dca24169"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "310ce86321443a7536a2c8657f4f7b0da0a8dfe987b14e8045e0730faa4a62bb"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
