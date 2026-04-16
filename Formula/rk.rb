class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "1.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "72a7fe08b8e3c015df9e0e6fa852c4fa450e2f7ae74d78a437b821fbf95feda9"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "6ebf3bae5a1de5e23fd13673b5f2938dfc736fd673cec0ed8c148b313fdc796f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "b845b19061497921d7cabb77d9490e18cbfb08931f07e591b7f12a4206abc037"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "e0c8cdc72bc4ff256721089dc28e3cd73eb491cd574302c307fdb14900e32f60"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
