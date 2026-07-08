class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.5.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "6d91313161c2586fa7d914238faf0cbbb517977b09e03c01d763a5365c04ea70"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "64b83dcf807b1ef4bd8da66ee2ed4c5ce20736fe518aabdc04e1f9f77a987500"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "647391f36715ec7a779cb027e93d5c2a69b52fe3877e57fecdb95b10336586b3"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "3eeccd286d47efeea48bfde0bd1859cce4f776e138e06edb40c407b154e373ea"
    end
  end

  def install
    bin.install "rk"
    bin.install_symlink bin/"rk" => "run-kit"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk --version")
    assert_match "rk version", shell_output("#{bin}/run-kit --version")
  end
end
