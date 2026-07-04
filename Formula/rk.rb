class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "fb1a4d9dd883be7caf2453f0ceaa79a6f2d24f116d9e94adf26fbf70c6921320"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "51c4ebc0bd8356e0ac308a27b7a22759b26f3665b03660f08da00f9d70902acf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "38d7564fb94438fe28e7bd28a1b7d39bcc5c35901a636c2a683a21fca8705d09"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "37fd41c0f791108f5ecb8f6d9fd5001a7a6ae72ac54ab7ef124f36d54533ea03"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
