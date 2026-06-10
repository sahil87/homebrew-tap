class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "4fccd3a47536496cbd94622d74cf1380333d0eadf5cbca06f8078898d367a09a"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "55cd8c868119d3d6b9309dfd1aadc189fa285ae16ffd73f1145b679fc9be169e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "4f490adbdfffa0d926ec1bc1b2897e40cc3123dc632c1eceafde3f42c0a04dad"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "7bdd8e00ddcab197197a5ed2a6fbd2b044068a431fe957fd7e1a41905ab71eaa"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
