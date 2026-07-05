class Idea < Formula
  desc "Capture and manage ideas from the command line"
  homepage "https://github.com/sahil87/idea"
  version "0.0.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-arm64.tar.gz"
      sha256 "5bdf7e0ffe07bbc8ac3cae143a0a51be4b2d00dbb01091f23a21f712e9517f33"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-amd64.tar.gz"
      sha256 "3bc17767f60da11af347d2c81e32d2b7f49ad30f601503e7fd848e3c853f2a66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-arm64.tar.gz"
      sha256 "ecd9a18c286b34e84fa22bc2221507e0adeb50953482b6b78f1ed9ce11da12c6"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-amd64.tar.gz"
      sha256 "617814eb5465931b1bf8a2a9ac635c35fa4b542c39f6a36eee591f57dc5e2054"
    end
  end

  link_overwrite "bin/idea"

  def install
    bin.install "idea"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/idea --version")
  end
end
