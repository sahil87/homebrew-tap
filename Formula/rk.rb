class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "1.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "e95285dba2859249ab9458a08d3d35fcd9c88de2172851e3b13ec0aa23f42564"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "9baaeb0888049cd18e3ed5f9565aaa96c4d0f1d0df9144e0a0f9de94a6edc7c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "a5b098caed63858997e66b983feed1bcb13b4b78a5c6feee3b63095ba97a9aed"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "9515d1042343ee7fa8207370bd6ec3fcb7817165eba98bce96c2bb30a2f7783f"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
