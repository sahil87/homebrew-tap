class Repo < Formula
  desc "Locate, open, list, and clone repos from repos.yaml"
  homepage "https://github.com/sahil87/repo"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/repo/releases/download/v#{version}/repo-darwin-arm64.tar.gz"
      sha256 "5aa2ea8d0e26861af1b8ce2e66f8b516550cd7ccd11ef495b369a55fed3b5db0"
    end
    on_intel do
      url "https://github.com/sahil87/repo/releases/download/v#{version}/repo-darwin-amd64.tar.gz"
      sha256 "26626fc830a57d6a9093bf39761cfedcba0c2876bce6a5cf43032769e55b1af3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/repo/releases/download/v#{version}/repo-linux-arm64.tar.gz"
      sha256 "985bd61bcd2fd6f5d94076319ed0321c80981e37ab781e237b51b2395a866c6d"
    end
    on_intel do
      url "https://github.com/sahil87/repo/releases/download/v#{version}/repo-linux-amd64.tar.gz"
      sha256 "c33839a242a92189a712623d5b1f1b7355f91a39a29781538323eaf01c2826c0"
    end
  end

  def install
    bin.install "repo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repo --version")
  end
end
