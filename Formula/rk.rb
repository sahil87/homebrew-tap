class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "a6021b597a3b7311128cb6497715a33da59b68aaf4e0fb644f0c7687d90f0d88"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "885c4defa2ed2617e382f3b370a4cdd310ccd83bde5c1abbda7ccef2bc5dbf39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "249caa30e75e63771ac4df8464f7f17e02dec7dde044dce50fc988f5eb96b576"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "543100bc926e6c47b0a8ecbc14971859ea1c8151f5a30587bc8f754827edc504"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
