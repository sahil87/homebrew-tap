class FabKit < Formula
  desc "Specification-driven development toolkit — fab router and fab-kit workspace lifecycle manager"
  homepage "https://github.com/sahil87/fab-kit"
  version "2.30.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-arm64.tar.gz"
      sha256 "5fbf2a70a47d36edbaa7fe5aaf3123784aae1a02602859200d81a96e37dc05b3"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-amd64.tar.gz"
      sha256 "d5962ed3771d680216d8350f32c7cc6c40e19a9d541f1b1a615ff16a698d8539"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-arm64.tar.gz"
      sha256 "d7a02b0e26cc33c2d2b205c84fb3d4e6459edd5534439439e3f175d917033e3d"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-amd64.tar.gz"
      sha256 "4b49ca1576f88fa91181c275f5e11c20378888f70d59a4cf4dc7fc0b153f7707"
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
