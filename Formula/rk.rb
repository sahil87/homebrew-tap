class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "31765195027f81cf80bf04ea44d5048533b71c63bd8471f4beacb2c77b6470d9"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "192f75c7edfcad7a89ab38f564a999ef4173360bb79fb8525c20f80989e7d932"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "5f4eb5df76b68e1c2bccc8e76d1cc0cc125d35be558de625795a132103b44bb1"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "fc734b773e890856888f57f49e9e3c1d36c40f0134c9684a12da4d5c3e1435bc"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
