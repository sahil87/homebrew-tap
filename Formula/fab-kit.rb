class FabKit < Formula
  desc "Specification-driven development toolkit — fab router and fab-kit workspace lifecycle manager"
  homepage "https://github.com/sahil87/fab-kit"
  version "2.20.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-arm64.tar.gz"
      sha256 "f792a9dd2044b6eced9de0f63b79e988fa6a0dbf1ad55ac2943aa3687771aeb7"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-amd64.tar.gz"
      sha256 "07e9735a63a91a6d9d2312cc86d54eeaf4153a53d8b1eec357b49a0c5727bc32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-arm64.tar.gz"
      sha256 "5a466e129a0d9d5ffd821f81b629daa18245faa3b24bf10f7e0963027e9ccb9e"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-amd64.tar.gz"
      sha256 "91046144c7e26d16f5f5d4717759dfdb088a747d9945e3ec5b6b6e3523f6726a"
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
