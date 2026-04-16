class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "8e099599524d7f9535aa1546b7bf2357b79ab7f69b0ac71ce99664b084f4c476"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "43d06591b88778e2b1dc322f2d5de68ac1805771083770098b2b83b6722a25eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "8c0b73e7f0b28dbb546a9eb910c3cf08df5f211101c50a5a905832f100466d3c"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "cfd67a32fd9a60ccceab494dfa7cbfbdba7b46f2c9e2fed87da9b33598e7e637"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
