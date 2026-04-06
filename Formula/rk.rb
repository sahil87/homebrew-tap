class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "0.8.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "eed1c6dc8d5e816546fca6c91b93e24c7d52e57541b40f90dc24cbd9f9cc5292"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "419c620a371a464d543ab70b311df5bee2bf0bb407dad75f94b2a19882c09dd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "50d2b99c8419cea617cb9b2d65b3318eddf5b49c8b8388b72680fc20bcbd2e85"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "5dc18e3b81d0572f904c9ab16d3c85b149fb06be8dbda26f1bf9fe4f018f0d8a"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
