class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "8f8971a82557fb5bbadf2a2180caa23881a9ccd893be09b83c1d3b996102d96e"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "387688a775a8ff2c09c2b64e9353a25e4b775ab605633af8ab3a4ce92822f4fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "7c5773ea9de630890e0584ad64f1eebbdb3dbe4b476797043b1ac4ccb27d8d4d"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "38111e3bbe4d5c5d66bc5f25da4966ad29f159925db939952e9dad9d0d1679a8"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
