class RunKit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "3.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "743c0c01eccfe92fdee5154e783ba44daac88f8f4da948a7afbd83b864052a62"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "13e66b0cb1bb9226a14f11b94d65edb0275bb884db5364686c93933889dd8a04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "4459750cd7f698d2ae041559d22515bda2779203ce15d0d98bfc33c41dd611ec"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "8abf94028395d7be81d817656296455f276e64dbb9fa248222b0c7f2cb4c006c"
    end
  end

  def install
    bin.install "rk" => "run-kit"
    bin.install_symlink bin/"run-kit" => "rk"
  end

  test do
    assert_match "run-kit version", shell_output("#{bin}/run-kit --version")
    assert_match "run-kit version", shell_output("#{bin}/rk --version")
  end
end
