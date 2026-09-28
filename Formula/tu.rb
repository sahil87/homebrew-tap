class Tu < Formula
  desc "AI coding assistant cost tracking CLI"
  homepage "https://github.com/sahil87/tu"
  version "0.12.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-darwin-arm64.tar.gz"
      sha256 "50dd54d6f100294bf8934bdacc73e97e7085415d77e65f261eef1503fd6f7986"
    end
    on_intel do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-darwin-amd64.tar.gz"
      sha256 "2c49b6ac6c6625a55a3f5670afef54d7f16596950735e340b986b6942bf50dc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-linux-arm64.tar.gz"
      sha256 "449d10788ced9ca35458a0bb99f04edd86ead44903e4da57c6cc0863dc889082"
    end
    on_intel do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-linux-amd64.tar.gz"
      sha256 "f7d8f3d6d7d8e0b108bb638ac063662231f125cad258f7449d2b6be5ce0e25b4"
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
