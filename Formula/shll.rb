class Shll < Formula
  desc "Meta-CLI for the shll toolkit — update, shell-init, and version across all shll tools"
  homepage "https://github.com/sahil87/shll"
  version "0.1.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "6a8ef2906573c59a6cef78b16cd0ffb3ace9f6f01d1f8a5889ca2880051980b2"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "6a622b68e3dd82a03fcc112ef24a95bda54bd2e8dea26257e90e402277e806dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "3c35a4e3bd3472018bfc816c415f39248e32720c166e4a49d4d7a6b7508d78c6"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "3578061c5e29df9566c5bfba0a8ed6d0a7de497e06a510b1f07b4f2c701fdd2c"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
