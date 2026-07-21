class RunKit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "3.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "59896a94989e6efd5c17d989d9164da8c84e34afc3215ad0276d096072359084"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "8b24963b764a0fd2a582eab341779320424ad6c9be18caa928440cfcaa16b05e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "2e6ab970bbfb5e0880a3eff9b78ca4292af3d0aff06519a1e11eda117444d636"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "6433a9433d83d5c1cdfa575839a875f9cda81a0f23c6ba3fb27834306efaffc1"
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
