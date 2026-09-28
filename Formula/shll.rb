class Shll < Formula
  desc "Meta-CLI for the HexoKit toolkit — update, shell-init, and version across all shll tools"
  homepage "https://github.com/sahil87/shll"
  version "0.1.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "cfae6effa26ce28ed61aa866b56d824a29b05414a19aa6824a32fdc019b67a04"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "de5db947041caae5233f24dc2e1cde69870dcda47a167b4b0a4e446d65de15cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "5249754006ee8f7ebb6c9de9466d5920329a42c47a222182369f53379b34181b"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "ca85602bd18f0b08d04cac7fecd0e4ad37150cc27b8fba29beab22eb7ee73af5"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
