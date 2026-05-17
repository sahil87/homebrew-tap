class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "2ab686c10d552591ed2a82bd90fa7b44f0736737c27cc53b7c48ffc1dcb7ac21"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "c4334612d6bfa2fafbc2cf13d109b30a4a00e97a873e45aca3a57c2cc92ce87e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "ce015f28a4e3a261e523f00ccd193d8862cd76d1e0a7b96cbe8eb71276d2e9b3"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "5d860e042353977948623d9a8784d8dcd624dd54344b50299e3a6848567e5cb3"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
