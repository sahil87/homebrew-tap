class FabKit < Formula
  desc "Specification-driven development toolkit — fab router and fab-kit workspace lifecycle manager"
  homepage "https://github.com/sahil87/fab-kit"
  version "2.3.1"
  license "MIT"

  depends_on "sahil87/tap/wt"
  depends_on "sahil87/tap/idea"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-arm64.tar.gz"
      sha256 "ad908cad7fd593979c4697c3d577c5b5731c42d6cf7139c404a0787511c4795b"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-amd64.tar.gz"
      sha256 "f4d06a542c041b825376dc791369d5fe12e7504bcece186b3b1a86aad59b4379"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-arm64.tar.gz"
      sha256 "8e02f159f7fcaa6aad116988d54ab02f9fc911b34ecb94780a5ff4f28494c4e1"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-amd64.tar.gz"
      sha256 "893979b557e5f23780d83eeeba123ace4af94c5d20305ba5999e7f9c1ef160a9"
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
