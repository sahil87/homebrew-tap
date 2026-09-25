class Tu < Formula
  desc "AI coding assistant cost tracking CLI"
  homepage "https://github.com/sahil87/tu"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-darwin-arm64.tar.gz"
      sha256 "2166b93ecbf864ee952687dd0a62c8903b8f52c8db27e5476ff09ef0028b68b9"
    end
    on_intel do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-darwin-amd64.tar.gz"
      sha256 "2f8adb343329763b1fb2be1841d610091eedff0592f9f5c816b8bbfbc80f0ee9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-linux-arm64.tar.gz"
      sha256 "dfcfe7089479972ac1aa410deb9ee26d30308bb97449e8e2be79965bcc7b6115"
    end
    on_intel do
      url "https://github.com/sahil87/tu/releases/download/v#{version}/tu-go-linux-amd64.tar.gz"
      sha256 "ddd18a0c54c75aff0f73c86a0555325546e87a07d10d8ffc66b532cd6cd7a38d"
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
