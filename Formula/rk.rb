class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "c8d67532351b3c5b02b04cbc8fc8aa3bb41fb2d2142f9ceb9d5aa319b60aef01"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "89d4a1b5dd15ea21bd9fc4036b28fbe4c0d2798d48e58a0c42b9060a2cc3afb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "900158fd8a252c2dc284416e2196b445852660955ae0c50776d94dad85c8d2a6"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "9e5ec5f60ad02979668b7c55a0bed0318368fe58b57b1c68e32e87dd23785a9c"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
