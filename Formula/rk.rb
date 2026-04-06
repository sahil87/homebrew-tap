class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "0.8.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "721bf6a6f5e081464fc9bc0fd3f20fb14b847b5974c6e50a1202b6a76c173f4d"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "61d76dfa2e21017a87f632e666d4bad4ca6749bad916c8e9de4a1e2e3ef9c554"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "c9b93fa59ef8977c11dbd03938c4290379a034e4df0c75d0ae80a58e9f9e008b"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "9ed0867e9e0ecf613d025eedd4f15329ecd9f23f71cdef41b6ff956a85dfadc5"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
