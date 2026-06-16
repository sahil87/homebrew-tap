class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "b86ea7a8c6569a240a3f182c906608f2a21c8551cdd0469010aff10b265274e3"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "03a27eefc1fb070b0c428bb4634b48b291a866819543910ccf27102e057d3e2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "b2f1fba58b377a6c224b1a2c3eb71be035bd70d5e9c5f6d4d9f2de7ed3beaf53"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "08ddb22fc6f64229f55cf585eb604b3f360f19256bd8c594cca209bd747a5852"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
