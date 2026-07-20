class Shll < Formula
  desc "Meta-CLI for the shll toolkit — update, shell-init, and version across all shll tools"
  homepage "https://github.com/sahil87/shll"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "76bb1a8585d9ab5a1fc1014f9f35a0a3c485b43095e19314149caeef7fb233fc"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "85ee9d41694825fe3f0b9574e60339b032f5c05c83d23065ecdf41d754dff82e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "7583ee097e6e62cbd8452beca238916f19c5343b0a3524c643956614123f9a7f"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "a6c49b288792b45395d1499fb009f28f129cad62063bdc37f1d1c5bf960290fb"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
