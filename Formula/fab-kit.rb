class FabKit < Formula
  desc "Specification-driven development toolkit — fab router and fab-kit workspace lifecycle manager"
  homepage "https://github.com/sahil87/fab-kit"
  version "2.19.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-arm64.tar.gz"
      sha256 "d2d81da7293dbcce136b49fd3726f935a595e55eb8a252e09be59885ecb5566b"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-amd64.tar.gz"
      sha256 "f4d28349447cdbd60e0571679f96dc6ca139a6783b93f707da4d3ea362143497"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-arm64.tar.gz"
      sha256 "5c53d4b0bab54f7b3f9e6b65003f14ad6986cfc98fe024c55e13b579b1b80577"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-amd64.tar.gz"
      sha256 "519347fd2173860d0a07ea2511b7d11485e565fa5a4d7265f624d6ba006758da"
    end
  end

  def install
    bin.install "fab"
    bin.install "fab-kit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fab --version")
    assert_match version.to_s, shell_output("#{bin}/fab-kit --version")
  end
end
