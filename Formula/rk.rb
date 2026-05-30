class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "ae2579507c7f0f5c01709def945fbee9eff50669128d0c913c8914cb701e53c7"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "c71fc3db891f00c7d07e79d9853a19149919912b4529f35952fcd1508344c91d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "d81a15d511e32b5f59dc6c22c66f02cd90f9bf464be76c8d43b6eae3ccde8680"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "637c80e9cf42b7e6657fd2429ae6075a068a9bcfe7a50523053b85785c039345"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
