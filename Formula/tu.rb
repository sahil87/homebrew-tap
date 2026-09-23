class Tu < Formula
  desc "AI coding assistant cost tracking CLI"
  homepage "https://github.com/sahil87/tu"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-darwin-arm64.tar.gz"
      sha256 "1bf699cfed4cab6b8c986a531831143db7fd03b1b5760c0e1ea3d3f4e77ab837"
    end
    on_intel do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-darwin-amd64.tar.gz"
      sha256 "0a6b4528d9d20effa87adab00942223c7a99e013977a51de94bbb5ef3a2ef412"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-linux-arm64.tar.gz"
      sha256 "660617d655c8a4a4cdb948bf01e77ea6926ae1682cb9a30926ade77b530f2fa4"
    end
    on_intel do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-linux-amd64.tar.gz"
      sha256 "fc5bb1ee587ff634caac64cfc20c3e5f24014c633575825e958ac676bb6d53fb"
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
