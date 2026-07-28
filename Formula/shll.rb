class Shll < Formula
  desc "Meta-CLI for the shll toolkit — update, shell-init, and version across all shll tools"
  homepage "https://github.com/sahil87/shll"
  version "0.1.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "a8fbaf0e6d3e2aff6ad338d1c450db04c784ae3a2b7749a1373c76e9d57fe3d7"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "125acbfeb85be13a043347b3a5ba061c8eb796c8b50e28074d66cc26554aa48b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "3f94085f08668e1f7b645cc3950396dd461d83334162f73681c9b058ad9ff365"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "66f37447ba95f9c75548c28a24be8ccaa9313bafa10d0409bcd4f685e7387309"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
