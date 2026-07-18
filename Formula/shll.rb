class Shll < Formula
  desc "Meta-CLI for the sahil87 toolkit — update, shell-init, and version across all sahil87 tools"
  homepage "https://github.com/sahil87/shll"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "e1ecbf1b497e5d18ffc25b0ba81f8a4addd3a890a7635624f2fe460f0fa801d1"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "c0e476ee1779d53c05ad2ea2477685643da32b8ac56fd71c6147f4a38233d678"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "08c6ee90c69b327a1bbfcb9cf3068eb14447b59c2a7e8def963531cbe1fbf454"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "de1232fc983eaa3a423e49830a2a7bb99c86316ff0eaf7025bc52ae95f9723f4"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
