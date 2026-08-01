class RunKit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "3.12.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "f8780df09574e3948b5e3015e1036289a4145ae9d961d1c394f981b01a0efccf"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "214275781665aa9203bda7680d167cbd2d3258803b4150651d574f80593977fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "7be236bb27bc52f8c311bd58d198c1b610d2c2ac8f13a5cf7dc74e4ea2a2247b"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "5da1a4232d53c9e7874f60e4289b037013cf72aacc13700cddb217208420ae4a"
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
