class Shll < Formula
  desc "Meta-CLI for the shll toolkit — update, shell-init, and version across all shll tools"
  homepage "https://github.com/sahil87/shll"
  version "0.1.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "cf434763e6bede00d2bedcf00a08af25cdf7c29bbfff4c6eddcea22a85d3adbe"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "6fcf236622ab6917d6373b296488eb1b2f6b0ecccea56ff4f7a77c509b0895fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "050300203752cfa94d4d75c88fb73d9f1d893450f19bbb29096bb3f7a7963385"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "5d5aefb82dad0ffa758d3ba5c127ab495b344fc4afa7b31d4bf5ddada6252bb4"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
