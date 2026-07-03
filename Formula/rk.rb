class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "3ba61292e7fa9a2ba570ed3f87eb0cf3183ae8d28b100060543894e9741b7cde"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "2d9b1260ec29a87b2941ec482bea1d32f21f762fcac4536a78bcebf488f1298e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "91d1e1f9e5512659d89e38311337ab69be1e5b45ac31243688cd18da53675a0b"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "b1256715210a54f90822e5820c3dfd82e4085c9198d1a6ac817143cf368c838d"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
