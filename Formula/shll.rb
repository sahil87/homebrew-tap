class Shll < Formula
  desc "Meta-CLI for the shll toolkit — update, shell-init, and version across all shll tools"
  homepage "https://github.com/sahil87/shll"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "259bd0b3f5a172dad8f394e65e4e0ea32dbc7291845105d469da9497af358bdb"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "2a25c4eabe50527f65f5f6a266819754d52bb8791c1a5dfe05de1a5b7e5d4bd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "4ed79bb0da8e4b6befb476e2da397a6e0730edb0efa27e69894ef721ee63e800"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "68bd081dee00bcecfcea3d25ecc22528f70c908159b8ef4d2b2ce66b49cccfc7"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
