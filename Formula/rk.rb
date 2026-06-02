class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "51256a8aa92d68e25f547057edf08d5d8fef889f096c14c50bbe6526adcdb123"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "7f84d68e8713b92ac6348e0e0cbe2c3e6a76f26cb150a5a1ea7315deb32a6f89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "1c6d189c60ec6bb9cd75b6d66ce0724769ca1caead1b1c516139a25ba7ae3082"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "34b2cf4fd1bb4a1f1fcd859e77e0535ae4d24f3f18163bc89f4ef0ac0d217621"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
