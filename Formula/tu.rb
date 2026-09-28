class Tu < Formula
  desc "AI coding assistant cost tracking CLI"
  homepage "https://github.com/sahil87/tu"
  version "0.12.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-darwin-arm64.tar.gz"
      sha256 "eac2235e26c8eec04ec8db953b9c9284abbe02dcf03cc603f422b42d5491cc33"
    end
    on_intel do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-darwin-amd64.tar.gz"
      sha256 "470fc4baf3f8b6e4cb64417afac1d3919083cc03a4ba4a3e5d7c044c89b4d58c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-linux-arm64.tar.gz"
      sha256 "ed9844efb7508167aebaa321805602f82d4994a7eb91305258d12a22c51b01b2"
    end
    on_intel do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-linux-amd64.tar.gz"
      sha256 "33ee55aede9392082e5c0e81bec170d0675ec767072364f3ed943ba00ba26161"
    end
  end

  def install
    libexec.install "tu", "vendor", "tu.default.conf"
    bin.install_symlink libexec/"tu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tu --version")
  end
end
