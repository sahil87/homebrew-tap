class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.5.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "3069ec5fb601f47568caec003f35714280a43c4b46120eecf5c21695cf400df1"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "34ba72c3bc54ee6eef642e95cedd19bb8cc20207416e872964727a34934dea3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "c299e78cfb5910211b099c2abe5e885bb0b8540f3235d0193e3f8fffe5898026"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "41a423bfec3e51171df99669cf5453c678bce621ab6403f7902e4b3222ace3ce"
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
