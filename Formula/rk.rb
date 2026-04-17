class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "26dd3c192d6f11f633c1028fb0bd43b57cf206e34310e8dd2ef637b43a110e99"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "b40b5378a261487dae8c2f7723c276312fb236e0dc74a1bf4ac0c6c7fef3b971"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "75d57a986b1f8306dce4385805bfb6f542cf2e2bd875607dd4f365a702bf0129"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "09513e5abb0eb047a71fb58e9bf576c9e248376cc144d73a295a1a20df0033ae"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
