class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "30692586d8b0c73ccac4f48d8b508397c2f4b60ad45ce3c4853361d3c4e20902"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "85f984a1770a530c7abbee84101dc3289630d6ef024d16a0f0ecaa078bed62b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "7c5bfeaecb542d04d90b271bb4584fd018c16c6a9e3a63130013fd9fc4523498"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "e8f3a45c4fa0eadde72229724f17fbf7c7e30a56994cc9dde6e8bd94f5894628"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
