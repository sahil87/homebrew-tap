class Idea < Formula
  desc "Capture and manage ideas from the command line"
  homepage "https://github.com/sahil87/idea"
  version "0.0.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-arm64.tar.gz"
      sha256 "16c8d3cc83190d968324d785bf0d4e72c9aed0632eaab8c6e02656f7146e576a"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-amd64.tar.gz"
      sha256 "a292b580c24721af00f8bb228c5ff98e52b3d4d01a413e161bfaaf37a5bc325a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-arm64.tar.gz"
      sha256 "d58a20d33e5fb13f23699d2fa4ef52859579d616310943f1572aa5465ebf8d19"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-amd64.tar.gz"
      sha256 "2e24a93711cac5a3c323f3966eab6a15b7cdfcc4b919597776cbeb6a3a62ebdd"
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
