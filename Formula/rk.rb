class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.3.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "93d056136b767ea4f5ac7af16873ecd6672a47d898ed64264a944ed9e5adcf74"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "6e6ad28f871b8bf9d8645d07eca33ff2b01fa25f0ff3e4244e9dc80f9d3bc345"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "5a262fe1435b1394d4a5f0026027e6b3838cce3c6dd00719432547c4cdda2f97"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "fa5364201f83f552298c86e1dee1df4cc97f7284e9d44f2029036414fbd8922d"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
