class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.5.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "81d7634aa42e13d9998ede1b1e5757ac54f82ae4e4ef14c131ebacd7db56e4f4"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "ae51a63a0ddabfebf8ac255edf3f4c3a1b128eac3a6aed0ffff0c7fa92678757"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "917b758c20725ae9e56e79a3d851c5145b5eb3bf2b8d0303d80e5377e538e092"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "697d9ec0a02c30717397899cb4e5f7ff0f52429137bced2e22326cf38788525d"
    end
  end

  def install
    bin.install "rk"
    bin.install_symlink bin/"rk" => "run-kit"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk --version")
    assert_match "rk version", shell_output("#{bin}/run-kit --version")
  end
end
